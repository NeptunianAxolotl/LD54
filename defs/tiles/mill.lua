local TileUtils = require("utilities/tileUtils")

local data = {
	image = "mill",
	groundImage = "town_ground",
	building = "mill",
	inShop = true,
	cannotPairWith = {"mill", "sawmill"},
	spawnTilePositions = {{0, 0}},
	
	doesUpgrade = "mill",
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"sawmill", Global.LONG_WALK_RANGE}},
	
	bonusOnEdges = false,
	
	needResource = {
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
