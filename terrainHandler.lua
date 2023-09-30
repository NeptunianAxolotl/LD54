
local Font = require("include/font")
local TileDefs = util.LoadDefDirectory("defs/tiles")local NewTile = require("objects/tile")
local self = {}
local api = {}

function api.AddTile(tileName, pos, rotation)	local x, y = pos[1], pos[2]	local tileData = {		def = TileDefs[tileName],	}	self.trackPos[x] = self.trackPos[x] or {}	self.tilePos[x][y] = IterableMap.Add(self.tileList, NewTrack(tileData, api))end
function api.Update(dt)	IterableMap.ApplySelf(self.tileList, "Update", dt)end
local function SetupLevel()
end
function api.Draw(drawQueue)	IterableMap.ApplySelf(self.tileList, "Draw", drawQueue)	drawQueue:push({y=-100; f=function()		for x = 0, LevelHandler.Width() - 1 do			for y = 0, LevelHandler.Height() - 1 do				love.graphics.setColor(0.5, 0.5, 0.5, 0.3)				love.graphics.setLineWidth(5)				love.graphics.rectangle("line", x*LevelHandler.TileSize(), y*LevelHandler.TileSize(), LevelHandler.TileSize(), LevelHandler.TileSize(), 4, 4, 8)			end		end	end})end
function api.Initialize(world)
	self = {		tileList = IterableMap.New(),		tilekPos = {},
		world = world,
	}
	
	SetupLevel()
end

return api
