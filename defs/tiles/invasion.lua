local TileUtils = require("utilities/tileUtils")

local data = {
	image = "invasion",
	building = "invasion",
	spawnTilePositions = {{0, 0}},
	drawWiggle = 0,
	
	onClick = function (self)
		TerrainHandler.SpawnInvasionRemoveWave(self.pos, self.invasionIndex)
		TerrainHandler.RemoveTile(self.pos)
	end,
	drawFunc = function (self, pos)
		Font.SetSize(-1)
		pos = util.Add(pos, {-450, -160})
		love.graphics.setColor(0, 0, 0, 1)
		local nearbyArmy = 
		love.graphics.printf(32 .. "/" .. self.armySize, pos[1], pos[2], 900, "center")
	end,
}

return TileUtils.InitTileData(data)
