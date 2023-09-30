local data = {
	image = "woodcutter",
	building = "woodcutter",
	inShop = true,
	cannotPairWith = {"woodcutter"},
	spawnTilePositions = {{0, 0}},
	population = 2,
	popType = "wood",
	bonusOnEdges = false,
	maximumStockpile = 4,
	stockpilePerJob = 1,
	
	needResource = "worker",
	needResourceCount = 1,
	workTime = 5,
	idleTimeout = 4,
	searchRadius = 4,
	homeWaitTime = 1,
}

return data
