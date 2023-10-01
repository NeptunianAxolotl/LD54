
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
	elseif key == "2" then
		self.brushMode = "desert"
	elseif key == "3" then
		self.brushMode = "forest"
	elseif key == "4" then
		self.brushMode = "mountain"
	elseif key == "5" then
		self.brushMode = "water"
	end
	return true
end

function api.MousePressed(x, y, button)
	if not self.editorMode then
		return false
	end
	
	
	return true
end

function api.MouseMoved(x, y, dx, dy)
	if not self.editorMode then
		return false
	end
	if love.mouse.isDown(1) then
		if self.brushMode then
			TerrainHandler.SetTerrainType(self.brushMode, TerrainHandler.WorldToGrid(self.world.GetMousePosition()))
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