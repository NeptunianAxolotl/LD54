local TileUtils = require("utilities/tileUtils")

local data = {
	image = "alchemist",
	building = "alchemist",
	inShop = true,
	cannotPairWith = {"alchemist"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"mine", Global.LONG_WALK_RANGE}},
	
	bonusOnEdges = false,
	drawWiggle = 0.1,
	collectableResourceType = "alchemist",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and 1) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 10,
			idleTimeout = 10,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 2,
			dependOnActivation = "ore",
		},
		ore = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 20,
		},
	},
}

return TileUtils.InitTileData(data)
