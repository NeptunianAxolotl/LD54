
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

local function InitStockpile(startCost, costInc)
	local data = {
		cost = startCost,
		costInc = costInc,
		hasBeenUsed = false,
		total = 0,
	}
	return data
end

function api.IsStockActive(name)
	return self.stockpile[name].hasBeenUsed
end

function api.CanAfford(name)
	return self.stockpile[name].cost <= self.stockpile[name].total
end

function api.BuyNext(name)
	local stock = self.stockpile[name]
	stock.total = stock.total - stock.cost
	stock.cost = stock.cost + stock.costInc
end

function api.GetStockInfo(name)
	local stock = self.stockpile[name]
	return {cost = stock.cost, total = stock.total}
end

function api.AddResource(name, amount)
	if amount == 0 then
		return
	end
	local stock = self.stockpile[name]
	stock.total = stock.total + amount
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
	
	api.AddResource("explosion", BuildingHandler.CountResourceType("alchemist"))
	api.AddResource("refresh", BuildingHandler.CountResourceType("chapel"))
end

function api.GetNetFood()
	local food = BuildingHandler.CountResourceType("food") - GuyHandler.CountResourceType("hunger") - BuildingHandler.CountResourceType("tavern")*Global.TAVERN_FOOD_COST
	
	return food
end

function api.GetShopSlots()
	return self.shopSlots
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
			explosion = InitStockpile(Global.EXPLODE_COST, Global.EXPLODE_COST_INC),
			refresh = InitStockpile(Global.REFRESH_COST, Global.REFRESH_COST_INC),
		},
	}
end

return api
