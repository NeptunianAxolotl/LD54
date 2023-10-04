local TileUtils = require("utilities/tileUtils")

local data = {
	image = "fountain",
	groundImage = "stone_ground",
	building = "fountain",
	inShop = true,
	cannotPairWith = {"fountain"},
	spawnTilePositions = {{0, 0}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Fountain\nUpgrades nearby houses, allowing them to house two people. Requires stone to maintain, but no workers."
		end
		local building = self.GetFirstBuilding()
		local text = "Fountain\nAllows nearby houses to hold two people.\n"
		if not building.IsResourceActive("stone") then
			text = text .. " - Needs stone from quary\n"
		end
		if building.GetActive() then
			text = text .. " - Upgrading nearby houses\n"
		end
		return text
	end,
	
	doesUpgrade = "fountain",
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"quarry", Global.LONG_WALK_RANGE}},
	drawWiggle = 0,
	
	bonusOnEdges = false,
	
	needResource = {
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
