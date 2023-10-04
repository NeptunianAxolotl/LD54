local TileUtils = require("utilities/tileUtils")

local data = {
	image = "cathedral",
	groundImage = "stone_ground",
	building = "cathedral",
	inShop = true,
	cannotPairWith = {"cathedral"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"quarry", Global.LONG_WALK_RANGE}, {"cathedral", Global.CATHEDRAL_BUILD_GAP, true}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Cathedral\nExpands build options and boosts scout effectiveness (+20%) but requires significant stone to maintain."
		end
		local building = self.GetFirstBuilding()
		local text = "Cathedral\nExpands build options and boosts scout effectiveness.\n"
		if not building.IsResourceActive("stone") then
			text = text .. " - Needs stone from quary\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetActive() then
			text = text .. " - Boosting scouts by 20%\n"
			text = text .. " - Adding a build slot\n"
		end
		return text
	end,
	
	bonusOnEdges = false,
	collectableResourceType = "cathedral",
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
			idleTimeout = 8,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 5,
		},
	},
}

return TileUtils.InitTileData(data)
