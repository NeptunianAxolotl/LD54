
local self = {}
local api = {}

function api.InEditMode()
	return self.editorMode
end

function api.KeyPressed(key, scancode, isRepeat)
	if key == "e" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		self.editorMode = not self.editorMode
		
		if self.editorMode then
			love.graphics.setBackgroundColor(Global.BACK_COL_EDITOR[1], Global.BACK_COL_EDITOR[2], Global.BACK_COL_EDITOR[3], 1)
		else
			love.graphics.setBackgroundColor(Global.BACK_COL[1], Global.BACK_COL[2], Global.BACK_COL[3], 1)
		end
		return true
	end
	if key == "s" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		LevelHandler.SaveLevel("scratchLevel")
		return true
	end
	if not self.editorMode then
		return false
	end
	
	self.brushData = nil
	
	if key == "1" then
		self.brushMode = "grass"
		self.brushType = "terrain"
	elseif key == "2" then
		self.brushMode = "desert"
		self.brushType = "terrain"
	elseif key == "3" then
		self.brushMode = "forest"
		self.brushType = "terrain"
	elseif key == "4" then
		self.brushMode = "mountain"
		self.brushType = "terrain"
	elseif key == "5" then
		self.brushMode = "water"
		self.brushType = "terrain"
		
		
	elseif key == "e" then
		self.brushMode = "coast_test"
		self.brushType = "doodad"
	elseif key == "r" then
		self.brushMode = "coast_small"
		self.brushType = "doodad"
	elseif key == "t" then
		self.brushMode = "coast_test_flip"
		self.brushType = "doodad"
	elseif key == "y" then
		self.brushMode = "coast_small_flip"
		self.brushType = "doodad"
	elseif key == "u" then
		self.brushMode = "coast_test_flip_up"
		self.brushType = "doodad"
	elseif key == "i" then
		self.brushMode = "coast_small_flip_up"
		self.brushType = "doodad"
	elseif key == "o" then
		self.brushMode = "coast_test_up"
		self.brushType = "doodad"
	elseif key == "p" then
		self.brushMode = "coast_small_up"
		self.brushType = "doodad"
		
	elseif key == "7" then
		self.brushMode = "coast_behind"
		self.brushType = "doodad"
	elseif key == "8" then
		self.brushMode = "coast_behind_flip"
		self.brushType = "doodad"
		
	elseif key == "z" then
		self.brushMode = "town"
		self.brushType = "tile"
	elseif key == "x" then
		self.brushMode = "farm"
		self.brushType = "tile"
	elseif key == "c" then
		self.brushMode = "fishery"
		self.brushType = "tile"
		
	elseif key == "kp0" then
		self.brushMode = "fountain"
		self.brushType = "tile"
		
	elseif key == "kp1" then
		self.brushMode = "woodcutter"
		self.brushType = "tile"
	elseif key == "kp2" then
		self.brushMode = "sawmill"
		self.brushType = "tile"
	elseif key == "kp3" then
		self.brushMode = "tavern"
		self.brushType = "tile"
		
	elseif key == "kp4" then
		self.brushMode = "mine"
		self.brushType = "tile"
	elseif key == "kp5" then
		self.brushMode = "blacksmith"
		self.brushType = "tile"
	elseif key == "kp6" then
		self.brushMode = "quarry"
		self.brushType = "tile"
		
	elseif key == "kp7" then
		self.brushMode = "mill"
		self.brushType = "tile"
	elseif key == "kp8" then
		self.brushMode = "barracks"
		self.brushType = "tile"
	elseif key == "kp9" then
		self.brushMode = "tower"
		self.brushType = "tile"
	elseif key == "kp+" then
		self.brushMode = "alchemist"
		self.brushType = "tile"
	elseif key == "kp*" then
		self.brushMode = "chapel"
		self.brushType = "tile"
	elseif key == "kp/" then
		self.brushMode = "cathedral"
		self.brushType = "tile"
		
	elseif key == "kp-" then
		self.brushMode = "plenty"
		self.brushType = "tile"
		
		
	elseif key == "f" then
		self.brushMode = "invasion"
		self.brushType = "tile"
		self.brushData = {armySize = 3, invasionIndex = 1}
	elseif key == "g" then
		self.brushMode = "invasion"
		self.brushType = "tile"
		self.brushData = {armySize = 10, invasionIndex = 2}
	elseif key == "h" then
		self.brushMode = "invasion"
		self.brushType = "tile"
		self.brushData = {armySize = 20, invasionIndex = 3}
	elseif key == "j" then
		self.brushMode = "invasion"
		self.brushType = "tile"
		self.brushData = {armySize = 30, invasionIndex = 4}
	elseif key == "v" then
		self.brushMode = 1
		self.brushType = "invadeArea"
	elseif key == "b" then
		self.brushMode = 2
		self.brushType = "invadeArea"
	elseif key == "n" then
		self.brushMode = 3
		self.brushType = "invadeArea"
	elseif key == "m" then
		self.brushMode = 4
		self.brushType = "invadeArea"
		
		
	elseif key == "q" then
		self.brushType = "printCoord"
	end
	return true
end

local function DoDragClick(button)
	if button == 1 then
		if self.brushMode and self.brushType == "terrain" then
			TerrainHandler.SetTerrainType(self.brushMode, TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		elseif self.brushMode and self.brushType == "invadeArea" then
			TerrainHandler.AddInvasion(self.brushMode, TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		end
		if self.attachedDooddad then
			self.attachedDooddad.UpdateWorldPos(TerrainHandler.WorldToContinuousGrid(self.world.GetMousePosition()))
		end
	elseif button == 2 then
		self.attachedDooddad = false
		if self.brushType == "doodad" then
			DoodadHandler.RemoveDoodads(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		elseif self.brushType == "tile" then
			TerrainHandler.RemoveTile(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		elseif self.brushType == "invadeArea" then
			TerrainHandler.RemoveInvasion(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		elseif self.brushType == "terrain" then
			TerrainHandler.RemoveTerrain(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		end
	end
end

function api.MousePressed(x, y, button)
	if not self.editorMode then
		return false
	end
	
	if button == 1 then
		if self.brushType == "printCoord" then
			local pos = TerrainHandler.WorldToContinuousGrid(self.world.GetMousePosition())
			local text = string.format("%.2f, %.2f", pos[1], pos[2])
			EffectsHandler.SpawnEffect("error_popup", {700, 200}, {text = text, velocity = {0, 0}})
		elseif self.brushType == "doodad" then
			self.attachedDooddad = DoodadHandler.AddDoodad(self.brushMode, TerrainHandler.WorldToContinuousGrid(self.world.GetMousePosition()))
		elseif self.brushType == "tile" then
			TerrainHandler.AddTile(self.brushMode, TerrainHandler.WorldToGrid(self.world.GetMousePosition()), self.brushData)
		end
	end
	
	if button == 2 then
		self.attachedDooddad = false
		if self.brushType == "doodad" then
			DoodadHandler.RemoveDoodads(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		elseif self.brushType == "tile" then
			TerrainHandler.RemoveTile(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		elseif self.brushType == "invadeArea" then
			TerrainHandler.RemoveInvasion(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		end
	end
	DoDragClick(button)
	return true
end

function api.MouseReleased(x, y, button)
	if not self.editorMode then
		return false
	end
	self.attachedDooddad = false
end

function api.MouseMoved(x, y, dx, dy)
	if not self.editorMode then
		return false
	end
	if love.mouse.isDown(1) then
		DoDragClick(1)
	end
	if love.mouse.isDown(2) then
		DoDragClick(2)
	end
end

function api.DrawInterface()
	if not self.editorMode then
		return false
	end
	
	local shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.5
	local shopItemsY = 160
	
	Font.SetSize(3)
	love.graphics.printf([[
Welcome to the map editor
- Ctrl+E to toggle the editor

Right click to remove thing
of matching type (terrain,
invasion mask, structure)

- WSAD move camera
- Numbers 1-5 Place terrain
- Q: print the mouse coords.
- Ctrl+S: Save to scratchLevel.lua
- Ctrl+K: Save to file name
- Ctrl+L: Load from file name
- ERTYUIOP78: Some Doodads
- FGHJVBNM: Dark area
- ZXC: Basic Buildings
- Numpad: Other buildings

]], shopItemsX - Global.SHOP_WIDTH*0.42, shopItemsY, Global.SHOP_WIDTH*1.22, "left")
end

function api.Initialize(world)
	self = {
		world = world,
		editorMode = false,
		brushMode = "desert",
	}
end

return api