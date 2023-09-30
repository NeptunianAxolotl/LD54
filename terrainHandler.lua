
local Font = require("include/font")
local TileDefs = util.LoadDefDirectory("defs/tiles")local NewTile = require("objects/tile")
local self = {}
local api = {}

function api.AddTile(tileName, pos, rotation)	local x, y = pos[1], pos[2]	local tileData = {		def = TileDefs[tileName],	}	self.trackPos[x] = self.trackPos[x] or {}	self.tilePos[x][y] = IterableMap.Add(self.tileList, NewTrack(tileData, api))endfunction api.IsTileEmpty(gridPos)	if gridPos[1] < 0 or gridPos[2] < 0 then		return false	end	if gridPos[1] > LevelHandler.Width() or gridPos[2] > LevelHandler.Height() then		return false	end	return not (self.tilePos[x] and self.tilePos[x][y])endfunction api.WorldToGrid(pos)	local tileSize = LevelHandler.TileSize()	local gx = math.floor(pos[1]/tileSize)	local gy = math.floor(pos[2]/tileSize)	return {gx, gy}end
function api.GridToWorld(pos)	local tileSize = LevelHandler.TileSize()	return {(pos[1]+0.5)*tileSize, (pos[2]+0.5)*tileSize}endfunction api.Update(dt)	IterableMap.ApplySelf(self.tileList, "Update", dt)endfunction api.GetValidGridPlacement(gridPos, rotation, domino)	local secondPos = util.Add(gridPos, util.CardinalToVector(rotation))	if not (api.IsTileEmpty(gridPos) and api.IsTileEmpty(secondPos)) then		return false	end	return {gridPos, secondPos}endfunction api.GetValidWorldPlacement(worldPos, rotation, domino)	return api.GetValidGridPlacement(api.WorldToGrid(worldPos), rotation, domino)end
local function SetupLevel()
end
function api.Draw(drawQueue)	IterableMap.ApplySelf(self.tileList, "Draw", drawQueue)	drawQueue:push({y=-100; f=function()		for x = 0, LevelHandler.Width() - 1 do			for y = 0, LevelHandler.Height() - 1 do				love.graphics.setColor(0.5, 0.5, 0.5, 0.3)				love.graphics.setLineWidth(5)				love.graphics.rectangle("line", x*LevelHandler.TileSize(), y*LevelHandler.TileSize(), LevelHandler.TileSize(), LevelHandler.TileSize(), 4, 4, 8)			end		end	end})end
function api.Initialize(world)
	self = {		tileList = IterableMap.New(),		tilePos = {},
		world = world,
	}
	
	SetupLevel()
end

return api
