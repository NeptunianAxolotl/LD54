
local Font = require("include/font")
local TileDefs = util.LoadDefDirectory("defs/tiles", "defName")local NewBuilding = require("objects/building")
local self = {}
local api = {}
function api.AddBuilding(parentTiles, buildingName, pos, buildingData)	buildingData = buildingData or {}	buildingData.def = TileDefs[buildingName]
	buildingData.parents = parentTiles	buildingData.pos = pos
	
	self.buildingDistanceCache[buildingName] = false -- Clear cache on all creation and destructions
	
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
	if self.def.globalResourceType ~= resource then
		return false
	end
	return self.def.globalResourceTypeFunc(self)
end

function api.CountResourceType(resource)
	return IterableMap.FilterCount(self.buildingList, CountResourceType, resource)
end

function api.GetClosestFreeBuilding(pos, resource)
	local other = IterableMap.GetMinimum(self.buildingList, ClosestToWithDistSq, pos, resource)
	return other
end

local function ClosestType(building, fromPos, buildingType)
	if buildingType ~= building.def.defName then
		return false
	end
	local distSq = util.DistSq(building.GetPos(), fromPos)
	return distSq
end

function api.IsBuildingNear(pos, buildingType, nearDist)
	local x, y = pos[1], pos[2]
	self.buildingDistanceCache[buildingType] = self.buildingDistanceCache[buildingType] or {}
	cache = self.buildingDistanceCache[buildingType]
	cache[x] = cache[x] or {}
	if not cache[x][y] then
		local _, minDistSq = IterableMap.GetMinimum(self.buildingList, ClosestType, pos, buildingType)
		if minDistSq then
			cache[x][y] = math.sqrt(minDistSq)
		else
			cache[x][y] = -1
		end
	end
	if cache[x][y] == -1 then
		return false
	end
	return cache[x][y] <= nearDist
end
function api.Update(dt)	IterableMap.ApplySelf(self.buildingList, "Update", dt)endfunction api.Draw(drawQueue)	IterableMap.ApplySelf(self.buildingList, "Draw", drawQueue)end

function api.Initialize(world)
	self = {		buildingList = IterableMap.New(),
		world = world,
		buildingDistanceCache = {},
	}
end

return api
