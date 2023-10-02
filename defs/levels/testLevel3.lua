local data = {
	humanName = "test level",
	width = 20,
	height = 20,
    customVictoryText = "How did you get in here?",
	cameraPos = {
		[2] = 12,
		[1] = 12,
	},
	tileDeck = {
		[1] = {
			blacksmith = 4,
			farm = 7,
			tower = 10,
			fountain = 9,
			woodcutter = 4,
			sawmill = 3,
			tavern = 9,
			town = 6,
			mill = 2,
			barracks = 5,
			quarry = 4,
			fishery = 6,
			mine = 4,
		},
		[2] = {
			blacksmith = 4,
			farm = 7,
			tower = 10,
			fountain = 9,
			woodcutter = 4,
			sawmill = 3,
			tavern = 9,
			town = 6,
			mill = 2,
			barracks = 5,
			quarry = 4,
			fishery = 6,
			mine = 4,
		},
	},
	tiles = {
		[1] = {
			def = "farm",
			pos = {
				[1] = 2,
				[2] = 5,
			},
		},
		[2] = {
			def = "town",
			pos = {
				[1] = 2,
				[2] = 4,
			},
		},
		[3] = {
			def = "town",
			pos = {
				[1] = 2,
				[2] = 3,
			},
		},
		[4] = {
			def = "woodcutter",
			pos = {
				[1] = 3,
				[2] = 6,
			},
		},
		[5] = {
			def = "farm",
			pos = {
				[1] = 3,
				[2] = 5,
			},
		},
		[6] = {
			def = "farm",
			pos = {
				[1] = 3,
				[2] = 4,
			},
		},
		[7] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 8,
			},
		},
		[8] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 6,
			},
		},
		[9] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 5,
			},
		},
		[10] = {
			def = "mill",
			pos = {
				[1] = 4,
				[2] = 4,
			},
		},
		[11] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 3,
			},
		},
		[12] = {
			def = "fishery",
			pos = {
				[1] = 4,
				[2] = 2,
			},
		},
		[13] = {
			def = "farm",
			pos = {
				[1] = 5,
				[2] = 8,
			},
		},
		[14] = {
			def = "farm",
			pos = {
				[1] = 5,
				[2] = 7,
			},
		},
		[15] = {
			def = "town",
			pos = {
				[1] = 5,
				[2] = 6,
			},
		},
		[16] = {
			def = "town",
			pos = {
				[1] = 5,
				[2] = 3,
			},
		},
		[17] = {
			def = "fishery",
			pos = {
				[1] = 5,
				[2] = 2,
			},
		},
		[18] = {
			def = "woodcutter",
			pos = {
				[1] = 6,
				[2] = 7,
			},
		},
		[19] = {
			def = "sawmill",
			pos = {
				[1] = 6,
				[2] = 6,
			},
		},
		[20] = {
			def = "town",
			pos = {
				[1] = 6,
				[2] = 5,
			},
		},
		[21] = {
			def = "barracks",
			pos = {
				[1] = 6,
				[2] = 4,
			},
		},
		[22] = {
			def = "town",
			pos = {
				[1] = 7,
				[2] = 8,
			},
		},
		[23] = {
			def = "town",
			pos = {
				[1] = 7,
				[2] = 7,
			},
		},
		[24] = {
			def = "woodcutter",
			pos = {
				[1] = 7,
				[2] = 4,
			},
		},
		[25] = {
			def = "plenty",
			pos = {
				[1] = 8,
				[2] = 10,
			},
		},
		[26] = {
			def = "farm",
			pos = {
				[1] = 8,
				[2] = 8,
			},
		},
		[27] = {
			def = "farm",
			pos = {
				[1] = 8,
				[2] = 7,
			},
		},
		[28] = {
			def = "farm",
			pos = {
				[1] = 8,
				[2] = 6,
			},
		},
		[29] = {
			def = "farm",
			pos = {
				[1] = 9,
				[2] = 10,
			},
		},
		[30] = {
			def = "farm",
			pos = {
				[1] = 9,
				[2] = 9,
			},
		},
		[31] = {
			def = "woodcutter",
			pos = {
				[1] = 9,
				[2] = 8,
			},
		},
		[32] = {
			def = "mill",
			pos = {
				[1] = 9,
				[2] = 7,
			},
		},
		[33] = {
			def = "town",
			pos = {
				[1] = 10,
				[2] = 9,
			},
		},
		[34] = {
			def = "farm",
			pos = {
				[1] = 10,
				[2] = 8,
			},
		},
		[35] = {
			def = "farm",
			pos = {
				[1] = 10,
				[2] = 6,
			},
		},
		[36] = {
			def = "woodcutter",
			pos = {
				[1] = 10,
				[2] = 5,
			},
		},
		[37] = {
			extraData = {
				armySize = 0,
				invasionIndex = 1,
			},
			pos = {
				[1] = 10,
				[2] = 2,
			},
			def = "invasion",
		},
		[38] = {
			def = "mine",
			pos = {
				[1] = 11,
				[2] = 17,
			},
		},
		[39] = {
			def = "sawmill",
			pos = {
				[1] = 11,
				[2] = 16,
			},
		},
		[40] = {
			def = "sawmill",
			pos = {
				[1] = 11,
				[2] = 15,
			},
		},
		[41] = {
			def = "mine",
			pos = {
				[1] = 11,
				[2] = 14,
			},
		},
		[42] = {
			def = "mine",
			pos = {
				[1] = 11,
				[2] = 13,
			},
		},
		[43] = {
			def = "town",
			pos = {
				[1] = 11,
				[2] = 12,
			},
		},
		[44] = {
			def = "farm",
			pos = {
				[1] = 11,
				[2] = 10,
			},
		},
		[45] = {
			def = "fishery",
			pos = {
				[1] = 11,
				[2] = 9,
			},
		},
		[46] = {
			def = "town",
			pos = {
				[1] = 11,
				[2] = 7,
			},
		},
		[47] = {
			def = "woodcutter",
			pos = {
				[1] = 12,
				[2] = 19,
			},
		},
		[48] = {
			def = "woodcutter",
			pos = {
				[1] = 12,
				[2] = 18,
			},
		},
		[49] = {
			def = "sawmill",
			pos = {
				[1] = 12,
				[2] = 16,
			},
		},
		[50] = {
			def = "blacksmith",
			pos = {
				[1] = 12,
				[2] = 15,
			},
		},
		[51] = {
			def = "blacksmith",
			pos = {
				[1] = 12,
				[2] = 13,
			},
		},
		[52] = {
			def = "town",
			pos = {
				[1] = 12,
				[2] = 12,
			},
		},
		[53] = {
			def = "cathedral",
			pos = {
				[1] = 12,
				[2] = 11,
			},
		},
		[54] = {
			def = "quarry",
			pos = {
				[1] = 12,
				[2] = 9,
			},
		},
		[55] = {
			def = "barracks",
			pos = {
				[1] = 12,
				[2] = 8,
			},
		},
		[56] = {
			def = "tower",
			pos = {
				[1] = 12,
				[2] = 7,
			},
		},
		[57] = {
			def = "woodcutter",
			pos = {
				[1] = 13,
				[2] = 18,
			},
		},
		[58] = {
			def = "town",
			pos = {
				[1] = 13,
				[2] = 17,
			},
		},
		[59] = {
			def = "town",
			pos = {
				[1] = 13,
				[2] = 16,
			},
		},
		[60] = {
			def = "town",
			pos = {
				[1] = 13,
				[2] = 15,
			},
		},
		[61] = {
			def = "town",
			pos = {
				[1] = 13,
				[2] = 14,
			},
		},
		[62] = {
			def = "blacksmith",
			pos = {
				[1] = 13,
				[2] = 13,
			},
		},
		[63] = {
			def = "quarry",
			pos = {
				[1] = 13,
				[2] = 12,
			},
		},
		[64] = {
			def = "quarry",
			pos = {
				[1] = 13,
				[2] = 11,
			},
		},
		[65] = {
			def = "sawmill",
			pos = {
				[1] = 13,
				[2] = 9,
			},
		},
		[66] = {
			def = "barracks",
			pos = {
				[1] = 13,
				[2] = 8,
			},
		},
		[67] = {
			def = "woodcutter",
			pos = {
				[1] = 14,
				[2] = 18,
			},
		},
		[68] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 17,
			},
		},
		[69] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 16,
			},
		},
		[70] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 15,
			},
		},
		[71] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 14,
			},
		},
		[72] = {
			def = "farm",
			pos = {
				[1] = 14,
				[2] = 13,
			},
		},
		[73] = {
			def = "quarry",
			pos = {
				[1] = 14,
				[2] = 12,
			},
		},
		[74] = {
			def = "farm",
			pos = {
				[1] = 14,
				[2] = 10,
			},
		},
		[75] = {
			def = "woodcutter",
			pos = {
				[1] = 15,
				[2] = 18,
			},
		},
		[76] = {
			def = "town",
			pos = {
				[1] = 15,
				[2] = 17,
			},
		},
		[77] = {
			def = "town",
			pos = {
				[1] = 15,
				[2] = 16,
			},
		},
		[78] = {
			def = "town",
			pos = {
				[1] = 15,
				[2] = 15,
			},
		},
		[79] = {
			def = "town",
			pos = {
				[1] = 15,
				[2] = 14,
			},
		},
		[80] = {
			def = "farm",
			pos = {
				[1] = 15,
				[2] = 13,
			},
		},
		[81] = {
			def = "quarry",
			pos = {
				[1] = 15,
				[2] = 12,
			},
		},
		[82] = {
			def = "quarry",
			pos = {
				[1] = 15,
				[2] = 11,
			},
		},
		[83] = {
			def = "quarry",
			pos = {
				[1] = 15,
				[2] = 10,
			},
		},
		[84] = {
			def = "woodcutter",
			pos = {
				[1] = 16,
				[2] = 18,
			},
		},
		[85] = {
			def = "tower",
			pos = {
				[1] = 16,
				[2] = 14,
			},
		},
		[86] = {
			def = "barracks",
			pos = {
				[1] = 16,
				[2] = 13,
			},
		},
		[87] = {
			def = "quarry",
			pos = {
				[1] = 16,
				[2] = 12,
			},
		},
		[88] = {
			def = "quarry",
			pos = {
				[1] = 16,
				[2] = 11,
			},
		},
		[89] = {
			def = "woodcutter",
			pos = {
				[1] = 17,
				[2] = 18,
			},
		},
		[90] = {
			def = "tower",
			pos = {
				[1] = 17,
				[2] = 16,
			},
		},
		[91] = {
			def = "tower",
			pos = {
				[1] = 17,
				[2] = 15,
			},
		},
		[92] = {
			def = "tower",
			pos = {
				[1] = 17,
				[2] = 14,
			},
		},
		[93] = {
			def = "blacksmith",
			pos = {
				[1] = 17,
				[2] = 12,
			},
		},
		[94] = {
			def = "town",
			pos = {
				[1] = 18,
				[2] = 16,
			},
		},
		[95] = {
			def = "quarry",
			pos = {
				[1] = 18,
				[2] = 11,
			},
		},
		[96] = {
			def = "fishery",
			pos = {
				[1] = 19,
				[2] = 11,
			},
		},
		[97] = {
			extraData = {
				armySize = 3,
				invasionIndex = 1,
			},
			pos = {
				[1] = 20,
				[2] = 14,
			},
			def = "invasion",
		},
	},
	terrain = {
		[1] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "mountain",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
		},
		[2] = {
			[1] = "water",
			[2] = "water",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "mountain",
			[7] = "mountain",
			[8] = "mountain",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "water",
			[12] = "water",
		},
		[3] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "forest",
			[8] = "mountain",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "mountain",
			[12] = "water",
		},
		[4] = {
			[1] = "water",
			[2] = "desert",
			[3] = "desert",
			[4] = "desert",
			[5] = "desert",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "forest",
			[10] = "mountain",
			[11] = "mountain",
			[12] = "water",
		},
		[5] = {
			[1] = "water",
			[2] = "desert",
			[3] = "desert",
			[4] = "desert",
			[5] = "desert",
			[6] = "desert",
			[7] = "grass",
			[8] = "grass",
			[9] = "forest",
			[10] = "forest",
			[11] = "mountain",
			[12] = "water",
		},
		[6] = {
			[1] = "water",
			[2] = "desert",
			[3] = "desert",
			[4] = "desert",
			[5] = "desert",
			[6] = "grass",
			[7] = "grass",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "mountain",
			[12] = "water",
		},
		[7] = {
			[1] = "water",
			[2] = "desert",
			[3] = "grass",
			[4] = "desert",
			[5] = "forest",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "forest",
			[10] = "forest",
			[11] = "mountain",
			[12] = "water",
		},
		[8] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "forest",
			[10] = "grass",
			[11] = "mountain",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
		[9] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "mountain",
			[12] = "water",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "mountain",
			[16] = "mountain",
			[17] = "mountain",
			[18] = "mountain",
			[19] = "mountain",
			[20] = "water",
		},
		[10] = {
			[1] = "water",
			[2] = "water",
			[3] = "forest",
			[4] = "forest",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "mountain",
			[12] = "water",
			[13] = "grass",
			[14] = "mountain",
			[15] = "mountain",
			[16] = "mountain",
			[17] = "mountain",
			[18] = "mountain",
			[19] = "mountain",
			[20] = "water",
		},
		[11] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
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
			[20] = "water",
		},
		[12] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
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
			[20] = "water",
		},
		[13] = {
			[6] = "water",
			[7] = "water",
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
			[19] = "forest",
			[20] = "water",
		},
		[14] = {
			[7] = "water",
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
			[19] = "forest",
			[20] = "water",
		},
		[15] = {
			[7] = "water",
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
			[19] = "forest",
			[20] = "water",
		},
		[16] = {
			[7] = "water",
			[8] = "forest",
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
			[19] = "forest",
			[20] = "water",
		},
		[17] = {
			[7] = "water",
			[8] = "forest",
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
			[19] = "forest",
			[20] = "water",
		},
		[18] = {
			[7] = "water",
			[8] = "forest",
			[9] = "forest",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "water",
			[20] = "water",
		},
		[19] = {
			[7] = "water",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "grass",
			[12] = "forest",
			[13] = "forest",
			[14] = "forest",
			[15] = "forest",
			[16] = "forest",
			[17] = "forest",
			[18] = "water",
			[19] = "water",
		},
		[20] = {
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
		},
	},
	doodads = {
		[1] = {
			doodadType = "coast2",
			pos = {
				[1] = 6.0122871398926,
				[2] = 1.493776957194,
			},
		},
		[2] = {
			doodadType = "coast1",
			pos = {
				[1] = 10.645553588867,
				[2] = 5.5532646179199,
			},
		},
		[3] = {
			doodadType = "coast1",
			pos = {
				[1] = 10.659898122152,
				[2] = 4.219228108724,
			},
		},
		[4] = {
			doodadType = "coast2",
			pos = {
				[1] = 5.0870685577393,
				[2] = 1.4292265574137,
			},
		},
		[5] = {
			doodadType = "coast2",
			pos = {
				[1] = 8.7162208557129,
				[2] = 1.4148826599121,
			},
		},
		[6] = {
			doodadType = "coast2",
			pos = {
				[1] = 7.331979115804,
				[2] = 1.465087890625,
			},
		},
	},
	invasionMask = {
		[6] = {
			[3] = 1,
		},
		[7] = {
			[2] = 1,
			[3] = 1,
		},
		[8] = {
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		[9] = {
			[2] = 1,
			[3] = 1,
		},
		[10] = {
			[3] = 1,
		},
	},
}

return data
