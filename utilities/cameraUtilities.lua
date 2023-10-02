

local self = {}

local function UpdateCameraToPlayer(dt, playerPos, playerVelocity, playerSpeed, smoothness)
	self.cameraVelocity = util.Average(self.cameraVelocity, playerVelocity, 2*(1 - smoothness))
	self.cameraPos = util.Add(util.Mult(dt*60, self.cameraVelocity), util.Average(self.cameraPos, playerPos, (1 - smoothness)))
	
	local wantedScale = math.min(0.93, math.max(0.5, 12/(12 + playerSpeed)))
	self.cameraScale = self.cameraScale*smoothness + wantedScale*(1 - smoothness)
	
	return self.cameraPos[1], self.cameraPos[2], self.cameraScale
end

local function UpdateCameraToViewPoints(dt, pointList, moveSmooth, scaleSmooth)
	local left, right, top, bottom
	
	if pointList and #pointList > 0 then
		left, right = pointList[1].pos[1] - (pointList[1].radius or pointList[1].xOff), pointList[1].pos[1] + (pointList[1].radius or pointList[1].xOff)
		top, bottom = pointList[1].pos[2] - (pointList[1].radius or pointList[1].yOff), pointList[1].pos[2] + (pointList[1].radius or pointList[1].yOff)
		for i = 2, #pointList do
			left = math.min(left, pointList[i].pos[1] - (pointList[i].radius or pointList[i].xOff))
			right = math.max(right, pointList[i].pos[1] + (pointList[i].radius or pointList[i].xOff))
			top = math.min(top, pointList[i].pos[2] - (pointList[i].radius or pointList[i].yOff))
			bottom = math.max(bottom, pointList[i].pos[2] + (pointList[i].radius or pointList[i].yOff))
		end
	else
		left, right, top, bottom = self.oldLeft, self.oldRight, self.oldTop, self.oldBottom
	end
	self.oldLeft, self.oldRight, self.oldTop, self.oldBottom = left, right, top, bottom
	
	if self.pinY then
		if self.pinY[2] == 1 then
			bottom = self.pinY[1]
			if self.minScale and top > bottom - self.minScale then
				top = bottom - self.minScale
			end
		end
	end
	
	if self.pinX then
		if self.pinX[2] == 0.5 then
			local sideDiff = math.max((self.pinX[1] - left)*2, (right - self.pinX[1])*2)
			if self.minScale and sideDiff < self.minScale then
				sideDiff = self.minScale
			end
			left = self.pinX[1] - sideDiff*self.pinX[2]
			right = self.pinX[1] + sideDiff*(1 - self.pinX[2])
		end
	end
	
	local wantedScale = math.max((right - left)*self.scaleMult[1], (bottom - top)*self.scaleMult[2])
	local wantedPos = {(left + right)/2, (top + bottom)/2}
	
	if (not dt) or moveSmooth == 0 and scaleSmooth == 0 then
		self.cameraPos = wantedPos
		self.cameraScale = wantedScale
		return self.cameraPos[1], self.cameraPos[2], self.cameraScale
	end
	
	self.cameraVelocity = util.Average(self.cameraVelocity, self.posVelocity, (1 - moveSmooth))
	local newPos = util.Add(util.Mult(dt, self.cameraVelocity), util.Average(self.cameraPos, wantedPos, (1 - moveSmooth)))
	self.cameraScale = self.cameraScale*scaleSmooth + wantedScale*(1 - scaleSmooth)

	self.posVelocity = util.Subtract(newPos, self.cameraPos)
	self.cameraPos = newPos
	
	return self.cameraPos[1], self.cameraPos[2], self.cameraScale
end

local function PushCamera(dt, vector, moveSmooth)
	self.cameraVelocity = util.Average(self.cameraVelocity, vector, (1 - moveSmooth))
	local newPos = util.Add(util.Mult(dt, self.cameraVelocity), self.cameraPos)
	self.cameraPos = newPos
	
	return self.cameraPos[1], self.cameraPos[2], self.cameraScale
end

local function UpdateTransform(cameraTransform, cameraX, cameraY, cameraScale)
	local windowX, windowY = love.window.getMode()
	
	windowX = windowX * (1 - self.windowPadding.left - self.windowPadding.right)
	windowY = windowY * (1 - self.windowPadding.top - self.windowPadding.bot)
	
	local boundLimit = math.min(windowX, windowY)
	self.scaleMult = {boundLimit/windowX, boundLimit/windowY}
	
	if self.pinY then
		if self.pinY[2] == 1 then
			if cameraY + cameraScale/2 > self.pinY[1] then
				cameraY = self.pinY[1] - cameraScale/2
			end
		end
	end
	--print("Camera Scale", boundLimit/cameraScale, boundLimit/cameraScale)
	cameraTransform:setTransformation(
		windowX/2, windowY/2, 0,
		boundLimit/cameraScale, boundLimit/cameraScale,
		cameraX, cameraY)
end

local function GetCameraScale()
	return self.cameraScale
end

local function GetCameraPos()
	return self.cameraPos
end

local function Initialize(data)
	data = data or {}
	self = {
		cameraPos = data.initPos or {0, 0},
		cameraVelocity = {0, 0},
		posVelocity = {0, 0},
		cameraScale = data.initScale or 1080,
		windowPadding = data.windowPadding or {left = 0, right = 0, top = 0, bot = 0},
		pinX = data.pinX,
		pinY = data.pinY,
		minScale = data.minScale,
	}
	
	local windowX, windowY = love.window.getMode()
	local boundLimit = math.min(windowX, windowY)
	self.scaleMult = {boundLimit/windowX, boundLimit/windowY}
end

return {
	UpdateCameraToPlayer = UpdateCameraToPlayer,
	UpdateCameraToViewPoints = UpdateCameraToViewPoints,
	UpdateTransform = UpdateTransform,
	PushCamera = PushCamera,
	Initialize = Initialize,
	GetCameraScale = GetCameraScale,
	GetCameraPos = GetCameraPos,
}
