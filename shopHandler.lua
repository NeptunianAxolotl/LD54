
local Font = require("include/font")

local TileDefs, TileDefList = util.LoadDefDirectory("defs/tiles", "defName")

local api = {}
local self = {}

local function InitializeDeck(deckFrequency)
	local deck = {}
	local validItems = {}
	for i = 1, #TileDefList do
		local def = TileDefs[TileDefList[i]]
		if def.inShop then
			for j = 1, Global.DECK_SIZE_MULT * (deckFrequency[TileDefList[i]] or 0) do
				validItems[#validItems + 1] = TileDefList[i]
			end
		end
	end
	--local function ModifyDeckOnShuffleFunc(deckCards)
	--	return util.CopyTable(validItems)
	--end
	return DeckHandler.GetDeck(validItems, true) --, ModifyDeckOnShuffleFunc)
end

local function DominoIsomorphism(dom1, dom2)
	return (dom1[1] == dom2[1] and dom1[2] == dom2[2]) or (dom1[1] == dom2[2] and dom1[2] == dom2[1])
end

local function DominionMatchesPrevious(domino, otherDominos, dominoIndex)
	for i = 1, dominoIndex - 1 do
		if DominoIsomorphism(domino, otherDominos[i]) then
			return true
		end
	end
	return false
end

local function GenerateDomino(otherDominos, dominoIndex, prevMatchAllowed)
	local first = DeckHandler.GetNextDraw(self.decks[1], 1)[1]
	local second = DeckHandler.GetNextDraw(self.decks[2], 1, TileDefs[first].cannotPairWith_map)[1]
	local domino = {first, second}
	if prevMatchAllowed or true then
		return domino
	end
	local tries = 0
	while DominionMatchesPrevious(domino, otherDominos, dominoIndex) do 
		domino[1] = DeckHandler.GetNextDraw(self.decks[1], 1)[1]
		domino[2] = DeckHandler.GetNextDraw(self.decks[2], 1, TileDefs[first].cannotPairWith_map)[1]
		tries = tries + 1
		if tries > Global.DOMINIO_DUPLICATE_TRIES then
			return domino
		end
	end
	return domino
end

local function UpdateItems(refreshAll)
	local shopSlots = GameHandler.GetShopSlots()
	for i = 1, shopSlots do
		if refreshAll or (not self.items[i]) then
			local domino = GenerateDomino(self.items, i)
			local tries = 0
			while not TerrainHandler.DominoCanBePlacedAtAll(domino) do
				domino = GenerateDomino(self.items, i, tries > 0.5*Global.DOMINO_GENERATION_TRIES)
				tries = tries + 1
				if tries > Global.DOMINO_GENERATION_TRIES then
					self.world.SetGameOver(false, "Ran out of space")
					break
				end
			end
			self.items[i] = domino
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

local function ClickShopButton(item)
	if not item then
		return false
	end
	if item == Global.SHOP_SLOTS + 1 then
		if self.shopBlockedTimer then
			return
		end
		self.shopBlockedTimer = Global.REFRESH_TIMER
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
	if MapEditor.InEditMode() then
		self.mapRules = false -- Remove hints etc
	end
	if self.shopBlockedTimer then
		self.shopBlockedTimer = self.shopBlockedTimer - dt
		if self.shopBlockedTimer < 0 then
			self.shopBlockedTimer = false
		end
	end
end

function api.AddResource(resource, count)
	self.resources[resource] = self.resources[resource] + count
end

function api.KeyPressed(key, scancode, isRepeat)
	if (key == "r" or key == "space") and not self.blockRotate then
		self.tileRotation = (self.tileRotation + 1)%4
		--SoundHandler.PlaySound("spin")
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

function api.MouseIsOverInterface()
	local mousePos = self.world.GetMousePositionInterface()
	return mousePos[1] > Global.VIEW_WIDTH - Global.SHOP_WIDTH
end

function api.PlacingTile()
	return self.heldTile
end

function api.MouseMoved(x, y)
end

function api.MousePressed(x, y, button)
	if button == 1 and self.heldTile and not api.MouseIsOverInterface() then
		local dominoPos = TerrainHandler.GetValidWorldPlacement(self.world.GetMousePosition(), self.tileRotation, self.heldTile)
		if dominoPos and dominoPos[1].valid and dominoPos[2].valid then
			TerrainHandler.AddDomino(self.heldTile, {dominoPos[1].pos, dominoPos[2].pos})
			UpdateItems(true)
			self.heldTile = false
		end
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

function api.Draw(drawQueue)
	if (not self.heldTile) or self.world.GetGameOver() then
		return
	end
	local dominoPos = TerrainHandler.GetValidWorldPlacement(self.world.GetMousePosition(), self.tileRotation, self.heldTile)
	
	if not dominoPos then
		return
	end
	
	local nearbyInfo = TerrainHandler.DescribeNearDomino(dominoPos[1].pos, self.tileRotation, self.heldTile)
	
	drawQueue:push({y=1000; f=function()
		for i = 1, 2 do
			local pos = TerrainHandler.GridToWorld(dominoPos[i].pos)
			local validPlacement = dominoPos[i].valid
			Resources.DrawImage(TileDefs[self.heldTile[i]].image, pos[1], pos[2], 0, 0.8, 1, validPlacement and Global.WHITE or Global.RED)
			
			for j = 1, #nearbyInfo[i] do
				local info = nearbyInfo[i][j]
				love.graphics.setLineWidth(6)
				if info.valid then
					--love.graphics.setColor(0.6, 0.6, 0.6, 0.2)
				else
					love.graphics.setColor(1, 0.1, 0.1, 0.2)
					love.graphics.line(pos[1], pos[2], info.pos[1], info.pos[2])
				end
			end
		end
	end})
end

function api.DrawInterface()
	local mousePos = self.world.GetMousePositionInterface()
	self.hoveredItem = false
	
	local shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.5
	local shopItemsY = 160
	local buttonExtra = 20
	
	love.graphics.setColor(Global.PANEL_COL[1], Global.PANEL_COL[2], Global.PANEL_COL[3], 0.98)
	love.graphics.rectangle("fill", Global.VIEW_WIDTH - Global.SHOP_WIDTH, -1000, Global.SHOP_WIDTH * 2, Global.VIEW_HEIGHT + 2000)
	love.graphics.setColor(0, 0, 0, 1)
	love.graphics.setLineWidth(12)
	love.graphics.rectangle("line", Global.VIEW_WIDTH - Global.SHOP_WIDTH, -1000, Global.SHOP_WIDTH * 2, Global.VIEW_HEIGHT + 2000, 8, 8, 16)
	
	--love.graphics.rectangle("line", 0, 0, 1920, 1080, 8, 8, 16)
	
	love.graphics.setColor(0, 0, 0, 1)
	Font.SetSize(1)
	love.graphics.printf(LevelHandler.GetLevelData().humanName, shopItemsX - Global.SHOP_WIDTH*0.45, shopItemsY - 140, Global.SHOP_WIDTH*0.9, "center")
	
	--if LevelHandler.GetOrderMult() > 1 then
	--	local mult = util.Round((LevelHandler.GetOrderMult() - 1) * 100)
	--	Font.SetSize(2)
	--	love.graphics.printf("But " .. mult .. "% Harder", shopItemsX - Global.SHOP_WIDTH*0.45, shopItemsY - 68, Global.SHOP_WIDTH*0.9, "center")
	--end
	
	if MapEditor.InEditMode() then
		return
	end
	
	local food = BuildingHandler.CountResourceType("food") - GuyHandler.CountResourceType("hunger")
	Font.SetSize(1)
	
	local starvation = GameHandler.GetStarvation()
	love.graphics.printf("Food " .. food, 20 + math.random()*starvation*500, 20 + math.random()*starvation*350, 400, "left")
	
	if self.world.GetGameOver() then
		love.graphics.printf("Game Over", 20, 80, 400, "left")
		local _, _, _, lossType = self.world.GetGameOver()
		love.graphics.printf(lossType, 20, 140, 400, "left")
	end
	
	--love.graphics.printf("Plank " .. self.resources.plank, 20, 80, 400, "left")
	
	--love.graphics.printf("Selection", shopItemsX - 200, shopItemsY + 20, 400, "center")
	
	for i = 1, Global.SHOP_SLOTS do
		local y = shopItemsY + Global.SHOP_SPACING * i
		if util.PosInRectangle(mousePos, shopItemsX - Global.SHOP_SIZE, y, Global.SHOP_SIZE * 2, Global.SHOP_SIZE) then
			self.hoveredItem = i
		end
		
		love.graphics.setColor(Global.TILE_COL[1], Global.TILE_COL[2], Global.TILE_COL[3], 1)
		love.graphics.setLineWidth(4)
		love.graphics.rectangle("fill", shopItemsX - Global.SHOP_SIZE, y, Global.SHOP_SIZE * 2, Global.SHOP_SIZE, 8, 8, 16)
		
		for j = 1, 2 do
			if self.items[i] then
				Resources.DrawImage(TileDefs[self.items[i][j]].image, shopItemsX + (j*2 - 3)*Global.SHOP_SIZE/2, y + Global.SHOP_SIZE*0.5, 0, 1, Global.SHOP_IMAGE_SCALE)
			end
		end
		
		if self.hoveredItem == i then
			love.graphics.setColor(0.35, 1, 0.35, 0.8)
		else
			love.graphics.setColor(0, 0, 0, 0.8)
		end
		love.graphics.setLineWidth(8)
		love.graphics.rectangle("line", shopItemsX - Global.SHOP_SIZE, y, Global.SHOP_SIZE * 2, Global.SHOP_SIZE, 8, 8, 16)
	end
	
	local drawHeld = (
		self.heldTile and (
			api.MouseIsOverInterface()
			or
			not TerrainHandler.GetValidWorldPlacement(self.world.GetMousePosition(), self.tileRotation, self.heldTile)
		)
	)
	if drawHeld then
		for i = 1, 2 do
			local pos = util.Add(mousePos, TerrainHandler.ToIsometricBasis(util.CardinalToVector(self.tileRotation, (i - 1) * Global.GRID_SIZE*0.4)))
			Resources.DrawImage(TileDefs[self.heldTile[i]].image, pos[1], pos[2], 0, 0.8, 0.5)
		end
	end
	
	if not Global.CAN_REFRESH then
		return
	end
	
	local y = shopItemsY + Global.VIEW_HEIGHT - Global.SHOP_SPACING - Global.SHOP_SIZE
	if util.PosInRectangle(mousePos, shopItemsX - Global.SHOP_SIZE - buttonExtra, y - Global.SHOP_SIZE, Global.SHOP_SIZE * 2 + buttonExtra*2, Global.SHOP_SIZE) then
		self.hoveredItem = Global.SHOP_SLOTS + 1
	end
	if self.shopBlockedTimer then
		love.graphics.setColor(0.45, 0.65, 0.72, 1)
	else
		love.graphics.setColor(0.5, 0.7, 0.8, 1)
	end
	love.graphics.setLineWidth(4)
	love.graphics.rectangle("fill", shopItemsX - Global.SHOP_SIZE - buttonExtra, y - Global.SHOP_SIZE, Global.SHOP_SIZE * 2 + buttonExtra*2, Global.SHOP_SIZE, 8, 8, 16)
	
	if self.shopBlockedTimer then
		local prop = self.shopBlockedTimer / Global.REFRESH_TIMER
		love.graphics.setColor(0.5, 0.5, 0.5, 1)
		love.graphics.rectangle("fill", shopItemsX - Global.SHOP_SIZE - buttonExtra, y - Global.SHOP_SIZE, prop * (Global.SHOP_SIZE * 2 + buttonExtra*2), Global.SHOP_SIZE, 8, 8, 16)
	end
	
	if self.hoveredItem == Global.SHOP_SLOTS + 1 and not self.shopBlockedTimer then
		love.graphics.setColor(0.35, 1, 0.35, 0.8)
	else
		love.graphics.setColor(0, 0, 0, 0.8)
	end
	love.graphics.setLineWidth(8)
	love.graphics.rectangle("line", shopItemsX - Global.SHOP_SIZE - buttonExtra, y - Global.SHOP_SIZE, Global.SHOP_SIZE * 2 + buttonExtra*2, Global.SHOP_SIZE, 8, 8, 16)
		
	Font.SetSize(1)
	love.graphics.setColor(0, 0, 0, 0.8)
	love.graphics.printf("Refresh", shopItemsX - Global.SHOP_SIZE - 20, y - Global.SHOP_SIZE + 14, Global.SHOP_SIZE * 2 + 35, "center")
	
end

function api.Initialize(world)
	self = {
		world = world,
		items = {},
		decks = {
			InitializeDeck(LevelHandler.GetLevelData().tileDeck[1]),
			InitializeDeck(LevelHandler.GetLevelData().tileDeck[2]),
		},
		resources = {
			plank = 0,
		},
		shopBlockedTimer = false
	}
	self.heldTile = false
	self.tileRotation = 0
	
	UpdateItems(true)
end

return api
