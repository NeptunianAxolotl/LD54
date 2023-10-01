local TileUtils = require("utilities/tileUtils")

local data = {
	image = "house_single",
	building = "town",
	inShop = true,
	cannotPairWith = {"town"},
	spawnTilePositions = {{0.15, -0.15}, {-0.15, 0.15}},
	
	canBuildOn = {"grass", "desert"},
	
	population = 1,
	popType = "worker",
	bonusOnEdges = true,
	drawWiggle = 0.18,
	
	needResource = {
		wood = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = 6,
			homeWaitTime = 1,
		},
	},
	needDelayFunction = function (self, guy)
		return guy.def.resourceAmount
	end,
	residentSpeedFunc = function (self, guy)
		if self.GetActive() then
			return 1.5
		end
		return 1
	end
}

return TileUtils.InitTileData(data)
