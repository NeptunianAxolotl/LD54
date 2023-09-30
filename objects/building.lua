
local Font = require("include/font")

local TileDefs = util.LoadDefDirectory("defs/tiles")

local function LookForWorkersCheck(self)
	while self.WantsWorker() do
		local closestGuy = GuyHandler.GetClosestIdleGuy(self.pos, self.def.searchRadius)
		if closestGuy then
			self.AssignGuyToBuilding(closestGuy)
		else
			break
		end
	end
	if self.WantsWorker() then
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
	
	function self.ReleaseGuyFromBuilding(guy)
		IterableMap.Remove(self.activeWorkers, guy.index)
		IterableMap.Remove(self.pendingWorkers, guy.index)
		LookForWorkersCheck(self)
	end
	
	function self.GuyReachedBuilding(guy)
		IterableMap.Add(self.activeWorkers, guy.index, guy)
		IterableMap.Remove(self.pendingWorkers, guy.index)
		if not self.WantsWorker() then
			self.inactiveTimer = false
			self.active = true
		end
	end
	
	function self.WantsWorker()
		if not self.def.needWorkers then
			return false
		end
		return self.def.needWorkers > (IterableMap.Count(self.activeWorkers) + IterableMap.Count(self.pendingWorkers))
	end
	
	function self.DistSqWithinWorkRange(distSq)
		if not self.def.searchRadius then
			return true
		end
		return distSq <= self.def.searchRadius * self.def.searchRadius
	end
	
	function self.GetActive()
		return (not self.def.needWorkers) or self.active
	end
	
	function self.GetPos()
		return self.pos
	end
	
	-- Init
	
	self.drawPos = TerrainHandler.GridToWorld(util.RandomPointInRectangle(self.pos, self.def.drawWiggle or 0.1, self.def.drawWiggle or 0.1))
	
	if self.def.population then
		self.guys = self.guys or {}
		for i = 1, self.def.population do
			self.guys[#self.guys + 1] = GuyHandler.AddGuy(self.def.popType, self.pos, {homeBuilding = self})
		end
	end
	
	if self.def.needWorkers then
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
