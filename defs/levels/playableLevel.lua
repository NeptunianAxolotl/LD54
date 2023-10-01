local data = {
	tileDeck = {
		[1] = {
			barracks = 3,
			woodcutter = 6,
			mill = 1,
			sawmill = 1,
			farm = 7,
			town = 7,
			fishery = 6,
		},
		[2] = {
			barracks = 3,
			woodcutter = 7,
			mill = 2,
			sawmill = 2,
			farm = 6,
			town = 6,
			fishery = 5,
		},
	},
	tiles = {
		[1] = {
			pos = {
				[1] = 6,
				[2] = 3,
			},
			def = "town",
		},
		[2] = {
			pos = {
				[1] = 7,
				[2] = 5,
			},
			def = "farm",
		},
		[3] = {
			pos = {
				[1] = 7,
				[2] = 4,
			},
			def = "town",
		},
		[4] = {
			pos = {
				[1] = 7,
				[2] = 3,
			},
			def = "fishery",
		},
		[5] = {
			pos = {
				[1] = 8,
				[2] = 4,
			},
			def = "farm",
		},
		[6] = {
			pos = {
				[1] = 8,
				[2] = 3,
			},
			def = "fishery",
		},
		[7] = {
			def = "invasion",
			pos = {
				[1] = 9,
				[2] = 12,
			},
			extraData = {
				armySize = 3,
				invasionIndex = 1,
			},
		},
		[8] = {
			def = "invasion",
			pos = {
				[1] = 10,
				[2] = 18,
			},
			extraData = {
				armySize = 12,
				invasionIndex = 2,
			},
		},
	},
	width = 20,
	height = 30,
	humanName = "Human Testing",
	invasionMask = {
		[3] = {
			[17] = 1,
			[16] = 1,
		},
		[4] = {
			[17] = 1,
			[16] = 1,
			[18] = 1,
		},
		[5] = {
			[17] = 1,
			[16] = 1,
			[15] = 1,
		},
		[6] = {
			[14] = 1,
			[13] = 1,
			[23] = 2,
			[19] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[24] = 2,
		},
		[7] = {
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[8] = {
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[9] = {
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[26] = 2,
		},
		[10] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[26] = 2,
			[27] = 2,
		},
		[11] = {
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
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
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
			[26] = 2,
		},
		[13] = {
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
		[14] = {
			[4] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
			[25] = 2,
		},
		[15] = {
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
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,
			[24] = 2,
		},
		[16] = {
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[9] = 1,
			[10] = 1,
			[13] = 1,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
		},
		[17] = {
			[10] = 1,
		},
		[18] = {
			[10] = 1,
		},
	},
	cameraPos = {
		[2] = 6,
		[1] = 6,
	},
	doodads = {
	},
	terrain = {
		[1] = {
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
		},
		[2] = {
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "desert",
			[8] = "mountain",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "mountain",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
		},
		[3] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "mountain",
			[11] = "mountain",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "mountain",
			[17] = "mountain",
			[18] = "water",
			[19] = "water",
		},
		[4] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "desert",
			[10] = "desert",
			[11] = "mountain",
			[12] = "mountain",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "grass",
			[17] = "mountain",
			[18] = "mountain",
			[19] = "water",
			[20] = "water",
			[22] = "water",
			[23] = "water",
			[24] = "water",
			[25] = "water",
			[26] = "water",
			[27] = "water",
		},
		[5] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "forest",
			[8] = "grass",
			[9] = "grass",
			[10] = "desert",
			[11] = "desert",
			[12] = "mountain",
			[13] = "water",
			[14] = "water",
			[15] = "mountain",
			[16] = "grass",
			[17] = "forest",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "water",
			[24] = "water",
			[25] = "water",
			[26] = "water",
			[27] = "water",
		},
		[6] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "forest",
			[7] = "forest",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "forest",
			[15] = "forest",
			[16] = "grass",
			[17] = "forest",
			[18] = "water",
			[19] = "grass",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "mountain",
			[24] = "mountain",
			[25] = "water",
			[26] = "water",
			[27] = "water",
			[28] = "water",
		},
		[7] = {
			[1] = "water",
			[2] = "water",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "forest",
			[8] = "forest",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "forest",
			[15] = "grass",
			[16] = "grass",
			[17] = "desert",
			[18] = "desert",
			[19] = "desert",
			[20] = "mountain",
			[21] = "mountain",
			[22] = "mountain",
			[23] = "mountain",
			[24] = "mountain",
			[25] = "mountain",
			[26] = "water",
			[27] = "water",
			[28] = "water",
			[29] = "water",
		},
		[8] = {
			[2] = "water",
			[3] = "grass",
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
			[17] = "desert",
			[18] = "desert",
			[19] = "mountain",
			[20] = "mountain",
			[21] = "mountain",
			[22] = "mountain",
			[23] = "forest",
			[24] = "mountain",
			[25] = "mountain",
			[26] = "water",
			[27] = "water",
			[28] = "water",
		},
		[9] = {
			[2] = "water",
			[3] = "forest",
			[4] = "forest",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "forest",
			[13] = "desert",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "desert",
			[18] = "grass",
			[19] = "mountain",
			[20] = "mountain",
			[21] = "forest",
			[22] = "forest",
			[23] = "forest",
			[24] = "forest",
			[25] = "mountain",
			[26] = "mountain",
			[27] = "water",
			[28] = "water",
		},
		[10] = {
			[2] = "water",
			[3] = "forest",
			[4] = "forest",
			[5] = "forest",
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
			[16] = "desert",
			[17] = "desert",
			[18] = "grass",
			[19] = "grass",
			[20] = "forest",
			[21] = "forest",
			[22] = "grass",
			[23] = "forest",
			[24] = "forest",
			[25] = "forest",
			[26] = "mountain",
			[27] = "mountain",
			[28] = "water",
		},
		[11] = {
			[2] = "water",
			[3] = "forest",
			[4] = "mountain",
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
			[16] = "desert",
			[17] = "desert",
			[18] = "grass",
			[19] = "grass",
			[20] = "grass",
			[21] = "grass",
			[22] = "grass",
			[23] = "grass",
			[24] = "forest",
			[25] = "forest",
			[26] = "mountain",
			[27] = "water",
			[28] = "water",
		},
		[12] = {
			[1] = "water",
			[2] = "water",
			[3] = "mountain",
			[4] = "forest",
			[5] = "forest",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "desert",
			[17] = "grass",
			[18] = "water",
			[19] = "forest",
			[20] = "forest",
			[21] = "forest",
			[22] = "forest",
			[23] = "grass",
			[24] = "forest",
			[25] = "forest",
			[26] = "mountain",
			[27] = "water",
			[28] = "water",
		},
		[13] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "forest",
			[8] = "forest",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "desert",
			[17] = "water",
			[18] = "mountain",
			[19] = "forest",
			[20] = "forest",
			[21] = "forest",
			[22] = "forest",
			[23] = "forest",
			[24] = "mountain",
			[25] = "mountain",
			[26] = "mountain",
			[27] = "water",
			[28] = "water",
			[29] = "water",
		},
		[14] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "mountain",
			[6] = "forest",
			[7] = "forest",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "grass",
			[13] = "grass",
			[14] = "forest",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "mountain",
			[19] = "mountain",
			[20] = "forest",
			[21] = "forest",
			[22] = "forest",
			[23] = "forest",
			[24] = "mountain",
			[25] = "mountain",
			[26] = "water",
			[27] = "water",
			[28] = "water",
		},
		[15] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "mountain",
			[11] = "mountain",
			[12] = "forest",
			[13] = "forest",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "mountain",
			[18] = "mountain",
			[19] = "mountain",
			[20] = "mountain",
			[21] = "mountain",
			[22] = "mountain",
			[23] = "mountain",
			[24] = "mountain",
			[25] = "water",
			[26] = "water",
			[27] = "water",
			[28] = "water",
		},
		[16] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "grass",
			[7] = "desert",
			[8] = "water",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "water",
			[12] = "water",
			[13] = "forest",
			[14] = "water",
			[15] = "water",
			[16] = "mountain",
			[17] = "mountain",
			[18] = "mountain",
			[19] = "mountain",
			[20] = "mountain",
			[21] = "mountain",
			[22] = "mountain",
			[23] = "water",
			[24] = "water",
			[25] = "water",
			[26] = "water",
		},
		[17] = {
			[2] = "water",
			[3] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "mountain",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "water",
			[24] = "water",
		},
		[18] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[9] = "water",
			[10] = "mountain",
			[11] = "water",
		},
		[19] = {
			[11] = "water",
			[10] = "water",
			[9] = "water",
		},
	},
}

return data
