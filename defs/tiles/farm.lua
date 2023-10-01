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
	depthNudge = -0.1,
	
	collectableResourceType = "food",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and (self.HasUpgrade() and 3 or 2)) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 4,
			idleTimeout = 10,
			searchRadius = 4,
			homeWaitTime = 1,
			needDelay = 1,
		},
	},
}

return TileUtils.InitTileData(data)
