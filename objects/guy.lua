
local Font = require("include/font")

local GuyDefs = util.LoadDefDirectory("defs/guys")

local function HandleAssignedBuilding(self, dt)
	if not self.assignedBuilding then
		return
	end
	if not self.atBuilding then
		local unit, dist = util.UnitTowards(self.pos, self.assignedBuilding.GetPos())
		if dist < self.def.speed * 0.05 then
			self.atBuildingTimer = self.assignedBuilding.def.workTime
			self.atBuilding = true
			self.assignedBuilding.GuyReachedBuilding(self)
		end
		self.pos = util.Add(self.pos, util.Mult(self.def.speed * dt, unit))
	end
	
	if self.atBuildingTimer then
		self.atBuildingTimer = self.atBuildingTimer - dt
		if self.atBuildingTimer < 0 then
			self.assignedBuilding.ReleaseGuyFromBuilding(self)
			self.assignedBuilding = false
			self.goHome = true
			self.atBuildingTimer = false
		end
	end
end

local function HandleGoHome(self, dt)
	if self.atHomeTimer then
		self.atHomeTimer = self.atHomeTimer - dt
		if self.atHomeTimer < 0 then
			self.atHomeTimer = false
			self.idle = true
		end
		return
	end
	
	if not self.goHome then
		return
	end
	local unit, dist = util.UnitTowards(self.pos, self.homeBuilding.GetPos())
	if dist < self.def.speed * 0.05 then
		self.goHome = false
		self.atHomeTimer = self.def.waitAtHomeTime
		return
	end
	self.pos = util.Add(self.pos, util.Mult(self.def.speed * dt, unit))
end

local function NewGuy(self, building)
	
	self.idle = true
	
	function self.GetPos()
		return self.pos
	end
	
	function self.IsIdle()
		return self.idle
	end
	
	function self.AssignToBuilding(building)
		self.idle = false
		print("building", building)
		if self.assignedBuilding then
			self.assignedBuilding.ReleaseGuyFromBuilding(self)
		end
		self.assignedBuilding = building
		self.atBuilding = false
	end
	
	function self.Update(dt)
		HandleGoHome(self, dt)
		HandleAssignedBuilding(self, dt)
		
		if self.def.updateFunc then
			self.def.updateFunc(self, dt)
		end
		return self.toDestroy
	end
	
	function self.Draw(drawQueue)
		if self.def.image then
			drawQueue:push({y=2 + (self.pos[2] - self.pos[1])*0.01; f=function()
				local drawPos = TerrainHandler.GridToWorld(self.pos)
				Resources.DrawImage(self.def.image, drawPos[1], drawPos[2], 0, false, LevelHandler.TileScale())
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

return NewGuy
