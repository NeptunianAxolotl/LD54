local data = {
	humanName = "test",
	width = 10,
	height = 18,
	cameraPos = {
		[2] = 5,
		[1] = 5,
	},
	customVictoryText = "You've explored the entire island!  We're calling this one 'Long Island' because it sounded better than Squat Rectangle Island.",
	tileDeck = {
		[1] = {
			farm = 3,
			woodcutter = 2,
			fishery = 3,
			sawmill = 2,
			barracks = 2,
			town = 5,
		},
		[2] = {
			farm = 3,
			woodcutter = 2,
			fishery = 3,
			sawmill = 2,
			barracks = 2,
			town = 5,
		},
	},
	tiles = {
		[1] = {
			extraData = {
				invasionIndex = 2,
				armySize = 6,
			},
			pos = {
				[1] = 5,
				[2] = 13,
			},
			def = "invasion",
		},
		[2] = {
			extraData = {
				invasionIndex = 1,
				armySize = 3,
			},
			pos = {
				[1] = 5,
				[2] = 9,
			},
			def = "invasion",
		},
		[3] = {
			pos = {
				[1] = 6,
				[2] = 4,
			},
			def = "town",
		},
		[4] = {
			pos = {
				[1] = 6,
				[2] = 3,
			},
			def = "fishery",
		},
		[5] = {
			pos = {
				[1] = 7,
				[2] = 4,
			},
			def = "town",
		},
		[6] = {
			pos = {
				[1] = 7,
				[2] = 3,
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
		},
		[2] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "mountain",
			[7] = "water",
			[8] = "water",
			[9] = "desert",
			[10] = "desert",
			[11] = "water",
			[12] = "forest",
			[13] = "forest",
			[14] = "forest",
			[15] = "mountain",
			[16] = "water",
			[17] = "water",
		},
		[3] = {
			[2] = "water",
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
			[13] = "grass",
			[14] = "forest",
			[15] = "mountain",
			[16] = "mountain",
			[17] = "water",
			[18] = "water",
		},
		[4] = {
			[2] = "water",
			[3] = "desert",
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
			[16] = "mountain",
			[17] = "mountain",
			[18] = "water",
		},
		[5] = {
			[2] = "water",
			[3] = "desert",
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
			[16] = "desert",
			[17] = "mountain",
			[18] = "water",
		},
		[6] = {
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "desert",
			[8] = "desert",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "mountain",
			[13] = "grass",
			[14] = "grass",
			[15] = "desert",
			[16] = "water",
			[17] = "mountain",
			[18] = "water",
		},
		[7] = {
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "forest",
			[7] = "desert",
			[8] = "water",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "mountain",
			[13] = "grass",
			[14] = "desert",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
		},
		[8] = {
			[2] = "water",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "forest",
			[7] = "water",
			[8] = "water",
			[9] = "forest",
			[10] = "mountain",
			[11] = "forest",
			[12] = "mountain",
			[13] = "mountain",
			[14] = "desert",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
		},
		[9] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "forest",
			[7] = "water",
			[8] = "water",
			[9] = "forest",
			[10] = "forest",
			[11] = "water",
			[12] = "water",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "water",
			[16] = "water",
		},
		[10] = {
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
		},
	},
	doodads = {
		[1] = {
			pos = {
				[2] = 9.2840232849121,
				[1] = 9.5428568522135,
			},
			doodadType = "coast_test_flip",
		},
		[2] = {
			pos = {
				[2] = 10.615788141886,
				[1] = 9.2888927459717,
			},
			doodadType = "coast_behind_flip",
		},
		[3] = {
			pos = {
				[2] = 14.047403335571,
				[1] = 1.3974157969157,
			},
			doodadType = "coast_behind",
		},
		[4] = {
			pos = {
				[2] = 13.105876922607,
				[1] = 1.3974164326986,
			},
			doodadType = "coast_behind",
		},
		[5] = {
			pos = {
				[2] = 12.201515833537,
				[1] = 1.3850269317627,
			},
			doodadType = "coast_behind",
		},
		[6] = {
			pos = {
				[2] = 11.798889795939,
				[1] = 1.3788331349691,
			},
			doodadType = "coast_behind",
		},
		[7] = {
			pos = {
				[2] = 3.7724850972493,
				[1] = 1.380179087321,
			},
			doodadType = "coast_behind",
		},
		[8] = {
			pos = {
				[2] = 4.583932240804,
				[1] = 1.3987617492676,
			},
			doodadType = "coast_behind",
		},
		[9] = {
			pos = {
				[2] = 5.3891849517822,
				[1] = 1.4111499786377,
			},
			doodadType = "coast_behind",
		},
		[10] = {
			pos = {
				[2] = 2.7628221511841,
				[1] = 2.3774538040161,
			},
			doodadType = "coast_behind",
		},
		[11] = {
			pos = {
				[1] = 8.2598876953125,
				[2] = 6.5378850301107,
			},
			doodadType = "coast_small_flip_up",
		},
		[12] = {
			pos = {
				[2] = 11.512269020081,
				[1] = 1.6480614344279,
			},
			doodadType = "coast_small",
		},
		[13] = {
			pos = {
				[2] = 8.4461142222087,
				[1] = 1.7285861968994,
			},
			doodadType = "coast_small",
		},
		[14] = {
			pos = {
				[2] = 5.7686189015706,
				[1] = 9.5515168507894,
			},
			doodadType = "coast_test_flip",
		},
		[15] = {
			pos = {
				[2] = 4.7651513417562,
				[1] = 9.5391279856364,
			},
			doodadType = "coast_small_flip",
		},
		[16] = {
			pos = {
				[2] = 4.1581141153971,
				[1] = 9.5515162150065,
			},
			doodadType = "coast_small_flip",
		},
		[17] = {
			pos = {
				[2] = 3.4519691467285,
				[1] = 8.8701489766439,
			},
			doodadType = "coast_small",
		},
		[18] = {
			pos = {
				[2] = 3.4271926879883,
				[1] = 8.7958170572917,
			},
			doodadType = "coast_small",
		},
		[19] = {
			pos = {
				[2] = 3.1422564188639,
				[1] = 8.5852139790853,
			},
			doodadType = "coast_small_flip",
		},
		[20] = {
			pos = {
				[2] = 2.4608891805013,
				[1] = 7.8542912801107,
			},
			doodadType = "coast_small",
		},
		[21] = {
			pos = {
				[2] = 2.4485006332397,
				[1] = 6.8012685775757,
			},
			doodadType = "coast_test",
		},
		[22] = {
			pos = {
				[2] = 2.4423062006632,
				[1] = 5.4075619379679,
			},
			doodadType = "coast_small",
		},
		[23] = {
			pos = {
				[2] = 2.4051405588786,
				[1] = 4.4536469777425,
			},
			doodadType = "coast_test",
		},
		[24] = {
			pos = {
				[2] = 2.4423058827718,
				[1] = 3.028969446818,
			},
			doodadType = "coast_small",
		},
		[25] = {
			pos = {
				[2] = 2.4794715245565,
				[1] = 2.6697028477987,
			},
			doodadType = "coast_small",
		},
		[26] = {
			pos = {
				[2] = 8.4152030944824,
				[1] = 6.825065612793,
			},
			doodadType = "coast_small",
		},
		[27] = {
			pos = {
				[2] = 8.2107925415039,
				[1] = 6.5711008707682,
			},
			doodadType = "coast_small_flip",
		},
		[28] = {
			pos = {
				[2] = 8.4213371276855,
				[1] = 1.6790326436361,
			},
			doodadType = "coast_small",
		},
		[29] = {
			pos = {
				[2] = 7.5418128967285,
				[1] = 7.3144111633301,
			},
			doodadType = "coast_small_flip_up",
		},
		[30] = {
			pos = {
				[2] = 10.521248181661,
				[1] = 2.2165422439575,
			},
			doodadType = "coast_small_flip_up",
		},
		[31] = {
			pos = {
				[2] = 7.3683738708496,
				[1] = 2.4333407084147,
			},
			doodadType = "coast_test_up",
		},
		[32] = {
			pos = {
				[2] = 7.7957779566447,
				[1] = 2.4395354588826,
			},
			doodadType = "coast_small_up",
		},
		[33] = {
			pos = {
				[2] = 10.762823740641,
				[1] = 2.4333407084147,
			},
			doodadType = "coast_small_up",
		},
		[34] = {
			pos = {
				[2] = 6.5569273630778,
				[1] = 2.1917654673258,
			},
			doodadType = "coast_small_flip_up",
		},
		[35] = {
			pos = {
				[2] = 5.8693650563558,
				[1] = 1.4794267018636,
			},
			doodadType = "coast_small_up",
		},
		[36] = {
			pos = {
				[2] = 3.483268737793,
				[1] = 1.6701380411784,
			},
			doodadType = "coast_small",
		},
		[37] = {
			pos = {
				[2] = 8.4259878794352,
				[1] = 8.8675657908122,
			},
			doodadType = "coast_small",
		},
		[38] = {
			pos = {
				[2] = 8.4321823120117,
				[1] = 8.0808957417806,
			},
			doodadType = "coast_small",
		},
		[39] = {
			pos = {
				[2] = 8.401211420695,
				[1] = 7.7030467987061,
			},
			doodadType = "coast_small",
		},
		[40] = {
			pos = {
				[2] = 10.344669977824,
				[1] = 9.5473969777425,
			},
			doodadType = "coast_small_flip",
		},
		[41] = {
			pos = {
				[2] = 11.280000686646,
				[1] = 8.5748984018962,
			},
			doodadType = "coast_small_flip",
		},
		[42] = {
			pos = {
				[2] = 12.215333302816,
				[1] = 8.5687039693197,
			},
			doodadType = "coast_small_flip",
		},
		[43] = {
			pos = {
				[2] = 13.311715443929,
				[1] = 9.51642481486,
			},
			doodadType = "coast_test_flip",
		},
		[44] = {
			pos = {
				[2] = 14.265631357829,
				[1] = 9.5040372212728,
			},
			doodadType = "coast_small_flip",
		},
		[45] = {
			pos = {
				[2] = 12.506463368734,
				[1] = 8.8102811177572,
			},
			doodadType = "coast_small",
		},
		[46] = {
			pos = {
				[2] = 14.538177490234,
				[1] = 9.2562662760417,
			},
			doodadType = "coast_small_flip_up",
		},
		[47] = {
			pos = {
				[2] = 14.550566355387,
				[1] = 7.7077039082845,
			},
			doodadType = "coast_test_flip_up",
		},
		[48] = {
			pos = {
				[2] = 14.57534344991,
				[1] = 7.2369403839111,
			},
			doodadType = "coast_small_flip_up",
		},
		[49] = {
			pos = {
				[2] = 16.439812978109,
				[1] = 5.8308448791504,
			},
			doodadType = "coast_small",
		},
		[50] = {
			pos = {
				[2] = 17.164539972941,
				[1] = 6.5307954152425,
			},
			doodadType = "coast_small_flip",
		},
		[51] = {
			pos = {
				[2] = 16.223014831543,
				[1] = 5.6140467325846,
			},
			doodadType = "coast_small_flip",
		},
		[52] = {
			pos = {
				[2] = 15.287682533264,
				[1] = 6.4874359766642,
			},
			doodadType = "coast_small_flip",
		},
		[53] = {
			pos = {
				[2] = 15.554035504659,
				[1] = 6.2830260594686,
			},
			doodadType = "coast_small_flip_up",
		},
		[54] = {
			pos = {
				[2] = 17.505224227905,
				[1] = 6.326384862264,
			},
			doodadType = "coast_small_flip_up",
		},
		[55] = {
			pos = {
				[2] = 17.536195755005,
				[1] = 4.7964051564535,
			},
			doodadType = "coast_test_flip_up",
		},
		[56] = {
			pos = {
				[2] = 17.536195119222,
				[1] = 4.3256416320801,
			},
			doodadType = "coast_test_flip_up",
		},
		[57] = {
			pos = {
				[2] = 15.560156504313,
				[1] = 2.1758944193522,
			},
			doodadType = "coast_small_flip_up",
		},
		[58] = {
			pos = {
				[2] = 15.795537948608,
				[1] = 2.4112758636475,
			},
			doodadType = "coast_small_up",
		},
		[59] = {
			pos = {
				[2] = 16.792813618978,
				[1] = 3.4581044514974,
			},
			doodadType = "coast_small_up",
		},
		[60] = {
			pos = {
				[2] = 16.532654444377,
				[1] = 3.1979452768962,
			},
			doodadType = "coast_small_flip_up",
		},
		[61] = {
			pos = {
				[2] = 14.903565724691,
				[1] = 1.4449729919434,
			},
			doodadType = "coast_small_up",
		},
		[62] = {
			pos = {
				[2] = 8.7124671936035,
				[1] = 1.4250679016113,
			},
			doodadType = "coast_small_up",
		},
		[63] = {
			pos = {
				[2] = 10.514994939168,
				[1] = 2.06307665507,
			},
			doodadType = "coast_small_flip_up",
		},
		[64] = {
			pos = {
				[2] = 9.4557774861654,
				[1] = 1.4498456319173,
			},
			doodadType = "coast_small_up",
		},
		[65] = {
			pos = {
				[2] = 9.7716840108236,
				[1] = 1.4188741048177,
			},
			doodadType = "coast_small_up",
		},
		[66] = {
			pos = {
				[1] = 9.1952196756999,
				[2] = 6.5564676920573,
			},
			doodadType = "coast_small_flip_up",
		},
		[67] = {
			pos = {
				[1] = 7.5537427266439,
				[2] = 7.2440299987793,
			},
			doodadType = "coast_small_flip",
		},
	},
	invasionMask = {
		[0] = {
			[11] = 1,
			[13] = 1,
			[10] = 1,
		},
		[1] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[2] = {
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[3] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[4] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[5] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[6] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[7] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[8] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[9] = {
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
			[18] = 2,
		},
		[10] = {
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[11] = {
			[8] = 1,
		},
	},
}

return data
