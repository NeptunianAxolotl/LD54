
local Font = require("include/font")

local EffectsHandler = require("effectsHandler")
local Resources = require("resourceHandler")
MusicHandler = require("musicHandler")

local self = {}
local api = {}

--------------------------------------------------
-- Updating
--------------------------------------------------

--------------------------------------------------
-- Stockpiles
--------------------------------------------------

local function InitStockpile(startCost, costInc, chargeStorage)
	local data = {
		cost = startCost,
		costInc = costInc,
		hasBeenUsed = false,
		chargeStorage = chargeStorage,
		total = 0,
	}
	return data
end

function api.IsStockActive(name)
	return self.stockpile[name].hasBeenUsed
end

function api.CanAfford(name)
	return math.floor(self.stockpile[name].cost) <= self.stockpile[name].total
end

function api.BuyNext(name)
	local stock = self.stockpile[name]
	stock.total = stock.total - math.floor(stock.cost)
	stock.cost = stock.cost + stock.costInc
end

function api.GetStockInfo(name)
	local stock = self.stockpile[name]
	return {cost = math.floor(stock.cost), total = stock.total}
end

function api.AddResource(name, amount)
	if amount == 0 then
		return
	end
	local stock = self.stockpile[name]
	stock.total = stock.total + amount
	
	if stock.chargeStorage then
		local stockCapacity = 0
		local futureCost = stock.cost
		for i = 1, stock.chargeStorage do
			stockCapacity = stockCapacity + math.floor(futureCost)
			futureCost = futureCost + stock.costInc
		end
		if stock.total > stockCapacity then
			stock.total = stockCapacity
		end
	end
	stock.hasBeenUsed = true
end

--------------------------------------------------
-- API
--------------------------------------------------

function api.ToggleMenu()
	self.menuOpen = not self.menuOpen
	self.world.SetMenuState(self.menuOpen)
end

function api.MousePressed(x, y)
	local windowX, windowY = love.window.getMode()
	local drawPos = self.world.ScreenToInterface({windowX, 0})
end

function api.GetViewRestriction()
	local pointsToView = {{0, 0}, {800, 800}}
	return pointsToView
end

function api.DoTurnTick()
	local baseSlots = Global.SHOP_SLOTS
	if BuildingHandler.CountResourceType("tavern") > 0 then
		baseSlots = baseSlots + 1
	end
	if api.CanAfford("explosion") then
		baseSlots = baseSlots + 1
	end
	self.shopSlots = baseSlots
	self.maxShopSlotsSoFar = math.max(self.shopSlots, self.maxShopSlotsSoFar)
	
	api.AddResource("explosion", BuildingHandler.CountResourceType("alchemist"))
	api.AddResource("refresh", BuildingHandler.CountResourceType("chapel"))
end

function api.GetFoodInfo()
	local income = BuildingHandler.CountResourceType("food")
	local expense = GuyHandler.CountResourceType("hunger") + BuildingHandler.CountResourceType("tavern")*Global.TAVERN_FOOD_COST
	return {income = income, expense = expense}
end

function api.GetNetFood()
	local food = BuildingHandler.CountResourceType("food") - GuyHandler.CountResourceType("hunger") - BuildingHandler.CountResourceType("tavern")*Global.TAVERN_FOOD_COST
	
	return food
end

function api.GetShopSlots()
	return self.shopSlots
end

function api.GetMaxSlotsSoFar()
	return self.maxShopSlotsSoFar
end

function api.GetStarvation()
	return self.stavation
end

--------------------------------------------------
-- Updating
--------------------------------------------------

local function UpdateStarvation(dt)
	local food = api.GetNetFood()
	
	if food < 0 then
		self.stavation = self.stavation + dt*Global.STARVE_GROW_RATE
	else
		self.stavation = self.stavation - dt*Global.STARVE_SHRINK_RATE
	end
	if self.stavation < 0 then
		self.stavation = 0
		return
	end
	if self.stavation > 1 then
		self.world.SetGameOver(false, "Starvation")
	end
end

function api.Update(dt)
	UpdateStarvation(dt)
end

function api.DrawInterface()
	local windowX, windowY = love.window.getMode()
end

function api.Initialize(parentWorld)
	self = {
		stavation = 0,
		world = parentWorld,
		shopSlots = Global.SHOP_SLOTS,
		stockpile = {
			explosion = InitStockpile(Global.EXPLODE_COST, Global.EXPLODE_COST_INC, Global.EXPLODE_CHARGES),
			refresh = InitStockpile(Global.REFRESH_COST, Global.REFRESH_COST_INC, Global.REFRESH_CHARGES),
		},
		maxShopSlotsSoFar = Global.SHOP_SLOTS,
	}
end

return api
