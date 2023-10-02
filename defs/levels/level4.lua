local data = {
	humanName = "test",
	width = 20,
	height = 28,
    customVictoryText = "You've explored the entire island!  The Kingdom has dubbed you 'Master of Logistics'.  Also 'Duke of Tiny Island #3'.",
	cameraPos = {
		[2] = 8,
		[1] = 12,
	},
	tileDeck = {
		[2] = {
			mill = 1,
			town = 7,
			fishery = 7,
			blacksmith = 1,
			farm = 3,
			barracks = 2,
			woodcutter = 4,
			sawmill = 2,
			tavern = 1,
		},
		[1] = {
			town = 7,
			fishery = 4,
			blacksmith = 1,
			farm = 3,
			barracks = 2,
			woodcutter = 3,
			tavern = 1,
			sawmill = 1,
			mine = 4,
		},
	},
	hints = {
		[1] = {
			text = "Send tools from Blacksmiths to Outputs for a scouting boost.",
			size = {1.58, 0.62},
			pos = {
				[1] = 6,
				[2] = 20,
			},
		},
	},
	tiles = {
		[1] = {
			pos = {
				[1] = 7,
				[2] = 13,
			},
			def = "invasion",
			extraData = {
				armySize = 6,
				invasionIndex = 2,
			},
		},
		[2] = {
			def = "farm",
			pos = {
				[1] = 10,
				[2] = 7,
			},
		},
		[3] = {
			pos = {
				[1] = 11,
				[2] = 23,
			},
			def = "invasion",
			extraData = {
				armySize = 4,
				invasionIndex = 1,
			},
		},
		[4] = {
			def = "town",
			pos = {
				[1] = 11,
				[2] = 6,
			},
		},
		[5] = {
			def = "fishery",
			pos = {
				[1] = 11,
				[2] = 5,
			},
		},
	},
	terrain = {
		[0] = {
			[11] = "water",
		},
		[1] = {
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
		},
		[2] = {
			[8] = "water",
			[9] = "water",
			[10] = "grass",
			[11] = "forest",
			[12] = "forest",
			[13] = "forest",
			[14] = "forest",
			[15] = "water",
			[16] = "water",
		},
		[3] = {
			[7] = "water",
			[8] = "water",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "forest",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
		},
		[4] = {
			[6] = "water",
			[7] = "water",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "desert",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "forest",
			[20] = "water",
			[21] = "mountain",
			[22] = "water",
			[23] = "water",
		},
		[5] = {
			[6] = "water",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "desert",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "forest",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
		},
		[6] = {
			[5] = "water",
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
			[18] = "forest",
			[19] = "water",
		},
		[7] = {
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "mountain",
			[13] = "forest",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[25] = "water",
		},
		[8] = {
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "forest",
			[12] = "mountain",
			[13] = "mountain",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "water",
			[24] = "water",
			[25] = "water",
			[26] = "water",
		},
		[9] = {
			[4] = "water",
			[5] = "water",
			[6] = "forest",
			[7] = "mountain",
			[8] = "grass",
			[9] = "desert",
			[10] = "desert",
			[11] = "forest",
			[12] = "forest",
			[13] = "forest",
			[14] = "grass",
			[15] = "grass",
			[16] = "water",
			[17] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "mountain",
			[24] = "mountain",
			[25] = "mountain",
			[26] = "water",
			[27] = "water",
		},
		[10] = {
			[4] = "water",
			[5] = "water",
			[6] = "desert",
			[7] = "grass",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "grass",
			[12] = "forest",
			[13] = "grass",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "mountain",
			[23] = "mountain",
			[24] = "forest",
			[25] = "mountain",
			[26] = "water",
			[27] = "water",
		},
		[11] = {
			[3] = "water",
			[4] = "water",
			[5] = "desert",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "water",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "desert",
			[17] = "desert",
			[18] = "desert",
			[19] = "desert",
			[20] = "desert",
			[21] = "grass",
			[22] = "grass",
			[23] = "grass",
			[24] = "grass",
			[25] = "desert",
			[26] = "water",
			[27] = "water",
		},
		[12] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "desert",
			[17] = "desert",
			[18] = "desert",
			[19] = "desert",
			[20] = "grass",
			[21] = "mountain",
			[22] = "mountain",
			[23] = "mountain",
			[24] = "mountain",
			[25] = "mountain",
			[26] = "water",
			[27] = "water",
		},
		[13] = {
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "grass",
			[13] = "desert",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "mountain",
			[23] = "water",
			[24] = "mountain",
			[25] = "water",
			[26] = "water",
		},
		[14] = {
			[4] = "water",
			[5] = "mountain",
			[6] = "grass",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "water",
			[11] = "grass",
			[12] = "forest",
			[13] = "water",
			[14] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
			[21] = "water",
			[22] = "water",
			[23] = "water",
			[24] = "water",
			[25] = "water",
		},
		[15] = {
			[4] = "water",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "grass",
			[8] = "desert",
			[9] = "water",
			[10] = "water",
			[11] = "forest",
			[12] = "water",
			[13] = "water",
			[20] = "water",
			[21] = "water",
			[24] = "water",
		},
		[16] = {
			[4] = "water",
			[5] = "mountain",
			[6] = "forest",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
		},
		[17] = {
			[4] = "water",
			[5] = "mountain",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[11] = "water",
		},
		[18] = {
			[5] = "water",
			[6] = "water",
		},
		[19] = {
			[5] = "water",
		},
	},
	doodads = {
		[1] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 6.5498847961426,
				[2] = 17.232535044352,
			},
		},
		[2] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 6.5994389851888,
				[2] = 17.728075663249,
			},
		},
		[3] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 4.1911907196045,
				[2] = 19.61054166158,
			},
		},
		[4] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 14.247515360514,
				[2] = 12.58645884196,
			},
		},
		[5] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 15.244790395101,
				[2] = 11.626349131266,
			},
		},
		[6] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 2.1905835469564,
				[2] = 14.613140106201,
			},
		},
		[7] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 1.3729426066081,
				[2] = 13.894607543945,
			},
		},
		[8] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 1.3791364034017,
				[2] = 12.984053293864,
			},
		},
		[9] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 1.3729426066081,
				[2] = 12.061108907064,
			},
		},
		[10] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 1.3853302001953,
				[2] = 11.13197072347,
			},
		},
		[11] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 1.3915246327718,
				[2] = 10.221415837606,
			},
		},
		[12] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 1.3977197011312,
				[2] = 9.7816244761149,
			},
		},
		[13] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 16.201711336772,
				[2] = 6.6157121658325,
			},
		},
		[14] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 15.223018964132,
				[2] = 8.585483233134,
			},
		},
		[15] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 14.225745201111,
				[2] = 9.5951471328735,
			},
		},
		[16] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 17.254734039307,
				[2] = 5.5626894632975,
			},
		},
		[17] = {
			doodadType = "coast_small",
			pos = {
				[1] = 10.8650487264,
				[2] = 4.4715347290039,
			},
		},
		[18] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 7.2469787597656,
				[2] = 16.560002644857,
			},
		},
		[19] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 7.7363236745199,
				[2] = 16.553806940715,
			},
		},
		[20] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 9.2666988372803,
				[2] = 25.573417027791,
			},
		},
		[21] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 11.707234064738,
				[2] = 25.561028162638,
			},
		},
		[22] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 10.740929921468,
				[2] = 25.536251068115,
			},
		},
		[23] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 13.243408838908,
				[2] = 22.587788263957,
			},
		},
		[24] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 13.280574798584,
				[2] = 24.483229319255,
			},
		},
		[25] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 13.255392710368,
				[2] = 13.567040761312,
			},
		},
		[26] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 9.2662941614787,
				[2] = 15.549201647441,
			},
		},
		[27] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 9.625560760498,
				[2] = 15.536813100179,
			},
		},
		[28] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 11.18322690328,
				[2] = 8.5723476409912,
			},
		},
		[29] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 11.443386077881,
				[2] = 8.8077303568522,
			},
		},
		[30] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 10.508054097493,
				[2] = 9.2599105834961,
			},
		},
		[31] = {
			doodadType = "coast_small",
			pos = {
				[1] = 10.755823771159,
				[2] = 9.4829025268555,
			},
		},
		[32] = {
			doodadType = "coast_small",
			pos = {
				[1] = 11.765487035116,
				[2] = 5.4380563100179,
			},
		},
		[33] = {
			doodadType = "coast_small",
			pos = {
				[1] = 7.7825829188029,
				[2] = 7.4511880874634,
			},
		},
		[34] = {
			doodadType = "coast_test",
			pos = {
				[1] = 9.3001747131348,
				[2] = 5.4256680806478,
			},
		},
		[35] = {
			doodadType = "coast_small",
			pos = {
				[1] = 9.7895202636719,
				[2] = 5.4442507425944,
			},
		},
		[36] = {
			doodadType = "coast_small",
			pos = {
				[1] = 6.7171713511149,
				[2] = 5.4690278371175,
			},
		},
		[37] = {
			doodadType = "coast_small",
			pos = {
				[1] = 6.9091936747233,
				[2] = 5.462833404541,
			},
		},
		[38] = {
			doodadType = "coast_small",
			pos = {
				[1] = 5.7880341211955,
				[2] = 7.4388004938761,
			},
		},
		[39] = {
			doodadType = "coast_small",
			pos = {
				[1] = 3.7345447540283,
				[2] = 7.4700857798258,
			},
		},
		[40] = {
			doodadType = "coast_small",
			pos = {
				[1] = 2.7372703552246,
				[2] = 8.4301948547363,
			},
		},
		[41] = {
			doodadType = "coast_small",
			pos = {
				[1] = 1.7090237935384,
				[2] = 9.507994333903,
			},
		},
		[42] = {
			doodadType = "coast_small",
			pos = {
				[1] = 13.809080123901,
				[2] = 10.459288914998,
			},
		},
		[43] = {
			doodadType = "coast_test",
			pos = {
				[1] = 14.732023557027,
				[2] = 10.44070593516,
			},
		},
		[44] = {
			doodadType = "coast_test",
			pos = {
				[1] = 13.30529499054,
				[2] = 4.4797849655151,
			},
		},
		[45] = {
			doodadType = "coast_test",
			pos = {
				[1] = 14.829080899556,
				[2] = 4.4426196416219,
			},
		},
		[46] = {
			doodadType = "coast_test",
			pos = {
				[1] = 16.712134043376,
				[2] = 4.4426205952962,
			},
		},
		[47] = {
			doodadType = "coast_small",
			pos = {
				[1] = 15.721054077148,
				[2] = 4.4673970540365,
			},
		},
		[48] = {
			doodadType = "coast_small",
			pos = {
				[1] = 4.7362747192383,
				[2] = 6.452938079834,
			},
		},
		[49] = {
			doodadType = "coast_small",
			pos = {
				[1] = 4.8973255157471,
				[2] = 6.4405498504639,
			},
		},
		[50] = {
			doodadType = "coast_small",
			pos = {
				[1] = 9.7987187703451,
				[2] = 21.45942179362,
			},
		},
		[51] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 8.4771048227946,
				[2] = 22.69255510966,
			},
		},
		[52] = {
			doodadType = "coast_small",
			pos = {
				[1] = 12.809124628703,
				[2] = 21.47181002299,
			},
		},
		[53] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 17.52848815918,
				[2] = 5.1443888346354,
			},
		},
		[54] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 17.522293726603,
				[2] = 5.3364098866781,
			},
		},
		[55] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 16.543601989746,
				[2] = 6.2407709757487,
			},
		},
		[56] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 16.54979578654,
				[2] = 6.3460731506348,
			},
		},
		[57] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 15.577298482259,
				[2] = 7.2814051310221,
			},
		},
		[58] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 15.564910252889,
				[2] = 7.7645575205485,
			},
		},
		[59] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 14.511887232463,
				[2] = 9.3131198883057,
			},
		},
		[60] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 13.564167340597,
				[2] = 10.27322991689,
			},
		},
		[61] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 15.509162902832,
				[2] = 11.152814229329,
			},
		},
		[62] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 15.509162584941,
				[2] = 11.37580649058,
			},
		},
		[63] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 14.555246988932,
				[2] = 12.280166625977,
			},
		},
		[64] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 13.533196131388,
				[2] = 13.314607620239,
			},
		},
		[65] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 11.526334762573,
				[2] = 5.1975091298421,
			},
		},
		[66] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 7.5744018554688,
				[2] = 6.1762008666992,
			},
		},
		[67] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 7.6053737004598,
				[2] = 6.6531585057576,
			},
		},
		[68] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 5.5550759633382,
				[2] = 7.1548926035563,
			},
		},
		[69] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 6.3083095550537,
				[2] = 18.576687494914,
			},
		},
		[70] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 5.3543942769368,
				[2] = 18.613852183024,
			},
		},
		[71] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 5.2119267781576,
				[2] = 18.595270792643,
			},
		},
		[72] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 4.5397173563639,
				[2] = 19.253993988037,
			},
		},
		[73] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 4.5211346944173,
				[2] = 19.359297434489,
			},
		},
		[74] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 12.582163492839,
				[2] = 14.231450398763,
			},
		},
		[75] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 12.557385762533,
				[2] = 15.24730682373,
			},
		},
		[76] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 13.498912175496,
				[2] = 22.333531061808,
			},
		},
		[77] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 12.538804372152,
				[2] = 16.690568288167,
			},
		},
		[78] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 12.544998168945,
				[2] = 17.663065592448,
			},
		},
		[79] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 12.532608668009,
				[2] = 19.08774248759,
			},
		},
		[80] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 12.569774309794,
				[2] = 19.942549705505,
			},
		},
		[81] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 12.532609303792,
				[2] = 21.243343353271,
			},
		},
		[82] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 13.517496109009,
				[2] = 22.178675969442,
			},
		},
		[83] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 12.579057057699,
				[2] = 23.207876841227,
			},
		},
		[84] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 13.520583470662,
				[2] = 24.174179712931,
			},
		},
		[85] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 12.510920206706,
				[2] = 25.295338948568,
			},
		},
		[86] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 8.5552317301432,
				[2] = 16.280604044596,
			},
		},
		[87] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 4.5566533406576,
				[2] = 21.213343302409,
			},
		},
		[88] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 3.4743849436442,
				[2] = 20.747048060099,
			},
		},
		[89] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 4.2734438578288,
				[2] = 21.496552785238,
			},
		},
		[90] = {
			doodadType = "coast_small",
			pos = {
				[1] = 3.7593199412028,
				[2] = 20.511665980021,
			},
		},
		[91] = {
			doodadType = "coast_small",
			pos = {
				[1] = 3.8893998463949,
				[2] = 20.517859776815,
			},
		},
		[92] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 6.4408009847005,
				[2] = 5.7459996541341,
			},
		},
		[93] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 6.4346071879069,
				[2] = 6.6813316345215,
			},
		},
		[94] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 8.3548253377279,
				[2] = 5.801747639974,
			},
		},
		[95] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 8.367213567098,
				[2] = 6.7308851877848,
			},
		},
		[96] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 4.4524463017782,
				[2] = 6.7308855056763,
			},
		},
		[97] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 3.4303944905599,
				[2] = 7.7405484517415,
			},
		},
		[98] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 2.4455086390177,
				[2] = 8.6882689793905,
			},
		},
		[99] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 2.4269262949626,
				[2] = 8.8183485666911,
			},
		},
		[100] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 12.450777053833,
				[2] = 4.7440814971924,
			},
		},
		[101] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 10.450033823649,
				[2] = 4.7502759297689,
			},
		},
		[102] = {
			doodadType = "coast_small",
			pos = {
				[1] = 10.716386159261,
				[2] = 4.4963111877441,
			},
		},
		[103] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 3.4005972544352,
				[2] = 16.365100224813,
			},
		},
		[104] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 3.4067916870117,
				[2] = 17.857915242513,
			},
		},
		[105] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 3.4129854838053,
				[2] = 18.90474319458,
			},
		},
		[106] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 2.4342943827311,
				[2] = 14.853702545166,
			},
		},
		[107] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 3.16521581014,
				[2] = 15.559847513835,
			},
		},
		[108] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 9.4929618835449,
				[2] = 21.72625096639,
			},
		},
		[109] = {
			doodadType = "coast_small",
			pos = {
				[1] = 8.7868175506592,
				[2] = 22.457173029582,
			},
		},
		[110] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 8.4027735392253,
				[2] = 24.897707621257,
			},
		},
		[111] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 8.3965797424316,
				[2] = 24.098649342855,
			},
		},
		[112] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 10.422100067139,
				[2] = 16.312475840251,
			},
		},
		[113] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 10.403516769409,
				[2] = 17.805289586385,
			},
		},
		[114] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 10.422100067139,
				[2] = 18.814952850342,
			},
		},
		[115] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 10.391127904256,
				[2] = 20.171494166056,
			},
		},
		[116] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 10.415906270345,
				[2] = 20.121940612793,
			},
		},
		[117] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 10.409711201986,
				[2] = 20.809501647949,
			},
		},
		[118] = {
			doodadType = "coast_small",
			pos = {
				[1] = 12.78830464681,
				[2] = 23.460642496745,
			},
		},
	},
	invasionMask = {
		[1] = {
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
		},
		[2] = {
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[3] = {
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
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
		},
		[4] = {
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
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
		},
		[5] = {
			[5] = 2,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
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
		},
		[6] = {
			[5] = 2,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
		},
		[7] = {
			[4] = 2,
			[5] = 2,
			[6] = 2,
			[7] = 2,
			[11] = 2,
			[12] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
			[22] = 1,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
			[27] = 1,
		},
		[8] = {
			[5] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 1,
			[21] = 1,
			[22] = 1,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
			[27] = 1,
			[28] = 1,
		},
		[9] = {
			[14] = 2,
			[15] = 2,
			[19] = 1,
			[20] = 1,
			[21] = 1,
			[22] = 1,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
			[27] = 1,
			[28] = 1,
		},
		[10] = {
			[18] = 1,
			[19] = 1,
			[20] = 1,
			[21] = 1,
			[22] = 1,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
			[27] = 1,
			[28] = 1,
		},
		[11] = {
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
			[21] = 1,
			[22] = 1,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
			[27] = 1,
			[28] = 1,
		},
		[12] = {
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
			[21] = 1,
			[22] = 1,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
			[27] = 1,
			[28] = 1,
		},
		[13] = {
			[17] = 1,
			[18] = 1,
			[19] = 1,
			[20] = 1,
			[21] = 1,
			[22] = 1,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
			[27] = 1,
		},
		[14] = {
			[18] = 1,
			[19] = 1,
			[20] = 1,
			[21] = 1,
			[22] = 1,
			[23] = 1,
			[24] = 1,
			[25] = 1,
			[26] = 1,
		},
		[15] = {
			[22] = 1,
			[21] = 1,
			[20] = 1,
			[19] = 1,
			[23] = 1,
			[25] = 1,
			[24] = 1,
		},
		[16] = {
			[23] = 1,
			[21] = 1,
			[20] = 1,
			[22] = 1,
			[24] = 1,
		},
	},
}

return data
