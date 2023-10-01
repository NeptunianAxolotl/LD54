
local Font = require("include/font")

local TileDefs = util.LoadDefDirectory("defs/tiles", "defName")

local function LookForWorkersCheck(self, resource)
	local resDef = self.def.needResource[resource]
	while self.WantsWorkerOrResource(resource) do
		local closestGuy = GuyHandler.GetClosestIdleGuy(self.pos, resDef.searchRadius, resource)
		if closestGuy then
			self.AssignGuyToBuilding(closestGuy)
		else
			break
		end
	end
	if self.WantsWorkerOrResource(resource)  then
		self.resourceState[resource].inactiveTimer = self.def.idleTimeout
	end
end

local function InitWork(self)
	self.resourceState = {}
	for i = 1, #self.def.needResourceList do
		local resource = self.def.needResourceList[i]
		self.resourceState[resource] = {}
		self.resourceState[resource].stockpile = 0
		
		self.resourceState[resource].pendingWorkers = IterableMap.New()
		self.resourceState[resource].activeWorkers = IterableMap.New()
	end
	for i = 1, #self.def.needResourceList do
		local resource = self.def.needResourceList[i]
		LookForWorkersCheck(self, resource)
	end
end

local function UpdateWork(self, dt)
	
end

local function NewBuilding(self, building)
	self.toDestroy = false
	
	-- API
	
	function self.AssignGuyToBuilding(guy)
		guy.AssignToBuilding(self)
		IterableMap.Add(self.resourceState[guy.def.resourceType].pendingWorkers, guy.index, guy)
	end
	
	function self.ReleaseGuyFromBuilding(guy, finished)
		local resState = self.resourceState[guy.def.resourceType]
		local resDef = self.def.needResource[guy.def.resourceType]
		
		IterableMap.Remove(resState.activeWorkers, guy.index)
		IterableMap.Remove(resState.pendingWorkers, guy.index)
		if finished and resDef.maximumStockpile then
			resState.stockpile = math.min((resState.stockpile or 0) + resDef.stockpilePerJob, resDef.maximumStockpile)
			if self.guys then
				for i = 1, #self.guys do
					self.guys[i].RecheckIdleWorker()
				end
			end
		end
		
		if self.def.needDelayFunction then
			resState.needDelay = self.def.needDelayFunction(self, guy)
		end
		if resState.needDelay then
			return
		end
		for i = 1, #self.def.needResourceList do
			local resource = self.def.needResourceList[i]
			LookForWorkersCheck(self, resource)
		end
	end
	
	function self.GuyReachedBuilding(guy)
		local resState = self.resourceState[guy.def.resourceType]
		local resDef = self.def.needResource[guy.def.resourceType]
		
		if resDef.jobActivationResources then
			self.UseResources(resDef.jobActivationResources)
		end
		
		IterableMap.Add(resState.activeWorkers, guy.index, guy)
		IterableMap.Remove(resState.pendingWorkers, guy.index)
		if not self.WantsWorkerOrResource(guy.def.resourceType) then
			resState.inactiveTimer = false
			resState.active = true
		end
	end
	
	function self.WantsWorkerOrResource(resource)
		if not (self.def.needResource and self.def.needResource[resource]) then
			return false
		end
		local resState = self.resourceState[resource]
		local resDef = self.def.needResource[resource]
		if resDef.maximumStockpile and (resState.stockpile or 0) >= resDef.maximumStockpile then
			return false
		end
		if resState.needDelay then
			return
		end
		if resDef.jobActivationResources and not self.HasResources(resDef.jobActivationResources) then
			return false
		end
		return (resDef.count or 1) > (IterableMap.Count(resState.activeWorkers) + IterableMap.Count(resState.pendingWorkers))
	end
	
	function self.DistSqWithinWorkRange(distSq, resource)
		local radius = self.def.needResource[resource].searchRadius
		if not radius then
			return true
		end
		return distSq <= radius * radius
	end
	
	function self.GetActive()
		for i = 1, #self.def.needResourceList do
			local resource = self.def.needResourceList[i]
			if not self.resourceState[resource].active then
				return false
			end
		end
		return true
	end
	
	function self.GetStockpile(resource)
		if self.resourceState and self.resourceState[resource] then
			return self.resourceState[resource].stockpile or 0
		end
		return 0
	end
	
	function self.HasResources(resourcesRequired)
		if not resourcesRequired then
			return true
		end
		for i = 1, #self.def.needResourceList do
			local resource = self.def.needResourceList[i]
			if (self.resourceState[resource].stockpile or 0) < (resourcesRequired[resource] or 0) then
				return false
			end
		end
		return true
	end
	
	function self.UseResources(resourcesToUse)
		for i = 1, #self.def.needResourceList do
			local resource = self.def.needResourceList[i]
			if resourcesToUse[resource] then
				self.resourceState[resource].stockpile = self.resourceState[resource].stockpile - resourcesToUse[resource]
			end
		end
	end
	
	function self.HasStockpileToActivateGuy()
		if not self.def.guyActivationResources then
			return true
		end
		return self.HasResources(self.def.guyActivationResources)
	end
	
	function self.UseStockpileToActivateGuy()
		self.UseResources(self.def.guyActivationResources)
	end
	
	function self.GetPos()
		return self.pos
	end
	
	-- Init
	
	self.drawPos = TerrainHandler.GridToWorld(util.RandomPointInRectangle(self.pos, self.def.drawWiggle or 0.1, self.def.drawWiggle or 0.1))
	
	if self.def.needResource then
		InitWork(self)
	end
	
	if self.def.population then
		self.guys = self.guys or {}
		for i = 1, self.def.population do
			self.guys[#self.guys + 1] = GuyHandler.AddGuy(self.def.popType, self.pos, {homeBuilding = self})
		end
	end
	
	
	-- Updating
	
	function self.Update(dt)
		for i = 1, #self.def.needResourceList do
			local resource = self.def.needResourceList[i]
			local resState = self.resourceState[resource]
			if resState.inactiveTimer then
				resState.inactiveTimer = resState.inactiveTimer - dt
				if resState.inactiveTimer < 0 then
					resState.active = false
					resState.inactiveTimer = false
				end
			end
			if resState.needDelay then
				resState.needDelay = resState.needDelay - dt
				if resState.needDelay < 0 then
					LookForWorkersCheck(self, resource)
					resState.needDelay = false
				end
			end
		end
		if self.def.updateFunc then
			self.def.updateFunc(self, dt)
		end
		return self.toDestroy
	end
	
	function self.Draw(drawQueue)
		local drawRot = (self.spawnTimer or 0)*0.4*math.pi
		if self.def.image then
			drawQueue:push({y=1 - (self.pos[2] - self.pos[1])*0.01; f=function()
				Resources.DrawImage(self.def.image, self.drawPos[1], self.drawPos[2], 0, false, LevelHandler.TileScale(), self.GetActive() and Global.WHITE or Global.GREY)
			end})
		end
		if DRAW_DEBUG then
			love.graphics.circle('line',self.pos[1], self.pos[2], def.radius)
		end
	end
	
	function self.DrawInterface()
		
	end
	
	return self
end

return NewBuilding
