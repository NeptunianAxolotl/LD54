local TileUtils = require("utilities/tileUtils")

local data = {
	image = "sawmill",
	building = "sawmill",
	inShop = true,
	cannotPairWith = {"sawmill", "woodcutter"},
	spawnTilePositions = {{0, 0}},
	
	population = 2,
	popType = "wood",
	bonusOnEdges = false,
	maximumStockpile = 4,
	stockpilePerJob = 1,
	
	needResource = {
		worker = {
			workTime = 5,
			idleTimeout = 4,
			searchRadius = 4,
			homeWaitTime = 1,
		},
	},
}

return TileUtils.InitTileData(data)
