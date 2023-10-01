local data = {
	width = 12,
	tileDeck = {
		[1] = {
			farm = 8,
			town = 12,
			sawmill = 6,
			woodcutter = 8,
		},
		[2] = {
			farm = 8,
			town = 12,
			sawmill = 6,
			woodcutter = 8,
		},
	},
	humanName = "test level",
	terrain = {
		[4] = {
			[4] = "desert",
			[5] = "desert",
			[6] = "desert",
			[7] = "desert",
		},
		[5] = {
			[4] = "desert",
			[5] = "desert",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
		},
		[6] = {
			[4] = "desert",
			[5] = "desert",
			[7] = "desert",
		},
		[7] = {
			[7] = "desert",
			[4] = "desert",
		},
		[8] = {
			[4] = "desert",
			[6] = "desert",
		},
		[9] = {
			[5] = "desert",
			[6] = "desert",
		},
	},
	tiles = {
		[1] = {
			pos = {
				[1] = 4,
				[2] = 7,
			},
			def = "woodcutter",
		},
		[2] = {
			pos = {
				[1] = 5,
				[2] = 7,
			},
			def = "town",
		},
		[3] = {
			pos = {
				[1] = 5,
				[2] = 5,
			},
			def = "sawmill",
		},
		[4] = {
			pos = {
				[1] = 6,
				[2] = 5,
			},
			def = "farm",
		},
	},
	height = 12,
}

return data
