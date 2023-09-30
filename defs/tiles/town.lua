local data = {
	image = "town",
	building = "town",
	inShop = true,
	--cannotPairWith = {"town"},
	population = 1,
	popType = "worker",
	bonusOnEdges = true,
	drawWiggle = 0.25,
	
	needResource = "wood",
	needResourceCount = 1,
	workTime = 1,
	idleTimeout = 0,
	searchRadius = 6,
	homeWaitTime = 1,
	needDelayFunction = function (self, guy)
		return guy.def.resourceAmount
	end,
	residentSpeedFunc = function (self, guy)
		if self.needDelay then
			return 1.25
		end
		return 1
	end
}

return data
