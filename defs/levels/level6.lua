local data = {
	humanName = "test",
	width = 24,
	height = 32,
	cameraPos = {
		[1] = 10,
		[2] = 10,
	},
	tileDeck = {
		[2] = {
			tower = 5,
			quarry = 1,
			fishery = 3,
			sawmill = 2,
			blacksmith = 1,
			farm = 5,
			barracks = 3,
			town = 9,
			fountain = 1,
			woodcutter = 4,
			tavern = 1,
			mine = 4,
			mill = 1,
		},
		[1] = {
			tower = 5,
			quarry = 2,
			fishery = 4,
			mine = 4,
			blacksmith = 1,
			farm = 4,
			barracks = 2,
			town = 7,
			fountain = 2,
			woodcutter = 3,
			tavern = 1,
			sawmill = 1,
			mill = 1,
		},
	},
	tiles = {
		[1] = {
			def = "woodcutter",
			pos = {
				[1] = 7,
				[2] = 8,
			},
		},
		[2] = {
			def = "woodcutter",
			pos = {
				[1] = 7,
				[2] = 7,
			},
		},
		[3] = {
			def = "sawmill",
			pos = {
				[1] = 8,
				[2] = 9,
			},
		},
		[4] = {
			def = "town",
			pos = {
				[1] = 8,
				[2] = 7,
			},
		},
		[5] = {
			extraData = {
				invasionIndex = 2,
				armySize = 5,
			},
			pos = {
				[1] = 9,
				[2] = 17,
			},
			def = "invasion",
		},
		[6] = {
			def = "farm",
			pos = {
				[1] = 9,
				[2] = 11,
			},
		},
		[7] = {
			def = "farm",
			pos = {
				[1] = 9,
				[2] = 10,
			},
		},
		[8] = {
			def = "farm",
			pos = {
				[1] = 9,
				[2] = 9,
			},
		},
		[9] = {
			def = "town",
			pos = {
				[1] = 10,
				[2] = 11,
			},
		},
		[10] = {
			def = "mill",
			pos = {
				[1] = 10,
				[2] = 10,
			},
		},
		[11] = {
			def = "farm",
			pos = {
				[1] = 10,
				[2] = 9,
			},
		},
		[12] = {
			def = "town",
			pos = {
				[1] = 11,
				[2] = 11,
			},
		},
		[13] = {
			def = "farm",
			pos = {
				[1] = 11,
				[2] = 10,
			},
		},
		[14] = {
			extraData = {
				invasionIndex = 4,
				armySize = 15,
			},
			pos = {
				[1] = 13,
				[2] = 28,
			},
			def = "invasion",
		},
		[15] = {
			extraData = {
				invasionIndex = 3,
				armySize = 10,
			},
			pos = {
				[1] = 13,
				[2] = 21,
			},
			def = "invasion",
		},
		[16] = {
			extraData = {
				invasionIndex = 1,
				armySize = 5,
			},
			pos = {
				[1] = 16,
				[2] = 10,
			},
			def = "invasion",
		},
	},
	terrain = {
		[1] = {
		},
		[2] = {
			[8] = "water",
			[9] = "water",
		},
		[3] = {
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
		[4] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "forest",
			[9] = "forest",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "water",
		},
		[5] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "forest",
			[7] = "forest",
			[8] = "forest",
			[9] = "forest",
			[10] = "water",
			[11] = "water",
			[12] = "forest",
			[13] = "forest",
			[14] = "forest",
			[15] = "water",
			[16] = "water",
			[17] = "grass",
			[18] = "grass",
			[19] = "forest",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "water",
		},
		[6] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "forest",
			[7] = "forest",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "grass",
			[12] = "forest",
			[13] = "forest",
			[14] = "forest",
			[15] = "water",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "forest",
			[22] = "water",
			[23] = "water",
		},
		[7] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "forest",
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
			[17] = "grass",
			[18] = "forest",
			[19] = "grass",
			[20] = "grass",
			[21] = "mountain",
			[22] = "grass",
			[23] = "water",
			[24] = "water",
		},
		[8] = {
			[2] = "water",
			[3] = "grass",
			[4] = "grass",
			[5] = "forest",
			[6] = "grass",
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
			[17] = "forest",
			[18] = "grass",
			[19] = "grass",
			[20] = "mountain",
			[21] = "mountain",
			[22] = "mountain",
			[23] = "water",
			[24] = "water",
			[25] = "water",
			[26] = "water",
		},
		[9] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
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
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "forest",
			[21] = "mountain",
			[22] = "mountain",
			[23] = "water",
			[24] = "water",
			[25] = "water",
			[26] = "water",
			[27] = "water",
			[28] = "water",
		},
		[10] = {
			[2] = "water",
			[3] = "water",
			[4] = "desert",
			[5] = "grass",
			[6] = "grass",
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
			[17] = "forest",
			[18] = "grass",
			[19] = "forest",
			[20] = "grass",
			[21] = "grass",
			[22] = "mountain",
			[23] = "grass",
			[24] = "grass",
			[25] = "mountain",
			[26] = "grass",
			[27] = "grass",
			[28] = "water",
			[29] = "water",
		},
		[11] = {
			[2] = "water",
			[3] = "water",
			[4] = "desert",
			[5] = "desert",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "water",
			[14] = "forest",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "forest",
			[23] = "grass",
			[24] = "grass",
			[25] = "grass",
			[26] = "grass",
			[27] = "mountain",
			[28] = "mountain",
			[29] = "water",
			[30] = "water",
		},
		[12] = {
			[2] = "water",
			[3] = "desert",
			[4] = "desert",
			[5] = "desert",
			[6] = "desert",
			[7] = "desert",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "grass",
			[24] = "grass",
			[25] = "grass",
			[26] = "grass",
			[27] = "mountain",
			[28] = "mountain",
			[29] = "mountain",
			[30] = "water",
		},
		[13] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "mountain",
			[5] = "mountain",
			[6] = "desert",
			[7] = "desert",
			[8] = "grass",
			[9] = "water",
			[10] = "water",
			[11] = "grass",
			[12] = "grass",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "mountain",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "mountain",
			[21] = "grass",
			[22] = "grass",
			[23] = "desert",
			[24] = "desert",
			[25] = "grass",
			[26] = "forest",
			[27] = "mountain",
			[28] = "mountain",
			[29] = "mountain",
			[30] = "water",
			[31] = "water",
		},
		[14] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "desert",
			[8] = "desert",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "water",
			[14] = "water",
			[15] = "mountain",
			[16] = "mountain",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "desert",
			[24] = "grass",
			[25] = "grass",
			[26] = "grass",
			[27] = "forest",
			[28] = "mountain",
			[29] = "water",
			[30] = "water",
		},
		[15] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "desert",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "mountain",
			[16] = "forest",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "desert",
			[23] = "grass",
			[24] = "grass",
			[25] = "grass",
			[26] = "grass",
			[27] = "forest",
			[28] = "grass",
			[29] = "water",
		},
		[16] = {
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "mountain",
			[9] = "grass",
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
			[23] = "grass",
			[24] = "grass",
			[25] = "forest",
			[26] = "grass",
			[27] = "grass",
			[28] = "water",
			[29] = "water",
		},
		[17] = {
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "forest",
			[7] = "forest",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "desert",
			[12] = "desert",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "forest",
			[21] = "forest",
			[22] = "grass",
			[23] = "grass",
			[24] = "forest",
			[25] = "grass",
			[26] = "water",
			[27] = "water",
			[28] = "water",
			[29] = "water",
		},
		[18] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "forest",
			[7] = "forest",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "desert",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "forest",
			[20] = "forest",
			[21] = "forest",
			[22] = "forest",
			[23] = "forest",
			[24] = "forest",
			[25] = "forest",
			[26] = "water",
			[27] = "water",
		},
		[19] = {
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "grass",
			[9] = "desert",
			[10] = "water",
			[11] = "water",
			[12] = "grass",
			[13] = "desert",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "water",
			[19] = "water",
			[20] = "forest",
			[21] = "forest",
			[22] = "forest",
			[23] = "forest",
			[24] = "forest",
			[25] = "water",
			[26] = "water",
		},
		[20] = {
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "grass",
			[14] = "grass",
			[15] = "forest",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "grass",
			[22] = "grass",
			[23] = "forest",
			[24] = "water",
			[25] = "water",
		},
		[21] = {
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "grass",
			[13] = "forest",
			[14] = "forest",
			[15] = "forest",
			[16] = "water",
			[17] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "water",
			[24] = "water",
		},
		[22] = {
			[10] = "water",
			[11] = "water",
			[12] = "desert",
			[13] = "forest",
			[14] = "forest",
			[15] = "water",
			[16] = "water",
			[21] = "water",
			[22] = "water",
		},
		[23] = {
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[15] = "water",
		},
		[24] = {
		},
	},
	doodads = {
	},
	invasionMask = {
		[1] = {
		},
		[2] = {
			[21] = 2,
			[20] = 2,
			[19] = 2,
			[18] = 2,
		},
		[3] = {
			[22] = 2,
			[21] = 2,
			[20] = 2,
			[19] = 2,
			[17] = 2,
			[16] = 2,
			[23] = 2,
			[18] = 2,
		},
		[4] = {
			[23] = 2,
			[21] = 2,
			[20] = 2,
			[18] = 2,
			[17] = 2,
			[16] = 2,
			[22] = 2,
			[19] = 2,
		},
		[5] = {
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
		},
		[6] = {
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
		},
		[7] = {
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 3,
			[25] = 3,
		},
		[8] = {
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
			[29] = 4,
			[30] = 4,
		},
		[9] = {
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
			[27] = 4,
			[28] = 4,
			[29] = 4,
			[30] = 4,
			[31] = 4,
		},
		[10] = {
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
			[27] = 4,
			[28] = 4,
			[29] = 4,
			[30] = 4,
			[31] = 4,
		},
		[11] = {
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 4,
			[27] = 4,
			[28] = 4,
			[29] = 4,
			[30] = 4,
			[31] = 4,
			[32] = 4,
		},
		[12] = {
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 4,
			[27] = 4,
			[28] = 4,
			[29] = 4,
			[30] = 4,
			[31] = 4,
			[32] = 4,
		},
		[13] = {
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 4,
			[27] = 4,
			[28] = 4,
			[29] = 4,
			[30] = 4,
			[31] = 4,
			[32] = 4,
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
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 4,
			[27] = 4,
			[28] = 4,
			[29] = 4,
			[30] = 4,
			[31] = 4,
			[32] = 4,
		},
		[15] = {
			[8] = 1,
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
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 4,
			[27] = 4,
			[28] = 4,
			[29] = 4,
			[30] = 4,
			[31] = 4,
			[32] = 4,
		},
		[16] = {
			[6] = 1,
			[7] = 1,
			[8] = 1,
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
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
			[27] = 4,
			[28] = 4,
			[29] = 4,
			[30] = 4,
			[31] = 4,
		},
		[17] = {
			[6] = 1,
			[7] = 1,
			[8] = 1,
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
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
			[27] = 3,
			[28] = 4,
			[29] = 4,
			[30] = 4,
		},
		[18] = {
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 3,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
			[26] = 3,
			[27] = 3,
			[28] = 4,
			[29] = 4,
		},
		[19] = {
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
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
		[20] = {
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
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
		[21] = {
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
			[25] = 3,
		},
		[22] = {
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[19] = 3,
			[20] = 3,
			[21] = 3,
			[22] = 3,
			[23] = 3,
			[24] = 3,
		},
		[23] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[22] = 3,
		},
		[24] = {
			[13] = 1,
			[14] = 1,
		},
	},
}

return data
