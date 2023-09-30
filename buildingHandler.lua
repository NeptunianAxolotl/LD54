
local Font = require("include/font")
local TileDefs = util.LoadDefDirectory("defs/tiles")local NewBuilding = require("objects/building")
local self = {}
local api = {}
function api.AddBuilding(parentTiles, buildingName, pos, buildingData)	buildingData = buildingData or {}	buildingData.def = TileDefs[buildingName]
	buildingData.parents = parentTiles	buildingData.pos = pos
	
	local building = NewBuilding(buildingData, api)
	for i = 1, #parentTiles do
		parentTiles[i].AddBuilding(buildingData, building)
	end
	IterableMap.Add(self.buildingList, building)endfunction api.Update(dt)	IterableMap.ApplySelf(self.buildingList, "Update", dt)endfunction api.Draw(drawQueue)	IterableMap.ApplySelf(self.buildingList, "Draw", drawQueue)end

function api.Initialize(world)
	self = {		buildingList = IterableMap.New(),
		world = world,
	}
end

return api
