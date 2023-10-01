local data = {
	humanName = "test level",
	width = 12,
	height = 12,
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
		[10] = {
			[3] = 1,
		},
		[9] = {
			[2] = 1,
			[3] = 1,
		},
	},
	doodads = {
		[1] = {
			doodadType = "coast1",
			pos = {
				[2] = 6.9805399576823,
				[1] = 10.58100382487,
			},
		},
		[2] = {
			doodadType = "coast1",
			pos = {
				[2] = 5.5532646179199,
				[1] = 10.645553588867,
			},
		},
		[3] = {
			doodadType = "coast1",
			pos = {
				[2] = 4.219228108724,
				[1] = 10.659898122152,
			},
		},
		[4] = {
			doodadType = "coast1",
			pos = {
				[2] = 9.1824175516764,
				[1] = 11.54925664266,
			},
		},
		[5] = {
			doodadType = "coast2",
			pos = {
				[2] = 1.4148826599121,
				[1] = 8.7162208557129,
			},
		},
		[6] = {
			doodadType = "coast2",
			pos = {
				[2] = 1.465087890625,
				[1] = 7.331979115804,
			},
		},
		[7] = {
			doodadType = "coast2",
			pos = {
				[2] = 1.493776957194,
				[1] = 6.0122871398926,
			},
		},
		[8] = {
			doodadType = "coast2",
			pos = {
				[2] = 1.4292265574137,
				[1] = 5.0870685577393,
			},
		},
	},
	tiles = {
		[1] = {
			def = "woodcutter",
			pos = {
				[1] = 3,
				[2] = 6,
			},
		},
		[2] = {
			def = "farm",
			pos = {
				[1] = 3,
				[2] = 4,
			},
		},
		[3] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 8,
			},
		},
		[4] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 6,
			},
		},
		[5] = {
			def = "farm",
			pos = {
				[1] = 5,
				[2] = 8,
			},
		},
		[6] = {
			def = "woodcutter",
			pos = {
				[1] = 6,
				[2] = 7,
			},
		},
		[7] = {
			def = "sawmill",
			pos = {
				[1] = 6,
				[2] = 6,
			},
		},
		[8] = {
			def = "town",
			pos = {
				[1] = 7,
				[2] = 8,
			},
		},
		[9] = {
			def = "town",
			pos = {
				[1] = 7,
				[2] = 7,
			},
		},
		[10] = {
			def = "woodcutter",
			pos = {
				[1] = 7,
				[2] = 4,
			},
		},
		[11] = {
			def = "farm",
			pos = {
				[1] = 8,
				[2] = 8,
			},
		},
		[12] = {
			def = "farm",
			pos = {
				[1] = 8,
				[2] = 7,
			},
		},
		[13] = {
			def = "farm",
			pos = {
				[1] = 8,
				[2] = 6,
			},
		},
		[14] = {
			def = "woodcutter",
			pos = {
				[1] = 9,
				[2] = 8,
			},
		},
		[15] = {
			def = "mill",
			pos = {
				[1] = 9,
				[2] = 7,
			},
		},
		[16] = {
			def = "town",
			pos = {
				[1] = 10,
				[2] = 9,
			},
		},
		[17] = {
			def = "farm",
			pos = {
				[1] = 10,
				[2] = 8,
			},
		},
		[18] = {
			def = "farm",
			pos = {
				[1] = 10,
				[2] = 6,
			},
		},
		[19] = {
			def = "woodcutter",
			pos = {
				[1] = 10,
				[2] = 5,
			},
		},
		[20] = {
			extraData = {
				armySize = 1,
				invasionIndex = 1,
			},
			pos = {
				[1] = 10,
				[2] = 2,
			},
			def = "invasion",
		},
	},
	tileDeck = {
		[2] = {
			mill = 2,
			barracks = 5,
			fishery = 6,
			woodcutter = 4,
			farm = 7,
			town = 6,
			sawmill = 3,
		},
		[1] = {
			mill = 2,
			barracks = 5,
			fishery = 6,
			woodcutter = 4,
			farm = 7,
			town = 6,
			sawmill = 3,
		},
	},
}

return data
