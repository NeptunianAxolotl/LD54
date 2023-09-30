
local Font = require("include/font")

local MapDefs = util.LoadDefDirectory("defs/maps")

local self = {}
local api = {}

function api.Width()
	return self.width
end

function api.Height()
	return self.height
end

function api.GetMapData()
	return self.map
end

local function SetupLevel()
	-- TODO self.map = {}
	
	
end

function api.Draw(drawQueue)
	drawQueue:push({y=0; f=function()		
	end})
end

function api.Initialize(world, levelIndex, mapDataOverride)
	self = {
		world = world,
	}
	
	SetupLevel(levelIndex, mapDataOverride)
end

return api
