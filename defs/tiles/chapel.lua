local TileUtils = require("utilities/tileUtils")

local data = {
	image = "chapel",
	groundImage = "stone_ground",
	building = "chapel",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"quarry", Global.LONG_WALK_RANGE}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Chapel\nAllows the shop to be refreshed. Requires stone to maintain."
		end
		local building = self.GetFirstBuilding()
		local text = "Chapel\nAllows the shop to be refreshed.\n"
		if not building.IsResourceActive("stone") then
			text = text .. " - Needs stone from quary\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetActive() then
			text = text .. " - Charging refresh\n"
		end
		return text
	end,
	
	bonusOnEdges = true,
	noBonusForMiddle = true,
	setBonusFlip = true,
	drawWiggle = 0.05,
	collectableResourceType = "chapel",
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
			dependOnActivation = "stone",
		},
		stone = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 20,
		},
	},
}

return TileUtils.InitTileData(data)
