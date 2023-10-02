local TileUtils = require("utilities/tileUtils")

local data = {
	image = "barracks",
	groundImage = "workshop_ground",
	building = "tower",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"quarry", Global.LONG_WALK_RANGE}, {"invasion", Global.INVASION_RANGE}},
	destroyIfNotNearby = "invasion",
	
	bonusOnEdges = true,
	noBonusForMiddle = true,
	bonusBuilding = "tower_edge",
	setBonusFlip = true,
	drawWiggle = 0,
	collectableResourceType = "army",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and (self.IsResourceActive("tool") and 3 or 2)) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 10,
			idleTimeout = 5,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			dependOnActivation = "stone",
			needDelay = 2,
		},
		stone = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 30,
		},
		tool = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 60,
			ignoreForActivation = true,
		},
	},
}

return TileUtils.InitTileData(data)
