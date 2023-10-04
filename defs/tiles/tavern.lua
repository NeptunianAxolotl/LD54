local TileUtils = require("utilities/tileUtils")

local data = {
	image = "tavern",
	groundImage = "stone_ground",
	building = "tavern",
	inShop = true,
	cannotPairWith = {"tavern"},
	spawnTilePositions = {{0, 0}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Tavern\nImproves the speed (+50%) and range (+1) of patrons and adds a build option. Requires planks and food (3) to maintain."
		end
		local building = self.GetFirstBuilding()
		local text = "Tavern\nImproves the speed and range of patrons.\n"
		if not building.IsResourceActive("plank") then
			text = text .. " - Needs planks from sawmill\n"
		end
		if building.GetActive() then
			text = text .. " - Consuming 3 food\n"
			text = text .. " - Adding a build slot\n"
		end
		text = text .. string.format(" - People served: %d", building.peopleServed or 0)
		return text
	end,
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"sawmill", Global.LONG_WALK_RANGE}},
	
	bonusOnEdges = false,
	drawWiggle = 0.05,
	collectableResourceType = "tavern",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and 1) or 0
	end,
	
	CanVisitFunction = function (self, guy)
		if guy.def.resourceType ~= "worker" then
			return true
		end
		return not guy.IsAlreadyOnTheBeers()
	end,
	VisitFunction = function (self, guy)
		if guy.def.resourceType == "worker" then
			guy.GetOnTheBeers()
			self.peopleServed = (self.peopleServed or 0) + 1
		end
	end,
	
	needResource = {
		worker = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			dependOnActivation = "plank",
			ignoreForActivation = true,
			needDelay = 1,
		},
		plank = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 30,
		},
	},
}

return TileUtils.InitTileData(data)
