local TileUtils = require("utilities/tileUtils")

local function GetNearbyArmySize(self)
	return math.floor(BuildingHandler.CountResourceType("army", self.pos, Global.INVASION_RANGE) * GameHandler.GetArmyMultiplier())
end

local data = {
	image = "invasion",
	building = "invasion",
	spawnTilePositions = {{0, 0}},
	drawWiggle = 0,
	drawFlip = 1,
	
	tooltip = "Unknown Lands\nBuild outposts and towers to mount an expedition to reveal more land.",
	
	collectableResourceType = "invasion",
	collectableResourceTypeFunc = function (self)
		return 1
	end,
	
	onClick = function (self)
		local nearbyArmy = GetNearbyArmySize(self)
		if nearbyArmy < self.armySize then
			return
		end
		TerrainHandler.SpawnInvasionRemoveWave(self.pos, self.invasionIndex)
		TerrainHandler.RemoveTile(self.pos)
		TerrainHandler.CheckOutRangedTilesForDestruction("invasion")
	end,
	drawFunc = function (self, pos)
		if MapEditor.InEditMode() then
			Font.SetSize(0)
			love.graphics.setColor(1, 0.2, 0.2, 1)
			love.graphics.printf("INDEX " .. self.invasionIndex, pos[1] - 240, pos[2] - 80, 600, "center")
		end
		
		Font.SetSize(1)
		pos = util.Add(pos, {-450, -180})
		local nearbyArmy = GetNearbyArmySize(self)
		
		
		love.graphics.setColor(0, 0, 0, 1)
		if nearbyArmy < self.armySize then
			Font.SetSize(1)
			love.graphics.printf("Too few scouts for expedition\n - Needed: " .. self.armySize .. "\n - Have: " .. nearbyArmy, pos[1] + 280, pos[2] - 13, 380, "left")
			return
		else
			love.graphics.printf("Scouts " .. nearbyArmy .. "/" .. self.armySize, pos[1] + 280, pos[2] - 13, 380, "left")
		end
		
		local bx, by, width, height = pos[1] + 280, pos[2] + 120, 350, 140
		
		love.graphics.setColor(unpack(Global.BUTTON_BACK))
		love.graphics.setLineWidth(4)
		love.graphics.rectangle("fill", bx, by, width, height, 8, 8, 32)
		
		local hover = TerrainHandler.GetHoveredTile()
		if hover and hover.pos[1] == self.pos[1] and hover.pos[2] == self.pos[2] then
			love.graphics.setColor(unpack(Global.BUTTON_HIGHLIGHT))
		else
			love.graphics.setColor(unpack(Global.PUSH_BUTTON_BORDER))
		end
		love.graphics.setLineWidth(8)
		love.graphics.rectangle("line", bx, by, width, height, 8, 8, 32)
		
		Font.SetSize(-1)
		love.graphics.setColor(0, 0, 0, 0.8)
		love.graphics.printf("Explore!", bx, by + 20, width, "center")
	end,
}

return TileUtils.InitTileData(data)
