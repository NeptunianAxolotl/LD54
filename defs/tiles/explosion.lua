local TileUtils = require("utilities/tileUtils")

local data = {
	image = "explosion",
	building = "explosion",
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	destroyPlacement = true,
	
	canBuildOn = false, -- Anywhere
	needBuildingNearby = {{"alchemist", Global.ALCHEMIST_RANGE}},
	
	bonusOnEdges = false,
	drawWiggle = 0.1,
}

return TileUtils.InitTileData(data)
