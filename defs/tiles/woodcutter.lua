local TileUtils = require("utilities/tileUtils")

local data = {
	image = "woodcutter",
	groundImage = "workshop_ground",
	building = "woodcutter",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	tooltip = "Woodcutter\nProduces logs for construction and heating homes, boosting speed and productivity by 50%. Requires workers and trees.",
	
	canBuildOn = {"grass", "desert"},
	mustBuildNear = {"forest"},
	
	population = 1,
	popType = "wood",
	bonusOnEdges = true,
	bonusBuilding = "woodblock",
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 6,
			idleTimeout = 1,
			searchRadius = Global.MEDIUM_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 1,
		},
	},
}

return TileUtils.InitTileData(data)
