
local World = require("world")
SoundHandler = require("soundHandler")
--MusicHandler = require("musicHandler")
BGM = require("dynamicBGMHandler")

local LevelDefs = util.LoadDefDirectory("defs/levels")
local LevelOrder = require("defs/levelList")

local self = {}
local api = {}

-- Cosmos handles the world level, restarting the world,
-- and things that persist between worlds.

--------------------------------------------------
-- Music
--------------------------------------------------

function api.ToggleMusic()
	self.musicEnabled = not self.musicEnabled
	BGM.SetMusicEnabled(self.musicEnabled)
end

function api.MusicEnabled()
	return self.musicEnabled
end

--------------------------------------------------
-- Resets etc
--------------------------------------------------

function api.RestartWorld()
	World.Initialize(api, self.curLevelData)
end

function api.LoadLevelByTable(levelTable)
	self.curLevelData = levelTable
	World.Initialize(api, self.curLevelData)
end

function api.SwitchLevel(goNext)
	self.inbuiltLevelIndex = math.max(1, math.min(#LevelOrder, self.inbuiltLevelIndex + (goNext and 1 or -1)))
	self.curLevelData = LevelDefs[LevelOrder[self.inbuiltLevelIndex]]
	World.Initialize(api, self.curLevelData)
end

function api.TestSwitchLevel(goNext)
	local nameKey = (goNext and "nextLevel") or "prevLevel"
	local newLevelName = LevelDefs[self.inbuiltLevelName][nameKey]
	if not newLevelName then
		return false
	end
	return true
end

--------------------------------------------------
-- Draw
--------------------------------------------------

function api.Draw()
	World.Draw()
end

function api.ViewResize(width, height)
	World.ViewResize(width, height)
end

function api.TakeScreenshot()
	love.filesystem.createDirectory("screenshots")
	print("working", love.filesystem.getWorkingDirectory())
	print("save", love.filesystem.getSaveDirectory())
	love.graphics.captureScreenshot("screenshots/screenshot_" .. math.floor(math.random()*100000) .. "_.png")
end

function api.GetRealTime()
	return self.realTime
end

--------------------------------------------------
-- Input
--------------------------------------------------

function api.KeyPressed(key, scancode, isRepeat)
	if key == "r" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		api.RestartWorld()
		return true
	end
	if key == "m" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		api.ToggleMusic()
		return true
	end
	if key == "c" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		api.TakeScreenshot()
		return true
	end
	if key == "n" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		api.SwitchLevel(true)
		return true
	end
	if key == "p" and (love.keyboard.isDown("lctrl") or love.keyboard.isDown("rctrl")) then
		api.SwitchLevel(false)
		return true
	end
	return World.KeyPressed(key, scancode, isRepeat)
end

function api.MousePressed(x, y, button)
	return World.MousePressed(x, y, button)
end

function api.MouseReleased(x, y, button)
	return World.MouseReleased(x, y, button)
end

function api.MouseMoved(x, y, dx, dy)
	World.MouseMoved(x, y, dx, dy)
end

--------------------------------------------------
-- Update and Initialize
--------------------------------------------------

function api.Update(dt, realDt)
	self.realTime = self.realTime + realDt
	--MusicHandler.Update(realDt)
	SoundHandler.Update(realDt)
	CameraHandler.Update(realDt)
  BGM.Update(realDt)
	World.Update(dt)
end

function api.Initialize()
	self = {
		realTime = 0,
		inbuiltLevelIndex = 1,
		musicEnabled = true,
	}
	self.curLevelData = LevelDefs[LevelOrder[self.inbuiltLevelIndex]]
	--MusicHandler.Initialize(api)
	SoundHandler.Initialize(api)
	World.Initialize(api, self.curLevelData)
end

return api
