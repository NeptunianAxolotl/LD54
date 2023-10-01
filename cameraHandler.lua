

local self = {}
local api = {}

local function UpdateCamera(dt)
	local cameraX, cameraY, cameraScale = Camera.UpdateCameraToViewPoints(dt, 
		{
			{pos = self.cameraPos, xOff = 1200, yOff = 1200},
		},
		0.45, 0.45)
	Camera.UpdateTransform(self.cameraTransform, cameraX, cameraY, cameraScale)
end

function api.GetCameraTransform()
	return self.cameraTransform
end

function api.Update(dt)
	local cameraVector = false
	if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
		cameraVector = util.Add(cameraVector or {0, 0}, {-Global.CAMERA_SPEED, 0})
	end
	if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
		cameraVector = util.Add(cameraVector or {0, 0}, {Global.CAMERA_SPEED, 0})
	end
	if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
		cameraVector = util.Add(cameraVector or {0, 0}, {0, -Global.CAMERA_SPEED})
	end
	if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
		cameraVector = util.Add(cameraVector or {0, 0}, {0, Global.CAMERA_SPEED})
	end
	if cameraVector then
		self.cameraPos = util.Add(Camera.GetCameraPos(), cameraVector)
	end
	UpdateCamera(dt)
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
	UpdateCamera()
end

return api
