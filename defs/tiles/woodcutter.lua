local TileUtils = require("utilities/tileUtils")

local data = {
	image = "woodcutter",
	building = "woodcutter",
	inShop = true,
	cannotPairWith = {"sawmill"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	mustBuildNear = {"forest"},
	
	population = 2,
	popType = "wood",
	bonusOnEdges = true,
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 6,
			idleTimeout = 1,
			searchRadius = 5,
			homeWaitTime = 1,
			maximumStockpile = 4,
			stockpilePerJob = 2,
		},
	},
}

return TileUtils.InitTileData(data)
