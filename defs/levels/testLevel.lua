local data = {
	tiles = {
		[1] = {
			pos = {
				[1] = 3,
				[2] = 6,
			},
			def = "woodcutter",
		},
		[2] = {
			pos = {
				[1] = 3,
				[2] = 4,
			},
			def = "farm",
		},
		[3] = {
			pos = {
				[1] = 4,
				[2] = 8,
			},
			def = "town",
		},
		[4] = {
			pos = {
				[1] = 4,
				[2] = 6,
			},
			def = "town",
		},
		[5] = {
			pos = {
				[1] = 5,
				[2] = 8,
			},
			def = "farm",
		},
		[6] = {
			pos = {
				[1] = 6,
				[2] = 7,
			},
			def = "woodcutter",
		},
		[7] = {
			pos = {
				[1] = 6,
				[2] = 6,
			},
			def = "sawmill",
		},
		[8] = {
			pos = {
				[1] = 6,
				[2] = 5,
			},
			def = "town",
		},
		[9] = {
			pos = {
				[1] = 6,
				[2] = 4,
			},
			def = "barracks",
		},
		[10] = {
			pos = {
				[1] = 7,
				[2] = 8,
			},
			def = "town",
		},
		[11] = {
			pos = {
				[1] = 7,
				[2] = 7,
			},
			def = "town",
		},
		[12] = {
			pos = {
				[1] = 7,
				[2] = 4,
			},
			def = "woodcutter",
		},
		[13] = {
			pos = {
				[1] = 8,
				[2] = 8,
			},
			def = "farm",
		},
		[14] = {
			pos = {
				[1] = 8,
				[2] = 7,
			},
			def = "farm",
		},
		[15] = {
			pos = {
				[1] = 8,
				[2] = 6,
			},
			def = "farm",
		},
		[16] = {
			pos = {
				[1] = 9,
				[2] = 10,
			},
			def = "farm",
		},
		[17] = {
			pos = {
				[1] = 9,
				[2] = 9,
			},
			def = "farm",
		},
		[18] = {
			pos = {
				[1] = 9,
				[2] = 8,
			},
			def = "woodcutter",
		},
		[19] = {
			pos = {
				[1] = 9,
				[2] = 7,
			},
			def = "mill",
		},
		[20] = {
			pos = {
				[1] = 10,
				[2] = 9,
			},
			def = "town",
		},
		[21] = {
			pos = {
				[1] = 10,
				[2] = 8,
			},
			def = "farm",
		},
		[22] = {
			pos = {
				[1] = 10,
				[2] = 6,
			},
			def = "farm",
		},
		[23] = {
			pos = {
				[1] = 10,
				[2] = 5,
			},
			def = "woodcutter",
		},
		[24] = {
			def = "invasion",
			pos = {
				[1] = 10,
				[2] = 2,
			},
			extraData = {
				armySize = 0,
				invasionIndex = 1,
			},
		},
		[25] = {
			pos = {
				[1] = 11,
				[2] = 10,
			},
			def = "farm",
		},
		[26] = {
			pos = {
				[1] = 11,
				[2] = 9,
			},
			def = "fishery",
		},
	},
	tileDeck = {
		[2] = {
			sawmill = 3,
			town = 6,
			fishery = 6,
			barracks = 5,
			woodcutter = 4,
			farm = 7,
			mill = 2,
		},
		[1] = {
			sawmill = 3,
			town = 6,
			fishery = 6,
			barracks = 5,
			woodcutter = 4,
			farm = 7,
			mill = 2,
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
		},
		[11] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "grass",
			[10] = "grass",
			[11] = "mountain",
			[12] = "water",
		},
		[12] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
		},
	},
	cameraPos = {
		[1] = 6,
		[2] = 6,
	},
	width = 12,
	doodads = {
		[1] = {
			pos = {
				[2] = 6.9805399576823,
				[1] = 10.58100382487,
			},
			doodadType = "coast1",
		},
		[2] = {
			pos = {
				[2] = 5.5532646179199,
				[1] = 10.645553588867,
			},
			doodadType = "coast1",
		},
		[3] = {
			pos = {
				[2] = 4.219228108724,
				[1] = 10.659898122152,
			},
			doodadType = "coast1",
		},
		[4] = {
			pos = {
				[2] = 9.1824175516764,
				[1] = 11.54925664266,
			},
			doodadType = "coast1",
		},
		[5] = {
			pos = {
				[2] = 1.4148826599121,
				[1] = 8.7162208557129,
			},
			doodadType = "coast2",
		},
		[6] = {
			pos = {
				[2] = 1.465087890625,
				[1] = 7.331979115804,
			},
			doodadType = "coast2",
		},
		[7] = {
			pos = {
				[2] = 1.493776957194,
				[1] = 6.0122871398926,
			},
			doodadType = "coast2",
		},
		[8] = {
			pos = {
				[2] = 1.4292265574137,
				[1] = 5.0870685577393,
			},
			doodadType = "coast2",
		},
	},
	humanName = "test level",
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
	height = 12,
}

return data
