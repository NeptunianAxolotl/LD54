local TileUtils = require("utilities/tileUtils")

local data = {
	image = "house_single",
	upgradeImage = "house_double",
	building = "town",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0.15, -0.15}, {-0.15, 0.15}},
	
	canBuildOn = {"grass", "desert"},
	upgradeBuilding = "fountain",
	upgradeDistance = 1.49,
	
	population = 1,
	popType = "worker",
	bonusOnEdges = true,
	drawWiggle = 0.18,
	
	UpgradeChangeFunc = function (self, newState)
		self.SetPopulation(newState and 2 or 1)
	end,
	
	needResource = {
		wood = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 45,
		},
	},
	residentSpeedFunc = function (self, guy)
		if self.GetActive() then
			return 1.5 * Global.WORKER_SPEED
		end
		return 1 * Global.WORKER_SPEED
	end
}

return TileUtils.InitTileData(data)
