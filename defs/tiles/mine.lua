local TileUtils = require("utilities/tileUtils")

local data = {
	image = "mine",
	groundImage = "workshop_ground",
	building = "mine",
	inShop = true,
	cannotPairWith = {},
	spawnTilePositions = {{0, 0}},
	
	TooltipFunc = function (self)
		if not (self and self.GetFirstBuilding()) then
			return "Mine\nProduces ore for use by the blacksmith and alchemist. Requires workers, a mountain, and planks to maintain."
		end
		local building = self.GetFirstBuilding()
		local text = "Mine\nProduces ore.\n"
		text = text .. string.format(" - Storing %d/%d ore\n", building.GetStockpile("worker"), self.def.needResource.worker.maximumStockpile)
		if not building.IsResourceActive("plank") then
			text = text .. " - Needs plank from sawmill\n"
		end
		if not building.IsResourceActive("worker") then
			text = text .. " - Needs workers\n"
		end
		if building.GetStockpile("worker") == self.def.needResource.worker.maximumStockpile and building.IsResourceActive("worker") and building.IsResourceActive("plank") then
			text = text .. " - No free storage\n"
		end
		if building.GetActive() and building.GetStockpile("worker") ~= self.def.needResource.worker.maximumStockpile then
			text = text .. " - Producing ore\n"
		end
		return text
	end,
	
	canBuildOn = {"grass", "desert"},
	mustBuildNear = {"mountain"},
	needBuildingNearby = {{"sawmill", Global.LONG_WALK_RANGE}},
	
	population = 1,
	popType = "ore",
	bonusOnEdges = true,
	bonusBuilding = "mine",
	
	guyActivationResources = {
		worker = 1,
	},
	
	needResource = {
		worker = {
			workTime = 6,
			idleTimeout = 1,
			searchRadius = Global.MEDIUM_WALK_RANGE,
			homeWaitTime = 1,
			maximumStockpile = Global.BUILDING_STOCKPILE_SIZE,
			stockpilePerJob = 1,
			dependOnActivation = "plank",
		},
		plank = {
			workTime = 1,
			idleTimeout = 10,
			searchRadius = Global.LONG_WALK_RANGE,
			homeWaitTime = 1,
			needDelay = 20,
		},
	},
}

return TileUtils.InitTileData(data)
