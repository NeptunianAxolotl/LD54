local data = {
	humanName = "test",
	width = 10,
	height = 18,
	cameraPos = {5, 5},
	customVictoryText = "You've explored the entire island!  We're calling this one 'Long Island' because it sounded better than Squat Rectangle Island.",
	tileDeck = {
		{
			barracks = 2,
			farm = 3,
			fishery = 3,
			sawmill = 2,
			town = 5,
			woodcutter = 2,
		},
		{
			barracks = 2,
			farm = 3,
			fishery = 3,
			sawmill = 2,
			town = 5,
			woodcutter = 2,
		},
	},
	tiles = {
		{
			def = "invasion",
			extraData = {
				armySize = 6,
				invasionIndex = 2,
			},
			pos = {5, 13},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 3,
				invasionIndex = 1,
			},
			pos = {5, 9},
		},
		{
			def = "town",
			pos = {6, 4},
		},
		{
			def = "fishery",
			pos = {6, 3},
		},
		{
			def = "town",
			pos = {7, 4},
		},
		{
			def = "fishery",
			pos = {7, 3},
		},
	},
	terrain = {
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
			doodadType = "coast_test_flip",
			pos = {9.5428568522135, 9.2840232849121},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {9.2888927459717, 10.615788141886},
		},
		{
			doodadType = "coast_behind",
			pos = {1.3974157969157, 14.047403335571},
		},
		{
			doodadType = "coast_behind",
			pos = {1.3974164326986, 13.105876922607},
		},
		{
			doodadType = "coast_behind",
			pos = {1.3850269317627, 12.201515833537},
		},
		{
			doodadType = "coast_behind",
			pos = {1.3788331349691, 11.798889795939},
		},
		{
			doodadType = "coast_behind",
			pos = {1.380179087321, 3.7724850972493},
		},
		{
			doodadType = "coast_behind",
			pos = {1.3987617492676, 4.583932240804},
		},
		{
			doodadType = "coast_behind",
			pos = {1.4111499786377, 5.3891849517822},
		},
		{
			doodadType = "coast_behind",
			pos = {2.3774538040161, 2.7628221511841},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {8.2598876953125, 6.5378850301107},
		},
		{
			doodadType = "coast_small",
			pos = {1.6480614344279, 11.512269020081},
		},
		{
			doodadType = "coast_small",
			pos = {1.7285861968994, 8.4461142222087},
		},
		{
			doodadType = "coast_test_flip",
			pos = {9.5515168507894, 5.7686189015706},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5391279856364, 4.7651513417562},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5515162150065, 4.1581141153971},
		},
		{
			doodadType = "coast_small",
			pos = {8.8701489766439, 3.4519691467285},
		},
		{
			doodadType = "coast_small",
			pos = {8.7958170572917, 3.4271926879883},
		},
		{
			doodadType = "coast_small_flip",
			pos = {8.5852139790853, 3.1422564188639},
		},
		{
			doodadType = "coast_small",
			pos = {7.8542912801107, 2.4608891805013},
		},
		{
			doodadType = "coast_test",
			pos = {6.8012685775757, 2.4485006332397},
		},
		{
			doodadType = "coast_small",
			pos = {5.4075619379679, 2.4423062006632},
		},
		{
			doodadType = "coast_test",
			pos = {4.4536469777425, 2.4051405588786},
		},
		{
			doodadType = "coast_small",
			pos = {3.028969446818, 2.4423058827718},
		},
		{
			doodadType = "coast_small",
			pos = {2.6697028477987, 2.4794715245565},
		},
		{
			doodadType = "coast_small",
			pos = {6.825065612793, 8.4152030944824},
		},
		{
			doodadType = "coast_small_flip",
			pos = {6.5711008707682, 8.2107925415039},
		},
		{
			doodadType = "coast_small",
			pos = {1.6790326436361, 8.4213371276855},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {7.3144111633301, 7.5418128967285},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.2165422439575, 10.521248181661},
		},
		{
			doodadType = "coast_test_up",
			pos = {2.4333407084147, 7.3683738708496},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4395354588826, 7.7957779566447},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4333407084147, 10.762823740641},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.1917654673258, 6.5569273630778},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4794267018636, 5.8693650563558},
		},
		{
			doodadType = "coast_small",
			pos = {1.6701380411784, 3.483268737793},
		},
		{
			doodadType = "coast_small",
			pos = {8.8675657908122, 8.4259878794352},
		},
		{
			doodadType = "coast_small",
			pos = {8.0808957417806, 8.4321823120117},
		},
		{
			doodadType = "coast_small",
			pos = {7.7030467987061, 8.401211420695},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5473969777425, 10.344669977824},
		},
		{
			doodadType = "coast_small_flip",
			pos = {8.5748984018962, 11.280000686646},
		},
		{
			doodadType = "coast_small_flip",
			pos = {8.5687039693197, 12.215333302816},
		},
		{
			doodadType = "coast_test_flip",
			pos = {9.51642481486, 13.311715443929},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5040372212728, 14.265631357829},
		},
		{
			doodadType = "coast_small",
			pos = {8.8102811177572, 12.506463368734},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {9.2562662760417, 14.538177490234},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {7.7077039082845, 14.550566355387},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {7.2369403839111, 14.57534344991},
		},
		{
			doodadType = "coast_small",
			pos = {5.8308448791504, 16.439812978109},
		},
		{
			doodadType = "coast_small_flip",
			pos = {6.5307954152425, 17.164539972941},
		},
		{
			doodadType = "coast_small_flip",
			pos = {5.6140467325846, 16.223014831543},
		},
		{
			doodadType = "coast_small_flip",
			pos = {6.4874359766642, 15.287682533264},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {6.2830260594686, 15.554035504659},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {6.326384862264, 17.505224227905},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {4.7964051564535, 17.536195755005},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {4.3256416320801, 17.536195119222},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.1758944193522, 15.560156504313},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4112758636475, 15.795537948608},
		},
		{
			doodadType = "coast_small_up",
			pos = {3.4581044514974, 16.792813618978},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {3.1979452768962, 16.532654444377},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4449729919434, 14.903565724691},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4250679016113, 8.7124671936035},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.06307665507, 10.514994939168},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4498456319173, 9.4557774861654},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4188741048177, 9.7716840108236},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {9.1952196756999, 6.5564676920573},
		},
		{
			doodadType = "coast_small_flip",
			pos = {7.5537427266439, 7.2440299987793},
		},
	},
	invasionMask = {
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
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
		{
			[8] = 1,
		},
		[0] = {
			[10] = 1,
			[11] = 1,
			[13] = 1,
		},
	},
}

return data
