local TileUtils = require("utilities/tileUtils")

local data = {
	image = "barracks",
	groundImage = "workshop_ground",
	building = "tower",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	placementDrawRange = Global.INVASION_RANGE,
	placementDrawHighlight = "invasion",
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Tower\nTowers train two scouts, while walls train one. Require a worker and stone to maintain. Tools double scouting."
		end
		local building = self.GetFirstBuilding()
		local text = "Tower\nTrains two scouts.\n"
		if not building.IsResourceActive("stone") then
			text = text .. " - Needs stone from quary\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetActive() then
			text = text .. string.format(" - Providing %d scouts\n", building.def.collectableResourceTypeFunc(building))
		end
		if building.IsResourceActive("tool") then
			text = text .. " - Tool providing +2 scouts"
		end
		return text
	end,
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"quarry", Global.LONG_WALK_RANGE}, {"invasion", Global.INVASION_RANGE}},
	destroyIfNotNearby = "invasion",
	
	bonusOnEdges = true,
	noBonusForMiddle = true,
	bonusBuilding = "tower_edge",
	setBonusFlip = true,
	drawWiggle = 0,
	collectableResourceType = "army",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and (self.IsResourceActive("tool") and 4 or 2)) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 10,
			idleTimeout = 7,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			dependOnActivation = "stone",
			needDelay = 2,
		},
		stone = {
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
