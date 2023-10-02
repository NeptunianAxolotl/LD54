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
	cannotPairWith = {"mill", "sawmill"},
	spawnTilePositions = {{0, 0}},
	
	tooltip = "Windmill\nImproves the production of nearby farms. Requires planks to maintain, but no workers.",
	
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
