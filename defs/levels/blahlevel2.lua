local data = {
	humanName = "test level",
	width = 17,
	height = 17,
    customVictoryText = "You've explored the entire island!  Shame you cluttered it up so badly in the process.",
	cameraPos = {
		[1] = 12,
		[2] = 7,
	},
	tileDeck = {
		[2] = {
			woodcutter = 3,
			quarry = 2,
			sawmill = 2,
			fishery = 2,
			blacksmith = 1,
			mill = 1,
			barracks = 1,
			town = 5,
			mine = 2,
			tower = 1,
			fountain = 1,
			tavern = 1,
			farm = 2,
		},
		[1] = {
			woodcutter = 3,
			barracks = 1,
			town = 5,
			quarry = 2,
			mine = 1,
			fishery = 2,
			farm = 2,
		},
	},
	tiles = {
		[1] = {
			extraData = {
				invasionIndex = 4,
				armySize = 15,
			},
			pos = {
				[1] = 2,
				[2] = 3,
			},
			def = "invasion",
		},
		[2] = {
			extraData = {
				invasionIndex = 2,
				armySize = 5,
			},
			pos = {
				[1] = 5,
				[2] = 14,
			},
			def = "invasion",
		},
		[3] = {
			extraData = {
				invasionIndex = 3,
				armySize = 9,
			},
			pos = {
				[1] = 5,
				[2] = 7,
			},
			def = "invasion",
		},
		[4] = {
			extraData = {
				invasionIndex = 1,
				armySize = 1,
			},
			pos = {
				[1] = 12,
				[2] = 11,
			},
			def = "invasion",
		},
		[5] = {
			def = "farm",
			pos = {
				[1] = 13,
				[2] = 5,
			},
		},
		[6] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 5,
			},
		},
		[7] = {
			def = "fishery",
			pos = {
				[1] = 15,
				[2] = 5,
			},
		},
	},
	terrain = {
		[1] = {
			[12] = "water",
			[13] = "water",
		},
		[2] = {
			[3] = "mountain",
			[4] = "mountain",
			[5] = "mountain",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "desert",
			[11] = "water",
			[12] = "desert",
			[13] = "desert",
			[14] = "water",
			[15] = "water",
		},
		[3] = {
			[2] = "mountain",
			[3] = "grass",
			[4] = "grass",
			[5] = "mountain",
			[6] = "forest",
			[7] = "forest",
			[8] = "water",
			[9] = "water",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		[4] = {
			[2] = "mountain",
			[3] = "grass",
			[4] = "grass",
			[5] = "mountain",
			[6] = "forest",
			[7] = "grass",
			[8] = "grass",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "water",
			[16] = "water",
		},
		[5] = {
			[2] = "water",
			[3] = "grass",
			[4] = "mountain",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "desert",
			[17] = "water",
		},
		[6] = {
			[2] = "water",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "desert",
			[10] = "desert",
			[11] = "grass",
			[12] = "grass",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "desert",
			[17] = "water",
		},
		[7] = {
			[2] = "mountain",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "desert",
			[10] = "desert",
			[11] = "mountain",
			[12] = "forest",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		[8] = {
			[2] = "mountain",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "forest",
			[7] = "forest",
			[8] = "mountain",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "mountain",
			[12] = "grass",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		[9] = {
			[3] = "mountain",
			[4] = "mountain",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "mountain",
			[9] = "mountain",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		[10] = {
			[4] = "water",
			[5] = "water",
			[6] = "forest",
			[7] = "forest",
			[8] = "forest",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "grass",
			[13] = "forest",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		[11] = {
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "water",
			[13] = "water",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		[12] = {
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "forest",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		[13] = {
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		[14] = {
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "water",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "water",
		},
		[15] = {
			[4] = "water",
			[5] = "grass",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[11] = "water",
			[12] = "desert",
			[13] = "water",
			[14] = "water",
		},
		[16] = {
			[11] = "water",
			[4] = "water",
			[5] = "water",
			[12] = "water",
		},
	},
	doodads = {
	},
	invasionMask = {
		[0] = {
			[2] = 4,
			[3] = 4,
			[9] = 3,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[1] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[2] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[3] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 3,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[4] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 3,
			[6] = 3,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[5] = {
			[1] = 3,
			[2] = 3,
			[3] = 3,
			[4] = 3,
			[5] = 3,
			[6] = 3,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[6] = {
			[0] = 3,
			[1] = 3,
			[2] = 3,
			[3] = 3,
			[4] = 3,
			[5] = 3,
			[6] = 3,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[7] = {
			[0] = 3,
			[1] = 3,
			[2] = 3,
			[3] = 3,
			[4] = 3,
			[5] = 3,
			[6] = 3,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[8] = {
			[1] = 3,
			[2] = 3,
			[3] = 3,
			[4] = 3,
			[5] = 3,
			[6] = 3,
			[7] = 3,
			[8] = 3,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
		},
		[9] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
		[10] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
		[11] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
		[12] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
		[13] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
		},
		[14] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
		},
		[15] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
		},
		[16] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
		},
		[17] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
		[18] = {
			[16] = 1,
		},
	},
}

return data
