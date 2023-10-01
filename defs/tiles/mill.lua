local TileUtils = require("utilities/tileUtils")

local data = {
	image = "mill",
	building = "mill",
	inShop = true,
	cannotPairWith = {"mill"},
	spawnTilePositions = {{0, 0}},
	
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
			needDelay = 30,
		},
	},
}

return TileUtils.InitTileData(data)
