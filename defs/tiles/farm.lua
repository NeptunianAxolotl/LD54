local TileUtils = require("utilities/tileUtils")

local data = {
	image = "farm",
	upgradeImage = "farm_adv",
	building = "farm",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	canBuildOn = {"grass"},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Farm\nProduces food (3). Requires workers and cannot be built on desert. An adjacent windmill improves food output (5)."
		end
		local building = self.GetFirstBuilding()
		local text = "Farm\nProduces food.\n"
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetActive() then
			text = text .. string.format(" - Producing %d food\n", building.def.collectableResourceTypeFunc(building))
		end
		if building.HasUpgrade() then
			text = text .. " - Mill improving yield"
		end
		return text
	end,
	upgradeBuilding = "mill",
	upgradeDistance = 1.49,
	
	activeAtGameStart = true,
	bonusOnEdges = true,
	drawWiggle = 0,
	depthNudge = -0.1,
	
	collectableResourceType = "food",
	collectableResourceTypeFunc = function (self)
		return (self.GetActive() and (self.HasUpgrade() and 5 or 3)) or 0
	end,
	
	needResource = {
		worker = {
			workTime = 4,
			idleTimeout = 10,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 6,
		},
	},
}

return TileUtils.InitTileData(data)
