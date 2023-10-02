local data = {
	humanName = "test",
	width = 20,
	height = 22,
	cameraPos = {
		[2] = 10,
		[1] = 10,
	},
	tileDeck = {
		[2] = {
			town = 7,
			farm = 6,
			woodcutter = 4,
			sawmill = 2,
			barracks = 2,
		},
		[1] = {
			town = 7,
			farm = 6,
			woodcutter = 3,
			sawmill = 1,
			barracks = 1,
		},
	},
	hints = {
		[1] = {
			text = "- Outposts need planks as upkeep\n- Planks made from logs by the sawmill\n- Logs are harvested by woodcutters\n- These structures require workers so keep building farms and houses.",
			size = {2.6, 1},
			pos = {
				[1] = 15,
				[2] = 8.8,
			},
		},
	},
	tiles = {
		[1] = {
			pos = {
				[1] = 8,
				[2] = 10,
			},
			def = "woodcutter",
		},
		[2] = {
			pos = {
				[1] = 8,
				[2] = 9,
			},
			def = "farm",
		},
		[3] = {
			pos = {
				[1] = 9,
				[2] = 16,
			},
			def = "invasion",
			extraData = {
				armySize = 4,
				invasionIndex = 1,
			},
		},
		[4] = {
			pos = {
				[1] = 9,
				[2] = 9,
			},
			def = "town",
		},
		[5] = {
			pos = {
				[1] = 9,
				[2] = 8,
			},
			def = "farm",
		},
		[6] = {
			pos = {
				[1] = 10,
				[2] = 9,
			},
			def = "town",
		},
		[7] = {
			pos = {
				[1] = 10,
				[2] = 8,
			},
			def = "farm",
		},
	},
	terrain = {
		[1] = {
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
		},
		[2] = {
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "forest",
			[11] = "water",
			[12] = "forest",
			[13] = "forest",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
		},
		[3] = {
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "forest",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "mountain",
			[12] = "forest",
			[13] = "forest",
			[14] = "mountain",
			[15] = "mountain",
			[16] = "water",
			[17] = "water",
			[18] = "water",
		},
		[4] = {
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "forest",
			[7] = "forest",
			[8] = "mountain",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "forest",
			[12] = "forest",
			[13] = "forest",
			[14] = "forest",
			[15] = "mountain",
			[16] = "mountain",
			[17] = "water",
			[18] = "water",
		},
		[5] = {
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "forest",
			[12] = "grass",
			[13] = "forest",
			[14] = "forest",
			[15] = "forest",
			[16] = "mountain",
			[17] = "mountain",
			[18] = "water",
		},
		[6] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "mountain",
			[7] = "forest",
			[8] = "forest",
			[9] = "forest",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "forest",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "water",
			[18] = "water",
			[19] = "water",
		},
		[7] = {
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
			[16] = "desert",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
		[8] = {
			[1] = "water",
			[2] = "water",
			[3] = "forest",
			[4] = "forest",
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
			[15] = "desert",
			[16] = "desert",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
		[9] = {
			[1] = "water",
			[2] = "water",
			[3] = "mountain",
			[4] = "forest",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "forest",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "desert",
			[16] = "desert",
			[17] = "desert",
			[18] = "water",
			[19] = "water",
		},
		[10] = {
			[1] = "water",
			[2] = "forest",
			[3] = "mountain",
			[4] = "forest",
			[5] = "grass",
			[6] = "grass",
			[7] = "desert",
			[8] = "grass",
			[9] = "desert",
			[10] = "forest",
			[11] = "forest",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "desert",
			[16] = "desert",
			[17] = "desert",
			[18] = "water",
			[19] = "water",
		},
		[11] = {
			[1] = "water",
			[2] = "forest",
			[3] = "forest",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "desert",
			[10] = "desert",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "desert",
			[16] = "desert",
			[17] = "water",
			[18] = "water",
			[19] = "water",
		},
		[12] = {
			[1] = "water",
			[2] = "forest",
			[3] = "forest",
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
			[15] = "desert",
			[16] = "grass",
			[17] = "water",
			[18] = "water",
		},
		[13] = {
			[1] = "water",
			[2] = "forest",
			[3] = "forest",
			[4] = "forest",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "forest",
			[14] = "forest",
			[15] = "grass",
			[16] = "grass",
			[17] = "water",
			[18] = "water",
		},
		[14] = {
			[1] = "water",
			[2] = "forest",
			[3] = "forest",
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
			[14] = "forest",
			[15] = "forest",
			[16] = "water",
			[17] = "water",
			[18] = "water",
		},
		[15] = {
			[1] = "water",
			[2] = "water",
			[3] = "mountain",
			[4] = "mountain",
			[5] = "forest",
			[6] = "forest",
			[7] = "forest",
			[8] = "forest",
			[9] = "forest",
			[10] = "grass",
			[11] = "grass",
			[12] = "forest",
			[13] = "grass",
			[14] = "forest",
			[15] = "forest",
			[16] = "water",
		},
		[16] = {
			[2] = "water",
			[3] = "water",
			[4] = "mountain",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "forest",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "forest",
			[12] = "forest",
			[13] = "forest",
			[14] = "forest",
			[15] = "water",
			[16] = "water",
		},
		[17] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "water",
			[12] = "forest",
			[13] = "water",
			[14] = "water",
			[15] = "water",
		},
		[18] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "forest",
			[8] = "forest",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
		},
		[19] = {
			[5] = "water",
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
		[3] = {
			[20] = 1,
			[19] = 1,
		},
		[4] = {
			[18] = 1,
			[20] = 1,
			[19] = 1,
		},
		[5] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[19] = 1,
		},
		[6] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[7] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[8] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[9] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[10] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[11] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[12] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[13] = {
			[21] = 1,
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[14] = {
			[20] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
			[19] = 1,
		},
		[15] = {
			[17] = 1,
			[19] = 1,
			[20] = 1,
			[18] = 1,
		},
		[16] = {
			[18] = 1,
			[20] = 1,
			[19] = 1,
		},
	},
}

return data
