
local Font = require("include/font")
local TileDefs = util.AddKeyNameToMaps(util.LoadDefDirectory("defs/tiles"), "defName")
local TerrainDefs = util.LoadDefDirectory("defs/terrain")local NewTile = require("objects/tile")
local self = {}
local api = {}
function api.AddTile(tileName, pos, extraData)
	if api.GetTile(pos) then
		return
	end	local x, y = pos[1], pos[2]	tileData = (extraData and util.CopyTable(extraData)) or {}	tileData.def = TileDefs[tileName]	tileData.pos = pos		self.tilePos[x] = self.tilePos[x] or {}	self.tilePos[x][y] = IterableMap.Add(self.tileList, NewTile(tileData, api, extraData))end

function api.RemoveTile(pos)
	local tile = api.GetTile(pos)
	if not tile then
		return
	end
	local pos = tile.GetPos()
	local x, y = pos[1], pos[2]
	local tileDef = tile.def
	
	IterableMap.ApplySelf(tile.buildings, "FlagForDeletion")
	TerrainHandler.DeleteAllFlaggedBuildings()
	GuyHandler.DeleteAllFlaggedBuildings()
	BuildingHandler.DeleteAllFlaggedBuildings()
	
	tile.DeleteTile()
	IterableMap.Remove(self.tileList, self.tilePos[x][y])
	self.tilePos[x][y] = nil
	if tileDef.doesUpgrade then
		BuildingHandler.RecheckUpgradedBuildings(tileDef.doesUpgrade)
	end
end

function api.DeleteAllFlaggedBuildings()
	IterableMap.ApplySelf(self.tileList, "DeleteFlaggedBuildings")
end
function api.CheckOutRangedTilesForDestruction(destroyType)
	local destroyList = {}
	for key, data in IterableMap.Iterator(self.tileList) do
		if not data.NearDestroyRequirement(destroyType) then
			destroyList[#destroyList + 1] = data.GetPos()
		end
	end
	for i = 1, #destroyList do
		api.RemoveTile(destroyList[i])
	end
end
function api.AddDomino(domino, pos)	for i = 1, 2 do		api.AddTile(domino[i], pos[i])	endend

function api.SetTerrainType(terrain, pos)
	local x, y = pos[1], pos[2]
	self.terrainType[x] = self.terrainType[x] or {}
	self.terrainType[x][y] = terrain
	self.terrainDraw[x] = self.terrainDraw[x] or {}
	if TerrainDefs[terrain].randomiseImage then
		self.terrainDraw[x][y] = util.SampleList(TerrainDefs[terrain].randomiseImage)
	else
		self.terrainDraw[x][y] = TerrainDefs[terrain].image
	end
end

function api.RemoveTerrain(pos)
	local x, y = pos[1], pos[2]
	if self.terrainType[x] and self.terrainType[x][y] then
		self.terrainType[x][y] = nil
	end
	if self.terrainDraw[x] and self.terrainDraw[x][y] then
		self.terrainDraw[x][y] = nil
	end
end

function api.AddInvasion(maskIndex, pos)
	local x, y = pos[1], pos[2]
	self.invasionMask[x] = self.invasionMask[x] or {}
	self.invasionMask[x][y] = maskIndex
end

function api.RemoveInvasion(pos)
	local x, y = pos[1], pos[2]
	if self.invasionMask[x] and self.invasionMask[x][y] then
		self.invasionMask[x][y] = nil
	end
end

function api.SpawnInvasionRemoveWave(pos, invasionIndex)
	if not invasionIndex then
		invasionIndex = api.GetInvasionAt(pos)
	end
	self.invasionWaves[invasionIndex] = self.invasionWaves[invasionIndex] or {
		points = {pos}
	}
	self.waveTimer = 0
end

function api.GetInvasionAt(pos, rotation)
	if rotation then
		pos = util.Add(pos, util.CardinalToVector(rotation))
	end
	local x, y = pos[1], pos[2]
	return (self.invasionMask[x] and self.invasionMask[x][y]), pos
end

function api.GetTerrainAt(x, y)
	return (self.terrainType[x] and self.terrainType[x][y])
end
function api.IsTileEmpty(gridPos)	if gridPos[1] < 1 or gridPos[2] < 1 then		return false	end	if gridPos[1] > LevelHandler.Width() or gridPos[2] > LevelHandler.Height() then		return false	end
	if api.GetInvasionAt(gridPos) then
		return false
	end	return not (self.tilePos[gridPos[1]] and self.tilePos[gridPos[1]][gridPos[2]])end

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
function api.GridToWorld(pos, corner)	local tileSize = LevelHandler.TileSize()	local worldPos	if corner then		worldPos = {pos[1]*tileSize, pos[2]*tileSize}	else		worldPos = {(pos[1]+0.5)*tileSize, (pos[2]+0.5)*tileSize}	end	return api.ToIsometricBasis(worldPos)end

local function HoverOverTile()
	self.hoveredTile = false
	if ShopHandler.MouseIsOverInterface() then
		return false
	end
	local gridPos = api.WorldToGrid(self.world.GetMousePosition())
	self.hoveredTile = api.GetTile(gridPos)
	if self.hoveredTile then
		ShopHandler.SetTooltipToTile(self.hoveredTile.def.defName)
	end
end

local function ClickOnTile()
	if (not self.hoveredTile) or self.hoveredTile.IsDestroyed() then
		return
	end
	if self.hoveredTile.def.onClick then
		self.hoveredTile.def.onClick(self.hoveredTile)
	end
end

function api.GetHoveredTile()
	return self.hoveredTile
end

function api.MousePressed(x, y, button)
	ClickOnTile()
end

function api.MouseMoved(x, y)
end

local function DoInvasionWave(dt)
	self.waveTimer = self.waveTimer - dt
	if self.waveTimer > 0 then
		return
	end
	self.waveTimer = Global.WAVE_PERIOD
	for invasionIndex, waveData in pairs(self.invasionWaves) do
		local nextPoints = {}
		for i = 1, #waveData.points do
			local pos = waveData.points[i]
			api.RemoveInvasion(pos)
			for rotation = 0, 3 do
				local hasInvasion, newPos = api.GetInvasionAt(pos, rotation)
				if hasInvasion == invasionIndex then
					nextPoints[#nextPoints + 1] = newPos
				end
			end
		end
		if #nextPoints > 0 then
			waveData.points = nextPoints
		else
			self.invasionWaves[invasionIndex] = nil
		end
	end
end
function api.Update(dt)	IterableMap.ApplySelf(self.tileList, "Update", dt)
	HoverOverTile()
	DoInvasionWave(dt)end

function api.DescribeNearBuildings(gridPos, needBuildingNearby, otherTileName)
	local nearInfo = {}
	if needBuildingNearby then
		for i = 1, #needBuildingNearby do
			local near = needBuildingNearby[i]
			local wantToBeFar = near[3]
			if not (otherTileName and otherTileName == near[1]) then
				local nearby, dist = BuildingHandler.GetNearestBuilding(gridPos, near[1])
				if nearby then
					local valid = (dist <= near[2])
					if wantToBeFar then
						valid = not valid
					end
					nearInfo[#nearInfo + 1] = {
						pos = api.GridToWorld(nearby.GetPos()),
						valid = valid
					}
				end
			end
		end
	end
	
	return nearInfo
end
function api.DescribeNearDomino(gridPos, rotation, domino)
	local secondPos = util.Add(gridPos, util.CardinalToVector(rotation))
	local defFirst = TileDefs[domino[1]]
	local defSecond = TileDefs[domino[2]]
	
	return {
		api.DescribeNearBuildings(gridPos, defFirst.needBuildingNearby, domino[2]),
		api.DescribeNearBuildings(secondPos, defSecond.needBuildingNearby, domino[1]),
	}
end

function api.TerrainMatches(pos, buildOn, buildNear, needBuildingNearby, otherTileName)
	local x, y = pos[1], pos[2]
	if not api.GetTerrainAt(x, y) then
		return false
	end
	if buildOn and not buildOn[api.GetTerrainAt(x, y)] then
		return false
	end
	
	if needBuildingNearby then
		for i = 1, #needBuildingNearby do
			local near = needBuildingNearby[i]
			local wantToBeFar = near[3]
			local farAway = not (otherTileName and otherTileName == near[1]) and (not BuildingHandler.IsBuildingNear(pos, near[1], near[2]))
			if wantToBeFar and not farAway then
				return false
			end
			if (not wantToBeFar) and farAway then
				return false
			end
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
function api.GetValidGridPlacement(gridPos, rotation, domino)	local secondPos = util.Add(gridPos, util.CardinalToVector(rotation))
	local defFirst = TileDefs[domino[1]]
	local defSecond = TileDefs[domino[2]]	return {
		{
			pos = gridPos,
			valid = api.IsTileEmpty(gridPos) and api.TerrainMatches(
				gridPos, defFirst.canBuildOn_map, defFirst.mustBuildNear_map,
				defFirst.needBuildingNearby, domino[2]),
		},
		{
			pos = secondPos,
			valid = api.IsTileEmpty(secondPos) and api.TerrainMatches(
				secondPos, defSecond.canBuildOn_map, defSecond.mustBuildNear_map,
				defSecond.needBuildingNearby, domino[1]),
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
	if level.terrain then
		for x = 1, LevelHandler.Width() do
			for y = LevelHandler.Height(), 1, -1 do
				if level.terrain[x] and level.terrain[x][y] then
					api.SetTerrainType(level.terrain[x][y], {x, y})
				end
			end
		end
	end
	
	self.invasionMask = util.CopyTable(level.invasionMask or {}, true)
	
	if level.tiles then
		self.initTilesActive = true
		for i = 1, #level.tiles do
			local tile = level.tiles[i]
			api.AddTile(tile.def, tile.pos, tile.extraData)
		end
		self.initTilesActive = false
	end
end

function api.GetSaveData()
	local saveTiles = {}
	
	for x = 1, LevelHandler.Width() do
		for y = LevelHandler.Height(), 1, -1 do
			if self.tilePos[x] and self.tilePos[x][y] then
				local tileData = IterableMap.Get(self.tileList, self.tilePos[x][y])
				local saveData = {
					pos = {x, y},
					def = tileData.def.defName,
				}
				if tileData.armySize then
					saveData.extraData = {
						armySize = tileData.armySize,
						invasionIndex = tileData.invasionIndex,
					}
				end
				
				saveTiles[#saveTiles + 1] = saveData
			end
		end
	end
	return self.terrainType, saveTiles, self.invasionMask
end
function api.Draw(drawQueue)	IterableMap.ApplySelf(self.tileList, "Draw", drawQueue)	drawQueue:push({y=-100; f=function()		for x = 1, LevelHandler.Width() do			for y = LevelHandler.Height(), 1, -1 do
				if self.terrainDraw[x] and self.terrainDraw[x][y] then
					local pos = api.GridToWorld({x, y})
					Resources.DrawImage(self.terrainDraw[x][y], pos[1], pos[2])
				end			end		end	end})
	for x = 1, LevelHandler.Width() do
		for y = LevelHandler.Height(), 1, -1 do
			if self.terrainDraw[x] and self.terrainDraw[x][y] and self.terrainDraw[x][y] == "mountain_1" then
				drawQueue:push({y=-80 - (y - x)*0.01; f=function()
					local pos = api.GridToWorld({x, y})
					Resources.DrawImage("mountain_top", pos[1], pos[2])
				end})
			end
		end
	end
	drawQueue:push({y=-50; f=function()
		local alpha = MapEditor.InEditMode() and 0.5 or 0.99
		for x = 1, LevelHandler.Width() do
			for y = LevelHandler.Height(), 1, -1 do
				if self.invasionMask[x] and self.invasionMask[x][y] then
					local pos = api.GridToWorld({x, y})
					if MapEditor.InEditMode() then
						Resources.DrawImage("invasion_area1", pos[1], pos[2], 0, alpha)
						Font.SetSize(0)
						love.graphics.setColor(1, 1, 1, 0.8)
						love.graphics.printf(self.invasionMask[x][y],  pos[1] - 80, pos[2] - 42, 200, "center")
					else
						Resources.DrawImage("darkness", pos[1], pos[2], 0, alpha)
					end
				end
			end
		end
	end})
	
	if MapEditor.InEditMode() then
		drawQueue:push({y=-70; f=function()
			for x = 1, LevelHandler.Width() do
				for y = LevelHandler.Height(), 1, -1 do
					love.graphics.setColor(0, 0, 0, 0.2)
					love.graphics.setLineWidth(2)
					local corner   = api.GridToWorld({x, y}, true)
					local right    = api.GridToWorld({x + 1, y}, true)
					local rightBot = api.GridToWorld({x + 1, y + 1}, true)
					local bot      = api.GridToWorld({x, y + 1}, true)
					love.graphics.line(corner[1], corner[2], right[1], right[2], rightBot[1], rightBot[2], bot[1], bot[2], corner[1], corner[2])
				end
			end
		end})
	endend

function api.Initialize(world)
	self = {		tileList = IterableMap.New(),		tilePos = {},
		terrainType = {},
		terrainDraw = {},
		invasionMask = {},
		invasionWaves = {},
		waveTimer = 0,
		world = world,		toIso = {2, 2, 1, -1},
	}	self.fromIso = util.InverseBasis(self.toIso)
	
	SetupLevel()
end

return api
