local TileUtils = require("utilities/tileUtils")

local data = {
	image = "alchemist",
	groundImage = "stone_ground",
	building = "alchemist",
	inShop = true,
	cannotPairWith = {"alchemist"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"mine", Global.LONG_WALK_RANGE}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Alchemist\nProduces explosives from ore. Explosives are used to destroy buildings when they are no longer required."
		end
		local building = self.GetFirstBuilding()
		local text = "Alchemist\nProduces explosives from ore.\n"
		if not building.IsResourceActive("ore") then
			text = text .. " - Needs ore from mines\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetActive() then
			text = text .. " - Producing explosives\n"
		end
		return text
	end,
	
	bonusOnEdges = false,
	drawWiggle = 0.1,
	collectableResourceType = "alchemist",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and 1) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 10,
			idleTimeout = 10,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 2,
			dependOnActivation = "ore",
		},
		ore = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 20,
		},
	},
}

return TileUtils.InitTileData(data)
