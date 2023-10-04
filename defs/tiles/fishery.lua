local TileUtils = require("utilities/tileUtils")

local data = {
	image = "fishery",
	groundImage = "light_ground",
	building = "fishery",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	canBuildOn = {"grass", "desert"},
	mustBuildNear = {"water"},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Fishery\nProduces food (4). Requires less work than farms, but must be built next to water."
		end
		local building = self.GetFirstBuilding()
		local text = "Fishery\nProduces food.\n"
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetActive() then
			text = text .. string.format(" - Producing %d food\n", building.def.collectableResourceTypeFunc(building))
		end
		return text
	end,
	
	upgradeBuilding = "mill",
	upgradeDistance = 1.49,
	
	activeAtGameStart = true,
	bonusOnEdges = true,
	drawWiggle = 0,
	
	collectableResourceType = "food",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and 4) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 3,
			idleTimeout = 9,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 8,
		},
	},
}

return TileUtils.InitTileData(data)
