
local Font = require("include/font")

local TileDefs = util.LoadDefDirectory("defs/tiles", "defName")

local function CheckAddBonus(self, direction, extraParents, rotation)
	local other = TerrainHandler.GetTile(self.pos, direction)
	if other and other.def.building == self.def.building then
		local parents = {self, other}
		if extraParents then
			for i = 1, #extraParents do
				local extra = TerrainHandler.GetTile(self.pos, extraParents[i])
				if extra then
					parents[#parents + 1] = extra
				end
			end
		end
		local extraData = {}
		if rotation and self.def.setBonusFlip then
			extraData.drawFlip = 1 - 2*(rotation%2)
		end
		local buildingType = self.def.bonusBuilding or self.def.building
		if not rotation and self.def.bonusBuildingMiddle then
			buildingType = self.def.bonusBuildingMiddle
		end
		BuildingHandler.AddBuilding(parents, buildingType, util.Add(self.pos, util.Mult(0.5, direction)), extraData)
		return true
	end
	return false
end

local function GenerateBonusBuildings(self)
	local hasBonus = {}
	for i = 0, 3 do
		if CheckAddBonus(self, util.CardinalToVector(i), false, i) then
			hasBonus[i] = true
		end
	end
	
	if self.def.noBonusForMiddle then
		return
	end
	if hasBonus[0] and hasBonus[1] then
		CheckAddBonus(self, {1, 1}, {{1, 0}, {0, 1}})
	end
	if hasBonus[1] and hasBonus[2] then
		CheckAddBonus(self, {-1, 1}, {{-1, 0}, {0, 1}})
	end
	if hasBonus[2] and hasBonus[3] then
		CheckAddBonus(self, {-1, -1}, {{-1, 0}, {0, -1}})
	end
	if hasBonus[3] and hasBonus[0] then
		CheckAddBonus(self, {1, -1}, {{1, 0}, {0, -1}})
	end
end

local function NewTile(self, terrain, buildingData)
	self.worldPos = TerrainHandler.GridToWorld(self.pos)
	
	self.buildings = IterableMap.New()
	function self.AddBuilding(building)
		IterableMap.Add(self.buildings, building)
	end
	
	for i = 1, #self.def.spawnTilePositions do
		BuildingHandler.AddBuilding({self}, self.def.building, util.Add(self.pos, self.def.spawnTilePositions[i]), buildingData)
	end
	
	if self.def.bonusOnEdges then
		GenerateBonusBuildings(self)
	end
	
	function self.GetPos()
		return self.pos
	end
	
	function self.IsDestroyed()
		return self.toDestroy
	end
	
	function self.NearDestroyRequirement(destroyType)
		if destroyType ~= self.def.destroyIfNotNearby then
			return true
		end
		for i = 1, #self.def.needBuildingNearby do
			local near = self.def.needBuildingNearby[i]
			if near[1] == destroyType then
				if BuildingHandler.IsBuildingNear(self.pos, near[1], near[2]) then
					return true
				end
			end
		end
		return false
	end
	
	function self.DeleteTile()
		self.toDestroy = true
	end
	
	function self.DeleteFlaggedBuildings()
		IterableMap.ApplySelf(self.buildings, "DeleteIfFlagged")
	end
	
	function self.Export(objList)
		local exportData = {} -- Save level
		objList[#objList + 1] = exportData
	end
	
	function self.Update(dt)
		if self.def.updateFunc then
			self.def.updateFunc(self, dt)
		end
	end
	
	function self.Draw(drawQueue)
		if self.def.groundImage then
			drawQueue:push({y=-80 - (self.pos[2] - self.pos[1])*0.01; f=function()
				Resources.DrawImage(self.def.groundImage, self.worldPos[1], self.worldPos[2])
			end})
		end
	end
	
	function self.DrawInterface()
		
	end
	
	return self
end

return NewTile
