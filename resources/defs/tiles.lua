
local names = util.GetDefDirList("resources/images/tiles", "png")
local data = {}

for i = 1, #names do
	data[#data + 1] = {
		name = names[i],
		file = "resources/images/tiles/" .. names[i] .. ".png",
		form = "image",
		xScale = Global.GRID_SIZE/200,
		yScale = Global.GRID_SIZE/200,
		xOffset = 0.5,
		yOffset = 0.75,
	}
end

return data
