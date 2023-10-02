local data = {
	humanName = "test",
	width = 20,
	height = 20,
	cameraPos = {
		[2] = 9.5,
		[1] = 11.5,
	},
	customVictoryText = "You've explored the entire island!\n\nIt's kind of small.",
	tileDeck = {
		[1] = {
			barracks = 1,
		},
		[2] = {
			town = 1,
			farm = 1,
		},
	},
	hints = {
		{
			text = "- Left Click to select, put back, and place tiles.\n- Right Click (or Space) to rotate held tiles.\n\nPush back the darkness!\n- Workers activate buildings, and need food and shelter\n- Outposts recruit scouts. Make sure you have enough workers.",
			pos = {15.7, 7.4},
			size = {2.85, 1.45},
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
			def = "fishery",
			pos = {
				[1] = 9,
				[2] = 7,
			},
		},
		[4] = {
			def = "woodcutter",
			pos = {
				[1] = 10,
				[2] = 9,
			},
		},
		[5] = {
			def = "town",
			pos = {
				[1] = 10,
				[2] = 8,
			},
		},
		[6] = {
			def = "woodcutter",
			pos = {
				[1] = 11,
				[2] = 9,
			},
		},
		[7] = {
			def = "sawmill",
			pos = {
				[1] = 11,
				[2] = 8,
			},
		},
		[8] = {
			def = "invasion",
			extraData = {
				armySize = 1,
				invasionIndex = 1,
			},
			pos = {
				[1] = 12,
				[2] = 12,
			},
		},
		[9] = {
			def = "farm",
			pos = {
				[1] = 13,
				[2] = 7,
			},
		},
		[10] = {
			def = "town",
			pos = {
				[1] = 13,
				[2] = 6,
			},
		},
		[11] = {
			def = "fishery",
			pos = {
				[1] = 13,
				[2] = 5,
			},
		},
		[12] = {
			def = "town",
			pos = {
				[1] = 14,
				[2] = 6,
			},
		},
		[13] = {
			def = "fishery",
			pos = {
				[1] = 14,
				[2] = 5,
			},
		},
		[14] = {
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
		[1] = {
			doodadType = "coast_small",
			pos = {
				[1] = 8.747917175293,
				[2] = 4.5055974324544,
			},
		},
		[2] = {
			doodadType = "coast_test",
			pos = {
				[1] = 10.321257909139,
				[2] = 5.5090668996175,
			},
		},
		[3] = {
			doodadType = "coast_small",
			pos = {
				[1] = 10.76104927063,
				[2] = 5.5276495615641,
			},
		},
		[4] = {
			doodadType = "coast_test",
			pos = {
				[1] = 12.291029612223,
				[2] = 4.5055974324544,
			},
		},
		[5] = {
			doodadType = "coast_test",
			pos = {
				[1] = 13.678541819255,
				[2] = 4.4808209737142,
			},
		},
		[6] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 13.829991340637,
				[1] = 9.4494937260946,
			},
		},
		[7] = {
			doodadType = "coast_small",
			pos = {
				[1] = 16.772242863973,
				[2] = 8.4912713368734,
			},
		},
		[8] = {
			doodadType = "coast_small",
			pos = {
				[1] = 13.737060546875,
				[2] = 9.4947408040365,
			},
		},
		[9] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 9.6240946451823,
				[1] = 17.210891723633,
			},
		},
		[10] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 7.8029842376709,
				[1] = 7.3620306650798,
			},
		},
		[11] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 9.4692204793294,
				[2] = 5.2269007364909,
			},
		},
		[12] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 14.505147298177,
				[2] = 5.2083180745443,
			},
		},
		[13] = {
			doodadType = "coast_small",
			pos = {
				[2] = 5.4739449818929,
				[1] = 14.745579401652,
			},
		},
		[14] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 15.377601623535,
				[2] = 12.547571818034,
			},
		},
		[15] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 9.2586339314779,
				[1] = 13.525311787923,
			},
		},
		[16] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 12.820327440898,
				[1] = 8.3654991785685,
			},
		},
		[17] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 11.290348052979,
				[1] = 15.58180363973,
			},
		},
		[18] = {
			doodadType = "coast_small",
			pos = {
				[1] = 8.7187805175781,
				[2] = 6.508176167806,
			},
		},
		[19] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 13.501678148905,
				[2] = 14.214760144552,
			},
		},
		[20] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 12.653064727783,
				[2] = 14.530666351318,
			},
		},
		[21] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 11.054948806763,
				[2] = 14.543055852254,
			},
		},
		[22] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 10.20014222463,
				[2] = 14.530667304993,
			},
		},
		[23] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 8.8064530690511,
				[1] = 14.435866673787,
			},
		},
		[24] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 9.1409247716268,
				[2] = 13.521004041036,
			},
		},
		[25] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 11.86021900177,
				[1] = 7.3558365503947,
			},
		},
		[26] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 11.036383628845,
				[1] = 7.3991963068644,
			},
		},
		[27] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 10.138217290243,
				[1] = 7.3930021921794,
			},
		},
		[28] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 9.2400509516398,
				[1] = 7.3868080774943,
			},
		},
		[29] = {
			doodadType = "coast_behind",
			pos = {
				[2] = 8.3480780919393,
				[1] = 7.3868080774943,
			},
		},
		[30] = {
			doodadType = "coast_small",
			pos = {
				[2] = 7.5428256988525,
				[1] = 7.6717433929443,
			},
		},
		[31] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 6.7809321085612,
				[1] = 8.4460245768229,
			},
		},
		[32] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 12.59114074707,
				[1] = 8.0619812011719,
			},
		},
		[33] = {
			doodadType = "coast_behind_flip",
			pos = {
				[2] = 10.578009287516,
				[1] = 16.256977081299,
			},
		},
		[34] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 11.624837239583,
				[1] = 15.569414774577,
			},
		},
		[35] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 12.275234222412,
				[1] = 15.600386301676,
			},
		},
		[36] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 9.183349609375,
				[2] = 5.5356788635254,
			},
		},
		[37] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 13.526473363241,
				[1] = 14.274816513062,
			},
		},
		[38] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 6.1800905863444,
				[1] = 15.501277923584,
			},
		},
		[39] = {
			doodadType = "coast_small",
			pos = {
				[2] = 6.4154720306396,
				[1] = 15.786213556925,
			},
		},
		[40] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 7.1278107961019,
				[1] = 16.498552322388,
			},
		},
		[41] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 8.1870282491048,
				[1] = 16.566689809163,
			},
		},
		[42] = {
			doodadType = "coast_small_up",
			pos = {
				[2] = 4.7801888783773,
				[1] = 11.475014368693,
			},
		},
		[43] = {
			doodadType = "coast_small_flip",
			pos = {
				[2] = 10.342627843221,
				[1] = 16.566689173381,
			},
		},
		[44] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[2] = 8.583459854126,
				[1] = 14.237651189168,
			},
		},
		[45] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 8.4895941416423,
				[2] = 4.8171456654867,
			},
		},
		[46] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 9.4620914459229,
				[2] = 5.7896429697673,
			},
		},
		[47] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 9.183349609375,
				[2] = 5.5356788635254,
			},
		},
		[48] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 14.55376625061,
				[2] = 13.259911219279,
			},
		},
		[49] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 15.241329193115,
				[2] = 12.559960683187,
			},
		},
		[50] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 17.496036529541,
				[2] = 9.3389498392741,
			},
		},
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
