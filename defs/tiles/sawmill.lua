local TileUtils = require("utilities/tileUtils")

local data = {
	image = "sawmill",
	groundImage = "workshop_ground",
	building = "sawmill",
	inShop = true,
	cannotPairWith = {"mill", "sawmill", "woodcutter"},
	spawnTilePositions = {{0, 0}},
	
	tooltip = "Sawmill\nProcesses logs into planks to maintain a variety of wooden structures.",
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"woodcutter", Global.LONG_WALK_RANGE}},
	
	population = 1,
	popType = "plank",
	bonusOnEdges = false,
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 4,
			idleTimeout = 0,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 2,
			jobActivationResources = {
				wood = 1,
			},
		},
		wood = {
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
