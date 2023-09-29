

--local EffectDefs = util.LoadDefDirectory("effects")
local NewPlayerShip = require("objects/playerShip")

local self = {}
local api = {}

function api.Update(dt)
	if self.playerShip then
		self.playerShip.Update(dt)
	end
end

function api.Draw(drawQueue)
	if self.playerShip then
		self.playerShip.Draw(drawQueue)
	end
end

function api.Initialize(world)
	self = {
		playerShip = false,
		animationTimer = 0,
		world = world,
	}
	
	local initPlayerData = {
		pos = {500, 200}
	}
	self.playerShip = NewPlayerShip(initPlayerData, self.world.GetPhysicsWorld())
end

return api
