local TileUtils = require("utilities/tileUtils")

local data = {
	image = "mill",
	building = "mill",
	inShop = true,
	cannotPairWith = {"mill", "sawmill"},
	spawnTilePositions = {{0, 0}},
	
	doesUpgrade = "mill",
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = "sawmill",
	needNearbyDist = 6,
	
	bonusOnEdges = false,
	
	needResource = {
		plank = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = 6,
			homeWaitTime = 1,
			needDelay = 20,
		},
	},
}

return TileUtils.InitTileData(data)
