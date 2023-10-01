
local names = util.GetDefDirList("resources/images/terrain", "png")
local data = {}

for i = 1, #names do
	data[#data + 1] = {
		name = names[i],
		file = "resources/images/terrain/" .. names[i] .. ".png",
		form = "image",
		xScale = Global.GRID_SIZE/72,
		yScale = Global.GRID_SIZE/72,
		xOffset = 0.5,
		yOffset = 0.75,
	}
end

return data
