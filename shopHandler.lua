
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

local function DrawDomino(deck, cannotPair)
	local drawn = DeckHandler.GetNextDraw(deck, 1, cannotPair)[1]
	return drawn
end

local function GenerateDomino(otherDominos, dominoIndex, prevMatchAllowed)
	local first = DrawDomino(self.decks[1], cannotPair)
	local second = DrawDomino(self.decks[2], TileDefs[first].cannotPairWith_map)
	local domino = {first, second}
	if prevMatchAllowed then
		return domino
	end
	local tries = 0
	while DominionMatchesPrevious(domino, otherDominos, dominoIndex) do
		domino[1] = DrawDomino(self.decks[1])
		domino[2] = DrawDomino(self.decks[2], TileDefs[first].cannotPairWith_map)
		tries = tries + 1
		if tries > Global.DOMINIO_DUPLICATE_TRIES then
			return domino
		end
	end
	return domino
end

function api.OutOfSpace()
	return self.outOfSpaceRetryTimer and true or false
end

local function UpdateItems()
	local shopSlots = GameHandler.GetShopSlots()
	for i = 1, shopSlots do
		if i == shopSlots and GameHandler.CanAfford("explosion") then
			self.items[i] = {Global.DESTROY_NAME, Global.DESTROY_NAME}
		else
			local domino = GenerateDomino(self.items, i)
			local tries = 0
			while not TerrainHandler.DominoCanBePlacedAtAll(domino) do
				domino = GenerateDomino(self.items, i, tries > Global.DOMINIO_DUPLICATE_RELAX * Global.DOMINO_GENERATION_TRIES)
				tries = tries + 1
				if tries > Global.DOMINO_GENERATION_TRIES then
					self.outOfSpaceRetryTimer = 10
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
	if item == GameHandler.GetShopSlots() + 1 then
		if self.shopBlockedTimer then
			return
		end
		self.shopBlockedTimer = Global.REFRESH_TIMER
		self.heldTile = false
		GameHandler.BuyNext("refresh")
		UpdateItems()
		return
	end
	if item > GameHandler.GetShopSlots() + 1 then
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

local function UpdateFoodDial(dt)
	local foodInfo = GameHandler.GetFoodInfo()
	local starvation = GameHandler.GetStarvation()
	
	local wantedPosition = 0.5
	if foodInfo.expense > 0 then
		wantedPosition = (foodInfo.income / foodInfo.expense - 1) + 0.25
		wantedPosition = math.max(0, math.min(1, wantedPosition))
	end
	local smooth = 0.96
	self.dialPosition = smooth*self.dialPosition + (1 - smooth)*wantedPosition
end

function api.SetTooltip(newTooltip)
	self.tooltip = newTooltip
end

function api.SetTooltipToTile(tileName, tileData)
	if TileDefs[tileName].TooltipFunc then
		self.tooltip = TileDefs[tileName].TooltipFunc(tileData)
		return
	end
	self.tooltip = TileDefs[tileName].tooltip or ("Tile name " .. tileName .. " missing tooltip")
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
	UpdateFoodDial(dt)
	
	if GameHandler.InSoftLossState() or GameHandler.InVictoryState() then
		self.endGameFadeTimer = math.min(1, (self.endGameFadeTimer or 0) + dt*Global.END_GAME_FADE_RATE)
	elseif self.endGameFadeTimer then
		self.endGameFadeTimer = self.endGameFadeTimer - dt*Global.END_GAME_FADE_RATE
		if self.endGameFadeTimer < 0 then
			self.endGameFadeTimer = false
		end
	end
	
	if self.outOfSpaceRetryTimer then
		self.outOfSpaceRetryTimer = self.outOfSpaceRetryTimer - dt
		if self.outOfSpaceRetryTimer < 0 then
			self.outOfSpaceRetryTimer = false
			UpdateItems()
		end
	end
	
	if self.tooltip then
		self.tooltipFade = math.min(1, self.tooltipFade + Global.TOOLTIP_FADE_RATE*dt)
		self.tooltipFadeDelay = Global.TOOLTIP_FADE_DELAY
		self.oldTooltip = self.tooltip
	else
		if self.tooltipFadeDelay then
			self.tooltipFadeDelay = self.tooltipFadeDelay - dt
			if self.tooltipFadeDelay < 0 then
				self.tooltipFadeDelay = false
			end
		end
		if not self.tooltipFadeDelay then
			self.tooltipFade = math.max(0, self.tooltipFade - Global.TOOLTIP_FADE_RATE*dt)
			if self.tooltipFade <= 0 then
				self.oldTooltip = false
			end
		end
	end
	self.tooltip = false
end

function api.AddResource(resource, count)
	self.resources[resource] = self.resources[resource] + count
end

function api.KeyPressed(key, scancode, isRepeat)
	if (key == "r" or key == "space") and not self.blockRotate then
		self.tileRotation = (self.tileRotation + 1)%4
		--SoundHandler.PlaySound("spin")
	end
	for i = 1, GameHandler.GetShopSlots() do
		if key == tostring(i) then
			ClickShopButton(i)
		end
	end
	if key == "e" and GameHandler.CanAfford("refresh") then
		ClickShopButton(GameHandler.GetShopSlots() + 1)
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

local function TryToExplodeDominio(dominoPos)
	local nearbyInfo = TerrainHandler.DescribeNearDomino(dominoPos[1].pos, self.tileRotation, self.heldTile)
	
	if not (TerrainHandler.GetTile(dominoPos[1].pos) or TerrainHandler.GetTile(dominoPos[2].pos)) then
		-- If not overlapping any tiles, then none will be destroyed.
		return false
	end
	
	for i = 1, 2 do
		local tile = TerrainHandler.GetTile(dominoPos[i].pos)
		if tile and tile.def.defName == "invasion" then
			return false
		end
		local validPlacement = nearbyInfo[i] and nearbyInfo[i][1] and nearbyInfo[i][1].valid
		if not validPlacement then
			return false
		end
	end
	
	for i = 1, 2 do
		TerrainHandler.RemoveTile(dominoPos[i].pos)
	end
	GameHandler.BuyNext("explosion")
	return true
end

function api.MousePressed(x, y, button)
	if button == 1 and self.heldTile and not api.MouseIsOverInterface() then
		local dominoPos = TerrainHandler.GetValidWorldPlacement(self.world.GetMousePosition(), self.tileRotation, self.heldTile)
		if self.heldTile[1] == Global.DESTROY_NAME and dominoPos then
			if TryToExplodeDominio(dominoPos) then
				GameHandler.DoTurnTick()
				UpdateItems()
				self.heldTile = false
			end
		elseif dominoPos and dominoPos[1].valid and dominoPos[2].valid then
			TerrainHandler.AddDomino(self.heldTile, {dominoPos[1].pos, dominoPos[2].pos})
			GameHandler.DoTurnTick()
			UpdateItems()
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
	if self.hoveredEndLevelAction == "retry" then
		self.world.Restart()
	elseif self.hoveredEndLevelAction == "next" then
		self.world.GetCosmos().SwitchLevel(true)
	end
	if GameHandler.InSoftLossState() then
		return false
	end
	return ClickShopButton(self.hoveredItem)
end

function api.Draw(drawQueue)
	if (not self.heldTile) then
		return
	end
	if GameHandler.InSoftLossState() then
		return false
	end
	
	local drawHeld = (
		self.heldTile and (
			api.MouseIsOverInterface()
			or
			not TerrainHandler.GetValidWorldPlacement(self.world.GetMousePosition(), self.tileRotation, self.heldTile)
		)
	)
	if drawHeld then
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
			if self.heldTile[1] == Global.DESTROY_NAME then
				validPlacement = nearbyInfo[i] and nearbyInfo[i][1] and nearbyInfo[i][1].valid
			end
			
			Resources.DrawImage(TileDefs[self.heldTile[i]].shopImage or TileDefs[self.heldTile[i]].image, pos[1], pos[2], 0, 0.8, 1, validPlacement and Global.WHITE or Global.RED)
			
			for j = 1, #nearbyInfo[i] do
				local info = nearbyInfo[i][j]
				love.graphics.setLineWidth(10)
				if info.valid then
					--love.graphics.setColor(0.6, 0.6, 0.6, 0.2)
				else
					love.graphics.setColor(209/255, 66/255, 33/255, 0.5)
					love.graphics.line(pos[1], pos[2], info.pos[1], info.pos[2])
				end
			end
		end
	end})
end

local function DrawFoodArea()
	local mousePos = self.world.GetMousePositionInterface()
	Font.SetSize(1)
	local shopItemsX = Global.VIEW_WIDTH - Global.SHOP_WIDTH*0.5
	local shopItemsY = 160
	
	local textX = math.floor(Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.88)
	local textY = 265
	local textSpacing = 40
	local dialY = 230
	
	local foodInfo = GameHandler.GetFoodInfo()
	local starvation = GameHandler.GetStarvation()
	
	Resources.DrawImage("dial_base", shopItemsX, dialY)
	Resources.DrawImage("dial", shopItemsX, dialY, math.pi*(self.dialPosition - 0.5) + 0.3*math.random()*(math.pow(starvation + (starvation > 0 and 0.2 or 0), 1.6)))
	
	Font.SetSize(3)
	love.graphics.setColor(0, 0, 0, 1)
	
	love.graphics.printf("Food Production: " .. foodInfo.income, textX + math.random()*math.pow(starvation, 1.8)*10, textY + math.random()*starvation*3, 400, "left")
	textY = textY + textSpacing
	love.graphics.printf("Food Consumption: " .. foodInfo.expense, textX + math.random()*math.pow(starvation, 1.8)*10, textY + math.random()*starvation*3, 400, "left")
end

local function DrawTileArea()
	local mousePos = self.world.GetMousePositionInterface()
	local shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.5
	local shopItemsY = 290
	local buttonExtra = 20
	local y = shopItemsY
	
	local columnAlign = 0.275
	
	if GameHandler.GetMaxSlotsSoFar() > 3 then
		shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*(1 - columnAlign)
	end
	
	for i = 1, GameHandler.GetShopSlots() do
		if i == 4 then
			shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*columnAlign
			y = shopItemsY
		end
		y = y + Global.SHOP_SPACING
		
		if util.PosInRectangle(mousePos, shopItemsX - Global.SHOP_SIZE, y, Global.SHOP_SIZE * 2, Global.SHOP_SIZE) then
			self.hoveredItem = i
			if self.items[i] then
				if util.PosInRectangle(mousePos, shopItemsX - Global.SHOP_SIZE, y, Global.SHOP_SIZE, Global.SHOP_SIZE) then
					api.SetTooltipToTile(self.items[i][1])
				else
					api.SetTooltipToTile(self.items[i][2])
				end
			end
		end
		
		love.graphics.setColor(Global.TILE_COL[1], Global.TILE_COL[2], Global.TILE_COL[3], 1)
		love.graphics.setLineWidth(4)
		love.graphics.rectangle("fill", shopItemsX - Global.SHOP_SIZE, y, Global.SHOP_SIZE * 2, Global.SHOP_SIZE, 8, 8, 16)
		
		if self.hoveredItem == i then
			love.graphics.setColor(unpack(Global.HOVER_HIGHLIGHT))
		else
			love.graphics.setColor(unpack(Global.BUTTON_BORDER))
		end
		love.graphics.setLineWidth(8)
		love.graphics.rectangle("line", shopItemsX - Global.SHOP_SIZE, y, Global.SHOP_SIZE * 2, Global.SHOP_SIZE, 8, 8, 16)
		
		for j = 1, 2 do
			if self.items[i] then
				Resources.DrawImage(TileDefs[self.items[i][j]].shopImage or TileDefs[self.items[i][j]].image, shopItemsX + (j*2 - 3)*Global.SHOP_SIZE/2, y + Global.SHOP_SIZE*0.5, 0, 1, Global.SHOP_IMAGE_SCALE)
			end
		end
	end
end

local function DrawHeldTile()
	local mousePos = self.world.GetMousePositionInterface()
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
			Resources.DrawImage(TileDefs[self.heldTile[i]].shopImage or TileDefs[self.heldTile[i]].image, pos[1], pos[2], 0, 0.8, 0.5)
		end
	end
end

--------------------------------------------------
-- Updating
--------------------------------------------------

local function DrawGameEndArea()
	local text = ""
	local buttonName = ""
	local action = ""
	if GameHandler.InVictoryState() then
		text = "Every corner of the land has been explored."
		buttonName = "Next Island"
		action = "next"
	elseif GameHandler.HaveStarved() then
		text = "Your people have starved"
		buttonName = "Retry Island"
		action = "retry"
	elseif api.OutOfSpace() then
		text = "You have run out of space"
		buttonName = "Retry Island"
		action = "retry"
	end
	
	local mousePos = self.world.GetMousePositionInterface()
	local shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.5
	local shopItemsY = 420
	local buttonExtra = 20
	
	local buttonWidth = 310
	local buttonX = shopItemsX - buttonWidth*0.5
	local buttonY = shopItemsY
	
	local textX = math.floor(Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.88)
	local textY = 520
	
	if util.PosInRectangle(mousePos, buttonX, buttonY, buttonWidth, Global.SHOP_SIZE) and (self.endGameFadeTimer or 0) > 0.8 then
		self.hoveredEndLevelAction = action
	end
	
	love.graphics.setColor(unpack(Global.BUTTON_BACK))
	love.graphics.setLineWidth(4)
	love.graphics.rectangle("fill", buttonX, buttonY, buttonWidth, Global.SHOP_SIZE, 8, 8, 32)
	
	if self.hoveredEndLevelAction then
		love.graphics.setColor(unpack(Global.BUTTON_HIGHLIGHT))
	else
		love.graphics.setColor(unpack(Global.PUSH_BUTTON_BORDER))
	end
	love.graphics.setLineWidth(8)
	love.graphics.rectangle("line", buttonX, buttonY, buttonWidth, Global.SHOP_SIZE, 8, 8, 32)
		
	Font.SetSize(1)
	love.graphics.setColor(0, 0, 0, 0.8)
	love.graphics.printf(buttonName, buttonX, buttonY + 10, buttonWidth, "center")
	
	Font.SetSize(2)
	love.graphics.setColor(0, 0, 0, (self.endGameFadeTimer or 0))
	
	love.graphics.printf(text, textX, textY, 360, "left")
end

local function DrawRefreshButton()
	local mousePos = self.world.GetMousePositionInterface()
	local shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.5
	local shopItemsY = 160
	local shopItemsY = 160
	local buttonExtra = 20

	if not GameHandler.CanAfford("refresh") and not GameHandler.IsStockActive("refresh") and not Global.SHOW_REFRESH_DEBUG_MODE then
		return
	end
	
	local refreshInfo = GameHandler.GetStockInfo("refresh")
	local affordProp  = 1 - refreshInfo.total / refreshInfo.cost
	local canAfford   = GameHandler.CanAfford("refresh")
	
	local y = shopItemsY + Global.VIEW_HEIGHT - Global.SHOP_SPACING - Global.SHOP_SIZE
	if util.PosInRectangle(mousePos, shopItemsX - Global.SHOP_SIZE - buttonExtra, y - Global.SHOP_SIZE, Global.SHOP_SIZE * 2 + buttonExtra*2, Global.SHOP_SIZE) then
		if canAfford then
			self.hoveredItem = GameHandler.GetShopSlots() + 1
		else
			local income = BuildingHandler.CountResourceType("chapel")
			api.SetTooltip(string.format("Chapels partially charge refresh after placing a tile.\n  - Charge: %d\n  - Income: %d\n  - Current cost: %d", refreshInfo.total, income, refreshInfo.cost))
		end
	end
	if not canAfford then
		love.graphics.setColor(Global.BUTTON_BACK[1]*0.75, Global.BUTTON_BACK[2]*0.75, Global.BUTTON_BACK[3]*0.75, 1)
	else
		love.graphics.setColor(unpack(Global.BUTTON_BACK))
	end
	love.graphics.setLineWidth(4)
	love.graphics.rectangle("fill", shopItemsX - Global.SHOP_SIZE - buttonExtra, y - Global.SHOP_SIZE, Global.SHOP_SIZE * 2 + buttonExtra*2, Global.SHOP_SIZE, 8, 8, 32)
	
	
	if self.hoveredItem == GameHandler.GetShopSlots() + 1 and not self.shopBlockedTimer then
		love.graphics.setColor(unpack(Global.BUTTON_HIGHLIGHT))
	else
		love.graphics.setColor(unpack(Global.PUSH_BUTTON_BORDER))
	end
	love.graphics.setLineWidth(8)
	love.graphics.rectangle("line", shopItemsX - Global.SHOP_SIZE - buttonExtra, y - Global.SHOP_SIZE, Global.SHOP_SIZE * 2 + buttonExtra*2, Global.SHOP_SIZE, 8, 8, 32)
	
	if not canAfford then
		local prop = affordProp
		love.graphics.setColor(0.5, 0.5, 0.5, 0.4)
		love.graphics.rectangle("fill", shopItemsX - Global.SHOP_SIZE - buttonExtra - 4, y - Global.SHOP_SIZE- 4, prop * (Global.SHOP_SIZE * 2 + buttonExtra*2) + 8, Global.SHOP_SIZE + 8, 8, 8, 32)
	end
	
	Font.SetSize(1)
	love.graphics.setColor(0, 0, 0, 0.8)
	love.graphics.printf("Refresh", shopItemsX - Global.SHOP_SIZE - 20, y - Global.SHOP_SIZE + 12, Global.SHOP_SIZE * 2 + 35, "center")
end

local function DrawTooltipArea()
	local toWrite = self.tooltip or self.oldTooltip
	if not toWrite then
		return
	end
	local shopItemsX = math.floor(Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.88)
	
	Font.SetSize(3)
	love.graphics.setColor(0, 0, 0, self.tooltipFade)
	love.graphics.printf(toWrite, shopItemsX, 750, Global.SHOP_WIDTH*0.8, "left")
end

function api.DrawInterface()
	self.hoveredItem = false
	self.hoveredEndLevelAction = false
	
	local shopItemsX = Global.VIEW_WIDTH -  Global.SHOP_WIDTH*0.5
	local shopItemsY = 160
	local buttonExtra = 20
	
	love.graphics.setColor(Global.PANEL_COL[1], Global.PANEL_COL[2], Global.PANEL_COL[3], 0.98)
	love.graphics.rectangle("fill", Global.VIEW_WIDTH - Global.SHOP_WIDTH, -1000, Global.SHOP_WIDTH * 2, Global.VIEW_HEIGHT + 2000)
	love.graphics.setColor(unpack(Global.BUTTON_BORDER))
	love.graphics.setLineWidth(12)
	love.graphics.rectangle("line", Global.VIEW_WIDTH - Global.SHOP_WIDTH, -1000, Global.SHOP_WIDTH * 2, Global.VIEW_HEIGHT + 2000, 8, 8, 16)
	
	--love.graphics.rectangle("line", 0, 0, 1920, 1080, 8, 8, 16)
	
	--love.graphics.setColor(0, 0, 0, 1)
	--Font.SetSize(1)
	--love.graphics.printf(LevelHandler.GetLevelData().humanName, shopItemsX - Global.SHOP_WIDTH*0.45, shopItemsY - 140, Global.SHOP_WIDTH*0.9, "center")
	
	--if LevelHandler.GetOrderMult() > 1 then
	--	local mult = util.Round((LevelHandler.GetOrderMult() - 1) * 100)
	--	Font.SetSize(2)
	--	love.graphics.printf("But " .. mult .. "% Harder", shopItemsX - Global.SHOP_WIDTH*0.45, shopItemsY - 68, Global.SHOP_WIDTH*0.9, "center")
	--end
	
	if MapEditor.InEditMode() then
		return
	end
	
	DrawFoodArea()
	local endLevelState = GameHandler.InSoftLossState() or GameHandler.InVictoryState()
	if endLevelState then
		DrawGameEndArea()
	else
		DrawTileArea()
	end
	if not endLevelState then
		DrawRefreshButton()
	end
	DrawTooltipArea()
	if not endLevelState then
		DrawHeldTile()
	end
	
	--love.graphics.printf("Plank " .. self.resources.plank, 20, 80, 400, "left")
	
	--love.graphics.printf("Selection", shopItemsX - 200, shopItemsY + 20, 400, "center")
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
		shopBlockedTimer = false,
		dialPosition = 0.5,
		tooltipFade = 0,
		outOfSpaceRetryTimer = false,
	}
	self.heldTile = false
	self.tileRotation = 0
	
	UpdateItems()
end

return api
