local TileUtils = require("utilities/tileUtils")

local data = {
	image = "quarry_centre",
	building = "quarry_middle",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	
	population = 1,
	popType = "stone",
	bonusOnEdges = false,
	drawWiggle = 0,
	depthNudge = -16,
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 6,
			idleTimeout = 0,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 1,
			jobActivationResources = {
				tool = 1,
			},
		},
		tool = {
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
