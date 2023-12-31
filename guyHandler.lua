
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

function api.DeleteAllFlaggedGuys()
	IterableMap.ApplySelf(self.guyList, "DeleteGuyIfFlagged")
end


local function CountResourceType(self, resource)
	if self.def.collectableResourceType ~= resource then
		return false
	end
	return self.def.collectableResourceTypeFunc(self)
end

function api.CountResourceType(resource)
	return IterableMap.FilterCount(self.guyList, CountResourceType, resource)
end

local function ClosestToWithDistSq(guy, building, maxDist, fromPos, resource)
	if guy.def.resourceType ~= resource then
		return false
	end
	if not guy.IsAvailible() then
		return false
	end
	if building.def.CanVisitFunction then
		if not building.def.CanVisitFunction(building, guy) then
			return
		end
	end
	local distSq = util.DistSq(guy.homeBuilding.GetPos(), fromPos)
	if maxDist and distSq > (maxDist + guy.GetRangeBuff()) * (maxDist + guy.GetRangeBuff()) then
		return false
	end
	return distSq
end

function api.GetClosestIdleGuy(building, pos, maxDist, resource)
	local other = IterableMap.GetMinimum(self.guyList, ClosestToWithDistSq, building, maxDist, pos, resource)
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
