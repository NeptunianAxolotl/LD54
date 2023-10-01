
local NewDoodad = require("objects/doodad")

local self = {}
local api = {}

function api.AddDoodad(doodadType, pos)
	local doodadData = {}
	doodadData.pos = pos
	doodadData.doodadType = doodadType
	local newDoodad = NewDoodad(doodadData)
	IterableMap.Add(self.doodadList, newDoodad)
	return newDoodad
end

function api.RemoveDoodads(pos)
	IterableMap.ApplySelf(self.doodadList, "RemoveAtPos", pos)
end

local function SetupWorld()
	local levelData = LevelHandler.GetLevelData()
	
	if levelData.doodads then
		for i = 1, #levelData.doodads do
			local doodad = levelData.doodads[i]
			api.AddDoodad(doodad.doodadType, doodad.pos)
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
