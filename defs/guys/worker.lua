local data = {
	image = "guy",
	speed = 0.8,
	resourceType = "worker",
	
	globalStockResource = "hunger",
	globalStockResourceFunc = function (self)
		return 1
	end,
}

return data
