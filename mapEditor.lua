
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
		
		
	elseif key == "q" then
		self.brushMode = "coast1"
		self.brushType = "doodad"
	elseif key == "e" then
		self.brushMode = "coast2"
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
		
	--elseif key == "kp0" then
	--	self.brushMode = "woodcutter"
	--	self.brushType = "tile"
		
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
	elseif key == "v" then
		self.brushMode = 1
		self.brushType = "invadeArea"
	elseif key == "b" then
		self.brushMode = 2
		self.brushType = "invadeArea"
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
		if self.brushType == "doodad" then
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
- Numbers 1-5:
     Place terrain

- Ctrl+S: Save
- ER: Doodads
- FV/GB: Invasions
- ZX: Buildings

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