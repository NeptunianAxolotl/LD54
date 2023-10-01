local TileUtils = require("utilities/tileUtils")

local data = {
	image = "fishery",
	building = "fishery",
	inShop = true,
	cannotPairWith = {"fishery"},
	spawnTilePositions = {{0, 0}},
	canBuildOn = {"grass", "desert"},
	mustBuildNear = {"water"},
	
	upgradeBuilding = "mill",
	upgradeDistance = 1.49,
	
	bonusOnEdges = true,
	drawWiggle = 0,
	
	collectableResourceType = "food",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and 3) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 8,
			idleTimeout = 6,
			searchRadius = 4,
			homeWaitTime = 1,
			needDelay = 1,
		},
	},
}

return TileUtils.InitTileData(data)
