
local Font = require("include/font")

local GuyDefs = util.LoadDefDirectory("defs/guys")

local function NewGuy(self, building)
	function self.GetPos()
		return self.pos
	end
	
	function self.Update(dt)
		if self.def.updateFunc then
			self.def.updateFunc(self, dt)
		end
		return self.toDestroy
	end
	
	function self.Draw(drawQueue)
		if self.def.image then
			drawQueue:push({y=0 + self.pos[2]*0.01; f=function()
				local drawPos = TerrainHandler.GridToWorld(self.pos)
				Resources.DrawImage(self.def.image, drawPos[1], drawPos[2], 0, false, LevelHandler.TileScale())
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

return NewGuy
