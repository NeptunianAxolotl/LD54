local data = {
	humanName = "redemption",
	width = 22,
	height = 12,
    customVictoryText = "You've explored the entire island!  You really hope someone's been naming these as you went along.",
	cameraPos = {
		[2] = 6,
		[1] = 6,
	},
	tileDeck = {
		[1] = {
			woodcutter = 1,
			barracks = 1,
			town = 6,
			quarry = 1,
			mine = 1,
			fishery = 3,
			tower = 1,
			farm = 2,
		},
		[2] = {
			woodcutter = 8,
			cathedral = 1,
			quarry = 10,
			fishery = 8,
			sawmill = 8,
			chapel = 5,
			tower = 8,
			mill = 6,
			barracks = 8,
			town = 30,
			mine = 8,
			blacksmith = 8,
			fountain = 5,
			tavern = 5,
			farm = 6,
		},
	},
	tiles = {
		[1] = {
			def = "fishery",
			pos = {
				[1] = 2,
				[2] = 10,
			},
		},
		[2] = {
			def = "fishery",
			pos = {
				[1] = 2,
				[2] = 9,
			},
		},
		[3] = {
			def = "fishery",
			pos = {
				[1] = 2,
				[2] = 5,
			},
		},
		[4] = {
			def = "fishery",
			pos = {
				[1] = 3,
				[2] = 11,
			},
		},
		[5] = {
			def = "town",
			pos = {
				[1] = 3,
				[2] = 10,
			},
		},
		[6] = {
			def = "town",
			pos = {
				[1] = 3,
				[2] = 9,
			},
		},
		[7] = {
			def = "fishery",
			pos = {
				[1] = 3,
				[2] = 5,
			},
		},
		[8] = {
			def = "fishery",
			pos = {
				[1] = 4,
				[2] = 11,
			},
		},
		[9] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 9,
			},
		},
		[10] = {
			def = "mine",
			pos = {
				[1] = 4,
				[2] = 7,
			},
		},
		[11] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 5,
			},
		},
		[12] = {
			def = "chapel",
			pos = {
				[1] = 5,
				[2] = 9,
			},
		},
		[13] = {
			def = "sawmill",
			pos = {
				[1] = 5,
				[2] = 6,
			},
		},
		[14] = {
			def = "woodcutter",
			pos = {
				[1] = 6,
				[2] = 6,
			},
		},
		[15] = {
			def = "woodcutter",
			pos = {
				[1] = 7,
				[2] = 6,
			},
		},
		[16] = {
			def = "town",
			pos = {
				[1] = 8,
				[2] = 6,
			},
		},
		[17] = {
			extraData = {
				invasionIndex = 1,
				armySize = 8,
			},
			pos = {
				[1] = 14,
				[2] = 4,
			},
			def = "invasion",
		},
		[18] = {
			extraData = {
				invasionIndex = 2,
				armySize = 8,
			},
			pos = {
				[1] = 19,
				[2] = 8,
			},
			def = "invasion",
		},
	},
	terrain = {
		[1] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
		},
		[2] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "water",
			[8] = "mountain",
			[9] = "desert",
			[10] = "desert",
			[11] = "water",
			[12] = "water",
		},
		[3] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "mountain",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "water",
		},
		[4] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "water",
		},
		[5] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "water",
			[12] = "water",
		},
		[6] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "water",
		},
		[7] = {
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "grass",
			[7] = "grass",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "water",
			[12] = "water",
		},
		[8] = {
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "desert",
			[12] = "water",
		},
		[9] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "mountain",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "desert",
			[12] = "water",
		},
		[10] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "desert",
			[6] = "grass",
			[7] = "mountain",
			[8] = "forest",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "water",
		},
		[11] = {
			[2] = "water",
			[3] = "water",
			[4] = "desert",
			[5] = "desert",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "forest",
			[11] = "forest",
			[12] = "water",
		},
		[12] = {
			[1] = "water",
			[2] = "water",
			[3] = "forest",
			[4] = "desert",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "mountain",
			[12] = "water",
		},
		[13] = {
			[1] = "water",
			[2] = "grass",
			[3] = "mountain",
			[4] = "grass",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[10] = "water",
			[11] = "desert",
			[12] = "water",
		},
		[14] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "forest",
			[7] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "mountain",
			[12] = "water",
		},
		[15] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "water",
			[9] = "water",
			[10] = "forest",
			[11] = "mountain",
			[12] = "water",
		},
		[16] = {
			[1] = "water",
			[2] = "forest",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "forest",
			[12] = "water",
		},
		[17] = {
			[1] = "water",
			[2] = "mountain",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "forest",
			[11] = "grass",
			[12] = "water",
		},
		[18] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "water",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "water",
		},
		[19] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "grass",
			[9] = "forest",
			[10] = "grass",
			[11] = "forest",
			[12] = "water",
		},
		[20] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "water",
		},
		[21] = {
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "desert",
			[8] = "desert",
			[9] = "water",
			[10] = "desert",
			[11] = "water",
			[12] = "water",
		},
		[22] = {
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
		},
	},
	doodads = {
	},
	invasionMask = {
		[6] = {
		},
		[7] = {
		},
		[8] = {
		},
		[9] = {
		},
		[10] = {
		},
		[11] = {
		},
		[12] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
		},
		[13] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
		},
		[14] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
		},
		[15] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
		},
		[16] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[17] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[18] = {
			[0] = 1,
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[19] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[20] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[21] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[22] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[23] = {
			[0] = 1,
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
	},
}

return data
