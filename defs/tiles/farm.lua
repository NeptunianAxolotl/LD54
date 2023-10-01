local TileUtils = require("utilities/tileUtils")

local data = {
	image = "farm",
	upgradeImage = "farm_adv",
	building = "farm",
	inShop = true,
	cannotPairWith = {"farm"},
	spawnTilePositions = {{0, 0}},
	canBuildOn = {"grass"},
	
	upgradeBuilding = "mill",
	upgradeDistance = 1.49,
	
	bonusOnEdges = true,
	drawWiggle = 0,
	
	globalResourceType = "food",
	globalResourceTypeFunc = function (self)
		return self.GetActive() and 2 or 0
	end,
	
	needResource = {
		worker = {
			workTime = 4,
			idleTimeout = 7,
			searchRadius = 4,
			homeWaitTime = 1,
		},
	},
}

return TileUtils.InitTileData(data)
