
local Font = require("include/font")

local GuyDefs = util.LoadDefDirectory("defs/guys")

local function BecomeIdleWorkCheck(self)
	local building = BuildingHandler.GetClosestFreeBuilding(self.homeBuilding.pos, self.def.resourceType)
	if building then
		building.AssignGuyToBuilding(self)
	elseif self.def.toGlobalWhenIdle and self.IsAvailible() then
		if self.homeBuilding.def.guyActivationResources then
			self.homeBuilding.UseStockpileToActivateGuy()
		end
		self.idle = false
		ShopHandler.AddResource(self.def.toGlobalWhenIdle, self.def.toGlobalResourceCount)
		self.atHomeTimer = self.def.toGlobalIdleTime
	end
end

local function HandleAssignedBuilding(self, dt)
	if not self.assignedBuilding then
		return
	end
	if not self.atBuilding then
		local unit, dist = util.UnitTowards(self.pos, self.assignedBuilding.GetPos())
		if dist < self.def.speed * dt then
			self.atBuildingTimer = self.assignedBuilding.def.needResource[self.def.resourceType].workTime
			self.atBuilding = true
			self.assignedBuilding.GuyReachedBuilding(self)
		end
		self.pos = util.Add(self.pos, util.Mult(self.def.speed * dt, unit))
	end
	
	if self.atBuildingTimer then
		self.atBuildingTimer = self.atBuildingTimer - dt
		if self.atBuildingTimer < 0 then
			self.lastBuildingHomeTimer = self.assignedBuilding.def.needResource[self.def.resourceType].homeWaitTime
			self.assignedBuilding.ReleaseGuyFromBuilding(self, true)
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
			BecomeIdleWorkCheck(self)
		end
		return
	end
	
	if not self.goHome then
		return
	end
	local unit, dist = util.UnitTowards(self.pos, self.homeBuilding.GetPos())
	if dist < self.def.speed * 0.05 then
		self.goHome = false
		self.atHomeTimer = self.lastBuildingHomeTimer
		self.lastBuildingHomeTimer = false
		return
	end
	self.pos = util.Add(self.pos, util.Mult(self.def.speed * dt, unit))
end

local function NewGuy(self, building)

	-- API
	
	function self.GetPos()
		return self.pos
	end
	
	function self.IsAvailible()
		if not self.homeBuilding.HasStockpileToActivateGuy(self.def.resourceType) then
			return false
		end
		return self.idle
	end
	
	function self.AssignToBuilding(building)
		self.idle = false
		if self.assignedBuilding then
			self.assignedBuilding.ReleaseGuyFromBuilding(self)
		end
		if self.homeBuilding.def.guyActivationResources then
			self.homeBuilding.UseStockpileToActivateGuy()
		end
		self.assignedBuilding = building
		self.atBuilding = false
	end
	
	function self.RecheckIdleWorker()
		if self.IsAvailible() then
			BecomeIdleWorkCheck(self)
		end
	end
	
	-- Init
	
	self.idle = true
	self.RecheckIdleWorker()
	
	-- Updating
	
	function self.Update(dt)
		if self.homeBuilding.residentSpeedFunc then
			dt = dt*self.homeBuilding.residentSpeedFunc(self.homeBuilding, self)
		end
		HandleGoHome(self, dt)
		HandleAssignedBuilding(self, dt)
		
		if self.def.updateFunc then
			self.def.updateFunc(self, dt)
		end
		return self.toDestroy
	end
	
	function self.Draw(drawQueue)
		if self.def.hideWhenInactive and not (self.IsAvailible() or self.assignedBuilding) then
			return
		end
		if self.def.image then
			drawQueue:push({y=1.5 - (self.pos[2] - self.pos[1])*0.01; f=function()
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
