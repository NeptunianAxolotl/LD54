local TileUtils = require("utilities/tileUtils")

local data = {
	image = "mine",
	groundImage = "workshop_ground",
	building = "mine",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	tooltip = "Mine\nProduces ore for use by the blacksmith and alchemist. Requires workers, a mountain, and planks to maintain.",
	
	canBuildOn = {"grass", "desert"},
	mustBuildNear = {"mountain"},
	needBuildingNearby = {{"sawmill", Global.LONG_WALK_RANGE}},
	
	population = 1,
	popType = "ore",
	bonusOnEdges = true,
	bonusBuilding = "mine",
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 6,
			idleTimeout = 1,
			searchRadius = Global.MEDIUM_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = 4,
			stockpilePerJob = 1,
			dependOnActivation = "plank",
		},
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
