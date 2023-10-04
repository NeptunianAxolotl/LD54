local TileUtils = require("utilities/tileUtils")

local data = {
	image = "house_single",
	groundImage = "stone_ground",
	upgradeImage = "house_double",
	building = "town",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0.15, -0.15}, {-0.15, 0.15}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Housing\nEach home houses one worker, which require food (2). Many buildings need workers nearby so keep expanding the town."
		end
		local building = self.GetFirstBuilding()
		local text = "House\nHouses workers.\n"
		if (building.currentPop or 1) == 1 then
			text = text .. " - Housing 1 worker\n"
			text = text .. " - Consuming 2 food\n"
		else
			text = text .. " - Housing 2 workers\n"
			text = text .. " - Consuming 4 food\n"
		end
		if building.IsResourceActive("wood") then
			text = text .. " - Has logs for heating\n"
			local difficulty = LevelHandler.GetDifficulty()
			if difficulty.heatBoost > 1 then
				text = text .. string.format(" - Worker speed +%d%%\n", (difficulty.heatBoost - 1)*100)
			end
		end
		return text
	end,
	
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
		local difficulty = LevelHandler.GetDifficulty()
		if self.GetActive() then
			return difficulty.heatBoost * difficulty.workerSpeed
		end
		return difficulty.workerSpeed
	end
}

return TileUtils.InitTileData(data)
