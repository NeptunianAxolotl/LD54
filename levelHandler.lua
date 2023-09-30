
local Font = require("include/font")

local MapDefs = util.LoadDefDirectory("defs/maps")

local self = {}
local api = {}

function api.GetLevelData()
	return self.levelData
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
