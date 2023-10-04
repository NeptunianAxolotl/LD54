local TileUtils = require("utilities/tileUtils")

local data = {
	image = "sawmill",
	groundImage = "workshop_ground",
	building = "sawmill",
	inShop = true,
	cannotPairWith = {"blacksmith", "mill", "sawmill"},
	spawnTilePositions = {{0, 0}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Sawmill\nProcesses logs into planks to maintain a variety of wooden structures."
		end
		local building = self.GetFirstBuilding()
		local text = "Sawmill\nProcesses logs into planks.\n"
		text = text .. string.format(" - Storing %d/%d planks\n", building.GetStockpile("worker"), self.def.needResource.worker.maximumStockpile)
		if not building.IsResourceActive("wood") and not building.HasActiveOrPendingWorke("worker") then
			text = text .. " - Needs logs from woodcutter\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetStockpile("worker") == self.def.needResource.worker.maximumStockpile and building.IsResourceActive("worker") and building.IsResourceActive("ore") then
			text = text .. " - No free storage\n"
		end
		if building.GetActive() and building.GetStockpile("worker") ~= self.def.needResource.worker.maximumStockpile then
			text = text .. " - Producing planks\n"
		end
		return text
	end,
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"woodcutter", Global.LONG_WALK_RANGE}},
	
	population = 1,
	popType = "plank",
	bonusOnEdges = false,
	
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
			stockpilePerJob = 2,
			jobActivationResources = {
				wood = 1,
			},
		},
		wood = {
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
