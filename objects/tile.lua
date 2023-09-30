
local Font = require("include/font")

local TileDefs = util.LoadDefDirectory("defs/tiles")

local function NewTile(self, terrain)
	self.toDestroy = false
	
	self.worldPos = {(self.pos[1] + 0.5) * LevelHandler.TileSize(), (self.pos[2] + 0.5) * LevelHandler.TileSize()}
	
	function self.GetPos()
		return self.pos
	end
	
	function self.Export(objList)
		local exportData = {} -- Save level
		objList[#objList + 1] = exportData
	end
	
	
	function self.Update(dt)
		if self.def.updateFunc then
			self.def.updateFunc(self, dt)
		end
		return self.toDestroy
	end
	
	function self.Draw(drawQueue)
		local drawRot = (self.spawnTimer or 0)*0.4*math.pi
		if self.def.image then
			drawQueue:push({y=0 + self.pos[2]*0.01; f=function()
				Resources.DrawImage(self.def.image, self.worldPos[1], self.worldPos[2], 0, false, LevelHandler.TileScale())
			end})
		end
		if DRAW_DEBUG then
			love.graphics.circle('line',self.pos[1], self.pos[2], def.radius)
		end
	end
	
	function self.DrawInterface()
		
	end
	
	return self
end

return NewTile
