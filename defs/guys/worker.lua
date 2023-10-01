local data = {
	image = "guy",
	speed = 0.8,
	resourceType = "worker",
	
	collectableResourceType = "hunger",
	collectableResourceTypeFunc = function (self)
		return 2
	end,
}

return data
