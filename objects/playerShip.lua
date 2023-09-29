
local Resources = require("resourceHandler")
local Font = require("include/font")

local DEF = {
	density = 1,
}

local function NewComponent(self, physicsWorld)
	-- pos
	self.animTime = 0
	self.def = DEF
	
	local coords = {{0, 0.35}, {0, -0.35}, {1, 0}}
	local scaleFactor = 50
	local modCoords = {}
	for i = 1, #coords do
		local pos = util.Mult(scaleFactor, coords[i])
		modCoords[#modCoords + 1] = pos[1]
		modCoords[#modCoords + 1] = pos[2]
		coords[i] = pos
	end
	
	self.body = love.physics.newBody(physicsWorld, self.pos[1], self.pos[2], "dynamic")
	self.shape = love.physics.newPolygonShape(unpack(modCoords))
	self.fixture = love.physics.newFixture(self.body, self.shape, self.def.density)
	
	self.body:setAngularDamping(9)
	
	if self.initVelocity then
		self.body:setLinearVelocity(self.initVelocity[1], self.initVelocity[2])
	end
	
	function self.Update(dt)
		self.animTime = self.animTime + dt
		TerrainHandler.WrapBody(self.body)
		TerrainHandler.ApplyGravity(self.body)
		TerrainHandler.UpdateSpeedLimit(self.body)
		
		if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
			local angle = self.body:getAngle()
			local force = 6
			local forceVec = util.PolarToCart(force, angle)
			self.body:applyForce(forceVec[1], forceVec[2])
		end
		
		if love.keyboard.isDown("s") or love.keyboard.isDown("down") or love.keyboard.isDown("space") then
			local vx, vy = self.body:getLinearVelocity()
			local force = -12
			local forceVec = util.Mult(force, util.Unit({vx, vy}))
			self.body:applyForce(forceVec[1], forceVec[2])
		end
		
		local turnAmount = false
		if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
			turnAmount = -1
		elseif love.keyboard.isDown("d") or love.keyboard.isDown("right") then
			turnAmount = 1
		end
		if turnAmount then
			local vx, vy = self.body:getLinearVelocity()
			local speed = util.Dist(0, 0, vx, vy)
			turnAmount = turnAmount * Global.TURN_MULT
			turnAmount = turnAmount * (0.2 + 0.8 * (1 - speed / (speed + 600)))
			self.body:applyTorque(turnAmount)
		end
	end
	
	function self.Draw(drawQueue)
		drawQueue:push({y=0; f=function()
			love.graphics.push()
				local x, y = self.body:getPosition()
				local angle = self.body:getAngle()
				love.graphics.translate(x, y)
				love.graphics.rotate(angle)
				for i = 1, #coords do
					local other = coords[(i < #coords and (i + 1)) or 1]
					love.graphics.line(coords[i][1], coords[i][2], other[1], other[2])
				end
			love.graphics.pop()
		end})
		if DRAW_DEBUG then
			love.graphics.circle('line',self.pos[1], self.pos[2], def.radius)
		end
	end
	
	function self.DrawInterface()
		
	end
	
	return self
end

return NewComponent
