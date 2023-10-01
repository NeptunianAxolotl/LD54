local TileUtils = require("utilities/tileUtils")

local data = {
	image = "woodcutter",
	building = "woodcutter",
	inShop = true,
	cannotPairWith = {"sawmill", "woodcutter"},
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
			workTime = 5,
			idleTimeout = 4,
			searchRadius = 4,
			homeWaitTime = 1,
			maximumStockpile = 4,
			stockpilePerJob = 1,
		},
	},
}

return TileUtils.InitTileData(data)
