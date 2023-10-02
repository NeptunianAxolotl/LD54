local TileUtils = require("utilities/tileUtils")

local data = {
	image = "woodblock",
	building = "woodblock",
	inShop = false,
	cannotPairWith = {"sawmill"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	mustBuildNear = {"forest"},
	drawWiggle = 0.12,
	
	population = 1,
	popType = "wood",
	bonusOnEdges = false,
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 9,
			idleTimeout = 1,
			searchRadius = Global.MEDIUM_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = 4,
			stockpilePerJob = 1,
		},
	},
}

return TileUtils.InitTileData(data)
