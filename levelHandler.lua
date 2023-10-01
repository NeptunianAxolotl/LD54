
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

function api.LoadLevel(name)
	print("load level")
	local contents = love.filesystem.read("levels/" .. name)
	if not contents then
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Level file not found.", velocity = {0, 4}})
		return
	end
	local levelFunc = loadstring("return "..contents)
	if not levelFunc then
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Error loading level.", velocity = {0, 4}})
		return
	end
	local success, levelData = pcall(levelFunc)
	if not success then
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Level format error.", velocity = {0, 4}})
		return
	end
	
	self.world.LoadLevelByTable(levelData)
	return true
end

function api.SaveLevel(name)
	love.filesystem.createDirectory("levels")
	self.humanName = name
	
	local save = util.CopyTable(self.levelData)
	save.terrain, save.tiles = TerrainHandler.GetSaveData()
	save.doodads = DoodadHandler.ExportObjects()
	
	local saveTable = util.TableToString(save)
	saveTable = "local data = " .. saveTable .. [[

return data
]]
	local success, message = love.filesystem.write("levels/" .. name .. ".lua", saveTable)
	if success then
		EffectsHandler.SpawnEffect("error_popup", {2500, 15}, {text = "Level saved to " .. (love.filesystem.getSaveDirectory() or "DIR_ERROR") .. "/" .. name .. ".", velocity = {0, 4}})
	else
		EffectsHandler.SpawnEffect("error_popup", {2500, 15}, {text = "Save error: " .. (message or "NO MESSAGE"), velocity = {0, 4}})
	end
	return success
end


function api.Initialize(world, levelData)
	self = {
		world = world,
		levelData = levelData,
	}
end

return api
