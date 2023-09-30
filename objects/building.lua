
local Font = require("include/font")

local TileDefs = util.LoadDefDirectory("defs/tiles")

local function InitWork(self)
	self.pendingWorkers = IterableMap.New()
	self.activeWorkers = IterableMap.New()
	local closestGuy = GuyHandler.GetClosestIdleGuy(self.pos, self.def.searchRadius)
	print('InitWork', closestGuy)
	if closestGuy then
		self.AssignGuyToBuilding(closestGuy)
	end
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
		-- Do get guy check
	end
	
	function self.GuyReachedBuilding(guy)
		IterableMap.Add(self.activeWorkers, guy.index)
		IterableMap.Remove(self.pendingWorkers, guy.index)
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
	
	if self.def.needWork then
		InitWork(self)
	end
	
	-- Updating
	
	function self.Update(dt)
		if self.def.updateFunc then
			self.def.updateFunc(self, dt)
		end
		return self.toDestroy
	end
	
	function self.Draw(drawQueue)
		local drawRot = (self.spawnTimer or 0)*0.4*math.pi
		if self.def.image then
			drawQueue:push({y=1 + (self.pos[2] - self.pos[1])*0.01; f=function()
				Resources.DrawImage(self.def.image, self.drawPos[1], self.drawPos[2], 0, false, LevelHandler.TileScale())
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
