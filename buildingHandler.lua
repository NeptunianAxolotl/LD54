
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
	IterableMap.Add(self.buildingList, building)end
local function ClosestToWithDistSq(building, fromPos, resource)
	if not building.WantsWorkerOrResource(resource) then
		return false
	end
	local distSq = util.DistSq(building.GetPos(), fromPos)
	if not building.DistSqWithinWorkRange(distSq, resource) then
		return false
	end
	return distSq
end

local function CountResourceType(self, resource)
	if self.def.globalStockResource ~= resource then
		return false
	end
	return self.def.globalStockResourceFunc(self)
end

function api.CountResourceType(resource)
	return IterableMap.FilterCount(self.buildingList, CountResourceType, resource)
end

function api.GetClosestFreeBuilding(pos, resource)
	local other = IterableMap.GetMinimum(self.buildingList, ClosestToWithDistSq, pos, resource)
	return other
end
function api.Update(dt)	IterableMap.ApplySelf(self.buildingList, "Update", dt)endfunction api.Draw(drawQueue)	IterableMap.ApplySelf(self.buildingList, "Draw", drawQueue)end

function api.Initialize(world)
	self = {		buildingList = IterableMap.New(),
		world = world,
	}
end

return api
