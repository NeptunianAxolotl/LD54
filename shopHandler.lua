
local Font = require("include/font")

local TileDefs, TileDefList = util.LoadDefDirectory("defs/tiles")

local api = {}
local self = {}

local function InitializeDeck(deckFrequency)
	local deck = {}
	local validItems = {}
	for i = 1, #TileDefList do
		local def = TileDefs[TileDefList[i]]
		if def.inShop then
			for j = 1, Global.DECK_SIZE_MULT * deckFrequency[TileDefList[i]] do
				validItems[#validItems + 1] = TileDefList[i]
			end
		end
	end
	return DeckHandler.GetDeck(validItems, true)
end

local function GenerateDomino()
	local first = DeckHandler.GetNextDraw(self.deck, 1)[1]
	local second = DeckHandler.GetNextDraw(self.deck, 1, util.ToMask(TileDefs[first].cannotPairWith))[1]
	return {first, second}
end

local function UpdateItems(refreshAll)
	self.emptySlot = false
	local shopSlots = GameHandler.GetShopSlots()
	for i = 1, shopSlots do
		if refreshAll or (not self.items[i]) then
			self.items[i] = GenerateDomino()
		end
	end
end

function api.GetHeldTile()
	if not self.heldTile then
		return false
	end
	return self.heldTile, self.tileRotation
end

function api.UseHeldTile()
	self.heldTile = false
end

function api.SetHeldTile(newTile, newRotation)
	self.heldTile = newTile
	if newRotation then
		self.tileRotation = newRotation
	end
end

function api.UpdateShopIfEmpty()
	if self.emptySlot then
		UpdateItems()
	end
end

local function ClickShopButton(item)
	if not item then
		return false
	end
	if item == Global.SHOP_SLOTS + 1 then
		if self.shopBlockedTimer then
			return
		end
		if not TerrainHandler.IsPreLevel() then
			self.shopBlockedTimer = Global.REFRESH_TIMER
		end
		self.heldTile = false
		UpdateItems(true)
		return
	end
	if self.heldTile then
		if self.items[item] and self.emptySlot then
			self.items[self.emptySlot] = self.heldTile
			self.heldTile = self.items[item]
			self.emptySlot = item
			self.items[item] = false
			return true
		end
		if self.emptySlot == item then
			self.items[item] = self.heldTile
			self.heldTile = false
			self.emptySlot = false
			return true
		end
	end
	self.heldTile = self.items[item]
	self.items[item] = false
	self.emptySlot = item
	return true
end

function api.Update(dt)
	if self.shopBlockedTimer then
		self.shopBlockedTimer = self.shopBlockedTimer - dt
		if self.shopBlockedTimer <= 0 then
			self.shopBlockedTimer = false
		end
	end
	if not self.heldTile then
		api.UpdateShopIfEmpty()
	end
	if LevelHandler.InEditMode() then
		self.mapRules = false -- Remove hints etc
	end
end

function api.KeyPressed(key, scancode, isRepeat)
	if (key == "r" or key == "space") and not self.blockRotate then
		self.tileRotation = (self.tileRotation + 1)%4
		--SoundHandler.PlaySound("spin")
	end
	if LevelHandler.InEditMode() then
		if key == "1" then
		end
		return
	end
	for i = 1, Global.SHOP_SLOTS do
		if key == tostring(i) then
			ClickShopButton(i)
		end
	end
	if key == "e" then
		ClickShopButton(Global.SHOP_SLOTS + 1)
	end
end

function api.MouseMoved(x, y)
	if LevelHandler.InEditMode() then
		if self.placeTileHeld then
			if not (love.mouse.isDown(1) and self.heldTile) then
				self.placeTileHeld = false
				return
			end
			local mousePos = self.world.GetMousePosition()
			mousePos = {math.floor(mousePos[1] / LevelHandler.TileSize()), math.floor(mousePos[2] / LevelHandler.TileSize())}
			local tile = TerrainHandler.GetTileAtPos(mousePos)
			if (not tile) or (not tile.IsInUse()) then
				TerrainHandler.AddTile(mousePos, self.heldTile, self.tileRotation)
			end
			if TileDefs[self.heldTile].isCrowbar then
				DoodadHandler.RemoveDoodads(mousePos)
			end
		end
	end
end

function api.MousePressed(x, y, button)
	if LevelHandler.InEditMode() then
		if self.blockRotate then
			self.tileRotation = 0
		elseif button == 2 then
			self.tileRotation = (self.tileRotation + 1)%4
			--SoundHandler.PlaySound("spin")
		end
		if button == 1 and self.heldTile then
			local mousePos = self.world.GetMousePosition()
			if self.holdingDoodad then
				mousePos = util.Subtract(util.Mult(1 / LevelHandler.TileSize() , mousePos), {0.5, 0.5})
				DoodadHandler.AddDoodad(mousePos, self.heldTile)
				print([[{pos = {]] .. mousePos[1] .. [[, ]] .. mousePos[2] .. [[}, doodadType = "]] .. self.heldTile .. [["},]])
			else
				mousePos = {math.floor(mousePos[1] / LevelHandler.TileSize()), math.floor(mousePos[2] / LevelHandler.TileSize())}
				local tile = TerrainHandler.GetTileAtPos(mousePos)
				if (not tile) or (not tile.IsInUse()) then
					TerrainHandler.AddTile(mousePos, self.heldTile, self.tileRotation)
				end
				print([[{pos = {]] .. mousePos[1] .. [[, ]] .. mousePos[2] .. [[}, rot = ]] .. self.tileRotation .. [[, tileType = "]] .. self.heldTile .. [["},]])
				if TileDefs[self.heldTile].isCrowbar then
					DoodadHandler.RemoveDoodads(mousePos)
				end
				if TileDefs[self.heldTile].editorWantGoods then
					LevelHandler.TownWantPopup(mousePos)
				else
					self.placeTileHeld = true
				end
			end
		end
		return
	end
	if button == 2 then
		self.tileRotation = (self.tileRotation + 1)%4
		--SoundHandler.PlaySound("spin")
	end
	if button ~= 1 then
		return false
	end
	return ClickShopButton(self.hoveredItem)
end

function api.DrawInterface()
	local mousePos = self.world.GetMousePositionInterface()
	self.hoveredItem = false
	if self.heldTile and not self.world.GetGameOver() then
		local def = TileDefs[self.heldTile]
		local pos = TerrainHandler.GetValidPlacement(mousePos)
		if pos then
			--local tile = TerrainHandler.GetTileAtPos(pos)
			--if tile then
			--	if tile.IsInUse() then
			--		love.graphics.setColor(0.7, 0.7, 0.7, 0.2)
			--	elseif TileDefs[self.heldTile].isCrowbar then
			--		love.graphics.setColor(1, 1, 1, 0.2)
			--	elseif TileDefs[self.heldTile].overwrite and TileDefs[self.heldTile].overwrite[tile.tileType] then
			--		local overwriteRot = TileDefs[self.heldTile].overwrite[tile.tileType].rot
			--		local relativeRot = (self.tileRotation - tile.rotation)%4
			--		if overwriteRot[relativeRot] then
			--			love.graphics.setColor(1, 1, 1, 0.2)
			--		else
			--			love.graphics.setColor(0.7, 0.7, 0.7, 0.2)
			--		end
			--	else
			--		love.graphics.setColor(0.7, 0.7, 0.7, 0.2)
			--	end
			--else
			--	if (not TileDefs[self.heldTile].isCrowbar) then
			--		love.graphics.setColor(1, 1, 1, 0.2)
			--	else
			--		love.graphics.setColor(0.7, 0.7, 0.7, 0.2)
			--	end
			--end
			--love.graphics.setLineWidth(5)
			--love.graphics.rectangle("line", pos[1]*LevelHandler.TileSize(), pos[2]*LevelHandler.TileSize(), LevelHandler.TileSize(), LevelHandler.TileSize(), 4, 4, 8)
		end
		--if def.stateImage then
		--	Resources.DrawImage(def.stateImage[1], mousePos[1], mousePos[2], self.tileRotation * math.pi/2, 0.8, LevelHandler.TileScale())
		--end
		--if def.topImage then
		--	Resources.DrawImage(def.topImage, mousePos[1], mousePos[2], self.tileRotation * math.pi/2, 0.8, LevelHandler.TileScale())
		--end
	end
	
	local shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.5
	local shopItemsY = 160
	local buttonExtra = 20
	
	love.graphics.setColor(Global.PANEL_COL[1], Global.PANEL_COL[2], Global.PANEL_COL[3], 0.98)
	love.graphics.rectangle("fill", Global.VIEW_WIDTH - Global.SHOP_WIDTH, -1000, Global.SHOP_WIDTH * 2, Global.VIEW_HEIGHT + 2000)
	love.graphics.setColor(0, 0, 0, 1)
	love.graphics.setLineWidth(12)
	love.graphics.rectangle("line", Global.VIEW_WIDTH - Global.SHOP_WIDTH, -1000, Global.SHOP_WIDTH * 2, Global.VIEW_HEIGHT + 2000, 8, 8, 16)
	
	
	love.graphics.rectangle("line", 0, 0, 1920, 1080, 8, 8, 16)
	
	love.graphics.setColor(0, 0, 0, 1)
	Font.SetSize(0)
	love.graphics.printf(LevelHandler.GetLevelData().humanName, shopItemsX - Global.SHOP_WIDTH*0.45, shopItemsY - 140, Global.SHOP_WIDTH*0.9, "center")
	
	--if LevelHandler.GetOrderMult() > 1 then
	--	local mult = util.Round((LevelHandler.GetOrderMult() - 1) * 100)
	--	Font.SetSize(2)
	--	love.graphics.printf("But " .. mult .. "% Harder", shopItemsX - Global.SHOP_WIDTH*0.45, shopItemsY - 68, Global.SHOP_WIDTH*0.9, "center")
	--end
	
	if LevelHandler.InEditMode() then
		return
	end
	
	Font.SetSize(1)
	love.graphics.printf("Tile Shop" , shopItemsX - 200, shopItemsY + 30, 400, "center")
	
	local shopItemsSpacing = 240
	for i = 1, Global.SHOP_SLOTS do
		local y = shopItemsY + shopItemsSpacing * i
		if util.PosInRectangle(mousePos, shopItemsX - Global.GRID_SIZE, y, Global.GRID_SIZE * 2, Global.GRID_SIZE) then
			self.hoveredItem = i
		end
		
		love.graphics.setColor(Global.BACK_COL[1], Global.BACK_COL[2], Global.BACK_COL[3], 1)
		love.graphics.setLineWidth(4)
		love.graphics.rectangle("fill", shopItemsX - Global.GRID_SIZE, y, Global.GRID_SIZE * 2, Global.GRID_SIZE, 8, 8, 16)
		
		for j = 1, 2 do
			Resources.DrawImage(TileDefs[self.items[i][j]].image, shopItemsX + (j*2 - 3)*50, y + Global.GRID_SIZE*0.5, self.tileRotation * math.pi/2, 1, 1)
		end
		
		if self.hoveredItem == i then
			love.graphics.setColor(0.35, 1, 0.35, 0.8)
		else
			love.graphics.setColor(0, 0, 0, 0.8)
		end
		love.graphics.setLineWidth(8)
		love.graphics.rectangle("line", shopItemsX - Global.GRID_SIZE, y, Global.GRID_SIZE * 2, Global.GRID_SIZE, 8, 8, 16)
	end
end

function api.Initialize(world)
	self = {
		world = world,
		items = {},
		deck = InitializeDeck(LevelHandler.GetLevelData().tileDeck),
	}
	self.heldTile = false
	self.tileRotation = 0
	
	UpdateItems(true)
end

return api
