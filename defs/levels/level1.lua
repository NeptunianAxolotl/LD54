local data = {
	humanName = "test",
	width = 20,
	height = 20,
	cameraPos = {
		[1] = 11.5,
		[2] = 9.5,
	},
	tileDeck = {
		[2] = {
			town = 1,
			farm = 1,
			woodcutter = 1,
		},
		[1] = {
			barracks = 1,
		},
	},
	hints = {
		{
			text = "- Select tiles  with Left Click\n- Place tiles with Left Click\n- Rotate with Right Click or Space\n\nPush back the darkness!\n- Workers activate buildings and need food and shelter\n- Barracks recruit scouts",
			pos = {15, 10},
			size = {2.2, 1.5},
		},
	},
	tiles = {
		[1] = {
			def = "town",
			pos = {
				[1] = 9,
				[2] = 9,
			},
		},
		[2] = {
			def = "fishery",
			pos = {
				[1] = 9,
				[2] = 8,
			},
		},
		[3] = {
			def = "woodcutter",
			pos = {
				[1] = 10,
				[2] = 9,
			},
		},
		[4] = {
			def = "sawmill",
			pos = {
				[1] = 11,
				[2] = 9,
			},
		},
		[5] = {
			pos = {
				[1] = 12,
				[2] = 12,
			},
			extraData = {
				invasionIndex = 1,
				armySize = 1,
			},
			def = "invasion",
		},
		[6] = {
			def = "farm",
			pos = {
				[1] = 13,
				[2] = 7,
			},
		},
		[7] = {
			def = "town",
			pos = {
				[1] = 13,
				[2] = 6,
			},
		},
		[8] = {
			def = "fishery",
			pos = {
				[1] = 13,
				[2] = 5,
			},
		},
		[9] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 6,
			},
		},
		[10] = {
			def = "fishery",
			pos = {
				[1] = 14,
				[2] = 5,
			},
		},
		[11] = {
			def = "fishery",
			pos = {
				[1] = 15,
				[2] = 6,
			},
		},
	},
	terrain = {
		[5] = {
			[11] = "water",
		},
		[6] = {
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
		},
		[7] = {
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
		},
		[8] = {
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "forest",
			[12] = "grass",
			[13] = "water",
			[14] = "water",
			[15] = "water",
		},
		[9] = {
			[4] = "water",
			[5] = "mountain",
			[6] = "water",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "forest",
			[12] = "forest",
			[13] = "mountain",
			[14] = "water",
			[15] = "water",
			[16] = "water",
		},
		[10] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "forest",
			[12] = "grass",
			[13] = "mountain",
			[14] = "desert",
			[15] = "water",
			[16] = "water",
		},
		[11] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "desert",
			[13] = "forest",
			[14] = "desert",
			[15] = "water",
			[16] = "water",
		},
		[12] = {
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "water",
			[16] = "water",
		},
		[13] = {
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "water",
			[16] = "water",
		},
		[14] = {
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "water",
			[10] = "grass",
			[11] = "grass",
			[12] = "forest",
			[13] = "mountain",
			[14] = "water",
			[15] = "water",
		},
		[15] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "grass",
			[7] = "forest",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "grass",
			[12] = "grass",
			[13] = "water",
			[14] = "water",
			[15] = "water",
		},
		[16] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "forest",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
		},
		[17] = {
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "forest",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
		},
		[18] = {
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
		},
		[19] = {
			[8] = "water",
			[9] = "water",
		},
		[20] = {
			[8] = "water",
		},
	},
	doodads = {
	},
	invasionMask = {
		[2] = {
			[15] = 1,
			[16] = 1,
		},
		[3] = {
			[14] = 1,
			[13] = 1,
			[18] = 1,
			[17] = 1,
			[16] = 1,
			[15] = 1,
		},
		[4] = {
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[19] = 1,
			[18] = 1,
		},
		[5] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[6] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[7] = {
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[8] = {
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[9] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[10] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[11] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[12] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[13] = {
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
		},
		[14] = {
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
		},
		[15] = {
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
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
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
		},
	},
}

return data
