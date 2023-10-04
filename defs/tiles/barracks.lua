local TileUtils = require("utilities/tileUtils")

local data = {
	image = "barracks_wood",
	groundImage = "workshop_ground",
	building = "barracks",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	placementDrawRange = Global.INVASION_RANGE,
	placementDrawHighlight = "invasion",
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"sawmill", Global.LONG_WALK_RANGE}, {"invasion", Global.INVASION_RANGE}},
	destroyIfNotNearby = "invasion",
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Outpost\nTrains one scout. Requires a worker and planks from the sawmill to maintain. Tools double the number of scouts."
		end
		local building = self.GetFirstBuilding()
		local text = "Outpost\nTrains scouts for exploration.\n"
		if not building.IsResourceActive("plank") then
			text = text .. " - Needs plank from sawmill\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetActive() then
			text = text .. string.format(" - Providing %d scouts\n", building.def.collectableResourceTypeFunc(building))
		end
		if building.IsResourceActive("tool") then
			text = text .. " - Tool providing +1 scout"
		end
		return text
	end,
	
	bonusOnEdges = false,
	drawWiggle = 0.05,
	collectableResourceType = "army",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and (self.IsResourceActive("tool") and 2 or 1)) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 10,
			idleTimeout = 5,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			dependOnActivation = "plank",
			needDelay = 2,
		},
		plank = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 30,
		},
		tool = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 60,
			ignoreForActivation = true,
		},
	},
}

return TileUtils.InitTileData(data)
