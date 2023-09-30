
local GuyDefs = util.LoadDefDirectory("defs/guys")
local NewGuy = require("objects/guy")

local self = {}
local api = {}

function api.AddGuy(guyType, pos, guyData)
	local def = GuyDefs[guyType]
	guyData = guyData or {}
	guyData.pos = pos
	guyData.def = def
	return IterableMap.Add(self.guyList, NewGuy(guyData))
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
	}
end

return api
