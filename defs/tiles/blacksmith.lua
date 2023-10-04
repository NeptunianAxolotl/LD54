local TileUtils = require("utilities/tileUtils")

local data = {
	image = "blacksmith",
	groundImage = "stone_ground",
	building = "blacksmith",
	inShop = true,
	cannotPairWith = {"blacksmith", "mill", "sawmill"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"mine", Global.LONG_WALK_RANGE}},
	
	tooltip = "Blacksmith\nProduces tools from ore. Tools are used to double scout effectiveness, and are used to quarry stone.",
	
	population = 1,
	popType = "tool",
	bonusOnEdges = false,
	
	guyActivationResources = {
		worker = 1,
	},
	drawWiggle = 0.1,
	
	needResource = {
		worker = {
			workTime = 4,
			idleTimeout = 0,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 2,
			jobActivationResources = {
				ore = 1,
			},
		},
		ore = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 1,
			ignoreForActivation = true,
		},
	},
}

return TileUtils.InitTileData(data)
