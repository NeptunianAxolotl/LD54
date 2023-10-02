local TileUtils = require("utilities/tileUtils")

local data = {
	image = "cathedral",
	groundImage = "stone_ground",
	building = "cathedral",
	inShop = true,
	cannotPairWith = {"cathedral"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"quarry", Global.LONG_WALK_RANGE}, {"cathedral", Global.CATHEDRAL_BUILD_GAP, true}},
	
	tooltip = "Cathedral\nExpands build options and boosts explorer effectiveness (+20%) but requires significant stone to maintain.",
	
	bonusOnEdges = false,
	collectableResourceType = "cathedral",
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
			idleTimeout = 8,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 5,
		},
	},
}

return TileUtils.InitTileData(data)
