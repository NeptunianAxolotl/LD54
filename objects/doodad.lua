
local function NewDoodad(self)
	self.drawPos = TerrainHandler.GridToWorld(self.pos)
	
	function self.Export(objList)
		objList[#objList + 1] = {pos = self.pos, doodadType = self.doodadType}
	end
	
	function self.RemoveAtPos(pos)
		return (math.floor(self.pos[1] + 0.5) == pos[1]) and (math.floor(self.pos[2] + 0.5) == pos[2])
	end
	
	function self.UpdateWorldPos(newPos)
		self.pos = newPos
		self.drawPos = TerrainHandler.GridToWorld(self.pos)
	end
	
	function self.Draw(drawQueue)
		if self.doodadType == "coast_behind" or self.doodadType == "coast_behind_flip" then
			drawQueue:push({y=-135 - (self.pos[2] - self.pos[1])*0.001; f=function()
				Resources.DrawImage(self.doodadType, self.drawPos[1], self.drawPos[2], 0, false, LevelHandler.TileScale())
			end})
		else
			drawQueue:push({y=-85 - (self.pos[2] - self.pos[1])*0.001; f=function()
				Resources.DrawImage(self.doodadType, self.drawPos[1], self.drawPos[2], 0, false, LevelHandler.TileScale())
			end})
		end
	end
	
	return self
end

return NewDoodad
