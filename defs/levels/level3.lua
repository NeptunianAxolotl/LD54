local data = {
	humanName = "test",
	width = 30,
	height = 17,
	cameraPos = {18, 9.3},
	customVictoryText = "You've explored the entire island.  Now this one is more like it!",
	tileDeck = {
		{
			barracks = 2,
			farm = 6,
			fishery = 1,
			mill = 1,
			sawmill = 1,
			town = 7,
			woodcutter = 3,
		},
		{
			barracks = 2,
			farm = 6,
			fishery = 2,
			mill = 1,
			sawmill = 2,
			town = 7,
			woodcutter = 4,
		},
	},
	hints = {
		{
			pos = {17.95, 1.6},
			size = {3.2, 1.1},
			text = "- WASD (or Arrow Keys) to move the camera.\n- Ctrl+R to restart the game at any time.\n- Ctrl+N/Ctrl+P to skip to the next or previous level.\n\nOutposts are dismantled when there are no longer any unscouted lands in range.",
		},
	},
	tiles = {
		{
			def = "invasion",
			extraData = {
				armySize = 10,
				invasionIndex = 2,
			},
			pos = {6, 11},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 4,
				invasionIndex = 1,
			},
			pos = {14, 9},
		},
		{
			def = "town",
			pos = {17, 10},
		},
		{
			def = "farm",
			pos = {18, 10},
		},
		{
			def = "town",
			pos = {21, 11},
		},
		{
			def = "fishery",
			pos = {22, 11},
		},
		{
			def = "fishery",
			pos = {22, 10},
		},
	},
	terrain = {
		{
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
		},
		{
			[5] = "water",
			[6] = "water",
			[7] = "grass",
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
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "forest",
			[9] = "forest",
			[10] = "water",
			[11] = "mountain",
			[12] = "mountain",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "mountain",
			[16] = "water",
		},
		{
			"water",
			"water",
			"water",
			"water",
			"mountain",
			"grass",
			"grass",
			"forest",
			"forest",
			"grass",
			"desert",
			"desert",
			"desert",
			"desert",
			"mountain",
			"water",
			"water",
		},
		{
			"water",
			"water",
			"desert",
			"desert",
			"grass",
			"grass",
			"grass",
			"forest",
			"grass",
			"desert",
			"desert",
			"mountain",
			"mountain",
			"desert",
			"mountain",
			"water",
			"water",
		},
		{
			"water",
			"water",
			"desert",
			"grass",
			"grass",
			"grass",
			"grass",
			"grass",
			"grass",
			"grass",
			"desert",
			"mountain",
			"mountain",
			"desert",
			"mountain",
			"water",
			"water",
		},
		{
			[2] = "water",
			[3] = "water",
			[4] = "desert",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "mountain",
			[16] = "water",
		},
		{
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
			[12] = "mountain",
			[13] = "desert",
			[14] = "desert",
			[15] = "mountain",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "forest",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "mountain",
			[12] = "mountain",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "mountain",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "mountain",
			[15] = "mountain",
			[16] = "water",
		},
		{
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "mountain",
			[15] = "water",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "forest",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "mountain",
			[12] = "mountain",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "water",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "mountain",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "water",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "forest",
			[11] = "grass",
			[12] = "grass",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "mountain",
			[16] = "water",
		},
		{
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "grass",
			[12] = "grass",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "mountain",
			[16] = "water",
		},
		{
			[4] = "water",
			[5] = "desert",
			[6] = "grass",
			[7] = "grass",
			[8] = "forest",
			[9] = "forest",
			[10] = "forest",
			[11] = "grass",
			[12] = "grass",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "water",
			[16] = "water",
		},
		{
			[4] = "water",
			[5] = "desert",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "forest",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "water",
		},
		{
			[4] = "water",
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "mountain",
			[14] = "mountain",
			[15] = "water",
		},
		{
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "forest",
			[14] = "forest",
			[15] = "water",
		},
		{
			[4] = "water",
			[5] = "mountain",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "forest",
			[13] = "forest",
			[14] = "water",
			[15] = "water",
		},
		{
			[4] = "water",
			[5] = "mountain",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "forest",
			[13] = "forest",
			[14] = "water",
		},
		{
			[3] = "water",
			[4] = "water",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "grass",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "grass",
			[12] = "forest",
			[13] = "water",
			[14] = "water",
		},
		{
			[3] = "water",
			[4] = "water",
			[5] = "mountain",
			[6] = "mountain",
			[7] = "forest",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "desert",
			[12] = "forest",
			[13] = "water",
		},
		{
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "forest",
			[7] = "forest",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "desert",
			[12] = "water",
			[13] = "water",
		},
		{
			[4] = "water",
			[5] = "water",
			[6] = "forest",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
		},
		{
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
		{
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
		},
		{
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
		},
		{
			[9] = "water",
		},
	},
	doodads = {
		{
			doodadType = "coast_test",
			pos = {24.322037378947, 5.4535083770752},
		},
		{
			doodadType = "coast_small",
			pos = {24.823771158854, 5.4597015380859},
		},
		{
			doodadType = "coast_test",
			pos = {22.717726389567, 4.4686215718587},
		},
		{
			doodadType = "coast_test",
			pos = {21.286854426066, 4.4748160044352},
		},
		{
			doodadType = "coast_test",
			pos = {20.252414067586, 4.5057875315348},
		},
		{
			doodadType = "coast_test",
			pos = {16.776837666829, 4.4389928181966},
		},
		{
			doodadType = "coast_test",
			pos = {16.299880345662, 4.4575761159261},
		},
		{
			doodadType = "coast_test",
			pos = {12.741192181905, 3.4270232518514},
		},
		{
			doodadType = "coast_test",
			pos = {12.313789685567, 3.4208294550578},
		},
		{
			doodadType = "coast_test",
			pos = {10.379241943359, 4.455202738444},
		},
		{
			doodadType = "coast_small",
			pos = {8.1498263676961, 3.4194040298462},
		},
		{
			doodadType = "coast_small",
			pos = {8.8745546340942, 3.4503749211629},
		},
		{
			doodadType = "coast_small",
			pos = {5.8703419367472, 2.4283234278361},
		},
		{
			doodadType = "coast_test",
			pos = {5.325247446696, 2.4283237457275},
		},
		{
			doodadType = "coast_small",
			pos = {3.7395191192627, 4.4848149617513},
		},
		{
			doodadType = "coast_small",
			pos = {2.7856041590373, 5.4139528274536},
		},
		{
			doodadType = "coast_small",
			pos = {1.7635529836019, 6.448392868042},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.497584660848, 6.8451989491781},
		},
		{
			doodadType = "coast_test_flip",
			pos = {9.5804589589437, 12.23832766215},
		},
		{
			doodadType = "coast_small",
			pos = {10.710795720418, 13.450627009074},
		},
		{
			doodadType = "coast_small",
			pos = {22.774079004924, 10.478255589803},
		},
		{
			doodadType = "coast_small",
			pos = {23.566943486532, 10.478255589803},
		},
		{
			doodadType = "coast_small",
			pos = {23.913821538289, 10.453477859497},
		},
		{
			doodadType = "coast_test",
			pos = {18.338856379191, 5.4772548675537},
		},
		{
			doodadType = "coast_small",
			pos = {18.716705322266, 5.4586715698242},
		},
		{
			doodadType = "coast_test",
			pos = {14.665664672852, 5.4462827046712},
		},
		{
			doodadType = "coast_small",
			pos = {13.742720921834, 5.489642461141},
		},
		{
			doodadType = "coast_small",
			pos = {10.73850886027, 4.442813873291},
		},
		{
			doodadType = "coast_test",
			pos = {7.3995469411214, 3.4272454579671},
		},
		{
			doodadType = "coast_small_flip",
			pos = {6.5509344736735, 3.1485042572021},
		},
		{
			doodadType = "coast_small_flip",
			pos = {6.5323518117269, 3.2538064320882},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5675354003906, 4.1829452514648},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5613409678141, 4.275857925415},
		},
		{
			doodadType = "coast_test_flip",
			pos = {13.569021860758, 4.2201105753581},
		},
		{
			doodadType = "coast_small_flip",
			pos = {13.538050333659, 5.2297732035319},
		},
		{
			doodadType = "coast_small_flip",
			pos = {17.570947011312, 5.155345916748},
		},
		{
			doodadType = "coast_small_flip",
			pos = {17.546170552572, 5.2792307535807},
		},
		{
			doodadType = "coast_small_flip",
			pos = {23.545857111613, 5.1568304697673},
		},
		{
			doodadType = "coast_small_flip",
			pos = {23.545857747396, 5.2559382120768},
		},
		{
			doodadType = "coast_small_flip",
			pos = {24.544587453206, 7.2457491556803},
		},
		{
			doodadType = "coast_small_flip",
			pos = {25.541863123576, 6.1617552439372},
		},
		{
			doodadType = "coast_small_flip",
			pos = {25.529474258423, 6.3228054046631},
		},
		{
			doodadType = "coast_small_flip",
			pos = {22.496663411458, 8.2654291788737},
		},
		{
			doodadType = "coast_test_flip",
			pos = {22.527634938558, 9.2379264831543},
		},
		{
			doodadType = "coast_small_flip",
			pos = {22.490468343099, 10.241394042969},
		},
		{
			doodadType = "coast_small_flip",
			pos = {23.549686431885, 12.242137908936},
		},
		{
			doodadType = "coast_small_flip",
			pos = {21.530360857646, 13.270384788513},
		},
		{
			doodadType = "coast_small_flip",
			pos = {19.579170862834, 14.267658869425},
		},
		{
			doodadType = "coast_small_flip",
			pos = {15.535933176676, 15.261488596598},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5618762969971, 11.253441492716},
		},
		{
			doodadType = "coast_test",
			pos = {10.383860905965, 13.462602615356},
		},
		{
			doodadType = "coast_test_flip",
			pos = {9.578608194987, 12.706904093424},
		},
		{
			doodadType = "coast_behind",
			pos = {11.42191696167, 3.7394803365072},
		},
		{
			doodadType = "coast_behind",
			pos = {2.3523915608724, 7.8238906860352},
		},
		{
			doodadType = "coast_behind",
			pos = {2.3647804260254, 8.7778053283691},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.1603698730469, 7.5575370788574},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4851964314779, 6.7089246114095},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {3.0895080566406, 9.5768636067708},
		},
		{
			doodadType = "coast_behind",
			pos = {2.3523915608724, 8.8645248413086},
		},
		{
			doodadType = "coast_behind",
			pos = {3.3744430541992, 9.787467956543},
		},
		{
			doodadType = "coast_small",
			pos = {2.7240467071533, 10.425476710002},
		},
		{
			doodadType = "coast_test_up",
			pos = {2.451499303182, 11.24311765035},
		},
		{
			doodadType = "coast_test_up",
			pos = {2.4019457499186, 12.828845977783},
		},
		{
			doodadType = "coast_test_up",
			pos = {2.4205284118652, 14.309271494548},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4391110738118, 14.897726694743},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {3.2227535247803, 15.582260767619},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {4.8146769205729, 15.563677469889},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {6.2455485661825, 15.557483355204},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {7.8498592376709, 15.551289240519},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {9.3860346476237, 15.526512145996},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {10.296589533488, 15.52031771342},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {10.234647750854, 10.577305475871},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {10.97176361084, 10.571111043294},
		},
		{
			doodadType = "coast_small_up",
			pos = {11.44252649943, 10.794104258219},
		},
		{
			doodadType = "coast_small_up",
			pos = {11.411554972331, 11.729436238607},
		},
		{
			doodadType = "coast_small_up",
			pos = {11.461108525594, 12.695739110311},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {11.151395797729, 10.552527745565},
		},
		{
			doodadType = "coast_test_up",
			pos = {4.4397684733073, 3.2939999898275},
		},
		{
			doodadType = "coast_small_up",
			pos = {4.4335740407308, 3.8576768239339},
		},
		{
			doodadType = "coast_small_up",
			pos = {3.4486881891886, 4.7310660680135},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.5133562088013, 5.6292327245076},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4885791142782, 5.7778946558634},
		},
		{
			doodadType = "coast_small_up",
			pos = {15.444464365641, 4.7730929056803},
		},
		{
			doodadType = "coast_small_up",
			pos = {19.44113667806, 4.8054453531901},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {11.354294141134, 14.565035184224},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {12.648892084757, 14.571228663127},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {14.265592575073, 15.568503697713},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {15.30003229777, 15.51275507609},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {16.346860249837, 14.552645365397},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {19.264353434245, 14.59600575765},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {18.384770711263, 14.583618164063},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {17.653848012288, 14.546451568604},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {20.199905077616, 13.614268302917},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {21.252928733826, 13.577103614807},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {20.689250628153, 13.583296775818},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {22.21303653717, 12.604605674744},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {23.185535113017, 12.610800743103},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {24.198837280273, 11.586934407552},
		},
		{
			doodadType = "coast_small_flip",
			pos = {24.582879384359, 11.178112030029},
		},
		{
			doodadType = "coast_small_flip",
			pos = {24.558102925618, 11.326774597168},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {24.322721481323, 11.586933771769},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {23.859627405802, 7.5699380238851},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {24.287030537923, 7.5761311848958},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {22.949071248372, 7.5761311848958},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {25.25047938029, 6.6348025004069},
		},
		{
			doodadType = "coast_small_flip",
			pos = {10.574429829915, 15.214581807454},
		},
		{
			doodadType = "coast_small_up",
			pos = {13.417591094971, 14.811954498291},
		},
	},
	invasionMask = {
		{
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
		},
		{
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
		},
		{
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
		},
		{
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
		},
		{
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
		},
		{
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
		},
		{
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			1,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
		},
		{
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
		},
		{
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
		},
		{
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
		},
		{
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
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
		},
		{
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
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
		},
		{
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[13] = 2,
			[14] = 2,
		},
		{
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
			[10] = 1,
			[14] = 2,
		},
		{
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[9] = 1,
		},
	},
}

return data
