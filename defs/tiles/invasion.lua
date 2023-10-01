local TileUtils = require("utilities/tileUtils")

local data = {
	image = "invasion",
	building = "invasion",
	spawnTilePositions = {{0, 0}},
	drawWiggle = 0,
	
	onClick = function (self)
		local nearbyArmy = BuildingHandler.CountResourceType("army", self.pos, Global.INVASION_RANGE)
		if nearbyArmy < self.armySize then
			return
		end
		TerrainHandler.SpawnInvasionRemoveWave(self.pos, self.invasionIndex)
		TerrainHandler.RemoveTile(self.pos)
		TerrainHandler.CheckOutRangedTilesForDestruction("invasion")
	end,
	drawFunc = function (self, pos)
		Font.SetSize(-1)
		pos = util.Add(pos, {-450, -160})
		love.graphics.setColor(0, 0, 0, 1)
		local nearbyArmy = BuildingHandler.CountResourceType("army", self.pos, Global.INVASION_RANGE)
		love.graphics.printf(nearbyArmy .. "/" .. self.armySize, pos[1], pos[2], 900, "center")
	end,
}

return TileUtils.InitTileData(data)
