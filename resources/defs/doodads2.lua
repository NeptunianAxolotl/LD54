
local names = util.GetDefDirList("resources/images/doodads_2", "png")
local data = {}

local altScale = {
	darkness = 2,
	woodblock = 0.4,
	house_single = 0.95,
	house_double = 0.95,
}

for i = 1, #names do
	data[#data + 1] = {
		name = names[i],
		file = "resources/images/doodads_2/" .. names[i] .. ".png",
		form = "image",
		xScale = 1.5,
		yScale = 1.5,
		xOffset = 0.5,
		yOffset = 0.5,
	}
	data[#data + 1] = {
		name = names[i] .. "_flip",
		file = "resources/images/doodads_2/" .. names[i] .. ".png",
		form = "image",
		xScale = -1.5,
		yScale = 1.5,
		xOffset = 0.5,
		yOffset = 0.5,
	}
	data[#data + 1] = {
		name = names[i] .. "_flip_up",
		file = "resources/images/doodads_2/" .. names[i] .. ".png",
		form = "image",
		xScale = -1.5,
		yScale = -1.5,
		xOffset = 0.5,
		yOffset = 0.5,
	}
	data[#data + 1] = {
		name = names[i] .. "_up",
		file = "resources/images/doodads_2/" .. names[i] .. ".png",
		form = "image",
		xScale = 1.5,
		yScale = -1.5,
		xOffset = 0.5,
		yOffset = 0.5,
	}
end

return data
