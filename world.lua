
local ModuleTest = require("moduleTest")
EffectsHandler = require("effectsHandler")
ComponentHandler = require("componentHandler")
DialogueHandler = require("dialogueHandler")
TerrainHandler = require("terrainHandler")
ShadowHandler = require("shadowHandler")

PlayerHandler = require("playerHandler")

Camera = require("utilities/cameraUtilities")
InterfaceUtil = require("utilities/interfaceUtilities")
Delay = require("utilities/delay")

local PhysicsHandler = require("physicsHandler")
ChatHandler = require("chatHandler")
DeckHandler = require("deckHandler")
GameHandler = require("gameHandler") -- Handles the gamified parts of the game, such as score, progress and interface.

local PriorityQueue = require("include/PriorityQueue")

local self = {}
local api = {}

function api.SetMenuState(newState)
	self.menuState = newState
end

function api.ToggleMenu()
	self.menuState = not self.menuState
end

function api.GetPaused()
	return self.paused or self.menuState
end

function api.GetGameOver()
	return self.gameWon or self.gameLost, self.gameWon, self.gameLost, self.overType
end

function api.GetLifetime()
	return self.lifetime
end

function api.Restart()
	self.cosmos.RestartWorld()
end

function api.GetCosmos()
	return self.cosmos
end

function api.SetGameOver(hasWon, overType)
	if self.gameWon or self.gameLost or TerrainHandler.InEditMode() then
		return
	end
	
	if hasWon then
		self.gameWon = true
	else
		self.gameLost = true
		self.overType = overType
	end
end

--------------------------------------------------
-- Input
--------------------------------------------------

function api.KeyPressed(key, scancode, isRepeat)
	if TerrainHandler.KeyPressed and TerrainHandler.KeyPressed(key, scancode, isRepeat) then
		return
	end
	if key == "escape" then
		api.ToggleMenu()
	end
	if key == "p" then
		api.ToggleMenu()
	end
	if api.GetGameOver() then
		return -- No doing actions
	end
	if GameHandler.KeyPressed and GameHandler.KeyPressed(key, scancode, isRepeat) then
		return
	end
end

function api.MousePressed(x, y, button)
	if GameHandler.MousePressed(x, y, button) then
		return
	end
	if api.GetPaused() then
		return
	end
	local uiX, uiY = self.interfaceTransform:inverse():transformPoint(x, y)
	
	if api.GetGameOver() then
		return -- No doing actions
	end
	if DialogueHandler.MousePressedInterface(uiX, uiY, button) then
		return
	end
	x, y = self.cameraTransform:inverse():transformPoint(x, y)
	
	-- Send event to game components
	if Global.DEBUG_PRINT_CLICK_POS and button == 2 then
		print("{")
		print([[    name = "BLA",]])
		print("    pos = {" .. (math.floor(x/10)*10) .. ", " .. (math.floor(y/10)*10) .. "},")
		print("},")
		return true
	end
end

function api.MouseReleased(x, y, button)
	x, y = self.cameraTransform:inverse():transformPoint(x, y)
	-- Send event to game components
end

function api.MouseMoved(x, y, dx, dy)
	
end

--------------------------------------------------
-- Transforms
--------------------------------------------------

function api.WorldToScreen(pos)
	local x, y = self.cameraTransform:transformPoint(pos[1], pos[2])
	return {x, y}
end

function api.ScreenToWorld(pos)
	local x, y = self.cameraTransform:inverse():transformPoint(pos[1], pos[2])
	return {x, y}
end

function api.ScreenToInterface(pos)
	local x, y = self.interfaceTransform:inverse():transformPoint(pos[1], pos[2])
	return {x, y}
end

function api.GetMousePositionInterface()
	local x, y = love.mouse.getPosition()
	return api.ScreenToInterface({x, y})
end

function api.GetMousePosition()
	local x, y = love.mouse.getPosition()
	return api.ScreenToWorld({x, y})
end

function api.WorldScaleToScreenScale()
	local m11 = self.cameraTransform:getMatrix()
	return m11
end

function api.GetOrderMult()
	return self.orderMult
end

function api.GetCameraExtents(buffer)
	local screenWidth, screenHeight = love.window.getMode()
	local topLeftPos = api.ScreenToWorld({0, 0})
	local botRightPos = api.ScreenToWorld({screenWidth, screenHeight})
	buffer = buffer or 0
	return topLeftPos[1] - buffer, topLeftPos[2] - buffer, botRightPos[1] + buffer, botRightPos[2] + buffer
end

function api.GetPhysicsWorld()
	return PhysicsHandler.GetPhysicsWorld()
end

local function UpdateCamera()
	local cameraX, cameraY, cameraScale = Camera.UpdateCameraToViewPoints(dt, 
		{
			{pos = {Global.WORLD_WIDTH/2, Global.WORLD_HEIGHT/2}, xOff = Global.WORLD_WIDTH/2 + 80, yOff = Global.WORLD_HEIGHT/2 + 80},
		}
		, 0, 0
	)
	Camera.UpdateTransform(self.cameraTransform, cameraX, cameraY, cameraScale)
end

--------------------------------------------------
-- Updates
--------------------------------------------------

function api.ViewResize(width, height)
end

function api.Update(dt)
	GameHandler.Update(dt)
	if api.GetPaused() then
		UpdateCamera()
		return
	end
	
	self.lifetime = self.lifetime + dt
	Delay.Update(dt)
	InterfaceUtil.Update(dt)
	ComponentHandler.Update(dt)
	PlayerHandler.Update(dt)
	ModuleTest.Update(dt)
	ShadowHandler.Update(api)
	
	PhysicsHandler.Update(dt)

	ChatHandler.Update(dt)
	EffectsHandler.Update(dt)
	UpdateCamera()
end

function api.Draw()
	local preShadowQueue = PriorityQueue.new(function(l, r) return l.y < r.y end)
	local drawQueue = PriorityQueue.new(function(l, r) return l.y < r.y end)

	-- Draw world
	love.graphics.replaceTransform(self.cameraTransform)
	ModuleTest.Draw(drawQueue)
	
	love.graphics.replaceTransform(self.cameraTransform)
	while true do
		local d = preShadowQueue:pop()
		if not d then break end
		d.f()
	end
	
	ShadowHandler.DrawGroundShadow(self.cameraTransform)
	ComponentHandler.Draw(drawQueue)
	EffectsHandler.Draw(drawQueue)
	PlayerHandler.Draw(drawQueue)
	TerrainHandler.Draw(drawQueue)
	
	love.graphics.replaceTransform(self.cameraTransform)
	while true do
		local d = drawQueue:pop()
		if not d then break end
		d.f()
	end
	ShadowHandler.DrawVisionShadow(self.cameraTransform)
	
	--local windowX, windowY = love.window.getMode()
	--if windowX/windowY > 16/9 then
	--	self.interfaceTransform:setTransformation(0, 0, 0, windowY/1080, windowY/1080, 0, 0)
	--else
	--	self.interfaceTransform:setTransformation(0, 0, 0, windowX/1920, windowX/1920, 0, 0)
	--end
	love.graphics.replaceTransform(self.emptyTransform)
	
	-- Draw interface
	GameHandler.DrawInterface()
	EffectsHandler.DrawInterface()
	DialogueHandler.DrawInterface()
	ChatHandler.DrawInterface()
	
	love.graphics.replaceTransform(self.emptyTransform)
end

function api.Initialize(cosmos, levelData)
	self = {}
	self.cosmos = cosmos
	self.cameraTransform = love.math.newTransform()
	self.interfaceTransform = love.math.newTransform()
	self.emptyTransform = love.math.newTransform()
	self.paused = false
	self.lifetime = Global.DEBUG_START_LIFETIME or 0
	
	Delay.Initialise()
	InterfaceUtil.Initialize()
	EffectsHandler.Initialize(api)
	
	PhysicsHandler.Initialize(api)
	ComponentHandler.Initialize(api)
	ChatHandler.Initialize(api)
	DialogueHandler.Initialize(api)
	
	PlayerHandler.Initialize(api)
	TerrainHandler.Initialize(api, levelData)
	ShadowHandler.Initialize(api)
	
	DeckHandler.Initialize(api)
	GameHandler.Initialize(api)
	ModuleTest.Initialize(api)
	
	-- Note that the camera pins only function for these particular second entries.
	Camera.Initialize({
		minScale = 1000,
		initPos = {0, 0},
		initScale = 900
	})
	UpdateCamera()
end

return api
