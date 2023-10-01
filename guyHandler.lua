
local GuyDefs = util.LoadDefDirectory("defs/guys")
local NewGuy = require("objects/guy")

local self = {}
local api = {}

function api.AddGuy(guyType, pos, guyData)
	local def = GuyDefs[guyType]
	guyData = guyData or {}
	guyData.pos = pos
	guyData.def = def
	guyData.index = self.nextGuyIndex
	nextGuyIndex = self.nextGuyIndex + 1
	
	local newGuy = NewGuy(guyData)
	IterableMap.Add(self.guyList, newGuy)
	return newGuy
end

function api.DeleteAllFlaggedBuildings()
	IterableMap.ApplySelf(self.guyList, "DeleteFlaggedBuildings")
end

local function ClosestToWithDistSq(guy, maxDistSq, fromPos, resource)
	if guy.def.resourceType ~= resource then
		return false
	end
	if not guy.IsAvailible() then
		return false
	end
	local distSq = util.DistSq(guy.homeBuilding.GetPos(), fromPos)
	if maxDistSq and distSq > maxDistSq then
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
	return IterableMap.FilterCount(self.guyList, CountResourceType, resource)
end

function api.GetClosestIdleGuy(pos, maxDist, resource)
	local other = IterableMap.GetMinimum(self.guyList, ClosestToWithDistSq, maxDist and maxDist*maxDist, pos, resource)
	return other
end

function api.Update(dt)
	IterableMap.ApplySelf(self.guyList, "Update", dt)
end

function api.Draw(drawQueue)
	IterableMap.ApplySelf(self.guyList, "Draw", drawQueue)
end

function api.Initialize(world)
	self = {
		guyList = IterableMap.New(),
		world = world,
		nextGuyIndex = 0,
	}
end

return api
