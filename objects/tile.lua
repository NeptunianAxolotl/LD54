
local Font = require("include/font")

local TileDefs = util.LoadDefDirectory("defs/tiles", "defName")

local function CheckAddBonus(self, direction)
	local other = TerrainHandler.GetTile(self.pos, direction)
	if other and other.def.building == self.def.building then
		BuildingHandler.AddBuilding({self, other}, self.def.building, util.Add(self.pos, util.Mult(0.5, direction)))
		return true
	end
	return false
end

local function GenerateBonusBuildings(self)
	local hasBonus = {}
	for i = 0, 3 do
		if CheckAddBonus(self, util.CardinalToVector(i)) then
			hasBonus[i] = true
		end
	end
	
	if hasBonus[0] and hasBonus[1] then
		CheckAddBonus(self, {1, 1})
	end
	if hasBonus[1] and hasBonus[2] then
		CheckAddBonus(self, {-1, 1})
	end
	if hasBonus[2] and hasBonus[3] then
		CheckAddBonus(self, {-1, -1})
	end
	if hasBonus[3] and hasBonus[0] then
		CheckAddBonus(self, {1, -1})
	end
end

local function NewTile(self, terrain)
	self.toDestroy = false
	
	self.worldPos = TerrainHandler.GridToWorld(self.pos)
	
	self.buildings = IterableMap.New()
	function self.AddBuilding(building)
		IterableMap.Add(self.buildings, building)
	end
	
	for i = 1, #self.def.spawnTilePositions do
		BuildingHandler.AddBuilding({self}, self.def.building, util.Add(self.pos, self.def.spawnTilePositions[i]))
	end
	
	if self.def.bonusOnEdges then
		GenerateBonusBuildings(self)
	end
	
	function self.GetPos()
		return self.pos
	end
	
	function self.Export(objList)
		local exportData = {} -- Save level
		objList[#objList + 1] = exportData
	end
	
	
	function self.Update(dt)
		if self.def.updateFunc then
			self.def.updateFunc(self, dt)
		end
		return self.toDestroy
	end
	
	function self.Draw(drawQueue)
	end
	
	function self.DrawInterface()
		
	end
	
	return self
end

return NewTile
