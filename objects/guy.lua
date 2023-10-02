
local Font = require("include/font")

local GuyDefs = util.LoadDefDirectory("defs/guys")

local function BecomeIdleWorkCheck(self)
	if not self.IsAvailible() then
		return
	end
	local building = BuildingHandler.GetClosestFreeBuilding(self, self.homeBuilding.pos, self.def.resourceType, self.searchRangeBuff)
	if building then
		building.AssignGuyToBuilding(self)
	--elseif self.def.globalStockWhenIdle and self.IsAvailible() then
	--	-- Global stock seems like a bad idea?
	--	if self.homeBuilding.def.guyActivationResources then
	--		self.homeBuilding.UseStockpileToActivateGuy()
	--	end
	--	self.idle = false
	--	ShopHandler.AddResource(self.def.globalStockWhenIdle, self.def.globalStockResourceCount)
	--	self.atHomeTimer = self.def.globalStockIdleTime
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

local function RemoveFromAssignedBuilding(self)
	self.assignedBuilding.ReleaseGuyFromBuilding(self)
	self.assignedBuilding = false
	self.goHome = true
	self.atBuildingTimer = false
end

local function NewGuy(self, building)

	-- API
	
	function self.GetPos()
		return self.pos
	end
	
	function self.GetRangeBuff()
		return self.searchRangeBuff or 0
	end
	
	function self.IsAlreadyOnTheBeers()
		return self.beerBuffTimer and true or false
	end
	
	function self.GetOnTheBeers()
		self.beerBuffTimer = Global.BEER_BUFF_TIME
		self.searchRangeBuff = Global.BEER_RANGE_BUFF
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
	
	function self.FlagGuyForDeletion()
		self.flaggedForDeletion = true
	end
	
	function self.DeleteGuyIfFlagged()
		if not self.flaggedForDeletion then
			return false
		end
		if self.assignedBuilding then
			RemoveFromAssignedBuilding(self)
		end
		self.homeBuilding = false
		self.toDestroy = true
		self.flaggedForDeletion = false
		return true
	end
	
	function self.DeleteFlaggedBuildings()
		if self.homeBuilding and self.homeBuilding.DeleteIfFlagged() then
			if self.assignedBuilding then
				RemoveFromAssignedBuilding(self)
			end
			self.homeBuilding = false
			self.toDestroy = true
		end
		if self.assignedBuilding and self.assignedBuilding.DeleteIfFlagged() then
			RemoveFromAssignedBuilding(self)
		end
		return self.toDestroy
	end
	
	-- Init
	
	self.idle = true
	self.RecheckIdleWorker()
	
	-- Updating
	
	function self.Update(dt)
		if self.homeBuilding.residentSpeedFunc then
			dt = dt*self.homeBuilding.residentSpeedFunc(self.homeBuilding, self)
		end
		if self.beerBuffTimer then
			self.beerBuffTimer = self.beerBuffTimer - dt -- Note that heated homes make beer buff run out faster.
			if self.beerBuffTimer < 0 then
				self.beerBuffTimer = false
				self.searchRangeBuff = false
			else
				dt = dt*Global.BEER_BUFF_MULT
			end
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
			drawQueue:push({y=1.00001 - (self.pos[2] - self.pos[1])*0.01; f=function()
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
