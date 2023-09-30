
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
	
	return IterableMap.Add(self.guyList, NewGuy(guyData))
end

local function CheckIdle(guy)
	return guy.IsIdle()
end

local function ClosestToWithDistSq(data, maxDistSq, fromPos, filterFunc)
	if filterFunc and not filterFunc(data) then
		return false
	end
	local distSq = util.DistSq(data.GetPos(), fromPos)
	if maxDistSq and distSq > maxDistSq then
		return false
	end
	return distSq
end

function api.GetClosestIdleGuy(pos, maxDist)
	local other = IterableMap.GetMinimum(self.guyList, ClosestToWithDistSq, maxDist and maxDist*maxDist, pos, CheckIdle)
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
