local TileUtils = require("utilities/tileUtils")

local function GetNearbyArmySize(self)
	return math.floor(BuildingHandler.CountResourceType("army", self.pos, Global.INVASION_RANGE) * GameHandler.GetArmyMultiplier())
end

local function GetColor(self, wantBack, hover)
	local flipIt = self.animDt > self.def.animDtMax/2
	if (not wantBack) and hover then
		return Global.BUTTON_HIGHLIGHT
	end
	if wantBack == not flipIt then
		return Global.BUTTON_BACK
	else
		return Global.PUSH_BUTTON_BORDER
	end
end

local data = {
	image = "invasion",
	building = "invasion",
	spawnTilePositions = {{0, 0}},
	drawWiggle = 0,
	drawFlip = 1,
	wantAnimDt = true,
	animDtMax = 1.3,
	
	tooltip = "Unknown Lands\nBuild outposts and towers to mount an expedition to reveal more land.",
	
	collectableResourceType = "invasion",
	collectableResourceTypeFunc = function (self)
		return 1
	end,
	
	onClick = function (self)
		local nearbyArmy = GetNearbyArmySize(self)
		if nearbyArmy < self.armySize and not Global.DEBUG_CAN_ALWAYS_EXPLORE then
			return
		end
		local invasionsLeft = BuildingHandler.CountResourceType("invasion")
		if invasionsLeft > 1 then
			SoundHandler.PlaySound("domexplore")
		elseif LevelHandler.GetLevelData().lastLevel then
			SoundHandler.PlaySound("domvictoryfinal")
		else
			SoundHandler.PlaySound("domvictory")
		end
		TerrainHandler.SpawnInvasionRemoveWave(self.pos, self.invasionIndex)
		TerrainHandler.RemoveTile(self.pos)
		TerrainHandler.CheckOutRangedTilesForDestruction("invasion")
	end,
	drawFunc = function (self, pos)
		if MapEditor.InEditMode() then
			Font.SetSize(0)
			love.graphics.setColor(1, 0.2, 0.2, 1)
			love.graphics.printf("INDEX " .. (self.invasionIndex or "??"), pos[1] - 240, pos[2] - 80, 600, "center")
		end
		
		Font.SetSize(1)
		pos = util.Add(pos, {-450, -180})
		local nearbyArmy = GetNearbyArmySize(self)
		
		
		love.graphics.setColor(0, 0, 0, 1)
		if nearbyArmy < self.armySize and not Global.DEBUG_CAN_ALWAYS_EXPLORE then
			Font.SetSize(0)
            love.graphics.printf(nearbyArmy .. "/" .. self.armySize, pos[1] + 60, pos[2] + 10, 380, "right")
            Font.SetSize(1)
            love.graphics.printf("scouts", pos[1] + 455, pos[2] + 25, 380, "left")
			love.graphics.printf("Too few scouts for expedition.", pos[1] + 280, pos[2] + 100, 380, "left")
			return
		else
            Font.SetSize(0)
            love.graphics.printf(nearbyArmy .. "/" .. self.armySize, pos[1] + 60, pos[2] + 10, 380, "right")
            Font.SetSize(1)
            love.graphics.printf("scouts", pos[1] + 455, pos[2] + 25, 380, "left")
		end
		
		local bx, by, width, height = pos[1] + 280, pos[2] + 120, 350, 140
		
		local hover = TerrainHandler.GetHoveredTile()
		hover = hover and hover.pos[1] == self.pos[1] and hover.pos[2] == self.pos[2]
		love.graphics.setColor(unpack(GetColor(self, true, hover)))
		love.graphics.setLineWidth(4)
		love.graphics.rectangle("fill", bx, by, width, height, 8, 8, 32)
		
		love.graphics.setColor(unpack(GetColor(self, false, hover)))
		love.graphics.setLineWidth(8)
		love.graphics.rectangle("line", bx, by, width, height, 8, 8, 32)
		
		Font.SetSize(-1)
		love.graphics.setColor(0, 0, 0, 0.8)
		love.graphics.printf("Explore!", bx, by + 20, width, "center")
	end,
}

return TileUtils.InitTileData(data)
