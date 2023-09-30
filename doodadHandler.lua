
local IterableMap = require("include/IterableMap")
local util = require("include/util")

local DoodadDefs = util.LoadDefDirectory("defs/doodads")
local NewDoodad = require("objects/doodad")

local self = {}
local api = {}

function api.AddDoodad(pos, doodadType)
	local def = DoodadDefs[trackType]
	local doodadData = {}
	doodadData.pos = pos
	doodadData.doodadType = doodadType
	IterableMap.Add(self.doodadList, NewDoodad(doodadData, api))
end

function api.RemoveDoodads(pos)
	IterableMap.ApplySelf(self.doodadList, "RemoveAtPos", pos)
end

local function SetupWorld()
	local map = LevelHandler.GetMapData()
	
	if map.doodads then
		for i = 1, #map.doodads do
			local doodad = map.doodads[i]
			api.AddDoodad(doodad.pos, doodad.doodadType)
		end
	end
end

function api.ExportObjects()
	local objList = {}
	IterableMap.ApplySelf(self.doodadList, "Export", objList)
	return objList
end

function api.UpdateTileSize()
	IterableMap.ApplySelf(self.doodadList, "UpdateWorldPos")
end

function api.Draw(drawQueue)
	IterableMap.ApplySelf(self.doodadList, "Draw", drawQueue)
end

function api.Initialize(world)
	self = {
		doodadList = IterableMap.New(),
		world = world,
	}
	
	SetupWorld()
end

return api
