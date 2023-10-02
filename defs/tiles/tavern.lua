local TileUtils = require("utilities/tileUtils")

local data = {
	image = "tavern",
	groundImage = "stone_ground",
	building = "tavern",
	inShop = true,
	cannotPairWith = {"tavern"},
	spawnTilePositions = {{0, 0}},
	
	tooltip = "Tavern\nImproves the speed and productivity of visitors (+50%) and increases build slots. Requires planks to maintain.",
	
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
