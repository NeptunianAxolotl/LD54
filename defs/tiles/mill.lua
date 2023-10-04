local TileUtils = require("utilities/tileUtils")

local data = {
	image = "mill",
	groundImage = "stone_ground",
	building = "mill",
	animationImage = "turbine",
	shopImage = "mill_together",
	animationRate = 2,
	animationOffset = {0, -113},
	
	inShop = true,
	cannotPairWith = {"blacksmith", "mill", "sawmill"},
	spawnTilePositions = {{0, 0}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Windmill\nImproves the production of nearby farms. Requires planks to maintain, but no workers."
		end
		local building = self.GetFirstBuilding()
		local text = "Windmill\nImproves the production of nearby farms.\n"
		if not building.IsResourceActive("plank") then
			text = text .. " - Needs plank from sawmill\n"
		end
		if building.GetActive() then
			text = text .. " - Upgrading nearby farms\n"
		end
		return text
	end,
	
	doesUpgrade = "mill",
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"sawmill", Global.LONG_WALK_RANGE}},
	
	bonusOnEdges = false,
	
	needResource = {
		plank = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 20,
		},
	},
}

return TileUtils.InitTileData(data)
