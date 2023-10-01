local data = {
	image = "guy",
	speed = 0.8,
	resourceType = "worker",
	
	globalResourceType = "hunger",
	globalResourceTypeFunc = function (self)
		return 1
	end,
}

return data
