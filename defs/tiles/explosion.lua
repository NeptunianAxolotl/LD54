local TileUtils = require("utilities/tileUtils")

local data = {
	image = "explosion",
	building = "explosion",
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	destroyPlacement = true,
	
	TooltipFunc = function() 
		local refreshInfo = GameHandler.GetStockInfo("explosion")
		local income = BuildingHandler.CountResourceType("alchemist")
		return string.format("Explosives\nClears buildings. Income is gaained after placing a tile.\n  - Stockpile: %d\n  - Income: %d\n  - Current cost: %d", refreshInfo.total, income, refreshInfo.cost)
	end,
	
	canBuildOn = false, -- Anywhere
	needBuildingNearby = {{"alchemist", Global.ALCHEMIST_RANGE}},
	
	bonusOnEdges = false,
	drawWiggle = 0.1,
}

return TileUtils.InitTileData(data)
