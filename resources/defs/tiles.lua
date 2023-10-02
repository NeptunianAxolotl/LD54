
local names = util.GetDefDirList("resources/images/tiles", "png")
local data = {}

local altScale = {
	darkness = 2,
	woodblock = 0.4,
	house_single = 0.95,
	house_double = 0.95,
}

local altOrigin = {
	turbine = {301/600, 272/600},
}

for i = 1, #names do
	data[#data + 1] = {
		name = names[i],
		file = "resources/images/tiles/" .. names[i] .. ".png",
		form = "image",
		xScale = Global.GRID_SIZE*4/600 * (altScale[names[i]] or 1),
		yScale = Global.GRID_SIZE*4/600 * (altScale[names[i]] or 1),
		xOffset = (altOrigin[names[i]] and altOrigin[names[i]][1]) or 0.5,
		yOffset = (altOrigin[names[i]] and altOrigin[names[i]][2]) or 0.75,
	}
end

return data
