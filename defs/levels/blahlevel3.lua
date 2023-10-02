local data = {
	humanName = "Atoll",
	width = 20,
	height = 20,
	cameraPos = {
		[2] = 7,
		[1] = 14,
	},
	customVictoryText = "You've explored the entire island.  Very picturesque, though you're not sure where the serfs are supposed to fit.",
	tileDeck = {
		[1] = {
			blacksmith = 3,
			barracks = 3,
			fountain = 1,
			woodcutter = 3,
			mine = 3,
			tavern = 3,
			alchemist = 1,
			town = 8,
			farm = 6,
			quarry = 3,
			sawmill = 3,
			fishery = 3,
			tower = 3,
		},
		[2] = {
			tower = 1,
			fishery = 1,
			farm = 2,
			barracks = 1,
			woodcutter = 2,
			mine = 1,
			quarry = 1,
			town = 4,
		},
	},
	tiles = {
		[1] = {
			pos = {
				[1] = 3,
				[2] = 18,
			},
			extraData = {
				invasionIndex = 3,
				armySize = 5,
			},
			def = "invasion",
		},
		[2] = {
			pos = {
				[1] = 4,
				[2] = 8,
			},
			extraData = {
				invasionIndex = 1,
				armySize = 10,
			},
			def = "invasion",
		},
		[3] = {
			pos = {
				[1] = 13,
				[2] = 18,
			},
			extraData = {
				invasionIndex = 2,
				armySize = 10,
			},
			def = "invasion",
		},
		[4] = {
			def = "farm",
			pos = {
				[1] = 13,
				[2] = 7,
			},
		},
		[5] = {
			def = "farm",
			pos = {
				[1] = 13,
				[2] = 6,
			},
		},
		[6] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 7,
			},
		},
		[7] = {
			def = "farm",
			pos = {
				[1] = 15,
				[2] = 8,
			},
		},
		[8] = {
			def = "town",
			pos = {
				[1] = 15,
				[2] = 7,
			},
		},
		[9] = {
			def = "town",
			pos = {
				[1] = 15,
				[2] = 6,
			},
		},
		[10] = {
			def = "fishery",
			pos = {
				[1] = 15,
				[2] = 3,
			},
		},
		[11] = {
			def = "farm",
			pos = {
				[1] = 16,
				[2] = 8,
			},
		},
		[12] = {
			def = "fishery",
			pos = {
				[1] = 18,
				[2] = 5,
			},
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
			doodadType = "coast_small",
			pos = {
				[2] = 4.4485168457031,
				[1] = 17.824282328288,
			},
		},
		[2] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 4.1821632385254,
				[1] = 17.55792872111,
			},
		},
		[3] = {
			doodadType = "coast_small",
			pos = {
				[2] = 3.482213973999,
				[1] = 16.833201726278,
			},
		},
		[4] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 3.2282485961914,
				[1] = 16.554461161296,
			},
		},
		[5] = {
			doodadType = "coast_test",
			pos = {
				[2] = 2.4415791829427,
				[1] = 14.875818888346,
			},
		},
		[6] = {
			doodadType = "coast_small",
			pos = {
				[2] = 2.4353847503662,
				[1] = 15.811150232951,
			},
		},
		[7] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 3.1105575561523,
				[1] = 16.535878499349,
			},
		},
		[8] = {
			doodadType = "coast_small",
			pos = {
				[2] = 2.4725507100423,
				[1] = 13.395392100016,
			},
		},
		[9] = {
			doodadType = "coast_small",
			pos = {
				[2] = 2.4415788650513,
				[1] = 12.819327354431,
			},
		},
		[10] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 2.2125978469849,
				[1] = 12.540792147319,
			},
		},
		[11] = {
			doodadType = "coast_small",
			pos = {
				[2] = 1.481676419576,
				[1] = 11.83464717865,
			},
		},
		[12] = {
			doodadType = "coast_test",
			pos = {
				[2] = 1.4568993250529,
				[1] = 10.992229143778,
			},
		},
		[13] = {
			doodadType = "coast_small",
			pos = {
				[2] = 1.4383166631063,
				[1] = 9.7843497594198,
			},
		},
		[14] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 1.667503674825,
				[1] = 9.5179974238078,
			},
		},
		[15] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 2.6957489649455,
				[1] = 9.5056085586548,
			},
		},
		[16] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 3.5381676355998,
				[1] = 10.17458820343,
			},
		},
		[17] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 3.7921317418416,
				[1] = 10.428552309672,
			},
		},
		[18] = {
			doodadType = "coast_small",
			pos = {
				[2] = 4.461111386617,
				[1] = 9.7347962061564,
			},
		},
		[19] = {
			doodadType = "coast_test",
			pos = {
				[2] = 4.4363339742025,
				[1] = 8.768492380778,
			},
		},
		[20] = {
			doodadType = "coast_small",
			pos = {
				[2] = 4.4673051834106,
				[1] = 7.7340523401896,
			},
		},
		[21] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 4.7522411346436,
				[1] = 7.4738941192627,
			},
		},
		[22] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 7.7044868469238,
				[1] = 6.575013478597,
			},
		},
		[23] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 7.1803881327311,
				[1] = 7.4491170247396,
			},
		},
		[24] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 7.7007052103678,
				[1] = 7.4491170247396,
			},
		},
		[25] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 8.5245407422384,
				[1] = 8.149067401886,
			},
		},
		[26] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 8.759922504425,
				[1] = 8.4092262585958,
			},
		},
		[27] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 8.927166779836,
				[1] = 8.427808602651,
			},
		},
		[28] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 14.630882263184,
				[1] = 9.9885482788086,
			},
		},
		[29] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 14.29883257548,
				[1] = 10.548920313517,
			},
		},
		[30] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 14.119199752808,
				[1] = 10.542726516724,
			},
		},
		[31] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 10.578184127808,
				[1] = 10.09934425354,
			},
		},
		[32] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 10.578184127808,
				[1] = 11.065647761027,
			},
		},
		[33] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 10.807370503743,
				[1] = 11.369166056315,
			},
		},
		[34] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 11.748896916707,
				[1] = 11.393943150838,
			},
		},
		[35] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 12.554150899251,
				[1] = 11.431109110514,
			},
		},
		[36] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 12.901028951009,
				[1] = 11.431109110514,
			},
		},
		[37] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[2] = 13.588626861572,
				[1] = 12.21781539917,
			},
		},
		[38] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 13.557655970256,
				[1] = 13.623910903931,
			},
		},
		[39] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[2] = 13.557656606038,
				[1] = 13.648687998454,
			},
		},
		[40] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 13.759328842163,
				[1] = 14.445009231567,
			},
		},
		[41] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 13.920379002889,
				[1] = 14.407842636108,
			},
		},
		[42] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 14.570775349935,
				[1] = 15.107793172201,
			},
		},
		[43] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 14.552193959554,
				[1] = 15.262650807699,
			},
		},
		[44] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 14.78138033549,
				[1] = 15.467060724894,
			},
		},
		[45] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 15.518496195475,
				[1] = 16.154622395833,
			},
		},
		[46] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 15.747683842977,
				[1] = 16.433364232381,
			},
		},
		[47] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 17.153779347738,
				[1] = 16.402393341064,
			},
		},
		[48] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 18.095305760701,
				[1] = 16.427170435588,
			},
		},
		[49] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 18.745702425639,
				[1] = 16.433364550273,
			},
		},
		[50] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 19.542857487996,
				[1] = 17.156188329061,
			},
		},
		[51] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[2] = 19.530468622843,
				[1] = 18.110102971395,
			},
		},
		[52] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 19.511885325114,
				[1] = 19.280816396077,
			},
		},
		[53] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 19.233144124349,
				[1] = 19.522392272949,
			},
		},
		[54] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 17.746524175008,
				[1] = 19.571947097778,
			},
		},
		[55] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 16.637752532959,
				[1] = 19.553363800049,
			},
		},
		[56] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 15.677644729614,
				[1] = 19.559558232625,
			},
		},
		[57] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 14.302519480387,
				[1] = 19.571946461995,
			},
		},
		[58] = {
			doodadType = "coast_small",
			pos = {
				[2] = 13.472490310669,
				[1] = 18.86580212911,
			},
		},
		[59] = {
			doodadType = "coast_small",
			pos = {
				[2] = 13.491072972616,
				[1] = 18.785276412964,
			},
		},
		[60] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 13.237108866374,
				[1] = 18.556088765462,
			},
		},
		[61] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 12.574323654175,
				[1] = 19.28081703186,
			},
		},
		[62] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 12.326553344727,
				[1] = 19.503809611003,
			},
		},
		[63] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 10.833738327026,
				[1] = 19.547169367472,
			},
		},
		[64] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 9.8550465901693,
				[1] = 19.510004679362,
			},
		},
		[65] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 9.2170384724935,
				[1] = 19.51619720459,
			},
		},
		[66] = {
			doodadType = "coast_small",
			pos = {
				[2] = 8.4813264211019,
				[1] = 18.811810175578,
			},
		},
		[67] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 7.6698786417643,
				[1] = 18.570233662923,
			},
		},
		[68] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 6.1708710988363,
				[1] = 18.582623163859,
			},
		},
		[69] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 5.1364301045736,
				[1] = 18.56403986613,
			},
		},
		[70] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 12.14942741394,
				[1] = 9.5640354156494,
			},
		},
		[71] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 14.575134913127,
				[1] = 10.329233169556,
			},
		},
		[72] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 9.5905011494954,
				[1] = 9.149720509847,
			},
		},
		[73] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 9.8134943644206,
				[1] = 9.3974901835124,
			},
		},
		[74] = {
			doodadType = "coast_small",
			pos = {
				[2] = 12.47528330485,
				[1] = 7.783395131429,
			},
		},
		[75] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 12.258484522502,
				[1] = 7.5170421600342,
			},
		},
		[76] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 11.255015691121,
				[1] = 7.5294310251872,
			},
		},
		[77] = {
			doodadType = "coast_small",
			pos = {
				[2] = 10.486928939819,
				[1] = 6.8108971913656,
			},
		},
		[78] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 12.630139668783,
				[1] = 7.1453870137533,
			},
		},
		[79] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 11.942577362061,
				[1] = 6.3834940592448,
			},
		},
		[80] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 12.890298207601,
				[1] = 7.4055455525716,
			},
		},
		[81] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 13.627414067586,
				[1] = 8.142661412557,
			},
		},
		[82] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 15.621962865194,
				[1] = 7.188746770223,
			},
		},
		[83] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 14.841487248739,
				[1] = 6.3834934234619,
			},
		},
		[84] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 10.790446599325,
				[1] = 6.4949906667074,
			},
		},
		[85] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 13.862795511882,
				[1] = 8.4275970458984,
			},
		},
		[86] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 14.618495305379,
				[1] = 9.1337426503499,
			},
		},
		[87] = {
			doodadType = "coast_small",
			pos = {
				[2] = 13.429197947184,
				[1] = 9.8274981180827,
			},
		},
		[88] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 12.679693857829,
				[1] = 9.5735333760579,
			},
		},
		[89] = {
			doodadType = "coast_small",
			pos = {
				[2] = 11.47181447347,
				[1] = 8.8611946105957,
			},
		},
		[90] = {
			doodadType = "coast_small",
			pos = {
				[2] = 11.484203338623,
				[1] = 8.72492090861,
			},
		},
		[91] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 11.806304295858,
				[1] = 8.4275976816813,
			},
		},
		[92] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 2.7460943857829,
				[1] = 2.4097131093343,
			},
		},
		[93] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 1.8169566790263,
				[1] = 2.3973247210185,
			},
		},
		[94] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 6.2582349777222,
				[1] = 1.3628848393758,
			},
		},
		[95] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 5.3414856592814,
				[1] = 1.3628848393758,
			},
		},
		[96] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 4.3627936045329,
				[1] = 1.4000504811605,
			},
		},
		[97] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 6.8528833389282,
				[1] = 1.3876619338989,
			},
		},
		[98] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 10.773844401042,
				[1] = 1.393856048584,
			},
		},
		[99] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 10.979890505473,
				[1] = 1.3751230239868,
			},
		},
		[100] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 11.896479288737,
				[1] = 1.4187266031901,
			},
		},
		[101] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 12.893753687541,
				[1] = 1.4249210357666,
			},
		},
		[102] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 13.773337682088,
				[1] = 1.4373099009196,
			},
		},
		[103] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 14.56000773112,
				[1] = 2.1744257609049,
			},
		},
		[104] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 14.572395324707,
				[1] = 3.0787862141927,
			},
		},
		[105] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[2] = 14.553813298543,
				[1] = 3.7044061024984,
			},
		},
		[106] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 14.250295003255,
				[1] = 4.5654067993164,
			},
		},
		[107] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 13.327351252238,
				[1] = 4.5344359079997,
			},
		},
		[108] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 12.615012486776,
				[1] = 5.1600551605225,
			},
		},
		[109] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 12.590235392253,
				[1] = 5.283940633138,
			},
		},
		[110] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 11.704457600911,
				[1] = 5.5874582926432,
			},
		},
		[111] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 10.533743540446,
				[1] = 5.5564867655436,
			},
		},
		[112] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 9.2453390757243,
				[1] = 5.5317096710205,
			},
		},
		[113] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 9.7037143707275,
				[1] = 5.5688762664795,
			},
		},
		[114] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 8.5577767690023,
				[1] = 6.1821066538493,
			},
		},
		[115] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 8.5515829722087,
				[1] = 6.2997976938883,
			},
		},
		[116] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 6.2054773966471,
				[1] = 7.4298197428385,
			},
		},
		[117] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 6.7691555023193,
				[1] = 6.5316537221273,
			},
		},
		[118] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 5.4621677398682,
				[1] = 6.5378475189209,
			},
		},
		[119] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 5.1710376739502,
				[1] = 6.494488398234,
			},
		},
		[120] = {
			doodadType = "coast_test",
			pos = {
				[2] = 4.4427471160889,
				[1] = 5.6703141530355,
			},
		},
		[121] = {
			doodadType = "coast_small",
			pos = {
				[2] = 4.4737180074056,
				[1] = 4.734982808431,
			},
		},
		[122] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 4.2197539011637,
				[1] = 4.5305716196696,
			},
		},
		[123] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 3.2534503936768,
				[1] = 4.5553493499756,
			},
		},
		[124] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 2.1942329406738,
				[1] = 3.5456860860189,
			},
		},
		[125] = {
			doodadType = "coast_small",
			pos = {
				[2] = 1.5224256515503,
				[1] = 2.7252162297567,
			},
		},
		[126] = {
			doodadType = "coast_small",
			pos = {
				[2] = 1.4790658950806,
				[1] = 2.8552954991659,
			},
		},
		[127] = {
			doodadType = "coast_small",
			pos = {
				[2] = 1.5162312189738,
				[1] = 2.6942453384399,
			},
		},
		[128] = {
			doodadType = "coast_small",
			pos = {
				[2] = 2.4329811731974,
				[1] = 3.8339872360229,
			},
		},
		[129] = {
			doodadType = "coast_small",
			pos = {
				[2] = 10.48958269755,
				[1] = 1.6796449025472,
			},
		},
		[130] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 9.5914160410563,
				[1] = 2.4663155873617,
			},
		},
		[131] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 8.3525657653809,
				[1] = 2.4910926818848,
			},
		},
		[132] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 7.5597012837728,
				[1] = 2.2680994669596,
			},
		},
		[133] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 7.5720898310343,
				[1] = 2.0574947992961,
			},
		},
		[134] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 14.563087463379,
				[1] = 6.2234369913737,
			},
		},
		[135] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 13.881720225016,
				[1] = 5.5172920227051,
			},
		},
		[136] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 13.720669428507,
				[1] = 5.504903793335,
			},
		},
		[137] = {
			doodadType = "coast_small",
			pos = {
				[2] = 13.448122660319,
				[1] = 5.7774505615234,
			},
		},
		[138] = {
			doodadType = "coast_small",
			pos = {
				[2] = 13.441928227743,
				[1] = 5.8455880482992,
			},
		},
		[139] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 14.191432952881,
				[1] = 6.5207608540853,
			},
		},
		[140] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 15.33736928304,
				[1] = 7.4932581583659,
			},
		},
		[141] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 15.170124053955,
				[1] = 7.4994519551595,
			},
		},
		[142] = {
			doodadType = "coast_small",
			pos = {
				[2] = 14.470174153646,
				[1] = 6.7995020548503,
			},
		},
		[143] = {
			doodadType = "coast_small",
			pos = {
				[2] = 16.469196955363,
				[1] = 12.765732447306,
			},
		},
		[144] = {
			doodadType = "coast_test",
			pos = {
				[2] = 16.43203163147,
				[1] = 13.769201278687,
			},
		},
		[145] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 17.200118382772,
				[1] = 14.537288029989,
			},
		},
		[146] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 18.061120351156,
				[1] = 14.580649058024,
			},
		},
		[147] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 19.238028208415,
				[1] = 14.518706003825,
			},
		},
		[148] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[2] = 19.584904988607,
				[1] = 13.676287333171,
			},
		},
		[149] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 19.5910987854,
				[1] = 12.716177622477,
			},
		},
		[150] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 19.591100692749,
				[1] = 11.774652481079,
			},
		},
		[151] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 19.609681765238,
				[1] = 10.926039059957,
			},
		},
		[152] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 19.591099421183,
				[1] = 10.040260950724,
			},
		},
		[153] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 19.646848042806,
				[1] = 9.1792602539063,
			},
		},
		[154] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 19.615876515706,
				[1] = 8.3554242451986,
			},
		},
		[155] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 19.572516759237,
				[1] = 8.2872880299886,
			},
		},
		[156] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 19.57251739502,
				[1] = 7.5439783732096,
			},
		},
		[157] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 19.547740936279,
				[1] = 7.1475461324056,
			},
		},
		[158] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 18.823012034098,
				[1] = 6.4475949605306,
			},
		},
		[159] = {
			doodadType = "coast_test_up",
			pos = {
				[2] = 17.844320933024,
				[1] = 6.4352073669434,
			},
		},
		[160] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 16.72935517629,
				[1] = 6.4599835077922,
			},
		},
		[161] = {
			doodadType = "coast_small",
			pos = {
				[2] = 16.45672194163,
				[1] = 6.7202291488647,
			},
		},
		[162] = {
			doodadType = "coast_test",
			pos = {
				[2] = 16.419556935628,
				[1] = 8.1696840922038,
			},
		},
		[163] = {
			doodadType = "coast_small",
			pos = {
				[2] = 16.438138961792,
				[1] = 8.683806737264,
			},
		},
		[164] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 15.793937365214,
				[1] = 9.3527860641479,
			},
		},
		[165] = {
			doodadType = "coast_small",
			pos = {
				[2] = 15.509001413981,
				[1] = 9.6377220153809,
			},
		},
		[166] = {
			doodadType = "coast_test",
			pos = {
				[2] = 15.465641021729,
				[1] = 11.080982208252,
			},
		},
		[167] = {
			doodadType = "coast_small",
			pos = {
				[2] = 15.490419387817,
				[1] = 11.824293136597,
			},
		},
		[168] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 16.18417485555,
				[1] = 12.54282506307,
			},
		},
		[169] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 16.162303924561,
				[1] = 5.5305773417155,
			},
		},
		[170] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 16.999817530314,
				[1] = 5.5478712717692,
			},
		},
		[171] = {
			doodadType = "coast_test_flip",
			pos = {
				[2] = 18.492633183797,
				[1] = 5.5292886098226,
			},
		},
		[172] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 19.285497029622,
				[1] = 5.5045115152995,
			},
		},
		[173] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[2] = 19.5828221639,
				[1] = 4.6373163859049,
			},
		},
		[174] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 19.545655568441,
				[1] = 3.7329546610514,
			},
		},
		[175] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 19.545654932658,
				[1] = 3.1878604888916,
			},
		},
		[176] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 18.76517868042,
				[1] = 2.3826077779134,
			},
		},
		[177] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 18.591740290324,
				[1] = 2.1596151987712,
			},
		},
		[178] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 17.879401524862,
				[1] = 1.3977222442627,
			},
		},
		[179] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 16.944069544474,
				[1] = 1.3791395823161,
			},
		},
		[180] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 16.126428604126,
				[1] = 1.3791395823161,
			},
		},
		[181] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 15.754772822062,
				[1] = 1.3791395823161,
			},
		},
		[182] = {
			doodadType = "coast_small",
			pos = {
				[2] = 15.482226053874,
				[1] = 1.6516863505046,
			},
		},
		[183] = {
			doodadType = "coast_test",
			pos = {
				[2] = 15.457448959351,
				[1] = 3.0391991933187,
			},
		},
		[184] = {
			doodadType = "coast_small",
			pos = {
				[2] = 15.457448959351,
				[1] = 4.0550556182861,
			},
		},
		[185] = {
			doodadType = "coast_small",
			pos = {
				[2] = 15.482226053874,
				[1] = 4.8479207356771,
			},
		},
		[186] = {
			doodadType = "coast_small",
			pos = {
				[1] = 1.6880232493083,
				[2] = 3.511573155721,
			},
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
