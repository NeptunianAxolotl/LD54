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
	
	activeAtGameStart = true,
	bonusOnEdges = true,
	drawWiggle = 0,
	
	collectableResourceType = "food",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and 4) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 3,
			idleTimeout = 9,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 8,
		},
	},
}

return TileUtils.InitTileData(data)
