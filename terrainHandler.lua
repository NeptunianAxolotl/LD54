
local Font = require("include/font")
local TileDefs = util.AddKeyNameToMaps(util.LoadDefDirectory("defs/tiles"), "defName")
local TerrainDefs = util.LoadDefDirectory("defs/terrain")local NewTile = require("objects/tile")
local self = {}
local api = {}
function api.AddTile(tileName, pos)
	if api.GetTile(pos) then
		return
	end	local x, y = pos[1], pos[2]	local tileData = {		def = TileDefs[tileName],		pos = pos,	}	self.tilePos[x] = self.tilePos[x] or {}	self.tilePos[x][y] = IterableMap.Add(self.tileList, NewTile(tileData, api))end

function api.RemoveTile(pos)
	local tile = api.GetTile(pos)
	if not tile then
		return
	end
	local pos = tile.GetPos()
	local x, y = pos[1], pos[2]
	local tileDef = tile.def
	
	IterableMap.Remove(self.tileList, self.tilePos[x][y])
	self.tilePos[x][y] = nil
	tile.DeleteTile()
	if tileDef.doesUpgrade then
		BuildingHandler.RecheckUpgradedBuildings(tileDef.doesUpgrade)
	end
end

function api.DeleteAllFlaggedBuildings()
	IterableMap.ApplySelf(self.tileList, "DeleteFlaggedBuildings")
endfunction api.AddDomino(domino, pos)	for i = 1, 2 do		api.AddTile(domino[i], pos[i])	endend

function api.SetTerrainType(terrain, pos)
	local x, y = pos[1], pos[2]
	self.terrainType[x] = self.terrainType[x] or {}
	self.terrainType[x][y] = terrain
	self.terrainDraw[x] = self.terrainDraw[x] or {}
	self.terrainDraw[x][y] = TerrainDefs[terrain].image
end

function api.GetTerrainAt(x, y)
	return (self.terrainType[x] and self.terrainType[x][y])
end
function api.TerrainMatches(pos, buildOn, buildNear, needBuildingNearby, needNearbyDist)
	local x, y = pos[1], pos[2]
	if not api.GetTerrainAt(x, y) then
		return false
	end
	if not buildOn[api.GetTerrainAt(x, y)] then
		return false
	end
	
	if needBuildingNearby then
		if not BuildingHandler.IsBuildingNear(pos, needBuildingNearby, needNearbyDist) then
			return false
		end
	end
	
	if not buildNear then
		return true
	end
	
	for i = x - 1, x + 1 do
		for j = y - 1, y + 1 do
			if api.GetTerrainAt(i, j) and buildNear[api.GetTerrainAt(i, j)] then
				return true
			end
		end
	end
	return false
end
function api.IsTileEmpty(gridPos)	if gridPos[1] < 1 or gridPos[2] < 1 then		return false	end	if gridPos[1] > LevelHandler.Width() or gridPos[2] > LevelHandler.Height() then		return false	end	return not (self.tilePos[gridPos[1]] and self.tilePos[gridPos[1]][gridPos[2]])end

function api.GetTile(gridPos, direction)
	if direction then
		gridPos = util.Add(gridPos, direction)
	end
	if api.IsTileEmpty(gridPos) then
		return false
	end
	return IterableMap.Get(self.tileList, (self.tilePos[gridPos[1]] and self.tilePos[gridPos[1]][gridPos[2]]))
endfunction api.FromIsometricBasis(pos)	return util.ChangeBasis(pos, self.fromIso[1], self.fromIso[2], self.fromIso[3], self.fromIso[4])endfunction api.ToIsometricBasis(pos)	return util.ChangeBasis(pos, self.toIso[1], self.toIso[2], self.toIso[3], self.toIso[4])endfunction api.WorldToGrid(pos)	pos = api.FromIsometricBasis(pos)	local tileSize = LevelHandler.TileSize()	local gx = math.floor(pos[1]/tileSize)	local gy = math.floor(pos[2]/tileSize)	return {gx, gy}end
function api.WorldToContinuousGrid(pos)
	pos = api.FromIsometricBasis(pos)
	local tileSize = LevelHandler.TileSize()
	local gx = pos[1]/tileSize - 0.5
	local gy = pos[2]/tileSize - 0.5
	return {gx, gy}
end
function api.GridToWorld(pos, corner)	local tileSize = LevelHandler.TileSize()	local worldPos	if corner then		worldPos = {pos[1]*tileSize, pos[2]*tileSize}	else		worldPos = {(pos[1]+0.5)*tileSize, (pos[2]+0.5)*tileSize}	end	return api.ToIsometricBasis(worldPos)endfunction api.Update(dt)	IterableMap.ApplySelf(self.tileList, "Update", dt)endfunction api.GetValidGridPlacement(gridPos, rotation, domino)	local secondPos = util.Add(gridPos, util.CardinalToVector(rotation))	if not (api.IsTileEmpty(gridPos) and api.IsTileEmpty(secondPos)) then		return false	end
	local defFirst = TileDefs[domino[1]]
	local defSecond = TileDefs[domino[2]]	return {
		{
			pos = gridPos,
			valid = api.TerrainMatches(
				gridPos, defFirst.canBuildOn_map, defFirst.mustBuildNear_map,
				defFirst.needBuildingNearby, defFirst.needNearbyDist),
		},
		{
			pos = secondPos,
			valid = api.TerrainMatches(
				secondPos, defSecond.canBuildOn_map, defSecond.mustBuildNear_map,
				defSecond.needBuildingNearby, defSecond.needNearbyDist),
		}
	}endfunction api.GetValidWorldPlacement(worldPos, rotation, domino)	return api.GetValidGridPlacement(api.WorldToGrid(worldPos), rotation, domino)end

function api.DominoCanBePlacedAtAll(domino)
	for x = 1, LevelHandler.Width() do
		for y = LevelHandler.Height(), 1, -1 do
			local gridPos = {x, y}
			if api.IsTileEmpty(gridPos) then
				for rotation = 0, 3 do
					local canPlace = api.GetValidGridPlacement(gridPos, rotation, domino)
					if canPlace and canPlace[1].valid and canPlace[2].valid then
						return true
					end
				end
			end
		end
	end
	return false
end

function api.InitializeActive()
	return self.initTilesActive
end
local function SetupLevel()
	local level = LevelHandler.GetLevelData()
	for x = 1, LevelHandler.Width() do
		for y = LevelHandler.Height(), 1, -1 do
			if level.terrain[x] and level.terrain[x][y] then
				api.SetTerrainType(level.terrain[x][y], {x, y})
			end
		end
	end
	
	self.initTilesActive = true
	for i = 1, #level.tiles do
		local tile = level.tiles[i]
		api.AddTile(tile.def, tile.pos)
	end
	self.initTilesActive = false
end

function api.GetSaveData()
	local saveTiles = {}
	
	for x = 1, LevelHandler.Width() do
		for y = LevelHandler.Height(), 1, -1 do
			if self.tilePos[x] and self.tilePos[x][y] then
				local tileData = IterableMap.Get(self.tileList, self.tilePos[x][y])
				saveTiles[#saveTiles + 1] = {pos = {x, y}, def = tileData.def.defName}
			end
		end
	end
	return self.terrainType, saveTiles
end
function api.Draw(drawQueue)	IterableMap.ApplySelf(self.tileList, "Draw", drawQueue)	drawQueue:push({y=-100; f=function()		for x = 1, LevelHandler.Width() do			for y = LevelHandler.Height(), 1, -1 do
				if self.terrainDraw[x] and self.terrainDraw[x][y] then
					local pos = api.GridToWorld({x, y})
					Resources.DrawImage(self.terrainDraw[x][y], pos[1], pos[2])
				end			end		end	end})
	
	--drawQueue:push({y=-70; f=function()
	--	for x = 1, LevelHandler.Width() do
	--		for y = LevelHandler.Height(), 1, -1 do
	--			love.graphics.setColor(0, 0, 0, 0.2)
	--			love.graphics.setLineWidth(2)
	--			local corner   = api.GridToWorld({x, y}, true)
	--			local right    = api.GridToWorld({x + 1, y}, true)
	--			local rightBot = api.GridToWorld({x + 1, y + 1}, true)
	--			local bot      = api.GridToWorld({x, y + 1}, true)
	--			love.graphics.line(corner[1], corner[2], right[1], right[2], rightBot[1], rightBot[2], bot[1], bot[2], corner[1], corner[2])
	--		end
	--	end
	--end})end

function api.Initialize(world)
	self = {		tileList = IterableMap.New(),		tilePos = {},
		terrainType = {},
		terrainDraw = {},
		world = world,		toIso = {2, 2, 1, -1},
	}	self.fromIso = util.InverseBasis(self.toIso)
	
	SetupLevel()
end

return api
