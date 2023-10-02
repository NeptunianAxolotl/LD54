local TileUtils = require("utilities/tileUtils")

local data = {
	image = "blacksmith",
	building = "blacksmith",
	inShop = true,
	cannotPairWith = {"mine", "blacksmith"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"mine", Global.LONG_WALK_RANGE}},
	
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
			maximumStockpile = 3,
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
			maximumStockpile = 3,
			stockpilePerJob = 1,
			ignoreForActivation = true,
		},
	},
}

return TileUtils.InitTileData(data)
