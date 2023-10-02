local TileUtils = require("utilities/tileUtils")

local data = {
	image = "plenty",
	building = "plenty",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	canBuildOn = {"grass"},
	
	
	bonusOnEdges = false,
	drawWiggle = 0,
	depthNudge = -0.1,
	
	collectableResourceType = "food",
	collectableResourceTypeFunc = function (self)
		return 200
	end,
}

return TileUtils.InitTileData(data)
