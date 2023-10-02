local TileUtils = require("utilities/tileUtils")

local data = {
	image = "chapel",
	building = "chapel",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"quarry", Global.LONG_WALK_RANGE}},
	
	tooltip = "Chapel\nAllows the shop to be refreshed. Requires stone to maintain.",
	
	bonusOnEdges = true,
	noBonusForMiddle = true,
	setBonusFlip = true,
	drawWiggle = 0.05,
	collectableResourceType = "chapel",
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
			dependOnActivation = "stone",
		},
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
