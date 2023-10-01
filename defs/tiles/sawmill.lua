local TileUtils = require("utilities/tileUtils")

local data = {
	image = "sawmill",
	building = "sawmill",
	inShop = true,
	cannotPairWith = {"mill", "sawmill", "woodcutter"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = "woodcutter",
	needNearbyDist = 6,
	
	population = 1,
	popType = "plank",
	bonusOnEdges = false,
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 6,
			idleTimeout = 4,
			searchRadius = 4,
			homeWaitTime = 1,
			maximumStockpile = 3,
			stockpilePerJob = 1,
			jobActivationResources = {
				wood = 1,
			},
		},
		wood = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = 6,
			homeWaitTime = 1,
			maximumStockpile = 3,
			stockpilePerJob = 1,
			ignoreForActivation = true,
		},
	},
}

return TileUtils.InitTileData(data)
