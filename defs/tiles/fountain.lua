local TileUtils = require("utilities/tileUtils")

local data = {
	image = "fountain",
	groundImage = "town_ground",
	building = "fountain",
	inShop = true,
	cannotPairWith = {"fountain"},
	spawnTilePositions = {{0, 0}},
	
	tooltip = "Fountain\nUpgrades nearby houses, allowing them to house two people. Requires stone to maintain.",
	
	doesUpgrade = "fountain",
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"quarry", Global.LONG_WALK_RANGE}},
	drawWiggle = 0,
	
	bonusOnEdges = false,
	
	needResource = {
		stone = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 20,
		},
	},
}

return TileUtils.InitTileData(data)
