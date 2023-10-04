local TileUtils = require("utilities/tileUtils")

local data = {
	image = "woodcutter",
	groundImage = "workshop_ground",
	building = "woodcutter",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	TooltipFunc = function() 
		if LevelHandler.GetDifficulty().heatBoost == 1 then
			return "Woodcutter\nProduces logs for construction and heating homes. Requires workers and trees."
		end
		return string.format("Woodcutter\nProduces logs for construction and heating homes, boosting worker speed by %d%%. Requires workers and trees.", (LevelHandler.GetDifficulty().heatBoost - 1)*100)
	end,
	
	canBuildOn = {"grass", "desert"},
	mustBuildNear = {"forest"},
	
	population = 1,
	popType = "wood",
	bonusOnEdges = true,
	bonusBuilding = "woodblock",
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 6,
			idleTimeout = 1,
			searchRadius = Global.MEDIUM_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 1,
		},
	},
}

return TileUtils.InitTileData(data)
