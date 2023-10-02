local data = {
	humanName = "test",
	width = 25,
	height = 25,
	cameraPos = {
		[1] = 14,
		[2] = 14,
	},
	tileDeck = {
		[2] = {
			woodcutter = 5,
			barracks = 2,
			town = 10,
			quarry = 5,
			mine = 5,
			tower = 4,
			fishery = 6,
			farm = 10,
		},
		[1] = {
			woodcutter = 2,
			cathedral = 1,
			tavern = 2,
			quarry = 4,
			chapel = 2,
			sawmill = 4,
			fishery = 2,
			blacksmith = 3,
			mill = 3,
			barracks = 2,
			town = 8,
			mine = 4,
			alchemist = 1,
			fountain = 1,
			tower = 4,
			farm = 6,
		},
	},
	tiles = {
		[1] = {
			extraData = {
				invasionIndex = 4,
				armySize = 32,
			},
			pos = {
				[1] = 6,
				[2] = 6,
			},
			def = "invasion",
		},
		[2] = {
			extraData = {
				invasionIndex = 3,
				armySize = 16,
			},
			pos = {
				[1] = 10,
				[2] = 19,
			},
			def = "invasion",
		},
		[3] = {
			def = "farm",
			pos = {
				[1] = 13,
				[2] = 15,
			},
		},
		[4] = {
			def = "farm",
			pos = {
				[1] = 13,
				[2] = 14,
			},
		},
		[5] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 14,
			},
		},
		[6] = {
			extraData = {
				invasionIndex = 1,
				armySize = 2,
			},
			pos = {
				[1] = 19,
				[2] = 9,
			},
			def = "invasion",
		},
		[7] = {
			extraData = {
				invasionIndex = 2,
				armySize = 6,
			},
			pos = {
				[1] = 20,
				[2] = 16,
			},
			def = "invasion",
		},
	},
	terrain = {
		[1] = {
			[23] = "water",
			[22] = "water",
			[24] = "water",
		},
		[2] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "desert",
			[24] = "water",
		},
		[3] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "grass",
			[12] = "mountain",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "water",
			[16] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "desert",
			[22] = "desert",
			[23] = "desert",
			[24] = "water",
		},
		[4] = {
			[1] = "water",
			[2] = "water",
			[3] = "forest",
			[4] = "forest",
			[5] = "grass",
			[6] = "forest",
			[7] = "forest",
			[8] = "water",
			[9] = "water",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "desert",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "desert",
			[20] = "desert",
			[21] = "desert",
			[22] = "mountain",
			[23] = "desert",
			[24] = "water",
		},
		[5] = {
			[1] = "water",
			[2] = "water",
			[3] = "forest",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "water",
			[9] = "water",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "mountain",
			[16] = "desert",
			[17] = "water",
			[18] = "desert",
			[19] = "desert",
			[20] = "grass",
			[21] = "forest",
			[22] = "grass",
			[23] = "desert",
			[24] = "water",
		},
		[6] = {
			[1] = "water",
			[2] = "mountain",
			[3] = "grass",
			[4] = "grass",
			[5] = "forest",
			[6] = "grass",
			[7] = "desert",
			[8] = "water",
			[9] = "water",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "forest",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "desert",
			[18] = "desert",
			[19] = "desert",
			[20] = "grass",
			[21] = "grass",
			[22] = "desert",
			[23] = "water",
			[24] = "water",
		},
		[7] = {
			[1] = "water",
			[2] = "water",
			[3] = "grass",
			[4] = "grass",
			[5] = "forest",
			[6] = "grass",
			[7] = "desert",
			[8] = "water",
			[9] = "water",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "forest",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "desert",
			[23] = "water",
		},
		[8] = {
			[1] = "water",
			[2] = "mountain",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "desert",
			[8] = "water",
			[9] = "water",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "mountain",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "forest",
			[21] = "grass",
			[22] = "desert",
			[23] = "water",
		},
		[9] = {
			[1] = "water",
			[2] = "water",
			[3] = "mountain",
			[4] = "grass",
			[5] = "forest",
			[6] = "forest",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "forest",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "forest",
			[21] = "grass",
			[22] = "water",
			[23] = "water",
		},
		[10] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "desert",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "water",
			[24] = "water",
		},
		[11] = {
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "desert",
			[10] = "grass",
			[11] = "grass",
			[12] = "forest",
			[13] = "forest",
			[14] = "grass",
			[15] = "grass",
			[16] = "forest",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "mountain",
			[21] = "grass",
			[22] = "grass",
			[23] = "desert",
			[24] = "water",
		},
		[12] = {
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "forest",
			[10] = "forest",
			[11] = "mountain",
			[12] = "forest",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "forest",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "desert",
			[24] = "water",
		},
		[13] = {
			[4] = "water",
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "forest",
			[9] = "forest",
			[10] = "grass",
			[11] = "forest",
			[12] = "forest",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "forest",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "desert",
			[24] = "water",
		},
		[14] = {
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
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "forest",
			[21] = "grass",
			[22] = "grass",
			[23] = "desert",
			[24] = "water",
		},
		[15] = {
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "forest",
			[18] = "grass",
			[19] = "grass",
			[20] = "mountain",
			[21] = "forest",
			[22] = "grass",
			[23] = "desert",
			[24] = "water",
		},
		[16] = {
			[2] = "water",
			[3] = "grass",
			[4] = "grass",
			[5] = "mountain",
			[6] = "grass",
			[7] = "forest",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "forest",
			[16] = "forest",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "water",
			[24] = "water",
		},
		[17] = {
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "forest",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "grass",
			[13] = "grass",
			[14] = "forest",
			[15] = "forest",
			[16] = "mountain",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "forest",
			[21] = "forest",
			[22] = "grass",
			[23] = "water",
		},
		[18] = {
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "forest",
			[12] = "grass",
			[13] = "grass",
			[14] = "forest",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "water",
		},
		[19] = {
			[2] = "water",
			[3] = "water",
			[4] = "desert",
			[5] = "forest",
			[6] = "grass",
			[7] = "grass",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "forest",
			[18] = "desert",
			[19] = "desert",
			[20] = "desert",
			[21] = "desert",
			[22] = "water",
			[23] = "water",
			[24] = "water",
			[25] = "water",
		},
		[20] = {
			[3] = "water",
			[4] = "water",
			[5] = "mountain",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "forest",
			[14] = "grass",
			[15] = "grass",
			[16] = "forest",
			[17] = "mountain",
			[18] = "desert",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "desert",
			[24] = "grass",
			[25] = "water",
		},
		[21] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "desert",
			[7] = "grass",
			[8] = "grass",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "desert",
			[18] = "water",
			[19] = "water",
			[21] = "desert",
			[22] = "desert",
			[23] = "grass",
			[24] = "grass",
			[25] = "water",
		},
		[22] = {
			[5] = "water",
			[6] = "desert",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "water",
			[18] = "water",
			[19] = "desert",
			[20] = "desert",
			[21] = "desert",
			[22] = "grass",
			[23] = "grass",
			[24] = "grass",
			[25] = "water",
		},
		[23] = {
			[5] = "water",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "water",
			[11] = "grass",
			[12] = "mountain",
			[13] = "mountain",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "grass",
			[24] = "grass",
			[25] = "water",
		},
		[24] = {
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "desert",
			[10] = "water",
			[11] = "grass",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[16] = "water",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "water",
			[24] = "water",
			[25] = "water",
		},
		[25] = {
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "water",
		},
	},
	doodads = {
	},
	invasionMask = {
		[0] = {
			[1] = 3,
			[2] = 3,
			[3] = 3,
			[5] = 3,
			[6] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
		},
		[1] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
		},
		[2] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
		},
		[3] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
		},
		[4] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
		},
		[5] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
		},
		[6] = {
			[0] = 3,
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
		},
		[7] = {
			[0] = 3,
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
		},
		[8] = {
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
		},
		[9] = {
			[0] = 3,
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 4,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
			[-1] = 3,
		},
		[10] = {
			[0] = 3,
			[1] = 4,
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 4,
			[8] = 3,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[12] = 3,
			[13] = 3,
			[14] = 3,
			[15] = 3,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
		},
		[11] = {
			[1] = 3,
			[2] = 3,
			[3] = 3,
			[4] = 3,
			[5] = 3,
			[6] = 3,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 3,
			[11] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
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
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
		},
		[13] = {
			[0] = 1,
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
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[14] = {
			[0] = 1,
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
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[26] = 2,
		},
		[15] = {
			[0] = 1,
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
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[26] = 2,
		},
		[16] = {
			[0] = 1,
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
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[26] = 2,
		},
		[17] = {
			[0] = 1,
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
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[18] = {
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
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[26] = 2,
		},
		[19] = {
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
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[26] = 2,
		},
		[20] = {
			[0] = 1,
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
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[21] = {
			[0] = 1,
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
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[22] = {
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
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[23] = {
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
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[24] = {
			[0] = 1,
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
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[-1] = 1,
		},
		[25] = {
			[0] = 1,
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
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[-1] = 1,
		},
		[26] = {
			[1] = 1,
			[2] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[21] = 2,
			[22] = 2,
		},
	},
}

return data
