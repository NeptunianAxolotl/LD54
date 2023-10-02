
local names = util.GetDefDirList("resources/images/resources", "png")
local data = {}

local altScale = {
	stone = 0.95,
}

for i = 1, #names do
	data[#data + 1] = {
		name = names[i],
		file = "resources/images/resources/" .. names[i] .. ".png",
		form = "image",
		xScale = (altScale[names[i]] or 1.2),
		yScale = (altScale[names[i]] or 1.2),
		xOffset = 0.5,
		yOffset = 0.5,
	}
end

return data
