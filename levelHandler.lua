
local Font = require("include/font")

local MapDefs = util.LoadDefDirectory("defs/maps")

local self = {}
local api = {}

function api.GetLevelData()
	return self.levelData
end

function api.Width()
	return self.levelData.width
end

function api.Height()
	return self.levelData.height
end

function api.TileSize()
	return Global.GRID_SIZE
end

function api.TileScale()
	return 1
end

local function SetupWorld(levelData)

end

function api.InEditMode()
	return false
end

-- Load and save level go here eventually

function api.Initialize(world, levelData)
	self = {
		world = world,
		levelData = levelData,
	}
end

return api
