
local names = util.GetDefDirList("resources/images/tiles", "png")
local data = {}

local altScale = {
	darkness = 2,
	woodblock = 0.4,
	house_single = 0.95,
	house_double = 0.95,
}

local altOrigin = {
	mill = {0, 0},
}

for i = 1, #names do
	data[#data + 1] = {
		name = names[i],
		file = "resources/images/tiles/" .. names[i] .. ".png",
		form = "image",
		xScale = Global.GRID_SIZE*4/600 * (altScale[names[i]] or 1),
		yScale = Global.GRID_SIZE*4/600 * (altScale[names[i]] or 1),
		xOffset = 0.5 or altOrigin[names[i]][1],
		yOffset = 0.75 or altOrigin[names[i]][2],
	}
end

return data
