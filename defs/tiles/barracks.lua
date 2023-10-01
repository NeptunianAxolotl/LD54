local TileUtils = require("utilities/tileUtils")

local data = {
	image = "barracks_wood",
	building = "barracks",
	inShop = true,
	cannotPairWith = {"sawmill"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"sawmill", 6}, {"invasion", Global.INVASION_RANGE}},
	destroyIfNotNearby = "invasion",
	
	bonusOnEdges = true,
	drawWiggle = 0.05,
	collectableResourceType = "army",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and (self.HasUpgrade() and 2 or 1)) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 10,
			idleTimeout = 4,
			searchRadius = 4,
			homeWaitTime = 1,
			dependOnActivation = "plank",
			needDelay = 2,
		},
		plank = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = 6,
			homeWaitTime = 1,
			needDelay = 30,
		},
	},
}

return TileUtils.InitTileData(data)
