
util = require("utilities/util")
Global = require("global")
IterableMap = require("include/IterableMap")
Font = require("include/font")

local Cosmos = require("cosmos")
Resources = require("resourceHandler")

local api = {}

--------------------------------------------------
-- Draw
--------------------------------------------------

function love.draw()
	Cosmos.Draw()
end

function love.resize(width, height)
	Cosmos.ViewResize(width, height)
end

--------------------------------------------------
-- Input
--------------------------------------------------

function love.mousemoved(x, y, dx, dy, istouch)
	Cosmos.MouseMoved(x, y, dx, dy)
end

function love.mousereleased(x, y, button, istouch, presses)
	Cosmos.MouseReleased(x, y, button, istouch, presses)
end

function love.keypressed(key, scancode, isRepeat)
	Cosmos.KeyPressed(key, scancode, isRepeat)
end

function love.mousepressed(x, y, button, istouch, presses)
	Cosmos.MousePressed(x, y, button, istouch, presses)
end

--------------------------------------------------
-- Update
--------------------------------------------------

local longFrames = 0
local frames = 0
local missingDt = 0
local MAX_DT = 0.05
function love.update(dt)
	local realDt = dt
	frames = frames + 1
	if dt > 0.05 then
		longFrames = longFrames + 1
	end
	if dt > MAX_DT then
		missingDt = (dt - MAX_DT)
		dt = MAX_DT
	elseif missingDt > 0 then
		local returnProp = 0.02 + 0.06 * missingDt / (missingDt + 2)
		local toReturn = returnProp * dt
		if toReturn > missingDt then
			toReturn = missingDt
		end
		dt = dt + toReturn
		missingDt = missingDt - toReturn
	end
	Cosmos.Update(dt, realDt)
end

function Global.ResetMissingDt()
	missingDt = 0
end

--------------------------------------------------
-- Loading
--------------------------------------------------
function love.load(arg)
	if arg[#arg] == "-debug" then require("mobdebug").start() end
	local major, minor, revision, codename = love.getVersion()
	print(string.format("Version %d.%d.%d - %s", major, minor, revision, codename))

	love.window.setTitle("LD54")
	--love.graphics.setDefaultFilter("nearest", "nearest") -- Removing this helps some things and really hurts others

	love.graphics.setBackgroundColor(Global.BACK_COL[1], Global.BACK_COL[2], Global.BACK_COL[3], 1)

	love.keyboard.setKeyRepeat(true)
	math.randomseed(os.clock())
	Resources.LoadResources()
	Cosmos.Initialize()
	
	love.filesystem.setIdentity("LD54", true)
	love.window.maximize() -- Do not fullscreen since we lack an exit button.
end
