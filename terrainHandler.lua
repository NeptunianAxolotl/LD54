
local Font = require("include/font")
local TileDefs = util.LoadDefDirectory("defs/tiles")local NewTile = require("objects/tile")
local self = {}
local api = {}

function api.AddTile(tileName, pos)	local x, y = pos[1], pos[2]	local tileData = {		def = TileDefs[tileName],		pos = pos,	}	self.tilePos[x] = self.tilePos[x] or {}	self.tilePos[x][y] = IterableMap.Add(self.tileList, NewTile(tileData, api))endfunction api.AddDomino(domino, pos)	for i = 1, 2 do		api.AddTile(domino[i], pos[i])	endendfunction api.IsTileEmpty(gridPos)	if gridPos[1] < 0 or gridPos[2] < 0 then		return false	end	if gridPos[1] > LevelHandler.Width() or gridPos[2] > LevelHandler.Height() then		return false	end	return not (self.tilePos[gridPos[1]] and self.tilePos[gridPos[1]][gridPos[2]])endfunction api.FromIsometricBasis(pos)	return util.ChangeBasis(pos, self.fromIso[1], self.fromIso[2], self.fromIso[3], self.fromIso[4])endfunction api.ToIsometricBasis(pos)	return util.ChangeBasis(pos, self.toIso[1], self.toIso[2], self.toIso[3], self.toIso[4])endfunction api.WorldToGrid(pos)	pos = api.FromIsometricBasis(pos)	local tileSize = LevelHandler.TileSize()	local gx = math.floor(pos[1]/tileSize)	local gy = math.floor(pos[2]/tileSize)	return {gx, gy}endfunction api.GridToWorld(pos, corner)	local tileSize = LevelHandler.TileSize()	local worldPos	if corner then		worldPos = {pos[1]*tileSize, pos[2]*tileSize}	else		worldPos = {(pos[1]+0.5)*tileSize, (pos[2]+0.5)*tileSize}	end	return api.ToIsometricBasis(worldPos)endfunction api.Update(dt)	IterableMap.ApplySelf(self.tileList, "Update", dt)endfunction api.GetValidGridPlacement(gridPos, rotation, domino)	local secondPos = util.Add(gridPos, util.CardinalToVector(rotation))	if not (api.IsTileEmpty(gridPos) and api.IsTileEmpty(secondPos)) then		return false	end	return {gridPos, secondPos}endfunction api.GetValidWorldPlacement(worldPos, rotation, domino)	return api.GetValidGridPlacement(api.WorldToGrid(worldPos), rotation, domino)end
local function SetupLevel()
end
function api.Draw(drawQueue)	IterableMap.ApplySelf(self.tileList, "Draw", drawQueue)	drawQueue:push({y=-100; f=function()		for x = 0, LevelHandler.Width() - 1 do			for y = 0, LevelHandler.Height() - 1 do				love.graphics.setColor(0.5, 0.5, 0.5, 0.3)				love.graphics.setLineWidth(5)				local corner   = api.GridToWorld({x, y}, true)				local right    = api.GridToWorld({x + 1, y}, true)				local rightBot = api.GridToWorld({x + 1, y + 1}, true)				local bot      = api.GridToWorld({x, y + 1}, true)				love.graphics.line(corner[1], corner[2], right[1], right[2], rightBot[1], rightBot[2], bot[1], bot[2], corner[1], corner[2])			end		end	end})end
function api.Initialize(world)
	self = {		tileList = IterableMap.New(),		tilePos = {},
		world = world,		toIso = {2, 2, 1, -1}
	}	self.fromIso = util.InverseBasis(self.toIso)
	
	SetupLevel()
end

return api
