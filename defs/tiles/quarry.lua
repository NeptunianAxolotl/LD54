local TileUtils = require("utilities/tileUtils")

local data = {
	image = "quarry",
	building = "quarry",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Quarry\nProduces stone for advanced structures. Requires tools and workers."
		end
		local building = self.GetFirstBuilding()
		local text = "Quarry\nUses tools to produces stone.\n"
		text = text .. string.format(" - Storing %d/%d stone\n", building.GetStockpile("worker"), self.def.needResource.worker.maximumStockpile)
		if not building.IsResourceActive("tool") and not building.HasActiveOrPendingWorke("worker") then
			text = text .. " - Needs tool from blacksmith\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetStockpile("worker") == self.def.needResource.worker.maximumStockpile and building.IsResourceActive("worker") and building.IsResourceActive("stone") then
			text = text .. " - No free storage\n"
		end
		if building.GetActive() and building.GetStockpile("worker") ~= self.def.needResource.worker.maximumStockpile then
			text = text .. " - Producing stone\n"
		end
		return text
	end,
	
	population = 1,
	popType = "stone",
	bonusOnEdges = true,
	setBonusFlip = true,
	bonusBuilding = "quarry_edge",
	bonusBuildingMiddle = "quarry_middle",
	
	needBuildingNearby = {{"blacksmith", Global.LONG_WALK_RANGE}},
	drawWiggle = 0,
	drawFlip = 1,
	depthNudge = -20,
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 4,
			idleTimeout = 0,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 1,
			jobActivationResources = {
				tool = 1,
			},
		},
		tool = {
			workTime = 1,
			idleTimeout = 0,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 1,
			ignoreForActivation = true,
		},
	},
}

return TileUtils.InitTileData(data)
