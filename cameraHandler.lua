

local self = {}
local api = {}

local function UpdateCamera(dt, vector)
	local cameraX, cameraY, cameraScale = Camera.PushCamera(dt, vector, 0.55)
	Camera.UpdateTransform(self.cameraTransform, cameraX, cameraY, cameraScale)
end

function api.GetCameraTransform()
	return self.cameraTransform
end

function api.Update(dt)
	dt = math.min(0.2, dt)
	local cameraVector = {0, 0}
	if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
		cameraVector = util.Add(cameraVector, {-Global.CAMERA_SPEED, 0})
	end
	if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
		cameraVector = util.Add(cameraVector, {Global.CAMERA_SPEED, 0})
	end
	if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
		cameraVector = util.Add(cameraVector, {0, -Global.CAMERA_SPEED})
	end
	if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
		cameraVector = util.Add(cameraVector, {0, Global.CAMERA_SPEED})
	end
	UpdateCamera(dt, cameraVector)
end

function api.Initialize(world)
	self = {
		world = world,
	}
	
	self.cameraTransform = love.math.newTransform()
	self.cameraPos = TerrainHandler.GridToWorld(LevelHandler.GetLevelData().cameraPos)
	
	Camera.Initialize({
		windowPadding = {left = 0, right = Global.SHOP_WIDTH/Global.VIEW_WIDTH, top = 0, bot = 0},
	})
	local cameraX, cameraY, cameraScale = Camera.UpdateCameraToViewPoints(dt, 
		{
			{pos = self.cameraPos, xOff = 1200, yOff = 1200},
		},
		0.45, 0.45)
	Camera.UpdateTransform(self.cameraTransform, cameraX, cameraY, cameraScale)
end

return api
