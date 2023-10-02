local TileUtils = require("utilities/tileUtils")

local data = {
	image = "quarry_wall",
	building = "quarry_edge",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	
	population = 1,
	popType = "stone",
	bonusOnEdges = false,
	drawWiggle = 0,
	depthNudge = -18,
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 4,
			idleTimeout = 0,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = 3,
			stockpilePerJob = 2,
			jobActivationResources = {
				tool = 1,
			},
		},
		tool = {
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
