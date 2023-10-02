local data = {
	humanName = "redemption",
	width = 22,
	height = 12,
	cameraPos = {
		[1] = 6,
		[2] = 6,
	},
	customVictoryText = "You've explored the entire island!  You really hope someone's been naming these as you went along.",
	tileDeck = {
		[2] = {
			woodcutter = 8,
			cathedral = 1,
			quarry = 10,
			farm = 6,
			sawmill = 8,
			fishery = 8,
			tavern = 5,
			mill = 6,
			barracks = 8,
			town = 30,
			mine = 8,
			fountain = 5,
			blacksmith = 8,
			tower = 8,
			chapel = 5,
		},
		[1] = {
			woodcutter = 1,
			quarry = 1,
			fishery = 3,
			mill = 1,
			barracks = 1,
			town = 6,
			mine = 1,
			tower = 1,
			farm = 2,
		},
	},
	tiles = {
		[1] = {
			def = "fishery",
			pos = {
				[1] = 2,
				[2] = 10,
			},
		},
		[2] = {
			def = "fishery",
			pos = {
				[1] = 2,
				[2] = 9,
			},
		},
		[3] = {
			def = "fishery",
			pos = {
				[1] = 2,
				[2] = 5,
			},
		},
		[4] = {
			def = "fishery",
			pos = {
				[1] = 3,
				[2] = 11,
			},
		},
		[5] = {
			def = "town",
			pos = {
				[1] = 3,
				[2] = 10,
			},
		},
		[6] = {
			def = "town",
			pos = {
				[1] = 3,
				[2] = 9,
			},
		},
		[7] = {
			def = "fishery",
			pos = {
				[1] = 3,
				[2] = 5,
			},
		},
		[8] = {
			def = "fishery",
			pos = {
				[1] = 4,
				[2] = 11,
			},
		},
		[9] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 9,
			},
		},
		[10] = {
			def = "mine",
			pos = {
				[1] = 4,
				[2] = 7,
			},
		},
		[11] = {
			def = "town",
			pos = {
				[1] = 4,
				[2] = 5,
			},
		},
		[12] = {
			def = "chapel",
			pos = {
				[1] = 5,
				[2] = 9,
			},
		},
		[13] = {
			def = "sawmill",
			pos = {
				[1] = 5,
				[2] = 6,
			},
		},
		[14] = {
			def = "woodcutter",
			pos = {
				[1] = 6,
				[2] = 6,
			},
		},
		[15] = {
			def = "woodcutter",
			pos = {
				[1] = 7,
				[2] = 6,
			},
		},
		[16] = {
			def = "town",
			pos = {
				[1] = 8,
				[2] = 6,
			},
		},
		[17] = {
			extraData = {
				invasionIndex = 1,
				armySize = 8,
			},
			pos = {
				[1] = 14,
				[2] = 4,
			},
			def = "invasion",
		},
		[18] = {
			extraData = {
				invasionIndex = 2,
				armySize = 12,
			},
			pos = {
				[1] = 19,
				[2] = 8,
			},
			def = "invasion",
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
		},
		[2] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "water",
			[8] = "mountain",
			[9] = "desert",
			[10] = "desert",
			[11] = "water",
			[12] = "water",
		},
		[3] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "mountain",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "water",
		},
		[4] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "water",
		},
		[5] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "water",
			[12] = "water",
		},
		[6] = {
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "water",
		},
		[7] = {
			[3] = "water",
			[4] = "water",
			[5] = "forest",
			[6] = "grass",
			[7] = "grass",
			[8] = "mountain",
			[9] = "grass",
			[10] = "grass",
			[11] = "water",
			[12] = "water",
		},
		[8] = {
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "desert",
			[12] = "water",
		},
		[9] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "mountain",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "desert",
			[12] = "water",
		},
		[10] = {
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "desert",
			[6] = "grass",
			[7] = "mountain",
			[8] = "forest",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "water",
		},
		[11] = {
			[2] = "water",
			[3] = "water",
			[4] = "desert",
			[5] = "desert",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "forest",
			[11] = "forest",
			[12] = "water",
		},
		[12] = {
			[1] = "water",
			[2] = "water",
			[3] = "forest",
			[4] = "desert",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "mountain",
			[12] = "water",
		},
		[13] = {
			[1] = "water",
			[2] = "grass",
			[3] = "mountain",
			[4] = "grass",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[10] = "water",
			[11] = "desert",
			[12] = "water",
		},
		[14] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "forest",
			[7] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "mountain",
			[12] = "water",
		},
		[15] = {
			[1] = "water",
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "water",
			[9] = "water",
			[10] = "forest",
			[11] = "mountain",
			[12] = "water",
		},
		[16] = {
			[1] = "water",
			[2] = "forest",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "forest",
			[12] = "water",
		},
		[17] = {
			[1] = "water",
			[2] = "mountain",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "forest",
			[11] = "grass",
			[12] = "water",
		},
		[18] = {
			[1] = "water",
			[2] = "grass",
			[3] = "grass",
			[4] = "grass",
			[5] = "grass",
			[6] = "water",
			[7] = "water",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "water",
		},
		[19] = {
			[1] = "water",
			[2] = "water",
			[3] = "desert",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "grass",
			[9] = "forest",
			[10] = "grass",
			[11] = "forest",
			[12] = "water",
		},
		[20] = {
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "forest",
			[12] = "water",
		},
		[21] = {
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "desert",
			[8] = "desert",
			[9] = "water",
			[10] = "desert",
			[11] = "water",
			[12] = "water",
		},
		[22] = {
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
		},
	},
	doodads = {
		[1] = {
			doodadType = "coast_test",
			pos = {
				[1] = 7.314567565918,
				[2] = 4.4221789042155,
			},
		},
		[2] = {
			doodadType = "coast_small",
			pos = {
				[1] = 7.795685450236,
				[2] = 4.4494113922119,
			},
		},
		[3] = {
			doodadType = "coast_test",
			pos = {
				[1] = 9.266274134318,
				[2] = 3.4508647918701,
			},
		},
		[4] = {
			doodadType = "coast_test",
			pos = {
				[1] = 10.614312489827,
				[2] = 3.4735590616862,
			},
		},
		[5] = {
			doodadType = "coast_test",
			pos = {
				[1] = 13.32306543986,
				[2] = 1.4249000549316,
			},
		},
		[6] = {
			doodadType = "coast_small",
			pos = {
				[1] = 13.804183959961,
				[2] = 1.4521331787109,
			},
		},
		[7] = {
			doodadType = "coast_small",
			pos = {
				[1] = 14.770959218343,
				[2] = 3.4356117248535,
			},
		},
		[8] = {
			doodadType = "coast_small",
			pos = {
				[1] = 11.743544896444,
				[2] = 2.459758122762,
			},
		},
		[9] = {
			doodadType = "coast_small",
			pos = {
				[1] = 18.724299112956,
				[2] = 2.5051472981771,
			},
		},
		[10] = {
			doodadType = "coast_test",
			pos = {
				[1] = 16.286935806274,
				[2] = 1.411283493042,
			},
		},
		[11] = {
			doodadType = "coast_test",
			pos = {
				[1] = 17.752985636393,
				[2] = 1.4067459106445,
			},
		},
		[12] = {
			doodadType = "coast_small",
			pos = {
				[1] = 19.772775650024,
				[2] = 4.4432379404704,
			},
		},
		[13] = {
			doodadType = "coast_test",
			pos = {
				[1] = 18.674372355143,
				[2] = 7.4116465250651,
			},
		},
		[14] = {
			doodadType = "coast_small",
			pos = {
				[1] = 17.76206334432,
				[2] = 7.4434191385905,
			},
		},
		[15] = {
			doodadType = "coast_small",
			pos = {
				[1] = 16.768054326375,
				[2] = 9.4450524648031,
			},
		},
		[16] = {
			doodadType = "coast_small",
			pos = {
				[1] = 15.76496887207,
				[2] = 10.420906066895,
			},
		},
		[17] = {
			doodadType = "coast_small",
			pos = {
				[1] = 14.775498708089,
				[2] = 9.4132804870605,
			},
		},
		[18] = {
			doodadType = "coast_small",
			pos = {
				[1] = 4.7809459368388,
				[2] = 3.4855392773946,
			},
		},
		[19] = {
			doodadType = "coast_small",
			pos = {
				[1] = 5.7885715166728,
				[2] = 3.494616985321,
			},
		},
		[20] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 6.5147878328959,
				[2] = 4.2026778856913,
			},
		},
		[21] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 11.543835957845,
				[2] = 5.2375361124674,
			},
		},
		[22] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 10.577059904734,
				[2] = 6.3041656812032,
			},
		},
		[23] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 10.563444296519,
				[2] = 7.8700706164042,
			},
		},
		[24] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 10.518055756887,
				[2] = 9.2226490974426,
			},
		},
		[25] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 11.543835481008,
				[2] = 10.193962574005,
			},
		},
		[26] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 15.501715342204,
				[2] = 10.139497121175,
			},
		},
		[27] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 20.498991012573,
				[2] = 5.2420749664307,
			},
		},
		[28] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 20.503530502319,
				[2] = 5.6823444366455,
			},
		},
		[29] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 21.530293782552,
				[2] = 7.281130472819,
			},
		},
		[30] = {
			doodadType = "coast_small",
			pos = {
				[1] = 20.794998168945,
				[2] = 9.4688568115234,
			},
		},
		[31] = {
			doodadType = "coast_small",
			pos = {
				[1] = 20.749610900879,
				[2] = 6.5004475911458,
			},
		},
		[32] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 21.525754292806,
				[2] = 8.2388280232747,
			},
		},
		[33] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 20.545361836751,
				[2] = 9.2192204793294,
			},
		},
		[34] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 20.52720673879,
				[2] = 11.234471321106,
			},
		},
		[35] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 20.259413719177,
				[2] = 11.602117856344,
			},
		},
		[36] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 19.342566808065,
				[2] = 11.593041102091,
			},
		},
		[37] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 18.493802070618,
				[2] = 11.615735689799,
			},
		},
		[38] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 16.995980580648,
				[2] = 11.588502248128,
			},
		},
		[39] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 16.065514882406,
				[2] = 11.602118174235,
			},
		},
		[40] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 15.375610669454,
				[2] = 11.620274543762,
			},
		},
		[41] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 14.467838605245,
				[2] = 11.602117856344,
			},
		},
		[42] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 13.042638937632,
				[2] = 11.574884255727,
			},
		},
		[43] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 11.839844703674,
				[2] = 11.570347150167,
			},
		},
		[44] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 10.768675406774,
				[2] = 11.588502327601,
			},
		},
		[45] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 9.810976823171,
				[2] = 11.593040307363,
			},
		},
		[46] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 8.3799931208293,
				[2] = 11.588197390238,
			},
		},
		[47] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 8.1122001012166,
				[2] = 11.574580192566,
			},
		},
		[48] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 6.6552289326986,
				[2] = 10.553338368734,
			},
		},
		[49] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 5.3571166992188,
				[2] = 10.544260660807,
			},
		},
		[50] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 2.2116921742757,
				[2] = 10.57603263855,
			},
		},
		[51] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 3.6499535242716,
				[2] = 5.5675242741903,
			},
		},
		[52] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 2.2610648473104,
				[2] = 5.5947573979696,
			},
		},
		[53] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 11.247992197673,
				[2] = 5.5402921040853,
			},
		},
		[54] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 12.210229237874,
				[2] = 4.5417442321777,
			},
		},
		[55] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 13.131615956624,
				[2] = 4.5735155741374,
			},
		},
		[56] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 15.242181777954,
				[2] = 5.5402914683024,
			},
		},
		[57] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 18.232648213704,
				[2] = 5.5539728800456,
			},
		},
		[58] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 19.226658503215,
				[2] = 3.5704962412516,
			},
		},
		[59] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 21.219212849935,
				[2] = 8.540537516276,
			},
		},
		[60] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 21.207031885783,
				[2] = 10.576054255168,
			},
		},
		[61] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 21.511134465535,
				[2] = 10.1176293691,
			},
		},
		[62] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 21.502056757609,
				[2] = 10.290105819702,
			},
		},
		[63] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 18.52716700236,
				[2] = 4.3409436543783,
			},
		},
		[64] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 18.481778462728,
				[2] = 5.3122584025065,
			},
		},
		[65] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 17.564929962158,
				[2] = 6.2291069030762,
			},
		},
		[66] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 18.499933242798,
				[2] = 2.2076829274495,
			},
		},
		[67] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 19.498481114705,
				[2] = 3.2062307993571,
			},
		},
		[68] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 19.503019332886,
				[2] = 3.3378569285075,
			},
		},
		[69] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 14.545345624288,
				[2] = 6.2407108942668,
			},
		},
		[70] = {
			doodadType = "coast_test_flip",
			pos = {
				[1] = 14.549883524577,
				[2] = 2.1965942382813,
			},
		},
		[71] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 14.50449625651,
				[2] = 3.2223739624023,
			},
		},
		[72] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 4.5360981623332,
				[2] = 11.277396202087,
			},
		},
		[73] = {
			doodadType = "coast_small_flip",
			pos = {
				[1] = 4.5270204544067,
				[2] = 3.1891616185506,
			},
		},
		[74] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 2.4573033650716,
				[2] = 2.7171211242676,
			},
		},
		[75] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 1.4088287353516,
				[2] = 4.2648696899414,
			},
		},
		[76] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 1.417906443278,
				[2] = 4.927542368571,
			},
		},
		[77] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 2.4436871210734,
				[2] = 6.6976944605509,
			},
		},
		[78] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 1.4360618591309,
				[2] = 7.6690088907878,
			},
		},
		[79] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 1.4133672714233,
				[2] = 9.0987469355265,
			},
		},
		[80] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 1.4587561289469,
				[2] = 9.9066626230876,
			},
		},
		[81] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 2.4391485850016,
				[2] = 10.832588831584,
			},
		},
		[82] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 7.4273465474447,
				[2] = 10.864360809326,
			},
		},
		[83] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 13.424844741821,
				[2] = 4.7636140187581,
			},
		},
		[84] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 13.438461303711,
				[2] = 5.2855809529622,
			},
		},
		[85] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 13.420305887858,
				[2] = 5.9028650919596,
			},
		},
		[86] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 14.137444814046,
				[2] = 6.6200040181478,
			},
		},
		[87] = {
			doodadType = "coast_behind_flip",
			pos = {
				[1] = 14.305381774902,
				[2] = 6.6063868204753,
			},
		},
		[88] = {
			doodadType = "coast_test_flip_up",
			pos = {
				[1] = 16.198083877563,
				[2] = 6.5927715301514,
			},
		},
		[89] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 17.28740755717,
				[2] = 6.5201485951742,
			},
		},
		[90] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 15.467329025269,
				[2] = 5.8620166778564,
			},
		},
		[91] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 12.480763753255,
				[2] = 1.7316602071126,
			},
		},
		[92] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 11.377822240194,
				[2] = 2.7710577646891,
			},
		},
		[93] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 8.4750334421794,
				[2] = 3.729824701945,
			},
		},
		[94] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 4.4354553222656,
				[2] = 5.7904637654622,
			},
		},
		[95] = {
			doodadType = "coast_test",
			pos = {
				[1] = 3.2644316355387,
				[2] = 6.3986695607503,
			},
		},
		[96] = {
			doodadType = "coast_small",
			pos = {
				[1] = 3.80455493927,
				[2] = 6.4304418563843,
			},
		},
		[97] = {
			doodadType = "coast_test",
			pos = {
				[1] = 3.2871259053548,
				[2] = 2.427173614502,
			},
		},
		[98] = {
			doodadType = "coast_small",
			pos = {
				[1] = 3.8998705546061,
				[2] = 2.4589462280273,
			},
		},
		[99] = {
			doodadType = "coast_small",
			pos = {
				[1] = 1.757532119751,
				[2] = 3.4211826324463,
			},
		},
		[100] = {
			doodadType = "coast_small",
			pos = {
				[1] = 1.7104479471842,
				[2] = 7.4336725870768,
			},
		},
		[101] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 3.1399631500244,
				[2] = 11.532032648722,
			},
		},
		[102] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 4.0885833104451,
				[2] = 11.536571820577,
			},
		},
		[103] = {
			doodadType = "coast_small_flip_up",
			pos = {
				[1] = 4.2882932027181,
				[2] = 11.554726918538,
			},
		},
		[104] = {
			doodadType = "coast_test",
			pos = {
				[1] = 12.36737759908,
				[2] = 10.415985743205,
			},
		},
		[105] = {
			doodadType = "coast_test",
			pos = {
				[1] = 13.656412124634,
				[2] = 10.434141159058,
			},
		},
		[106] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 14.405323028564,
				[2] = 9.712464650472,
			},
		},
		[107] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 16.402417500814,
				[2] = 9.748774210612,
			},
		},
		[108] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 17.410042444865,
				[2] = 8.6503721872965,
			},
		},
		[109] = {
			doodadType = "coast_small_up",
			pos = {
				[1] = 17.47358640035,
				[2] = 7.6972128550212,
			},
		},
		[110] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 19.474674224854,
				[2] = 6.5857404073079,
			},
		},
		[111] = {
			doodadType = "coast_test_up",
			pos = {
				[1] = 19.442902247111,
				[2] = 5.2830905914307,
			},
		},
		[112] = {
			doodadType = "coast_small",
			pos = {
				[1] = 10.799687067668,
				[2] = 9.4563388824463,
			},
		},
		[113] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 15.356850306193,
				[2] = 1.7546583811442,
			},
		},
		[114] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 15.365928014119,
				[2] = 2.6351960500081,
			},
		},
		[115] = {
			doodadType = "coast_behind",
			pos = {
				[1] = 15.406777064006,
				[2] = 3.1299304962158,
			},
		},
	},
	invasionMask = {
		[6] = {
		},
		[7] = {
		},
		[8] = {
		},
		[9] = {
		},
		[10] = {
		},
		[11] = {
		},
		[12] = {
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
		},
		[13] = {
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
		},
		[14] = {
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
		},
		[15] = {
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
		},
		[16] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[17] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[18] = {
			[0] = 1,
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[19] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[20] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[21] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[22] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[7] = 2,
			[8] = 2,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
		},
		[23] = {
			[0] = 1,
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
	},
}

return data
