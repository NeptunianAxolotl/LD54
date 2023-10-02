local data = {
	cameraPos = {
		[2] = 10,
		[1] = 10,
	},
	humanName = "test",
	width = 20,
	height = 20,
	tiles = {
		[1] = {
			pos = {
				[1] = 7,
				[2] = 14,
			},
			def = "sawmill",
		},
		[2] = {
			pos = {
				[1] = 7,
				[2] = 13,
			},
			def = "tavern",
		},
		[3] = {
			pos = {
				[1] = 8,
				[2] = 14,
			},
			def = "tavern",
		},
		[4] = {
			pos = {
				[1] = 8,
				[2] = 13,
			},
			def = "farm",
		},
		[5] = {
			pos = {
				[1] = 8,
				[2] = 12,
			},
			def = "town",
		},
		[6] = {
			pos = {
				[1] = 8,
				[2] = 11,
			},
			def = "town",
		},
		[7] = {
			pos = {
				[1] = 8,
				[2] = 10,
			},
			def = "town",
		},
		[8] = {
			pos = {
				[1] = 8,
				[2] = 9,
			},
			def = "town",
		},
		[9] = {
			pos = {
				[1] = 9,
				[2] = 13,
			},
			def = "farm",
		},
		[10] = {
			pos = {
				[1] = 10,
				[2] = 13,
			},
			def = "town",
		},
		[11] = {
			pos = {
				[1] = 10,
				[2] = 10,
			},
			def = "woodcutter",
		},
		[12] = {
			pos = {
				[1] = 10,
				[2] = 9,
			},
			def = "woodcutter",
		},
		[13] = {
			pos = {
				[1] = 11,
				[2] = 14,
			},
			def = "farm",
		},
		[14] = {
			pos = {
				[1] = 11,
				[2] = 12,
			},
			def = "town",
		},
		[15] = {
			pos = {
				[1] = 11,
				[2] = 11,
			},
			def = "tavern",
		},
		[16] = {
			pos = {
				[1] = 11,
				[2] = 10,
			},
			def = "sawmill",
		},
		[17] = {
			pos = {
				[1] = 11,
				[2] = 9,
			},
			def = "sawmill",
		},
		[18] = {
			pos = {
				[1] = 12,
				[2] = 14,
			},
			def = "farm",
		},
		[19] = {
			pos = {
				[1] = 12,
				[2] = 13,
			},
			def = "town",
		},
		[20] = {
			pos = {
				[1] = 12,
				[2] = 12,
			},
			def = "alchemist",
		},
		[21] = {
			pos = {
				[1] = 12,
				[2] = 11,
			},
			def = "mine",
		},
		[22] = {
			pos = {
				[1] = 12,
				[2] = 10,
			},
			def = "mine",
		},
		[23] = {
			pos = {
				[1] = 13,
				[2] = 15,
			},
			def = "alchemist",
		},
		[24] = {
			pos = {
				[1] = 13,
				[2] = 13,
			},
			def = "town",
		},
		[25] = {
			pos = {
				[1] = 13,
				[2] = 12,
			},
			def = "town",
		},
		[26] = {
			pos = {
				[1] = 13,
				[2] = 11,
			},
			def = "town",
		},
		[27] = {
			pos = {
				[1] = 13,
				[2] = 10,
			},
			def = "town",
		},
		[28] = {
			pos = {
				[1] = 14,
				[2] = 15,
			},
			def = "blacksmith",
		},
		[29] = {
			pos = {
				[1] = 14,
				[2] = 13,
			},
			def = "town",
		},
		[30] = {
			pos = {
				[1] = 14,
				[2] = 12,
			},
			def = "town",
		},
		[31] = {
			pos = {
				[1] = 14,
				[2] = 11,
			},
			def = "town",
		},
		[32] = {
			pos = {
				[1] = 14,
				[2] = 10,
			},
			def = "town",
		},
		[33] = {
			pos = {
				[1] = 15,
				[2] = 13,
			},
			def = "farm",
		},
		[34] = {
			pos = {
				[1] = 15,
				[2] = 12,
			},
			def = "town",
		},
		[35] = {
			pos = {
				[1] = 15,
				[2] = 11,
			},
			def = "alchemist",
		},
		[36] = {
			pos = {
				[1] = 15,
				[2] = 9,
			},
			def = "town",
		},
		[37] = {
			pos = {
				[1] = 16,
				[2] = 13,
			},
			def = "tavern",
		},
		[38] = {
			pos = {
				[1] = 16,
				[2] = 12,
			},
			def = "alchemist",
		},
		[39] = {
			pos = {
				[1] = 16,
				[2] = 11,
			},
			def = "blacksmith",
		},
		[40] = {
			pos = {
				[1] = 16,
				[2] = 9,
			},
			def = "farm",
		},
		[41] = {
			pos = {
				[1] = 17,
				[2] = 19,
			},
			def = "plenty",
		},
		[42] = {
			pos = {
				[1] = 17,
				[2] = 18,
			},
			def = "plenty",
		},
		[43] = {
			pos = {
				[1] = 18,
				[2] = 18,
			},
			def = "plenty",
		},
	},
	invasionMask = {
	},
	tileDeck = {
		[1] = {
			sawmill = 3,
			fishery = 6,
			tower = 10,
			alchemist = 4,
			quarry = 4,
			mine = 4,
			farm = 7,
			woodcutter = 4,
			blacksmith = 4,
			tavern = 9,
			town = 6,
			mill = 2,
			barracks = 5,
			fountain = 9,
		},
		[2] = {
			sawmill = 3,
			fishery = 6,
			tower = 10,
			alchemist = 4,
			quarry = 4,
			mine = 4,
			farm = 7,
			woodcutter = 4,
			blacksmith = 4,
			tavern = 9,
			town = 6,
			mill = 2,
			barracks = 5,
			fountain = 9,
		},
	},
	doodads = {
	},
	terrain = {
		[4] = {
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
		},
		[5] = {
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
		},
		[6] = {
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
		},
		[7] = {
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
		},
		[8] = {
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
		},
		[9] = {
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
		},
		[10] = {
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
		},
		[11] = {
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
		},
		[12] = {
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
		},
		[13] = {
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
		},
		[14] = {
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
		},
		[15] = {
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
		},
		[16] = {
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
			[17] = "mountain",
			[18] = "mountain",
			[19] = "mountain",
			[20] = "mountain",
		},
		[17] = {
			[20] = "mountain",
			[18] = "grass",
			[17] = "mountain",
			[19] = "grass",
			[10] = "grass",
			[9] = "grass",
		},
		[18] = {
			[17] = "mountain",
			[18] = "grass",
			[20] = "mountain",
			[19] = "grass",
		},
		[19] = {
			[17] = "mountain",
			[18] = "mountain",
			[20] = "mountain",
			[19] = "mountain",
		},
	},
}

return data
