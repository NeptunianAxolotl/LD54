local data = {
	image = "farm",
	building = "farm",
	inShop = true,
	cannotPairWith = {"farm"},
	bonusOnEdges = true,
	
	globalStockResource = "food",
	globalStockResourceFunc = function (self)
		return self.GetActive() and 2 or 0
	end,
	
	needResource = "worker",
	needResourceCount = 1,
	workTime = 4,
	idleTimeout = 7,
	searchRadius = 4,
	homeWaitTime = 1,
	
}

return data
