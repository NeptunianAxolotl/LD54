local TileUtils = require("utilities/tileUtils")

local data = {
	image = "blacksmith",
	groundImage = "stone_ground",
	building = "blacksmith",
	inShop = true,
	cannotPairWith = {"blacksmith", "mill", "sawmill"},
	spawnTilePositions = {{0, 0}},
	
	canBuildOn = {"grass", "desert"},
	needBuildingNearby = {{"mine", Global.LONG_WALK_RANGE}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Blacksmith\nProduces tools from ore. Tools are used to to quarry stone and doubles the number of scouts in outposts and towers."
		end
		local building = self.GetFirstBuilding()
		local text = "Blacksmith\nProduces tools from ore.\n"
		text = text .. string.format(" - Storing %d/%d tools\n", building.GetStockpile("worker"), self.def.needResource.worker.maximumStockpile)
		if not building.IsResourceActive("ore") and not building.HasActiveOrPendingWorke("worker") then
			text = text .. " - Needs ore from mines\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetStockpile("worker") == self.def.needResource.worker.maximumStockpile and building.IsResourceActive("worker") and building.IsResourceActive("ore") then
			text = text .. " - No free storage\n"
		end
		if building.GetActive() and building.GetStockpile("worker") ~= self.def.needResource.worker.maximumStockpile then
			text = text .. " - Producing tools\n"
		end
		return text
	end,
	
	population = 1,
	popType = "tool",
	bonusOnEdges = false,
	
	guyActivationResources = {
		worker = 1,
	},
	drawWiggle = 0.1,
	
	needResource = {
		worker = {
			workTime = 4,
			idleTimeout = 0,
			searchRadius = Global.SHORT_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 2,
			jobActivationResources = {
				ore = 1,
			},
		},
		ore = {
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
