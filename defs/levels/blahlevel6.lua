local data = {
	humanName = "test",
	width = 20,
	height = 20,
	cameraPos = {5, 15},
	customVictoryText = "You've explored the entire island!  It's a donut.",
	tileDeck = {
		{
			alchemist = 1,
			barracks = 2,
			blacksmith = 2,
			cathedral = 1,
			chapel = 1,
			farm = 4,
			fishery = 4,
			fountain = 1,
			mill = 3,
			mine = 4,
			quarry = 4,
			sawmill = 4,
			tavern = 1,
			tower = 6,
			town = 8,
			woodcutter = 2,
		},
		{
			barracks = 2,
			farm = 8,
			fishery = 6,
			mine = 5,
			quarry = 5,
			tower = 4,
			town = 10,
			woodcutter = 5,
		},
	},
	tiles = {
		{
			def = "farm",
			pos = {4, 15},
		},
		{
			def = "woodcutter",
			pos = {5, 18},
		},
		{
			def = "town",
			pos = {5, 17},
		},
		{
			def = "town",
			pos = {5, 16},
		},
		{
			def = "farm",
			pos = {5, 15},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 8,
				invasionIndex = 1,
			},
			pos = {5, 7},
		},
		{
			def = "farm",
			pos = {6, 15},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 8,
				invasionIndex = 2,
			},
			pos = {15, 16},
		},
		{
			def = "invasion",
			extraData = {
				armySize = 14,
				invasionIndex = 3,
			},
			pos = {16, 6},
		},
	},
	terrain = {
		{
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "water",
			[18] = "water",
		},
		{
			[2] = "water",
			[3] = "desert",
			[4] = "grass",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "grass",
			[14] = "forest",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "water",
			[19] = "water",
		},
		{
			[2] = "water",
			[3] = "desert",
			[4] = "desert",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "grass",
			[12] = "desert",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "forest",
			[19] = "water",
			[20] = "water",
		},
		{
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "forest",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "forest",
			[19] = "grass",
			[20] = "water",
		},
		{
			[2] = "water",
			[3] = "water",
			[4] = "water",
			[5] = "grass",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "mountain",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "water",
		},
		{
			[2] = "water",
			[3] = "water",
			[4] = "grass",
			[5] = "mountain",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "desert",
			[11] = "desert",
			[12] = "grass",
			[13] = "forest",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "grass",
			[20] = "water",
		},
		{
			[2] = "water",
			[3] = "forest",
			[4] = "grass",
			[5] = "desert",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "desert",
			[10] = "water",
			[11] = "desert",
			[12] = "desert",
			[13] = "grass",
			[14] = "mountain",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "desert",
			[20] = "water",
		},
		{
			[2] = "water",
			[3] = "forest",
			[4] = "desert",
			[5] = "desert",
			[6] = "desert",
			[7] = "desert",
			[8] = "desert",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "grass",
			[14] = "grass",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "desert",
			[20] = "water",
		},
		{
			[2] = "water",
			[3] = "desert",
			[4] = "desert",
			[5] = "desert",
			[6] = "desert",
			[7] = "desert",
			[8] = "water",
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "grass",
			[15] = "grass",
			[16] = "mountain",
			[17] = "grass",
			[18] = "grass",
			[19] = "water",
			[20] = "water",
		},
		{
			[2] = "water",
			[3] = "desert",
			[4] = "desert",
			[5] = "desert",
			[6] = "desert",
			[7] = "water",
			[8] = "water",
			[13] = "water",
			[14] = "water",
			[15] = "grass",
			[16] = "forest",
			[17] = "grass",
			[18] = "mountain",
			[19] = "water",
		},
		{
			"water",
			"desert",
			"desert",
			"grass",
			"grass",
			"water",
			"water",
			[13] = "water",
			[14] = "water",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "forest",
			[19] = "water",
		},
		{
			"water",
			"water",
			"desert",
			"desert",
			"water",
			"water",
			"water",
			[13] = "water",
			[14] = "water",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "grass",
			[19] = "water",
		},
		{
			"water",
			"water",
			"desert",
			"grass",
			"grass",
			"grass",
			"water",
			"water",
			[12] = "water",
			[13] = "water",
			[14] = "mountain",
			[15] = "forest",
			[16] = "grass",
			[17] = "mountain",
			[18] = "grass",
			[19] = "water",
		},
		{
			"water",
			"grass",
			"forest",
			"grass",
			"grass",
			"grass",
			"forest",
			"water",
			"water",
			"water",
			"water",
			"water",
			"water",
			"mountain",
			"grass",
			"grass",
			"grass",
			"mountain",
			"water",
		},
		{
			"water",
			"water",
			"water",
			"desert",
			"forest",
			"grass",
			"grass",
			"forest",
			"grass",
			"grass",
			"grass",
			"water",
			"grass",
			"grass",
			"grass",
			"mountain",
			"grass",
			"forest",
			"water",
		},
		{
			[2] = "water",
			[3] = "desert",
			[4] = "mountain",
			[5] = "grass",
			[6] = "grass",
			[7] = "grass",
			[8] = "grass",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "mountain",
			[13] = "grass",
			[14] = "mountain",
			[15] = "grass",
			[16] = "grass",
			[17] = "grass",
			[18] = "mountain",
			[19] = "water",
		},
		{
			[2] = "water",
			[3] = "water",
			[4] = "forest",
			[5] = "forest",
			[6] = "grass",
			[7] = "forest",
			[8] = "forest",
			[9] = "grass",
			[10] = "grass",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "forest",
			[15] = "grass",
			[16] = "mountain",
			[17] = "water",
			[18] = "water",
			[19] = "water",
		},
		{
			[3] = "water",
			[4] = "water",
			[5] = "water",
			[6] = "water",
			[7] = "water",
			[8] = "desert",
			[9] = "forest",
			[10] = "forest",
			[11] = "grass",
			[12] = "grass",
			[13] = "grass",
			[14] = "grass",
			[15] = "desert",
			[16] = "water",
			[17] = "water",
			[18] = "mountain",
		},
		{
			[7] = "water",
			[8] = "water",
			[9] = "water",
			[10] = "mountain",
			[11] = "grass",
			[12] = "forest",
			[13] = "mountain",
			[14] = "water",
			[15] = "water",
			[16] = "water",
			[17] = "forest",
			[18] = "grass",
		},
		{
			[9] = "water",
			[10] = "water",
			[11] = "water",
			[12] = "water",
			[13] = "water",
			[14] = "water",
		},
	},
	doodads = {
		{
			doodadType = "coast_small",
			pos = {6.8133443196615, 10.476387023926},
		},
		{
			doodadType = "coast_behind",
			pos = {13.418129920959, 6.9319728215535},
		},
		{
			doodadType = "coast_small",
			pos = {8.7922840118408, 13.453873316447},
		},
		{
			doodadType = "coast_test",
			pos = {10.37634340922, 14.420648574829},
		},
		{
			doodadType = "coast_test",
			pos = {11.647221883138, 14.420649210612},
		},
		{
			doodadType = "coast_test",
			pos = {13.679873784383, 13.445833206177},
		},
		{
			doodadType = "coast_small",
			pos = {12.735792160034, 13.46398862203},
		},
		{
			doodadType = "coast_small",
			pos = {14.755582173665, 12.433670043945},
		},
		{
			doodadType = "coast_small",
			pos = {18.816234588623, 9.4475288391113},
		},
		{
			doodadType = "coast_small",
			pos = {17.804069519043, 7.4731267293294},
		},
		{
			doodadType = "coast_small",
			pos = {15.779741923014, 2.4713122049967},
		},
		{
			doodadType = "coast_small",
			pos = {16.782828013102, 3.4743982950846},
		},
		{
			doodadType = "coast_small",
			pos = {14.790271759033, 3.4607823689779},
		},
		{
			doodadType = "coast_small",
			pos = {13.764491399129, 1.4727649688721},
		},
		{
			doodadType = "coast_test",
			pos = {12.684244791667, 2.4259236653646},
		},
		{
			doodadType = "coast_small",
			pos = {11.826401392619, 2.4576956431071},
		},
		{
			doodadType = "coast_small",
			pos = {10.782465616862, 1.4682261149089},
		},
		{
			doodadType = "coast_test",
			pos = {9.6659081776937, 2.4576956431071},
		},
		{
			doodadType = "coast_test",
			pos = {8.222552617391, 2.4667733510335},
		},
		{
			doodadType = "coast_small",
			pos = {6.7565035820007, 2.471312046051},
		},
		{
			doodadType = "coast_small",
			pos = {5.7584346135457, 3.4454704920451},
		},
		{
			doodadType = "coast_small",
			pos = {4.7689644495646, 4.4349406560262},
		},
		{
			doodadType = "coast_small",
			pos = {3.7522617975871, 5.4516433080037},
		},
		{
			doodadType = "coast_behind",
			pos = {3.3755372365316, 5.8919118245443},
		},
		{
			doodadType = "coast_behind",
			pos = {3.4027700424194, 5.7375911076864},
		},
		{
			doodadType = "coast_small_up",
			pos = {3.4209254582723, 6.7724491755168},
		},
		{
			doodadType = "coast_test_up",
			pos = {2.4314556121826, 8.2702706654867},
		},
		{
			doodadType = "coast_test_up",
			pos = {2.417839050293, 9.8361740112305},
		},
		{
			doodadType = "coast_test_up",
			pos = {2.4359947840373, 11.379384040833},
		},
		{
			doodadType = "coast_small_up",
			pos = {2.4132998784383, 11.810574531555},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {2.2332318623861, 4.6098200480143},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {3.2317794164022, 4.59166431427},
		},
		{
			doodadType = "coast_test_up",
			pos = {1.4434715906779, 3.838215192159},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4661661783854, 2.7715848286947},
		},
		{
			doodadType = "coast_small",
			pos = {1.688570022583, 2.485637029012},
		},
		{
			doodadType = "coast_small",
			pos = {2.5509522755941, 2.5128701527913},
		},
		{
			doodadType = "coast_small",
			pos = {2.8051271438599, 2.5128704706828},
		},
		{
			doodadType = "coast_test_flip",
			pos = {3.5131880442301, 3.2935530344645},
		},
		{
			doodadType = "coast_small_flip",
			pos = {3.4723386764526, 4.3238719304403},
		},
		{
			doodadType = "coast_behind",
			pos = {6.3941888809204, 2.759264310201},
		},
		{
			doodadType = "coast_small_up",
			pos = {5.4546467463175, 3.7260395685832},
		},
		{
			doodadType = "coast_small_up",
			pos = {4.4515606562297, 4.7563587824504},
		},
		{
			doodadType = "coast_small",
			pos = {2.7222576141357, 7.4751313527425},
		},
		{
			doodadType = "coast_small",
			pos = {1.7805627187093, 12.464044570923},
		},
		{
			doodadType = "coast_test_up",
			pos = {1.4356104532878, 16.74872080485},
		},
		{
			doodadType = "coast_behind",
			pos = {1.3856830596924, 14.02994855245},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4310715993245, 14.910484949748},
		},
		{
			doodadType = "coast_test_up",
			pos = {1.4265327453613, 16.122358957926},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4492263793945, 12.695526123047},
		},
		{
			doodadType = "coast_small_up",
			pos = {1.4265321095785, 13.072251001994},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {2.1693560282389, 17.55988184611},
		},
		{
			doodadType = "coast_behind",
			pos = {2.4189936319987, 17.80951944987},
		},
		{
			doodadType = "coast_behind",
			pos = {3.3721516927083, 18.889765421549},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {3.1043599446615, 18.621973673503},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {4.2027626037598, 19.593288421631},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {5.8095156351725, 19.602364857992},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {7.3799591064453, 19.593287150065},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {8.2060298919678, 19.584210077922},
		},
		{
			doodadType = "coast_small_flip",
			pos = {8.519146601359, 19.248767217},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {10.98374303182, 18.590633392334},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {14.873540242513, 18.613327026367},
		},
		{
			doodadType = "coast_small_flip",
			pos = {19.5792649587, 17.150725682576},
		},
		{
			doodadType = "coast_small_flip",
			pos = {19.588343302409, 17.940485636393},
		},
		{
			doodadType = "coast_small_flip",
			pos = {19.579266866048, 18.29451751709},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {18.73957824707, 18.598620096842},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {18.131371815999, 18.571386973063},
		},
		{
			doodadType = "coast_test_up",
			pos = {14.441286087036, 10.760023117065},
		},
		{
			doodadType = "coast_behind",
			pos = {13.417122205098, 6.6697867711385},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {13.149329821269, 6.5835485458374},
		},
		{
			doodadType = "coast_small_up",
			pos = {12.432191530863, 5.8664102554321},
		},
		{
			doodadType = "coast_test_flip",
			pos = {7.5312393506368, 11.266576608022},
		},
		{
			doodadType = "coast_small_flip",
			pos = {7.5085452397664, 12.206119219462},
		},
		{
			doodadType = "coast_small_flip",
			pos = {8.5479427973429, 13.172895113627},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5237957636515, 14.166903495789},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {15.138355573018, 11.575219154358},
		},
		{
			doodadType = "coast_small_up",
			pos = {15.410686810811, 11.774928728739},
		},
		{
			doodadType = "coast_test_flip",
			pos = {18.519801139832, 8.2210079828898},
		},
		{
			doodadType = "coast_test_flip",
			pos = {18.537956555684, 8.6748933792114},
		},
		{
			doodadType = "coast_test_flip",
			pos = {19.586431821187, 10.231719017029},
		},
		{
			doodadType = "coast_test_flip",
			pos = {19.54558022817, 11.734077771505},
		},
		{
			doodadType = "coast_test_flip",
			pos = {19.550119717916, 12.6826988856},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {19.23694006602, 13.513309160868},
		},
		{
			doodadType = "coast_test_flip",
			pos = {18.57426738739, 14.175981839498},
		},
		{
			doodadType = "coast_small_flip",
			pos = {18.524339993795, 15.269844373067},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {18.233853022257, 15.560331344604},
		},
		{
			doodadType = "coast_small_flip",
			pos = {17.557563463847, 16.20938650767},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {17.253461201986, 16.540723164876},
		},
		{
			doodadType = "coast_small_flip",
			pos = {16.51816590627, 17.14892800649},
		},
		{
			doodadType = "coast_small_flip",
			pos = {16.563555717468, 17.956845283508},
		},
		{
			doodadType = "coast_small_flip",
			pos = {16.554478009542, 18.256409645081},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {16.277607440948, 18.560512065887},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {15.660323460897, 18.578667322795},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {13.941052118937, 18.586022059123},
		},
		{
			doodadType = "coast_test_flip_up",
			pos = {12.470463752747, 18.567866325378},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {11.667087554932, 18.58148320516},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {10.055795351664, 18.567866961161},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {9.2251844406128, 18.572405179342},
		},
		{
			doodadType = "coast_small",
			pos = {7.814035097758, 12.431908607483},
		},
		{
			doodadType = "coast_small_flip",
			pos = {7.5280876159668, 9.2229410807292},
		},
		{
			doodadType = "coast_small_flip",
			pos = {8.5084800720215, 8.2425486246745},
		},
		{
			doodadType = "coast_small_flip",
			pos = {9.5569547017415, 7.2576179504395},
		},
		{
			doodadType = "coast_small_flip",
			pos = {10.52826944987, 6.2499923706055},
		},
		{
			doodadType = "coast_small_flip",
			pos = {11.522277832031, 5.2287508646647},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {12.180411020915, 4.5978507995605},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {11.218174616496, 5.5600872039795},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {10.265015920003, 6.513245900472},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {9.2573903401693, 7.520871480306},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {8.1907602945964, 8.5602684020996},
		},
		{
			doodadType = "coast_small_flip_up",
			pos = {7.2512178421021, 9.5270439783732},
		},
		{
			doodadType = "coast_small_flip",
			pos = {6.5386180877686, 10.212410608927},
		},
		{
			doodadType = "coast_small_flip",
			pos = {11.535893758138, 2.1922594706217},
		},
		{
			doodadType = "coast_small_up",
			pos = {10.462102572123, 1.7533210118612},
		},
		{
			doodadType = "coast_small_up",
			pos = {13.453206380208, 1.7487818400065},
		},
		{
			doodadType = "coast_test_flip",
			pos = {14.547070185343, 2.2072060902913},
		},
		{
			doodadType = "coast_small_flip",
			pos = {14.533453623454, 3.2102928161621},
		},
		{
			doodadType = "coast_small_flip",
			pos = {16.512393315633, 3.2284475962321},
		},
		{
			doodadType = "coast_test_flip",
			pos = {17.515480041504, 4.2315343221029},
		},
		{
			doodadType = "coast_test_flip",
			pos = {17.52455774943, 5.8382886250814},
		},
		{
			doodadType = "coast_small_flip",
			pos = {17.520017941793, 7.2135610580444},
		},
		{
			doodadType = "coast_behind",
			pos = {18.416269302368, 16.687187830607},
		},
		{
			doodadType = "coast_small",
			pos = {18.765761693319, 16.401240666707},
		},
		{
			doodadType = "coast_small",
			pos = {18.906465530396, 16.414856592814},
		},
		{
			doodadType = "coast_small",
			pos = {17.767213821411, 17.436099370321},
		},
		{
			doodadType = "coast_small_up",
			pos = {17.417722066243, 17.722045898438},
		},
		{
			doodadType = "coast_small_up",
			pos = {12.439197540283, 13.7604637146},
		},
		{
			doodadType = "coast_small_up",
			pos = {14.454448064168, 12.725605646769},
		},
		{
			doodadType = "coast_small_up",
			pos = {12.414036115011, 4.7770853042603},
		},
		{
			doodadType = "coast_small_up",
			pos = {12.468502362569, 5.6485452651978},
		},
		{
			doodadType = "coast_behind",
			pos = {14.402052879333, 7.7818053563436},
		},
		{
			doodadType = "coast_behind",
			pos = {14.388435681661, 8.58518187205},
		},
		{
			doodadType = "coast_small_up",
			pos = {14.420207341512, 9.3794803619385},
		},
		{
			doodadType = "coast_behind_flip",
			pos = {14.184187889099, 7.6184066136678},
		},
		{
			doodadType = "coast_small_up",
			pos = {15.450527826945, 2.7845300038656},
		},
	},
	invasionMask = {
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
			[0] = 1,
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
			[0] = 1,
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
			[0] = 1,
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
			[0] = 1,
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
			[0] = 1,
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
			[0] = 1,
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
			[0] = 1,
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
			[0] = 1,
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
			[0] = 1,
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
			2,
			2,
			2,
			2,
			2,
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
			2,
			2,
			2,
			2,
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
			2,
			2,
			2,
			2,
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
			2,
			2,
			2,
			2,
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
			2,
			2,
			2,
			2,
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
			2,
			2,
			2,
			2,
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
			2,
			2,
			2,
			2,
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
			2,
			2,
			2,
			2,
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
			[8] = 3,
			[9] = 2,
			[10] = 2,
			[11] = 2,
			[12] = 2,
			[13] = 2,
			[15] = 2,
			[16] = 2,
			[17] = 2,
		},
		[0] = {
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[6] = 1,
		},
	},
}

return data
