local TileUtils = require("utilities/tileUtils")

local data = {
	image = "barracks_wood",
	building = "barracks",
	inShop = true,
	cannotPairWith = {"barracks", "sawmill"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = "sawmill",
	needNearbyDist = 6,
	
	bonusOnEdges = true,
	drawWiggle = 0.05,
	
	needResource = {
		worker = {
			workTime = 12,
			idleTimeout = 4,
			searchRadius = 4,
			homeWaitTime = 1,
			dependOnActivation = "plank",
		},
		plank = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = 6,
			homeWaitTime = 1,
			needDelay = 35,
		},
	},
}

return TileUtils.InitTileData(data)
