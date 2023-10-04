local data = {
	humanName = "test",
	width = 20,
	height = 20,
	cameraPos = {
		11.5,
		9.5,
	},
	customVictoryText = "You've explored the entire island!\n\nIt's kind of small.",
	tileDeck = {
		{
			barracks = 1,
		},
		{
			farm = 1,
			town = 1,
		},
	},
	hints = {
		{
			pos = {
				15.7,
				7.4,
			},
			size = {
				2.85,
				1.45,
			},
			text = "- Left Click to select, put back, and place tiles.\n- Right Click (or Space) to rotate held tiles.\n\nPush back the darkness!\n- Workers activate buildings, and need food and shelter\n- Outposts recruit scouts. Make sure you have enough workers.",
		},
	},
	tiles = {
		{
			def = "town",
			pos = {
				9,
				9,
			},
		},
		{
			def = "fishery",
			pos = {
				9,
				8,
			},
		},
		{
			def = "fishery",
			pos = {
				9,
				7,
			},
		},
		{
			def = "woodcutter",
			pos = {
				10,
				9,
			},
		},
		{
			def = "town",
			pos = {
				10,
				8,
			},
		},
		{
			def = "woodcutter",
			pos = {
				11,
				9,
			},
		},
		{
			def = "sawmill",
			pos = {
				11,
				8,
			},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 1,
				invasionIndex = 1,
			},
			pos = {
				12,
				12,
			},
		},
		{
			def = "farm",
			pos = {
				13,
				7,
			},
		},
		{
			def = "town",
			pos = {
				13,
				6,
			},
		},
		{
			def = "fishery",
			pos = {
				13,
				5,
			},
		},
		{
			def = "town",
			pos = {
				14,
				6,
			},
		},
		{
			def = "fishery",
			pos = {
				14,
				5,
			},
		},
		{
			def = "fishery",
			pos = {
				15,
				6,
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
		{
			doodadType = "coast_small",
			pos = {
				8.747917175293,
				4.5055974324544,
			},
		},
		{
			doodadType = "coast_test",
			pos = {
				10.321257909139,
				5.5090668996175,
			},
		},
		{
			doodadType = "coast_small",
			pos = {
				10.76104927063,
				5.5276495615641,
			},
		},
		{
			doodadType = "coast_test",
			pos = {
				12.291029612223,
				4.5055974324544,
			},
		},
		{
			doodadType = "coast_test",
			pos = {
				13.678541819255,
				4.4808209737142,
			},
		},
		{
			doodadType = "coast_small_up",
			pos = {
				9.4494937260946,
				13.829991340637,
			},
		},
		{
			doodadType = "coast_small",
			pos = {
				16.772242863973,
				8.4912713368734,
			},
		},
		{
			doodadType = "coast_small",
			pos = {
				13.737060546875,
				9.4947408040365,
			},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {
				17.210891723633,
				9.6240946451823,
			},
		},
		{
			doodadType = "coast_behind",
			pos = {
				7.3620306650798,
				7.8029842376709,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				9.4692204793294,
				5.2269007364909,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				14.505147298177,
				5.2083180745443,
			},
		},
		{
			doodadType = "coast_small",
			pos = {
				14.745579401652,
				5.4739449818929,
			},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {
				15.377601623535,
				12.547571818034,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				13.525311787923,
				9.2586339314779,
			},
		},
		{
			doodadType = "coast_behind",
			pos = {
				8.3654991785685,
				12.820327440898,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				15.58180363973,
				11.290348052979,
			},
		},
		{
			doodadType = "coast_small",
			pos = {
				8.7187805175781,
				6.508176167806,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				13.501678148905,
				14.214760144552,
			},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {
				12.653064727783,
				14.530666351318,
			},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {
				11.054948806763,
				14.543055852254,
			},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {
				10.20014222463,
				14.530667304993,
			},
		},
		{
			doodadType = "coast_small_up",
			pos = {
				14.435866673787,
				8.8064530690511,
			},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {
				9.1409247716268,
				13.521004041036,
			},
		},
		{
			doodadType = "coast_behind",
			pos = {
				7.3558365503947,
				11.86021900177,
			},
		},
		{
			doodadType = "coast_behind",
			pos = {
				7.3991963068644,
				11.036383628845,
			},
		},
		{
			doodadType = "coast_behind",
			pos = {
				7.3930021921794,
				10.138217290243,
			},
		},
		{
			doodadType = "coast_behind",
			pos = {
				7.3868080774943,
				9.2400509516398,
			},
		},
		{
			doodadType = "coast_behind",
			pos = {
				7.3868080774943,
				8.3480780919393,
			},
		},
		{
			doodadType = "coast_small",
			pos = {
				7.6717433929443,
				7.5428256988525,
			},
		},
		{
			doodadType = "coast_small_up",
			pos = {
				8.4460245768229,
				6.7809321085612,
			},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {
				8.0619812011719,
				12.59114074707,
			},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {
				16.256977081299,
				10.578009287516,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				15.569414774577,
				11.624837239583,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				15.600386301676,
				12.275234222412,
			},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {
				9.183349609375,
				5.5356788635254,
			},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {
				14.274816513062,
				13.526473363241,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				15.501277923584,
				6.1800905863444,
			},
		},
		{
			doodadType = "coast_small",
			pos = {
				15.786213556925,
				6.4154720306396,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				16.498552322388,
				7.1278107961019,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				16.566689809163,
				8.1870282491048,
			},
		},
		{
			doodadType = "coast_small_up",
			pos = {
				11.475014368693,
				4.7801888783773,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				16.566689173381,
				10.342627843221,
			},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {
				14.237651189168,
				8.583459854126,
			},
		},
		{
			doodadType = "coast_small_up",
			pos = {
				8.4895941416423,
				4.8171456654867,
			},
		},
		{
			doodadType = "coast_small_up",
			pos = {
				9.4620914459229,
				5.7896429697673,
			},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {
				9.183349609375,
				5.5356788635254,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				14.55376625061,
				13.259911219279,
			},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {
				15.241329193115,
				12.559960683187,
			},
		},
		{
			doodadType = "coast_small_flip",
			pos = {
				17.496036529541,
				9.3389498392741,
			},
		},
	},
	invasionMask = {
		[2] = {
			[15] = 1,
			[16] = 1,
		},
		[3] = {
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
		},
		[4] = {
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[18] = 1,
			[19] = 1,
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
