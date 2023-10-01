
local names = util.GetDefDirList("resources/images/tiles", "png")
local data = {}

local altScale = {
	fishery = 0.5,
	woodcutter = 0.5,
	woodblock = 0.38,
}

for i = 1, #names do
	data[#data + 1] = {
		name = names[i],
		file = "resources/images/tiles/" .. names[i] .. ".png",
		form = "image",
		xScale = Global.GRID_SIZE*4/600 * (altScale[names[i]] or 1),
		yScale = Global.GRID_SIZE*4/600 * (altScale[names[i]] or 1),
		xOffset = 0.5,
		yOffset = 0.75,
	}
end

return data
