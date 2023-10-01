
local self = {}
local api = {}

function api.InEditMode()
	return self.editorMode
end

function api.KeyPressed(key, scancode, isRepeat)
	if key == "e" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		self.editorMode = not self.editorMode
		return true
	end
	if key == "s" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		LevelHandler.SaveLevel("scratchLevel")
		return true
	end
	if not self.editorMode then
		return false
	end
	
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
	elseif key == "w" then
		self.brushMode = "coast2"
		self.brushType = "doodad"
	elseif key == "a" then
		self.brushMode = "town"
		self.brushType = "tile"
	elseif key == "s" then
		self.brushMode = "farm"
		self.brushType = "tile"
	elseif key == "d" then
		self.brushMode = "mill"
		self.brushType = "tile"
	end
	return true
end

function api.MousePressed(x, y, button)
	if not self.editorMode then
		return false
	end
	
	if button == 1 then
		if self.brushType == "doodad" then
			self.attachedDooddad = DoodadHandler.AddDoodad(self.brushMode, TerrainHandler.WorldToContinuousGrid(self.world.GetMousePosition()))
		elseif self.brushType == "tile" then
			TerrainHandler.AddTile(self.brushMode, TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		end
	end
	
	if button == 2 then
		self.attachedDooddad = false
		if self.brushType == "doodad" then
			DoodadHandler.RemoveDoodads(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		elseif self.brushType == "tile" then
			TerrainHandler.RemoveTile(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		end
	end
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
		if self.brushMode and self.brushType == "terrain" then
			TerrainHandler.SetTerrainType(self.brushMode, TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		end
		if self.attachedDooddad then
			self.attachedDooddad.UpdateWorldPos(TerrainHandler.WorldToContinuousGrid(self.world.GetMousePosition()))
		end
	end
	if love.mouse.isDown(2) then
		self.attachedDooddad = false
		if self.brushType == "doodad" then
			DoodadHandler.RemoveDoodads(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		elseif self.brushType == "tile" then
			TerrainHandler.RemoveTile(TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
		end
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