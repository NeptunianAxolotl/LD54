
local Font = require("include/font")

local self = {}
local api = {}

	buildingData.parents = parentTiles
	
	local building = NewBuilding(buildingData, api)
	for i = 1, #parentTiles do
		parentTiles[i].AddBuilding(buildingData, building)
	end
	IterableMap.Add(self.buildingList, building)

function api.Initialize(world)
	self = {
		world = world,
	}
end

return api