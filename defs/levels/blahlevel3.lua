local data = {
	humanName = "Atoll",
	width = 20,
	height = 20,
	cameraPos = {
		[1] = 14,
		[2] = 7,
	},
	customVictoryText = "You've explored the entire island.  Very picturesque, though you're not sure where the serfs are supposed to fit.",
	tileDeck = {
		[2] = {
			tower = 1,
			mine = 1,
			town = 4,
			farm = 2,
			barracks = 1,
			quarry = 1,
			woodcutter = 2,
			fishery = 1,
		},
		[1] = {
			fishery = 3,
			blacksmith = 3,
			barracks = 3,
			fountain = 1,
			tavern = 3,
			town = 8,
			mine = 3,
			tower = 3,
			alchemist = 1,
			sawmill = 3,
			quarry = 3,
			farm = 6,
			woodcutter = 3,
		},
	},
	tiles = {
		[1] = {
			def = "invasion",
			pos = {
				[1] = 3,
				[2] = 18,
			},
			extraData = {
				armySize = 5,
				invasionIndex = 3,
			},
		},
		[2] = {
			def = "invasion",
			pos = {
				[1] = 4,
				[2] = 8,
			},
			extraData = {
				armySize = 10,
				invasionIndex = 1,
			},
		},
		[3] = {
			def = "invasion",
			pos = {
				[1] = 13,
				[2] = 18,
			},
			extraData = {
				armySize = 10,
				invasionIndex = 2,
			},
		},
		[4] = {
			pos = {
				[1] = 13,
				[2] = 7,
			},
			def = "farm",
		},
		[5] = {
			pos = {
				[1] = 13,
				[2] = 6,
			},
			def = "farm",
		},
		[6] = {
			pos = {
				[1] = 14,
				[2] = 7,
			},
			def = "town",
		},
		[7] = {
			pos = {
				[1] = 15,
				[2] = 8,
			},
			def = "farm",
		},
		[8] = {
			pos = {
				[1] = 15,
				[2] = 7,
			},
			def = "town",
		},
		[9] = {
			pos = {
				[1] = 15,
				[2] = 6,
			},
			def = "town",
		},
		[10] = {
			pos = {
				[1] = 15,
				[2] = 3,
			},
			def = "fishery",
		},
		[11] = {
			pos = {
				[1] = 16,
				[2] = 8,
			},
			def = "farm",
		},
		[12] = {
			pos = {
				[1] = 18,
				[2] = 5,
			},
			def = "fishery",
		},
	},
	terrain = {
		[1] = {
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
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
		[2] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "forest",
			[7] = "grass",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "forest",
			[12] = "desert",
			[13] = "grass",
			[14] = "grass",
			[15] = "water",
			[16] = "mountain",
			[17] = "forest",
			[18] = "forest",
			[19] = "water",
			[20] = "water",
		},
		[3] = {
			[1] = "water",
			[2] = "forest",
			[3] = "forest",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "mountain",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "water",
			[16] = "forest",
			[17] = "grass",
			[18] = "forest",
			[19] = "mountain",
			[20] = "water",
		},
		[4] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
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
			[15] = "water",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "water",
		},
		[5] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "forest",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "mountain",
			[17] = "grass",
			[18] = "forest",
			[19] = "mountain",
			[20] = "water",
		},
		[6] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "grass",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
		[7] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "mountain",
			[12] = "forest",
			[13] = "water",
			[14] = "water",
			[15] = "forest",
			[16] = "water",
			[17] = "desert",
			[18] = "desert",
			[19] = "desert",
			[20] = "water",
		},
		[8] = {
			[3] = "water",
			[4] = "water",
			[5] = "desert",
			[6] = "desert",
			[7] = "grass",
			[8] = "grass",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "forest",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "grass",
			[18] = "desert",
			[19] = "desert",
			[20] = "water",
		},
		[9] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "desert",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "water",
			[11] = "water",
			[12] = "desert",
			[13] = "mountain",
			[14] = "grass",
			[15] = "water",
			[16] = "water",
			[17] = "grass",
			[18] = "desert",
			[19] = "grass",
			[20] = "water",
		},
		[10] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "mountain",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "forest",
			[15] = "water",
			[16] = "forest",
			[17] = "grass",
			[18] = "grass",
			[19] = "forest",
			[20] = "water",
		},
		[11] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "forest",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "forest",
			[20] = "water",
		},
		[12] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
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
			[14] = "water",
			[15] = "water",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "forest",
			[20] = "water",
		},
		[13] = {
			[1] = "water",
			[2] = "water",
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
			[13] = "desert",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "desert",
			[18] = "desert",
			[19] = "grass",
			[20] = "water",
		},
		[14] = {
			[1] = "water",
			[2] = "water",
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
			[13] = "desert",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "desert",
			[18] = "desert",
			[19] = "desert",
			[20] = "water",
		},
		[15] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
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
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
		[16] = {
			[2] = "water",
			[3] = "mountain",
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
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
		[17] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
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
			[16] = "desert",
			[17] = "desert",
			[18] = "mountain",
			[19] = "desert",
			[20] = "water",
		},
		[18] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "desert",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "desert",
			[13] = "desert",
			[14] = "grass",
			[15] = "desert",
			[16] = "desert",
			[17] = "desert",
			[18] = "mountain",
			[19] = "desert",
			[20] = "water",
		},
		[19] = {
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "mountain",
			[10] = "mountain",
			[11] = "mountain",
			[12] = "mountain",
			[13] = "water",
			[14] = "forest",
			[15] = "desert",
			[16] = "desert",
			[17] = "desert",
			[18] = "desert",
			[19] = "desert",
			[20] = "water",
		},
		[20] = {
			[5] = "water",
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
			[16] = "water",
			[17] = "water",
			[18] = "water",
			[19] = "water",
			[20] = "water",
		},
	},
	doodads = {
		[1] = {
			pos = {
				[1] = 17.824282328288,
				[2] = 4.4485168457031,
			},
			doodadType = "coast_small",
		},
		[2] = {
			pos = {
				[1] = 17.55792872111,
				[2] = 4.1821632385254,
			},
			doodadType = "coast_small_flip",
		},
		[3] = {
			pos = {
				[1] = 16.833201726278,
				[2] = 3.482213973999,
			},
			doodadType = "coast_small",
		},
		[4] = {
			pos = {
				[1] = 16.554461161296,
				[2] = 3.2282485961914,
			},
			doodadType = "coast_small_flip",
		},
		[5] = {
			pos = {
				[1] = 14.875818888346,
				[2] = 2.4415791829427,
			},
			doodadType = "coast_test",
		},
		[6] = {
			pos = {
				[1] = 15.811150232951,
				[2] = 2.4353847503662,
			},
			doodadType = "coast_small",
		},
		[7] = {
			pos = {
				[1] = 16.535878499349,
				[2] = 3.1105575561523,
			},
			doodadType = "coast_small_flip",
		},
		[8] = {
			pos = {
				[1] = 13.395392100016,
				[2] = 2.4725507100423,
			},
			doodadType = "coast_small",
		},
		[9] = {
			pos = {
				[1] = 12.819327354431,
				[2] = 2.4415788650513,
			},
			doodadType = "coast_small",
		},
		[10] = {
			pos = {
				[1] = 12.540792147319,
				[2] = 2.2125978469849,
			},
			doodadType = "coast_small_flip",
		},
		[11] = {
			pos = {
				[1] = 11.83464717865,
				[2] = 1.481676419576,
			},
			doodadType = "coast_small",
		},
		[12] = {
			pos = {
				[1] = 10.992229143778,
				[2] = 1.4568993250529,
			},
			doodadType = "coast_test",
		},
		[13] = {
			pos = {
				[1] = 9.7843497594198,
				[2] = 1.4383166631063,
			},
			doodadType = "coast_small",
		},
		[14] = {
			pos = {
				[1] = 9.5179974238078,
				[2] = 1.667503674825,
			},
			doodadType = "coast_small_up",
		},
		[15] = {
			pos = {
				[1] = 9.5056085586548,
				[2] = 2.6957489649455,
			},
			doodadType = "coast_test_up",
		},
		[16] = {
			pos = {
				[1] = 10.17458820343,
				[2] = 3.5381676355998,
			},
			doodadType = "coast_small_flip_up",
		},
		[17] = {
			pos = {
				[1] = 10.428552309672,
				[2] = 3.7921317418416,
			},
			doodadType = "coast_small_up",
		},
		[18] = {
			pos = {
				[1] = 9.7347962061564,
				[2] = 4.461111386617,
			},
			doodadType = "coast_small",
		},
		[19] = {
			pos = {
				[1] = 8.768492380778,
				[2] = 4.4363339742025,
			},
			doodadType = "coast_test",
		},
		[20] = {
			pos = {
				[1] = 7.7340523401896,
				[2] = 4.4673051834106,
			},
			doodadType = "coast_small",
		},
		[21] = {
			pos = {
				[1] = 7.4738941192627,
				[2] = 4.7522411346436,
			},
			doodadType = "coast_small_up",
		},
		[22] = {
			pos = {
				[1] = 6.575013478597,
				[2] = 7.7044868469238,
			},
			doodadType = "coast_test_flip",
		},
		[23] = {
			pos = {
				[1] = 7.4491170247396,
				[2] = 7.1803881327311,
			},
			doodadType = "coast_small_up",
		},
		[24] = {
			pos = {
				[1] = 7.4491170247396,
				[2] = 7.7007052103678,
			},
			doodadType = "coast_test_up",
		},
		[25] = {
			pos = {
				[1] = 8.149067401886,
				[2] = 8.5245407422384,
			},
			doodadType = "coast_small_flip_up",
		},
		[26] = {
			pos = {
				[1] = 8.4092262585958,
				[2] = 8.759922504425,
			},
			doodadType = "coast_small_up",
		},
		[27] = {
			pos = {
				[1] = 8.427808602651,
				[2] = 8.927166779836,
			},
			doodadType = "coast_small_up",
		},
		[28] = {
			pos = {
				[1] = 9.9885482788086,
				[2] = 14.630882263184,
			},
			doodadType = "coast_behind_flip",
		},
		[29] = {
			pos = {
				[1] = 10.548920313517,
				[2] = 14.29883257548,
			},
			doodadType = "coast_small_flip",
		},
		[30] = {
			pos = {
				[1] = 10.542726516724,
				[2] = 14.119199752808,
			},
			doodadType = "coast_small_flip",
		},
		[31] = {
			pos = {
				[1] = 10.09934425354,
				[2] = 10.578184127808,
			},
			doodadType = "coast_behind_flip",
		},
		[32] = {
			pos = {
				[1] = 11.065647761027,
				[2] = 10.578184127808,
			},
			doodadType = "coast_behind_flip",
		},
		[33] = {
			pos = {
				[1] = 11.369166056315,
				[2] = 10.807370503743,
			},
			doodadType = "coast_behind",
		},
		[34] = {
			pos = {
				[1] = 11.393943150838,
				[2] = 11.748896916707,
			},
			doodadType = "coast_behind",
		},
		[35] = {
			pos = {
				[1] = 11.431109110514,
				[2] = 12.554150899251,
			},
			doodadType = "coast_small_up",
		},
		[36] = {
			pos = {
				[1] = 11.431109110514,
				[2] = 12.901028951009,
			},
			doodadType = "coast_small_up",
		},
		[37] = {
			pos = {
				[1] = 12.21781539917,
				[2] = 13.588626861572,
			},
			doodadType = "coast_test_flip_up",
		},
		[38] = {
			pos = {
				[1] = 13.623910903931,
				[2] = 13.557655970256,
			},
			doodadType = "coast_small_flip_up",
		},
		[39] = {
			pos = {
				[1] = 13.648687998454,
				[2] = 13.557656606038,
			},
			doodadType = "coast_test_flip_up",
		},
		[40] = {
			pos = {
				[1] = 14.445009231567,
				[2] = 13.759328842163,
			},
			doodadType = "coast_small_up",
		},
		[41] = {
			pos = {
				[1] = 14.407842636108,
				[2] = 13.920379002889,
			},
			doodadType = "coast_small_up",
		},
		[42] = {
			pos = {
				[1] = 15.107793172201,
				[2] = 14.570775349935,
			},
			doodadType = "coast_small_flip_up",
		},
		[43] = {
			pos = {
				[1] = 15.262650807699,
				[2] = 14.552193959554,
			},
			doodadType = "coast_small_flip_up",
		},
		[44] = {
			pos = {
				[1] = 15.467060724894,
				[2] = 14.78138033549,
			},
			doodadType = "coast_small_up",
		},
		[45] = {
			pos = {
				[1] = 16.154622395833,
				[2] = 15.518496195475,
			},
			doodadType = "coast_small_flip_up",
		},
		[46] = {
			pos = {
				[1] = 16.433364232381,
				[2] = 15.747683842977,
			},
			doodadType = "coast_small_up",
		},
		[47] = {
			pos = {
				[1] = 16.402393341064,
				[2] = 17.153779347738,
			},
			doodadType = "coast_test_up",
		},
		[48] = {
			pos = {
				[1] = 16.427170435588,
				[2] = 18.095305760701,
			},
			doodadType = "coast_small_up",
		},
		[49] = {
			pos = {
				[1] = 16.433364550273,
				[2] = 18.745702425639,
			},
			doodadType = "coast_test_up",
		},
		[50] = {
			pos = {
				[1] = 17.156188329061,
				[2] = 19.542857487996,
			},
			doodadType = "coast_small_flip_up",
		},
		[51] = {
			pos = {
				[1] = 18.110102971395,
				[2] = 19.530468622843,
			},
			doodadType = "coast_test_flip_up",
		},
		[52] = {
			pos = {
				[1] = 19.280816396077,
				[2] = 19.511885325114,
			},
			doodadType = "coast_small_flip_up",
		},
		[53] = {
			pos = {
				[1] = 19.522392272949,
				[2] = 19.233144124349,
			},
			doodadType = "coast_small_flip",
		},
		[54] = {
			pos = {
				[1] = 19.571947097778,
				[2] = 17.746524175008,
			},
			doodadType = "coast_test_flip",
		},
		[55] = {
			pos = {
				[1] = 19.553363800049,
				[2] = 16.637752532959,
			},
			doodadType = "coast_test_flip",
		},
		[56] = {
			pos = {
				[1] = 19.559558232625,
				[2] = 15.677644729614,
			},
			doodadType = "coast_small_flip",
		},
		[57] = {
			pos = {
				[1] = 19.571946461995,
				[2] = 14.302519480387,
			},
			doodadType = "coast_test_flip",
		},
		[58] = {
			pos = {
				[1] = 18.86580212911,
				[2] = 13.472490310669,
			},
			doodadType = "coast_small",
		},
		[59] = {
			pos = {
				[1] = 18.785276412964,
				[2] = 13.491072972616,
			},
			doodadType = "coast_small",
		},
		[60] = {
			pos = {
				[1] = 18.556088765462,
				[2] = 13.237108866374,
			},
			doodadType = "coast_small_flip",
		},
		[61] = {
			pos = {
				[1] = 19.28081703186,
				[2] = 12.574323654175,
			},
			doodadType = "coast_small_flip_up",
		},
		[62] = {
			pos = {
				[1] = 19.503809611003,
				[2] = 12.326553344727,
			},
			doodadType = "coast_small_flip",
		},
		[63] = {
			pos = {
				[1] = 19.547169367472,
				[2] = 10.833738327026,
			},
			doodadType = "coast_test_flip",
		},
		[64] = {
			pos = {
				[1] = 19.510004679362,
				[2] = 9.8550465901693,
			},
			doodadType = "coast_small_flip",
		},
		[65] = {
			pos = {
				[1] = 19.51619720459,
				[2] = 9.2170384724935,
			},
			doodadType = "coast_test_flip",
		},
		[66] = {
			pos = {
				[1] = 18.811810175578,
				[2] = 8.4813264211019,
			},
			doodadType = "coast_small",
		},
		[67] = {
			pos = {
				[1] = 18.570233662923,
				[2] = 7.6698786417643,
			},
			doodadType = "coast_test_flip",
		},
		[68] = {
			pos = {
				[1] = 18.582623163859,
				[2] = 6.1708710988363,
			},
			doodadType = "coast_test_flip",
		},
		[69] = {
			pos = {
				[1] = 18.56403986613,
				[2] = 5.1364301045736,
			},
			doodadType = "coast_small_flip",
		},
		[70] = {
			pos = {
				[1] = 9.5640354156494,
				[2] = 12.14942741394,
			},
			doodadType = "coast_small_flip",
		},
		[71] = {
			pos = {
				[1] = 10.329233169556,
				[2] = 14.575134913127,
			},
			doodadType = "coast_behind_flip",
		},
		[72] = {
			pos = {
				[1] = 9.149720509847,
				[2] = 9.5905011494954,
			},
			doodadType = "coast_small_flip_up",
		},
		[73] = {
			pos = {
				[1] = 9.3974901835124,
				[2] = 9.8134943644206,
			},
			doodadType = "coast_behind",
		},
		[74] = {
			pos = {
				[1] = 7.783395131429,
				[2] = 12.47528330485,
			},
			doodadType = "coast_small",
		},
		[75] = {
			pos = {
				[1] = 7.5170421600342,
				[2] = 12.258484522502,
			},
			doodadType = "coast_small_flip",
		},
		[76] = {
			pos = {
				[1] = 7.5294310251872,
				[2] = 11.255015691121,
			},
			doodadType = "coast_test_flip",
		},
		[77] = {
			pos = {
				[1] = 6.8108971913656,
				[2] = 10.486928939819,
			},
			doodadType = "coast_small",
		},
		[78] = {
			pos = {
				[1] = 7.1453870137533,
				[2] = 12.630139668783,
			},
			doodadType = "coast_behind_flip",
		},
		[79] = {
			pos = {
				[1] = 6.3834940592448,
				[2] = 11.942577362061,
			},
			doodadType = "coast_behind",
		},
		[80] = {
			pos = {
				[1] = 7.4055455525716,
				[2] = 12.890298207601,
			},
			doodadType = "coast_behind",
		},
		[81] = {
			pos = {
				[1] = 8.142661412557,
				[2] = 13.627414067586,
			},
			doodadType = "coast_behind_flip",
		},
		[82] = {
			pos = {
				[1] = 7.188746770223,
				[2] = 15.621962865194,
			},
			doodadType = "coast_behind_flip",
		},
		[83] = {
			pos = {
				[1] = 6.3834934234619,
				[2] = 14.841487248739,
			},
			doodadType = "coast_behind",
		},
		[84] = {
			pos = {
				[1] = 6.4949906667074,
				[2] = 10.790446599325,
			},
			doodadType = "coast_small_up",
		},
		[85] = {
			pos = {
				[1] = 8.4275970458984,
				[2] = 13.862795511882,
			},
			doodadType = "coast_small_up",
		},
		[86] = {
			pos = {
				[1] = 9.1337426503499,
				[2] = 14.618495305379,
			},
			doodadType = "coast_behind_flip",
		},
		[87] = {
			pos = {
				[1] = 9.8274981180827,
				[2] = 13.429197947184,
			},
			doodadType = "coast_small",
		},
		[88] = {
			pos = {
				[1] = 9.5735333760579,
				[2] = 12.679693857829,
			},
			doodadType = "coast_test_flip",
		},
		[89] = {
			pos = {
				[1] = 8.8611946105957,
				[2] = 11.47181447347,
			},
			doodadType = "coast_small",
		},
		[90] = {
			pos = {
				[1] = 8.72492090861,
				[2] = 11.484203338623,
			},
			doodadType = "coast_small",
		},
		[91] = {
			pos = {
				[1] = 8.4275976816813,
				[2] = 11.806304295858,
			},
			doodadType = "coast_small_up",
		},
		[92] = {
			pos = {
				[1] = 2.4097131093343,
				[2] = 2.7460943857829,
			},
			doodadType = "coast_behind",
		},
		[93] = {
			pos = {
				[1] = 2.3973247210185,
				[2] = 1.8169566790263,
			},
			doodadType = "coast_behind",
		},
		[94] = {
			pos = {
				[1] = 1.3628848393758,
				[2] = 6.2582349777222,
			},
			doodadType = "coast_behind",
		},
		[95] = {
			pos = {
				[1] = 1.3628848393758,
				[2] = 5.3414856592814,
			},
			doodadType = "coast_behind",
		},
		[96] = {
			pos = {
				[1] = 1.4000504811605,
				[2] = 4.3627936045329,
			},
			doodadType = "coast_test_up",
		},
		[97] = {
			pos = {
				[1] = 1.3876619338989,
				[2] = 6.8528833389282,
			},
			doodadType = "coast_behind",
		},
		[98] = {
			pos = {
				[1] = 1.393856048584,
				[2] = 10.773844401042,
			},
			doodadType = "coast_behind",
		},
		[99] = {
			pos = {
				[1] = 1.3751230239868,
				[2] = 10.979890505473,
			},
			doodadType = "coast_behind",
		},
		[100] = {
			pos = {
				[1] = 1.4187266031901,
				[2] = 11.896479288737,
			},
			doodadType = "coast_small_up",
		},
		[101] = {
			pos = {
				[1] = 1.4249210357666,
				[2] = 12.893753687541,
			},
			doodadType = "coast_test_up",
		},
		[102] = {
			pos = {
				[1] = 1.4373099009196,
				[2] = 13.773337682088,
			},
			doodadType = "coast_test_up",
		},
		[103] = {
			pos = {
				[1] = 2.1744257609049,
				[2] = 14.56000773112,
			},
			doodadType = "coast_small_flip_up",
		},
		[104] = {
			pos = {
				[1] = 3.0787862141927,
				[2] = 14.572395324707,
			},
			doodadType = "coast_small_flip_up",
		},
		[105] = {
			pos = {
				[1] = 3.7044061024984,
				[2] = 14.553813298543,
			},
			doodadType = "coast_test_flip_up",
		},
		[106] = {
			pos = {
				[1] = 4.5654067993164,
				[2] = 14.250295003255,
			},
			doodadType = "coast_small_flip",
		},
		[107] = {
			pos = {
				[1] = 4.5344359079997,
				[2] = 13.327351252238,
			},
			doodadType = "coast_small_flip",
		},
		[108] = {
			pos = {
				[1] = 5.1600551605225,
				[2] = 12.615012486776,
			},
			doodadType = "coast_behind_flip",
		},
		[109] = {
			pos = {
				[1] = 5.283940633138,
				[2] = 12.590235392253,
			},
			doodadType = "coast_behind_flip",
		},
		[110] = {
			pos = {
				[1] = 5.5874582926432,
				[2] = 11.704457600911,
			},
			doodadType = "coast_test_flip",
		},
		[111] = {
			pos = {
				[1] = 5.5564867655436,
				[2] = 10.533743540446,
			},
			doodadType = "coast_test_flip",
		},
		[112] = {
			pos = {
				[1] = 5.5317096710205,
				[2] = 9.2453390757243,
			},
			doodadType = "coast_small_flip",
		},
		[113] = {
			pos = {
				[1] = 5.5688762664795,
				[2] = 9.7037143707275,
			},
			doodadType = "coast_small_flip",
		},
		[114] = {
			pos = {
				[1] = 6.1821066538493,
				[2] = 8.5577767690023,
			},
			doodadType = "coast_small_flip_up",
		},
		[115] = {
			pos = {
				[1] = 6.2997976938883,
				[2] = 8.5515829722087,
			},
			doodadType = "coast_small_flip_up",
		},
		[116] = {
			pos = {
				[1] = 7.4298197428385,
				[2] = 6.2054773966471,
			},
			doodadType = "coast_test_up",
		},
		[117] = {
			pos = {
				[1] = 6.5316537221273,
				[2] = 6.7691555023193,
			},
			doodadType = "coast_small_flip",
		},
		[118] = {
			pos = {
				[1] = 6.5378475189209,
				[2] = 5.4621677398682,
			},
			doodadType = "coast_test_flip",
		},
		[119] = {
			pos = {
				[1] = 6.494488398234,
				[2] = 5.1710376739502,
			},
			doodadType = "coast_small_flip",
		},
		[120] = {
			pos = {
				[1] = 5.6703141530355,
				[2] = 4.4427471160889,
			},
			doodadType = "coast_test",
		},
		[121] = {
			pos = {
				[1] = 4.734982808431,
				[2] = 4.4737180074056,
			},
			doodadType = "coast_small",
		},
		[122] = {
			pos = {
				[1] = 4.5305716196696,
				[2] = 4.2197539011637,
			},
			doodadType = "coast_small_flip",
		},
		[123] = {
			pos = {
				[1] = 4.5553493499756,
				[2] = 3.2534503936768,
			},
			doodadType = "coast_test_flip",
		},
		[124] = {
			pos = {
				[1] = 3.5456860860189,
				[2] = 2.1942329406738,
			},
			doodadType = "coast_small_flip",
		},
		[125] = {
			pos = {
				[1] = 2.7252162297567,
				[2] = 1.5224256515503,
			},
			doodadType = "coast_small",
		},
		[126] = {
			pos = {
				[1] = 2.8552954991659,
				[2] = 1.4790658950806,
			},
			doodadType = "coast_small",
		},
		[127] = {
			pos = {
				[1] = 2.6942453384399,
				[2] = 1.5162312189738,
			},
			doodadType = "coast_small",
		},
		[128] = {
			pos = {
				[1] = 3.8339872360229,
				[2] = 2.4329811731974,
			},
			doodadType = "coast_small",
		},
		[129] = {
			pos = {
				[1] = 1.6796449025472,
				[2] = 10.48958269755,
			},
			doodadType = "coast_small",
		},
		[130] = {
			pos = {
				[1] = 2.4663155873617,
				[2] = 9.5914160410563,
			},
			doodadType = "coast_test_up",
		},
		[131] = {
			pos = {
				[1] = 2.4910926818848,
				[2] = 8.3525657653809,
			},
			doodadType = "coast_test_up",
		},
		[132] = {
			pos = {
				[1] = 2.2680994669596,
				[2] = 7.5597012837728,
			},
			doodadType = "coast_small_flip_up",
		},
		[133] = {
			pos = {
				[1] = 2.0574947992961,
				[2] = 7.5720898310343,
			},
			doodadType = "coast_small_flip_up",
		},
		[134] = {
			pos = {
				[1] = 6.2234369913737,
				[2] = 14.563087463379,
			},
			doodadType = "coast_small_flip_up",
		},
		[135] = {
			pos = {
				[1] = 5.5172920227051,
				[2] = 13.881720225016,
			},
			doodadType = "coast_small_up",
		},
		[136] = {
			pos = {
				[1] = 5.504903793335,
				[2] = 13.720669428507,
			},
			doodadType = "coast_small_up",
		},
		[137] = {
			pos = {
				[1] = 5.7774505615234,
				[2] = 13.448122660319,
			},
			doodadType = "coast_small",
		},
		[138] = {
			pos = {
				[1] = 5.8455880482992,
				[2] = 13.441928227743,
			},
			doodadType = "coast_small",
		},
		[139] = {
			pos = {
				[1] = 6.5207608540853,
				[2] = 14.191432952881,
			},
			doodadType = "coast_small_flip",
		},
		[140] = {
			pos = {
				[1] = 7.4932581583659,
				[2] = 15.33736928304,
			},
			doodadType = "coast_small_flip",
		},
		[141] = {
			pos = {
				[1] = 7.4994519551595,
				[2] = 15.170124053955,
			},
			doodadType = "coast_small_flip",
		},
		[142] = {
			pos = {
				[1] = 6.7995020548503,
				[2] = 14.470174153646,
			},
			doodadType = "coast_small",
		},
		[143] = {
			pos = {
				[1] = 12.765732447306,
				[2] = 16.469196955363,
			},
			doodadType = "coast_small",
		},
		[144] = {
			pos = {
				[1] = 13.769201278687,
				[2] = 16.43203163147,
			},
			doodadType = "coast_test",
		},
		[145] = {
			pos = {
				[1] = 14.537288029989,
				[2] = 17.200118382772,
			},
			doodadType = "coast_small_flip",
		},
		[146] = {
			pos = {
				[1] = 14.580649058024,
				[2] = 18.061120351156,
			},
			doodadType = "coast_test_flip",
		},
		[147] = {
			pos = {
				[1] = 14.518706003825,
				[2] = 19.238028208415,
			},
			doodadType = "coast_small_flip",
		},
		[148] = {
			pos = {
				[1] = 13.676287333171,
				[2] = 19.584904988607,
			},
			doodadType = "coast_test_flip_up",
		},
		[149] = {
			pos = {
				[1] = 12.716177622477,
				[2] = 19.5910987854,
			},
			doodadType = "coast_behind_flip",
		},
		[150] = {
			pos = {
				[1] = 11.774652481079,
				[2] = 19.591100692749,
			},
			doodadType = "coast_behind_flip",
		},
		[151] = {
			pos = {
				[1] = 10.926039059957,
				[2] = 19.609681765238,
			},
			doodadType = "coast_behind_flip",
		},
		[152] = {
			pos = {
				[1] = 10.040260950724,
				[2] = 19.591099421183,
			},
			doodadType = "coast_behind_flip",
		},
		[153] = {
			pos = {
				[1] = 9.1792602539063,
				[2] = 19.646848042806,
			},
			doodadType = "coast_behind_flip",
		},
		[154] = {
			pos = {
				[1] = 8.3554242451986,
				[2] = 19.615876515706,
			},
			doodadType = "coast_small_flip_up",
		},
		[155] = {
			pos = {
				[1] = 8.2872880299886,
				[2] = 19.572516759237,
			},
			doodadType = "coast_small_flip_up",
		},
		[156] = {
			pos = {
				[1] = 7.5439783732096,
				[2] = 19.57251739502,
			},
			doodadType = "coast_small_flip_up",
		},
		[157] = {
			pos = {
				[1] = 7.1475461324056,
				[2] = 19.547740936279,
			},
			doodadType = "coast_small_flip_up",
		},
		[158] = {
			pos = {
				[1] = 6.4475949605306,
				[2] = 18.823012034098,
			},
			doodadType = "coast_small_up",
		},
		[159] = {
			pos = {
				[1] = 6.4352073669434,
				[2] = 17.844320933024,
			},
			doodadType = "coast_test_up",
		},
		[160] = {
			pos = {
				[1] = 6.4599835077922,
				[2] = 16.72935517629,
			},
			doodadType = "coast_small_up",
		},
		[161] = {
			pos = {
				[1] = 6.7202291488647,
				[2] = 16.45672194163,
			},
			doodadType = "coast_small",
		},
		[162] = {
			pos = {
				[1] = 8.1696840922038,
				[2] = 16.419556935628,
			},
			doodadType = "coast_test",
		},
		[163] = {
			pos = {
				[1] = 8.683806737264,
				[2] = 16.438138961792,
			},
			doodadType = "coast_small",
		},
		[164] = {
			pos = {
				[1] = 9.3527860641479,
				[2] = 15.793937365214,
			},
			doodadType = "coast_behind",
		},
		[165] = {
			pos = {
				[1] = 9.6377220153809,
				[2] = 15.509001413981,
			},
			doodadType = "coast_small",
		},
		[166] = {
			pos = {
				[1] = 11.080982208252,
				[2] = 15.465641021729,
			},
			doodadType = "coast_test",
		},
		[167] = {
			pos = {
				[1] = 11.824293136597,
				[2] = 15.490419387817,
			},
			doodadType = "coast_small",
		},
		[168] = {
			pos = {
				[1] = 12.54282506307,
				[2] = 16.18417485555,
			},
			doodadType = "coast_small_flip",
		},
		[169] = {
			pos = {
				[1] = 5.5305773417155,
				[2] = 16.162303924561,
			},
			doodadType = "coast_small_flip",
		},
		[170] = {
			pos = {
				[1] = 5.5478712717692,
				[2] = 16.999817530314,
			},
			doodadType = "coast_test_flip",
		},
		[171] = {
			pos = {
				[1] = 5.5292886098226,
				[2] = 18.492633183797,
			},
			doodadType = "coast_test_flip",
		},
		[172] = {
			pos = {
				[1] = 5.5045115152995,
				[2] = 19.285497029622,
			},
			doodadType = "coast_small_flip",
		},
		[173] = {
			pos = {
				[1] = 4.6373163859049,
				[2] = 19.5828221639,
			},
			doodadType = "coast_test_flip_up",
		},
		[174] = {
			pos = {
				[1] = 3.7329546610514,
				[2] = 19.545655568441,
			},
			doodadType = "coast_small_flip_up",
		},
		[175] = {
			pos = {
				[1] = 3.1878604888916,
				[2] = 19.545654932658,
			},
			doodadType = "coast_small_flip_up",
		},
		[176] = {
			pos = {
				[1] = 2.3826077779134,
				[2] = 18.76517868042,
			},
			doodadType = "coast_behind",
		},
		[177] = {
			pos = {
				[1] = 2.1596151987712,
				[2] = 18.591740290324,
			},
			doodadType = "coast_behind_flip",
		},
		[178] = {
			pos = {
				[1] = 1.3977222442627,
				[2] = 17.879401524862,
			},
			doodadType = "coast_behind",
		},
		[179] = {
			pos = {
				[1] = 1.3791395823161,
				[2] = 16.944069544474,
			},
			doodadType = "coast_behind",
		},
		[180] = {
			pos = {
				[1] = 1.3791395823161,
				[2] = 16.126428604126,
			},
			doodadType = "coast_behind",
		},
		[181] = {
			pos = {
				[1] = 1.3791395823161,
				[2] = 15.754772822062,
			},
			doodadType = "coast_behind",
		},
		[182] = {
			pos = {
				[1] = 1.6516863505046,
				[2] = 15.482226053874,
			},
			doodadType = "coast_small",
		},
		[183] = {
			pos = {
				[1] = 3.0391991933187,
				[2] = 15.457448959351,
			},
			doodadType = "coast_test",
		},
		[184] = {
			pos = {
				[1] = 4.0550556182861,
				[2] = 15.457448959351,
			},
			doodadType = "coast_small",
		},
		[185] = {
			pos = {
				[1] = 4.8479207356771,
				[2] = 15.482226053874,
			},
			doodadType = "coast_small",
		},
	},
	invasionMask = {
		[0] = {
			[10] = 1,
			[9] = 1,
		},
		[1] = {
			[0] = 1,
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
			[14] = 1,
			[15] = 1,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
		},
		[2] = {
			[0] = 1,
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
			[14] = 1,
			[15] = 1,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
		},
		[3] = {
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
			[14] = 1,
			[15] = 1,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
		},
		[4] = {
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
			[14] = 1,
			[15] = 1,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
		},
		[5] = {
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
			[14] = 1,
			[15] = 1,
			[16] = 3,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 3,
		},
		[6] = {
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
			[14] = 1,
			[15] = 1,
			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,
			[20] = 2,
			[21] = 2,
		},
		[7] = {
			[20] = 2,
			[18] = 2,
			[17] = 2,
			[16] = 2,
			[19] = 2,
		},
		[8] = {
			[20] = 2,
			[18] = 2,
			[17] = 2,
			[16] = 2,
			[19] = 2,
		},
		[9] = {
			[20] = 2,
			[19] = 2,
			[17] = 2,
			[16] = 2,
			[18] = 2,
		},
		[10] = {
			[21] = 2,
			[20] = 2,
			[19] = 2,
			[17] = 2,
			[16] = 2,
			[18] = 2,
		},
		[11] = {
			[20] = 2,
			[19] = 2,
			[17] = 2,
			[16] = 2,
			[18] = 2,
		},
		[12] = {
			[20] = 2,
			[19] = 2,
			[17] = 2,
			[16] = 2,
			[18] = 2,
		},
		[13] = {
			[20] = 2,
			[18] = 2,
			[17] = 2,
			[16] = 2,
			[19] = 2,
		},
		[14] = {
			[20] = 2,
			[18] = 2,
			[17] = 2,
			[16] = 2,
			[19] = 2,
		},
		[15] = {
			[20] = 2,
			[18] = 2,
			[17] = 2,
			[16] = 2,
			[19] = 2,
		},
		[16] = {
		},
		[17] = {
		},
		[18] = {
		},
	},
}

return data
