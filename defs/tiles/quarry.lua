local TileUtils = require("utilities/tileUtils")

local data = {
	image = "quarry",
	building = "quarry",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	
	tooltip = "Quarry\nProduces stone for advanced structures. Requires tools and workers.",
	
	population = 1,
	popType = "stone",
	bonusOnEdges = true,
	setBonusFlip = true,
	bonusBuilding = "quarry_edge",
	bonusBuildingMiddle = "quarry_middle",
	
	needBuildingNearby = {{"blacksmith", Global.LONG_WALK_RANGE}},
	drawWiggle = 0,
	drawFlip = 1,
	depthNudge = -20,
	
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
