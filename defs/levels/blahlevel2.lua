local data = {
	humanName = "test level",
	width = 17,
	height = 17,
	cameraPos = {12, 7},
	customVictoryText = "You've explored the entire island!  Shame you cluttered it up so badly in the process.",
	tileDeck = {
		{
			barracks = 1,
			farm = 2,
			fishery = 2,
			mine = 1,
			quarry = 2,
			town = 5,
			woodcutter = 3,
		},
		{
			barracks = 1,
			blacksmith = 1,
			farm = 2,
			fishery = 2,
			fountain = 1,
			mill = 1,
			mine = 2,
			quarry = 2,
			sawmill = 2,
			tavern = 1,
			tower = 1,
			town = 5,
			woodcutter = 3,
		},
	},
	tiles = {
		{
			def = "invasion",
			extraData = {
				armySize = 15,
				invasionIndex = 4,
			},
			pos = {2, 3},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 5,
				invasionIndex = 2,
			},
			pos = {5, 14},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 9,
				invasionIndex = 3,
			},
			pos = {5, 7},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 1,
				invasionIndex = 1,
			},
			pos = {12, 11},
		},
		{
			def = "farm",
			pos = {13, 5},
		},
		{
			def = "town",
			pos = {14, 5},
		},
		{
			def = "fishery",
			pos = {15, 5},
		},
	},
	terrain = {
		{
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
		},
		{
			"water",
			"water",
			"mountain",
			"mountain",
			"mountain",
			"water",
			"water",
			"water",
			"water",
			"desert",
			"water",
			"desert",
			"desert",
			"water",
			"water",
			"water",
		},
		{
			"water",
			"mountain",
			"grass",
			"grass",
			"mountain",
			"forest",
			"forest",
			"water",
			"water",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"water",
		},
		{
			"water",
			"mountain",
			"grass",
			"grass",
			"mountain",
			"forest",
			"grass",
			"grass",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"water",
			"water",
			"water",
		},
		{
			"water",
			"water",
			"grass",
			"mountain",
			"grass",
			"grass",
			"grass",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"water",
		},
		{
			"water",
			"water",
			"grass",
			"grass",
			"grass",
			"grass",
			"grass",
			"grass",
			"desert",
			"desert",
			"grass",
			"grass",
			"desert",
			"desert",
			"desert",
			"desert",
			"water",
		},
		{
			"water",
			"mountain",
			"grass",
			"grass",
			"grass",
			"grass",
			"grass",
			"grass",
			"desert",
			"desert",
			"mountain",
			"forest",
			"desert",
			"desert",
			"desert",
			"water",
			"water",
		},
		{
			"water",
			"mountain",
			"grass",
			"grass",
			"grass",
			"forest",
			"forest",
			"mountain",
			"mountain",
			"mountain",
			"mountain",
			"grass",
			"desert",
			"desert",
			"desert",
			"water",
		},
		{
			"water",
			"water",
			"mountain",
			"mountain",
			"mountain",
			"mountain",
			"mountain",
			"mountain",
			"mountain",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"desert",
			"water",
		},
		{
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "forest",
			[7] = "forest",
			[8] = "forest",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "grass",
			[13] = "forest",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "water",
			[13] = "water",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "forest",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "desert",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "grass",
			[5] = "grass",
			[6] = "grass",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "water",
			[11] = "desert",
			[12] = "desert",
			[13] = "desert",
			[14] = "desert",
			[15] = "water",
			[16] = "water",
		},
		{
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "desert",
			[13] = "water",
			[14] = "water",
			[15] = "water",
		},
		{
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
		},
	},
	doodads = {
		{
			doodadType = "coast_small",
			pos = {8.8000742594401, 2.4711112976074},
		},
		{
			doodadType = "coast_small_flip",
			pos = {8.5584983825684, 2.2295354207357},
		},
		{
			doodadType = "coast_small_flip",
			pos = {8.5151379903158, 2.1613985697428},
		},
		{
			doodadType = "coast_small",
			pos = {7.7904109954834, 1.486224492391},
		},
		{
			doodadType = "coast_small",
			pos = {7.2453165054321, 1.4614483515422},
		},
		{
			doodadType = "coast_small",
			pos = {6.7064170837402, 1.4924189249674},
		},
		{
			doodadType = "coast_small_up",
			pos = {6.458646774292, 1.7154127756755},
		},
		{
			doodadType = "coast_small",
			pos = {5.7525018056234, 2.4463342030843},
		},
		{
			doodadType = "coast_test",
			pos = {5.3808466593424, 2.4215571085612},
		},
		{
			doodadType = "coast_small_flip",
			pos = {4.5446227391561, 2.204758644104},
		},
		{
			doodadType = "coast_small",
			pos = {3.8508669535319, 1.4862251281738},
		},
		{
			doodadType = "coast_test",
			pos = {3.2871894836426, 1.4676424662272},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4039057095846, 1.8031048774719},
		},
		{
			doodadType = "coast_small",
			pos = {1.7039550145467, 2.4658899307251},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4376022020976, 2.7198541959127},
		},
		{
			doodadType = "coast_test_up",
			pos = {1.4499905904134, 4.1197547912598},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4561850229899, 4.8444830576579},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.1623299916585, 5.5754044850667},
		},
		{
			doodadType = "coast_behind",
			pos = {2.3903640111287, 5.8088477452596},
		},
		{
			doodadType = "coast_behind",
			pos = {2.3903643290202, 6.750373840332},
		},
		{
			doodadType = "coast_behind",
			pos = {2.3841698964437, 6.8928419748942},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {3.0841204325358, 7.6175689697266},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {3.2203934987386, 7.6051807403564},
		},
		{
			doodadType = "coast_test_up",
			pos = {3.4248040517171, 8.4042390187581},
		},
		{
			doodadType = "coast_small_up",
			pos = {3.4248046875, 8.7758941650391},
		},
		{
			doodadType = "coast_small_up",
			pos = {3.4186102549235, 8.7696997324626},
		},
		{
			doodadType = "coast_small",
			pos = {2.749631245931, 9.4139022827148},
		},
		{
			doodadType = "coast_test",
			pos = {2.2974497477214, 9.4324849446615},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4550317128499, 9.7545859018962},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4488379160563, 9.8722769419352},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.1611766815186, 10.535061518351},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.2045367558797, 10.553644498189},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4213352203369, 10.79522005717},
		},
		{
			doodadType = "coast_small",
			pos = {1.752355893453, 11.464199384054},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.5045862197876, 11.736746788025},
		},
		{
			doodadType = "coast_test_up",
			pos = {1.4612261454264, 12.808352152507},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.1983420054118, 13.595022201538},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4523067474365, 13.824209213257},
		},
		{
			doodadType = "coast_test_up",
			pos = {2.4646949768066, 14.728570302327},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {3.1665954589844, 15.533622741699},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {3.3028691609701, 15.546011606852},
		},
		{
			doodadType = "coast_small_flip",
			pos = {3.5568332672119, 15.254882176717},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {4.2258129119873, 14.585902531942},
		},
		{
			doodadType = "coast_test_up",
			pos = {4.4611943562826, 15.41593170166},
		},
		{
			doodadType = "coast_small_up",
			pos = {4.4550005594889, 15.855724334717},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {5.1673386891683, 16.543286005656},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {5.7000439961751, 16.530897776286},
		},
		{
			doodadType = "coast_small_flip",
			pos = {6.5734335581462, 16.214990615845},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {7.3972695668538, 15.552206039429},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {8.9817078908285, 15.547141393026},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {10.405675252279, 15.5478515625},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {11.328619003296, 15.554045995076},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {12.709937413534, 15.523074467977},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {13.27361424764, 15.541657765706},
		},
		{
			doodadType = "coast_small_flip",
			pos = {13.515190760295, 15.287693659465},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {14.1717821757, 14.581549326579},
		},
		{
			doodadType = "coast_test_flip",
			pos = {14.512465159098, 13.732936859131},
		},
		{
			doodadType = "coast_small_flip",
			pos = {14.512463887533, 13.212618509928},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {15.20002746582, 12.562222798665},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {15.348688761393, 12.537445068359},
		},
		{
			doodadType = "coast_small_flip",
			pos = {15.565487543742, 12.283480962118},
		},
		{
			doodadType = "coast_small_flip",
			pos = {15.559292475382, 12.128624598185},
		},
		{
			doodadType = "coast_small",
			pos = {14.878588994344, 11.434206008911},
		},
		{
			doodadType = "coast_small",
			pos = {14.835229237874, 11.440400441488},
		},
		{
			doodadType = "coast_small_flip",
			pos = {14.599847157796, 11.20501836141},
		},
		{
			doodadType = "coast_small",
			pos = {13.92467435201, 10.455513636271},
		},
		{
			doodadType = "coast_small",
			pos = {13.763624191284, 10.467902501424},
		},
		{
			doodadType = "coast_small_flip",
			pos = {13.546825408936, 10.226327260335},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {14.252969741821, 9.56973584493},
		},
		{
			doodadType = "coast_small_flip",
			pos = {14.544099807739, 9.3405488332113},
		},
		{
			doodadType = "coast_test_flip",
			pos = {14.581265131632, 7.9902019500732},
		},
		{
			doodadType = "coast_test_flip",
			pos = {14.582983970642, 6.7679783503215},
		},
		{
			doodadType = "coast_small_flip",
			pos = {14.558208147685, 6.2476619084676},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {15.23957602183, 5.5662940343221},
		},
		{
			doodadType = "coast_small_flip",
			pos = {15.524511655172, 5.3061361312866},
		},
		{
			doodadType = "coast_small_flip",
			pos = {15.549288113912, 5.132695833842},
		},
		{
			doodadType = "coast_small",
			pos = {14.818366686503, 4.4513285954793},
		},
		{
			doodadType = "coast_small_flip",
			pos = {14.564401944478, 4.2221415837606},
		},
		{
			doodadType = "coast_small",
			pos = {13.907811800639, 3.4912195205688},
		},
		{
			doodadType = "coast_test",
			pos = {12.860982577006, 3.4850257237752},
		},
		{
			doodadType = "coast_small",
			pos = {11.498247464498, 3.4850250879924},
		},
		{
			doodadType = "coast_small",
			pos = {10.767326037089, 3.4478597640991},
		},
		{
			doodadType = "coast_test_up",
			pos = {10.442854245504, 4.2898524602254},
		},
		{
			doodadType = "coast_small_up",
			pos = {10.430465380351, 4.8225584030151},
		},
		{
			doodadType = "coast_small",
			pos = {9.7676808039347, 5.4234011967977},
		},
		{
			doodadType = "coast_test_flip",
			pos = {9.5384931564331, 4.5995658238729},
		},
		{
			doodadType = "coast_test_flip",
			pos = {9.5384931564331, 3.2863842646281},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {11.23232014974, 11.573272705078},
		},
		{
			doodadType = "coast_small_flip",
			pos = {10.513786951701, 12.291805903117},
		},
		{
			doodadType = "coast_small_up",
			pos = {11.405759175618, 11.994481404622},
		},
		{
			doodadType = "coast_small_up",
			pos = {11.442924499512, 11.78387705485},
		},
		{
			doodadType = "coast_small_flip",
			pos = {10.534439404806, 13.026850064596},
		},
		{
			doodadType = "coast_small_flip",
			pos = {10.528246243795, 13.24365011851},
		},
		{
			doodadType = "coast_small_flip",
			pos = {10.528246243795, 13.24365011851},
		},
		{
			doodadType = "coast_behind",
			pos = {11.414024035136, 12.816246350606},
		},
		{
			doodadType = "coast_small",
			pos = {10.745045661926, 13.460449536641},
		},
	},
	invasionMask = {
		{
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
		},
		{
			[2] = 4,
			[3] = 4,
			[4] = 4,
			[5] = 4,
			[6] = 4,
			[7] = 3,
			[8] = 3,
			[9] = 3,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
		},
		{
			4,
			4,
			4,
			4,
			4,
			3,
			3,
			3,
			3,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
		},
		{
			4,
			4,
			4,
			4,
			3,
			3,
			3,
			3,
			3,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
		},
		{
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
		},
		{
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
			[0] = 3,
		},
		{
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			3,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
			2,
			[0] = 3,
		},
		{
			[2] = 3,
			[3] = 3,
			[4] = 3,
			[5] = 3,
			[6] = 3,
			[7] = 3,
			[8] = 3,
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
		{
			[3] = 3,
			[4] = 3,
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
		{
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
		},
		{
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
		{
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
		{
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
		{
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
		{
			[9] = 1,
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
		},
		{
			[10] = 1,
			[11] = 1,
			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,
			[16] = 1,
		},
		{
			[10] = 1,
			[11] = 1,
			[13] = 1,
			[14] = 1,
		},
		{
			[16] = 1,
		},
		[0] = {
			[2] = 4,
			[3] = 4,
			[9] = 3,
			[12] = 2,
			[13] = 2,
			[14] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
	},
}

return data
