
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

function api.UpdateShopSlots()
	local baseSlots = Global.SHOP_SLOTS
	
	if BuildingHandler.CountResourceType("tavern") > 0 then
		baseSlots = baseSlots + 1
	end
	self.shopSlots = baseSlots
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
	}
end

return api
