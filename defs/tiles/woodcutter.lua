local TileUtils = require("utilities/tileUtils")

local data = {
	image = "woodcutter",
	groundImage = "workshop_ground",
	building = "woodcutter",
	inShop = true,
	cannotPairWith = {"sawmill"},
	spawnTilePositions = {{0, 0}},
	
	tooltip = "Woodcutter\nProduces logs for construction and heating homes, which boosts productivity by 50%. Requires workers and nearby forest.",
	
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
			maximumStockpile = 4,
			stockpilePerJob = 1,
		},
	},
}

return TileUtils.InitTileData(data)
