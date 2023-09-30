
local Font = require("include/font")

local TileDefs = util.LoadDefDirectory("defs/tiles")

local function LookForWorkersCheck(self)
	while self.WantsWorkerOrResource(self.def.needResource) do
		local closestGuy = GuyHandler.GetClosestIdleGuy(self.pos, self.def.searchRadius, self.def.needResource)
		if closestGuy then
			self.AssignGuyToBuilding(closestGuy)
		else
			break
		end
	end
	if self.WantsWorkerOrResource(self.def.needResource) then
		self.inactiveTimer = self.def.idleTimeout
	end
end

local function InitWork(self)
	self.pendingWorkers = IterableMap.New()
	self.activeWorkers = IterableMap.New()
	LookForWorkersCheck(self)
end

local function UpdateWork(self, dt)
	
end

local function NewBuilding(self, building)
	self.toDestroy = false
	
	-- API
	
	function self.AssignGuyToBuilding(guy)
		guy.AssignToBuilding(self)
		IterableMap.Add(self.pendingWorkers, guy.index, guy)
	end
	
	function self.ReleaseGuyFromBuilding(guy, finished)
		IterableMap.Remove(self.activeWorkers, guy.index)
		IterableMap.Remove(self.pendingWorkers, guy.index)
		if finished and self.def.maximumStockpile then
			self.stockpile = math.min(self.stockpile + self.def.stockpilePerJob, self.def.maximumStockpile)
			if self.guys then
				for i = 1, #self.guys do
					self.guys[i].RecheckIdleWorker()
				end
			end
		end
		
		if self.def.needDelayFunction then
			self.needDelay = self.def.needDelayFunction(self, guy)
		end
		if self.needDelay then
			return
		end
		LookForWorkersCheck(self)
	end
	
	function self.GuyReachedBuilding(guy)
		IterableMap.Add(self.activeWorkers, guy.index, guy)
		IterableMap.Remove(self.pendingWorkers, guy.index)
		if not self.WantsWorkerOrResource(self.def.needResource) then
			self.inactiveTimer = false
			self.active = true
		end
	end
	
	function self.WantsWorkerOrResource(resource)
		if not self.def.needResourceCount then
			return false
		end
		if self.def.needResource ~= resource then
			return false
		end
		if self.def.maximumStockpile and self.stockpile >= self.def.maximumStockpile then
			return false
		end
		if self.needDelay then
			return
		end
		return self.def.needResourceCount > (IterableMap.Count(self.activeWorkers) + IterableMap.Count(self.pendingWorkers))
	end
	
	function self.DistSqWithinWorkRange(distSq)
		if not self.def.searchRadius then
			return true
		end
		return distSq <= self.def.searchRadius * self.def.searchRadius
	end
	
	function self.GetActive()
		return (not self.def.needResourceCount) or self.active
	end
	
	function self.GetStockpile()
		return self.stockpile or 0
	end
	
	function self.UseStockpile(toUse)
		self.stockpile = self.stockpile - toUse
	end
	
	function self.GetPos()
		return self.pos
	end
	
	-- Init
	
	self.drawPos = TerrainHandler.GridToWorld(util.RandomPointInRectangle(self.pos, self.def.drawWiggle or 0.1, self.def.drawWiggle or 0.1))
	if self.def.maximumStockpile then
		self.stockpile = 0
	end
	
	if self.def.population then
		self.guys = self.guys or {}
		for i = 1, self.def.population do
			self.guys[#self.guys + 1] = GuyHandler.AddGuy(self.def.popType, self.pos, {homeBuilding = self})
		end
	end
	
	if self.def.needResourceCount then
		InitWork(self)
	end
	
	-- Updating
	
	function self.Update(dt)
		if self.inactiveTimer then
			self.inactiveTimer = self.inactiveTimer - dt
			if self.inactiveTimer < 0 then
				self.active = false
				self.inactiveTimer = false
			end
		end
		if self.needDelay then
			self.needDelay = self.needDelay - dt
			if self.needDelay < 0 then
				LookForWorkersCheck(self)
				self.needDelay = false
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
			drawQueue:push({y=1 + (self.pos[2] - self.pos[1])*0.01; f=function()
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
