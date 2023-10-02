
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
	local contents = love.filesystem.read("levels/" .. name .. ".lua")
	if not contents then
		EffectsHandler.SpawnEffect("error_popup", {1000, 15}, {text = "Level file not found.", velocity = {0, 4}})
		return
	end
	local levelFunc = loadstring(contents)
	if not levelFunc then
		EffectsHandler.SpawnEffect("error_popup", {1000, 15}, {text = "Error loading level.", velocity = {0, 4}})
		return
	end
	local success, levelData = pcall(levelFunc)
	if not success then
		EffectsHandler.SpawnEffect("error_popup", {1000, 15}, {text = "Level format error.", velocity = {0, 4}})
		return
	end
	
	self.world.GetCosmos().LoadLevelByTable(levelData)
	return true
end

function api.SaveLevel(name)
	love.filesystem.createDirectory("levels")
	self.humanName = name
	
	local save = util.CopyTable(self.levelData)
	save.terrain, save.tiles, save.invasionMask = TerrainHandler.GetSaveData()
	save.doodads = DoodadHandler.ExportObjects()
	
	local saveTable = util.TableToString(save, Global.SAVE_ORDER)
	saveTable = "local data = " .. saveTable .. [[

return data
]]
	local success, message = love.filesystem.write("levels/" .. name .. ".lua", saveTable)
	if success then
		EffectsHandler.SpawnEffect("error_popup", {1000, 15}, {text = "Level saved to " .. (love.filesystem.getSaveDirectory() or "DIR_ERROR") .. "/" .. name .. ".", velocity = {0, 4}})
	else
		EffectsHandler.SpawnEffect("error_popup", {1000, 15}, {text = "Save error: " .. (message or "NO MESSAGE"), velocity = {0, 4}})
	end
	return success
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
	
	if key == "l" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		self.loadingLevelGetName = true
	end
	if key == "k" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		self.saveLevelGetName = true
	end
end

function api.Draw(drawQueue)
	if not self.levelData.hints then
		return
	end
	drawQueue:push({y=100000; f=function()
		for i = 1, #self.levelData.hints do
			local hint = self.levelData.hints[i]
			local pos = TerrainHandler.GridToWorld(hint.pos)
			local size = util.Mult(api.TileSize()*4, hint.size)
			
			if hint.arrowDest then
				local arrowDest = TerrainHandler.GridToWorld(hint.arrowDest)
				love.graphics.setColor(0, 0, 0, 1)
				love.graphics.setLineWidth(12)
				if hint.arrow == "right" then
					love.graphics.line(pos[1] + size[1], pos[2] + size[2], arrowDest[1], arrowDest[2])
				end
				if hint.arrow == "left" then
					love.graphics.line(pos[1], pos[2] + size[2], arrowDest[1], arrowDest[2])
				end
				if hint.arrow == "topRight" then
					love.graphics.line(pos[1] + size[1], pos[2], arrowDest[1], arrowDest[2])
				end
				if hint.arrow == "midRight" then
					love.graphics.line(pos[1] + size[1], pos[2] + size[2]*0.5, arrowDest[1], arrowDest[2])
				end
				if hint.arrow == "mid" then
					love.graphics.line(pos[1] + size[1]*0.5, pos[2] + size[2], arrowDest[1], arrowDest[2])
				end
			end
			
			Font.SetSize(1)
			love.graphics.setColor(unpack(Global.HINT_BACK))
			love.graphics.setLineWidth(4)
			love.graphics.rectangle("fill", pos[1], pos[2], size[1], size[2], 8, 8, 16)
			love.graphics.setColor(unpack(Global.HINT_OUTLINE))
			love.graphics.setLineWidth(12)
			love.graphics.rectangle("line", pos[1], pos[2], size[1], size[2], 8, 8, 16)
			love.graphics.setColor(0, 0, 0, 1)
			love.graphics.printf(hint.text, pos[1] + 25, pos[2] + 10, size[1] - 50, "left")
		end
	end})
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

function api.Initialize(world, levelData)
	self = {
		world = world,
		levelData = levelData,
	}
end

return api
