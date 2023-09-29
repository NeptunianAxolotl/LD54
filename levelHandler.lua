
local IterableMap = require("include/IterableMap")
local util = require("include/util")
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

function api.TileSize()
	return self.tileSize
end

function api.TileScale()
	return self.tileSize / Global.GRID_SIZE
end

function api.GetVertOffset()
	return self.vertOffset
end

function api.GetBaseCarts()
	return self.baseCarriages
end

function api.GetLevelHumanName()
	return self.humanName
end

function api.IsFinalMap()
	return self.finalLevel
end

function api.TownDrawParams()
	return self.townDrawParams
end

function api.GetOrderMult()
	return self.world.GetOrderMult()
end

function api.GetMapData()
	return self.map
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
	
	local save = {
		humanName = self.humanName,
		dimensions = {
			width = self.width,
			height = self.height,
			tileSize = self.tileSize,
			vertOffset = self.vertOffset,
		},
		baseCarriages = self.baseCarriages,
		track = TerrainHandler.ExportObjects(),
		doodads = DoodadHandler.ExportObjects(),
		townDrawParams = {
			font = (self.tileSize > 125 and 0) or 1,
			pos = (self.tileSize > 145 and {-0.01, -1.55}) and (self.tileSize > 125 and {0.01, -1.58}) or {0.03, -1.55},
		}
	}
	
	local saveTable = util.TableToString(save)
	local success, message = love.filesystem.write("levels/" .. name, saveTable)
	if success then
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Level saved to " .. name .. ".", velocity = {0, 4}})
	else
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Save error: " .. (message or "NO MESSAGE"), velocity = {0, 4}})
	end
	return success
end

function api.InEditMode()
	return self.editMode
end

function api.IsMenuOpen()
	return self.loadingLevelGetName or self.saveLevelGetName
end

function api.MousePressed()
	if self.loadingLevelGetName or self.saveLevelGetName then
		return true
	end
end

function api.TownWantPopup(pos)
	self.townWantPos = pos
	self.townWantConf = {{good = "food", count = 5}}
end

function api.KeyPressed(key, scancode, isRepeat)
	if self.loadingLevelGetName or self.saveLevelGetName then
		if key and string.len(key) == 1 then
			if (love.keyboard.isDown("lshift") or love.keyboard.isDown("rshift")) then
				key = string.upper(key)
			end
			self.enteredText = (self.enteredText or "") .. key
		end
		if key == "meta" or key == "space" then
			self.enteredText = (self.enteredText or "") .. " "
		end
		if (key == "delete" or key == "backspace") and self.enteredText and string.len(self.enteredText) > 0 then
			self.enteredText = string.sub(self.enteredText, 0, string.len(self.enteredText) - 1)
		end
		if key == "escape" then
			self.loadingLevelGetName = false
			self.saveLevelGetName = false
		end
		if key == "return" and self.enteredText then
			if self.loadingLevelGetName then
				api.LoadLevel(self.enteredText)
				-- Loading causes immediate reinitialisation from world.
			elseif self.saveLevelGetName then
				if api.SaveLevel(self.enteredText) then
					self.saveLevelGetName = false
				end
			end
		end
		return true
	end
	
	if self.townWantConf then
		local varyRate = ((love.keyboard.isDown("lshift") or love.keyboard.isDown("rshift")) and 5) or 1
		if key == "q" then
			self.townWantConf[#self.townWantConf].good = "food"
		elseif key == "w" then
			self.townWantConf[#self.townWantConf].good = "wood"
		elseif key == "e" then
			self.townWantConf[#self.townWantConf].good = "ore"
		elseif key == "a" then
			self.townWantConf[#self.townWantConf + 1] = {good = "food", count = 5}
		elseif key == "d" then
			if #self.townWantConf > 1 then
				self.townWantConf[#self.townWantConf] = nil
			end
		elseif key == "n" then
			self.townWantConf[#self.townWantConf].count = math.max(1, self.townWantConf[#self.townWantConf].count - varyRate)
		elseif key == "m" then
			self.townWantConf[#self.townWantConf].count = self.townWantConf[#self.townWantConf].count + varyRate
		elseif key == "return" or key == "escape" then
			local track = TerrainHandler.GetTrackAtPos(self.townWantPos)
			if track then
				track.progression = self.townWantConf
			end
			self.townWantConf = false
		end
		return true
	end
	
	if key == "l" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		self.loadingLevelGetName = true
	end
	if key == "k" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		self.saveLevelGetName = true
	end
	if key == "j" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		self.editMode = not self.editMode
	end
	
	if not self.editMode then
		return
	end
	
	local varyRate = ((love.keyboard.isDown("lshift") or love.keyboard.isDown("rshift")) and 5) or 1
	if key == "z" then
		self.tileSize = math.max(2, self.tileSize - varyRate)
		TerrainHandler.UpdateTileSize()
		DoodadHandler.UpdateTileSize()
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Tile size: " .. self.tileSize, velocity = {0, 4}})
	elseif key == "x" then
		self.tileSize = self.tileSize + varyRate
		TerrainHandler.UpdateTileSize()
		DoodadHandler.UpdateTileSize()
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Tile size: " .. self.tileSize, velocity = {0, 4}})
	elseif key == "c" then
		self.width = math.max(1, self.width - varyRate)
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Width: " .. self.width, velocity = {0, 4}})
	elseif key == "v" then
		self.width = self.width + varyRate
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Width: " .. self.width, velocity = {0, 4}})
	elseif key == "b" then
		self.height = math.max(1, self.height - varyRate)
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Height: " .. self.height, velocity = {0, 4}})
	elseif key == "n" then
		self.height = self.height + varyRate
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Height: " .. self.height, velocity = {0, 4}})
	elseif key == "l" then
		self.vertOffset = self.vertOffset - varyRate
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Offset: " .. self.vertOffset, velocity = {0, 4}})
	elseif key == "." then
		self.vertOffset = self.vertOffset + varyRate
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Offset: " .. self.vertOffset, velocity = {0, 4}})
	elseif key == "m" then
		self.baseCarriages = math.max(1, self.baseCarriages - varyRate)
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Initial carriages: " .. self.baseCarriages, velocity = {0, 4}})
	elseif key == "," then
		self.baseCarriages = self.baseCarriages + varyRate
		EffectsHandler.SpawnEffect("error_popup", {480, 15}, {text = "Initial carriages: " .. self.baseCarriages, velocity = {0, 4}})
	end
end

local function SetupWorld(levelIndex, mapDataOverride)

end

function api.DrawInterface()
	local gameOver, gameWon, gameLost = self.world.GetGameOver()
	local windowX, windowY = love.window.getMode()
	local overX = windowX*0.32
	local overWidth = windowX*0.36
	local overY = windowY*0.3
	local overHeight = windowY*0.4
	
	local drawWindow = self.loadingLevelGetName or self.saveLevelGetName or self.townWantConf
	if drawWindow then
		love.graphics.setColor(Global.PANEL_COL[1], Global.PANEL_COL[2], Global.PANEL_COL[3], 0.97)
		love.graphics.setLineWidth(4)
		love.graphics.rectangle("fill", overX, overY, overWidth, overHeight, 8, 8, 16)
		love.graphics.setColor(0, 0, 0, 0.8)
		love.graphics.setLineWidth(10)
		love.graphics.rectangle("line", overX, overY, overWidth, overHeight, 8, 8, 16)
		
	end
	
	if self.townWantConf then
		Font.SetSize(2)
		love.graphics.setColor(0, 0, 0, 0.8)
		love.graphics.printf("Configure Town", overX, overY + overHeight * 0.04, overWidth, "center")
	
		Font.SetSize(3)
		love.graphics.printf([[
- QWE: Set resource
- N/M: Tweak count
- A: Add line
- D: Delete line
- Enter: Done
Hold shift for +5/-5
]], overX + overWidth*0.5, overY + overHeight * 0.2, overWidth*0.8, "left")
		local needStr = "Town needs:"
		util.PrintTable(self.townWantConf)
		for i = 1, #self.townWantConf do
			local line = self.townWantConf[i]
			needStr = needStr .. "\n" .. line.good .. ": " .. line.count
		end
		love.graphics.printf(needStr, overX + overWidth*0.15, overY + overHeight * 0.2, overWidth*0.4, "left")
	elseif self.loadingLevelGetName then
		Font.SetSize(0)
		love.graphics.setColor(0, 0, 0, 0.8)
		love.graphics.printf("Loading Level", overX, overY + overHeight * 0.04, overWidth, "center")
		
		Font.SetSize(3)
		love.graphics.printf("Type level name (Enter accept, ESC cancel)\n" .. (self.enteredText or ""), overX + overWidth*0.05, overY + overHeight * 0.32 , overWidth*0.9, "center")
		
		Font.SetSize(3)
		love.graphics.printf("Loading from " .. (love.filesystem.getSaveDirectory() or "DIR_ERROR") .. "/levels", overX + overWidth*0.05, overY + overHeight * 0.65, overWidth*0.9, "center")

	elseif self.saveLevelGetName then
		Font.SetSize(0)
		love.graphics.setColor(0, 0, 0, 0.8)
		love.graphics.printf("Saving Level", overX, overY + overHeight * 0.04, overWidth, "center")
		
		Font.SetSize(3)
		love.graphics.printf("Type level name (Enter accept, ESC cancel)\n" .. (self.enteredText or ""), overX + overWidth*0.05, overY + overHeight * 0.32 , overWidth*0.9, "center")
		
		Font.SetSize(3)
		love.graphics.printf("Saving to " .. (love.filesystem.getSaveDirectory() or "DIR_ERROR") .. "/levels", overX + overWidth*0.05, overY + overHeight * 0.65, overWidth*0.9, "center")
	end
	return drawWindow
end

function api.Initialize(world, levelIndex, mapDataOverride)
	self = {
		world = world,
	}
	
	SetupWorld(levelIndex, mapDataOverride)
end

return api
