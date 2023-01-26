local response = gg.makeRequest("https://raw.githubusercontent.com/gxosty/gx-gg/main/gx.lua")
-- local response = gg.makeRequest("http://192.168.1.108:9999/gx/gx.lua")
gx = load(response.content)()
-- local gx = require("gx.gx")
gameinfo = gg.getTargetInfo()
script = {process = {live = 'com.tgc.sky.android', beta = "com.tgc.sky.android.test.gold"}}

gx.vars.settings = {
	version = tostring(gameinfo.versionCode)
}
config_path = "/sdcard/gxostmini.gx"
config = {
	offset = {},
	settings = {}
}
defaults = {
	wbdistance = 5.0,
	version = math.floor(gameinfo.versionCode),
	useautoburn = false
}
local old_ranges = gg.getRanges()
local bootloader = gg.getRangesList('libBootloader.so')[1].start
gx.set_signs({[true] = '🟩', [false] = '⬜'})
gx.set_back_text("[⇦] Back")

function pcheck()
	if gameinfo.packageName == script.process.live then
	elseif gameinfo.packageName == script.process.beta then
	else
		gg.alert('[Error] You have selected wrong process!\nprocess: ' .. gameinfo.packageName)
		os.exit()
	end
end

-- x: 1.0~1.2
-- y: 0~1.5
-- z: -1.3~-1.1
-- w: 1.0

-- ????????????			4,043,309,695 	<- Chats 				h [3B]? 00 00 14 (7F) 02 00 F1 E8
-- CBZ W8, [PC, #0xC]	872,415,336 	<- Friendship Nodes 	h 08 E1 79 39 (68) 00 00 34 FC
-- LDR W8, [X28,#0x28]	-1,186,976,888 	<- Emotes				h 7C 00 00 B4 (88) 2B 40 B9 48
-- CSET W0, WZR, NE 	446,629,856 	<- Cosmetics 			h 1F 00 00 F1 (E0) 07 9F 1A FD 7B 41 A9

-- plants h 00 00 80 7F 00 00 00 00 00 00 80 3F 00 00 00 00 00 00 80 3F

maps = {
	{"Home", "CandleSpace", 0},
	{"Isle", "Dawn", 5},
	{"Trials Cave", "DawnCave", 0},
	{"Water Trial", "Dawn_TrialsWater", 1},
	{"Earth Trial", "Dawn_TrialsEarth", 1},
	{"Air Trial", "Dawn_TrialsAir", 1},
	{"Fire Trial", "Dawn_TrialsFire", 1},
	{"Prairie Butterfly Field", "Prairie_ButterflyFields", 3},
	{"Bird Nest", "Prairie_NestAndKeeper", 2},
	{"Sancuary Islands", "Prairie_Island", 8},
	{"Prairie Cave", "Prairie_Cave", 2},
	{"Prairie Village", "Prairie_Village", 5},
	{"8 player puzzle", "DayHubCave", 1},
	{"Prairie Temple", "DayEnd", 0},
	{"Forest", "Rain", 2},
	{"Forest's Brook", "RainForest", 4},
	{"Forest Elevated Clearing", "RainShelter", 2},
	{"Forest Caves", "Rain_Cave", 4},
	{"Forest Boneyard", "RainMid", 3},
	{"Forest Temple", "RainEnd", 1},
	{"Treehouse", "Rain_BaseCamp", 2},
	{"Wind Paths", "Skyway", 1},
	{"Valley", "Sunset", 3},
	{"Valley Citadel", "Sunset_Citadel", 2},
	{"Valley Fly Race", "Sunset_FlyRace", 2},
	{"Valley Race", "SunsetRace", 1},
	{"Valley Race End", "SunsetEnd", 1},
	{"Hermit Valley", "Sunset_YetiPark", 2},
	{"Dream Village", "SunsetVillage", 3},
	{"Valley Dream Theater", "Sunset_Theater", 1},
	{"Valley Music Shop", "SunsetVillage_MusicShop", 0},
	{"Valley Colosseum", "SunsetColosseum", 1},
	{"Valley Temple", "SunsetEnd2", 1},
	{"Wasteland Lobby", "DuskStart", 0},
	{"Wasteland", "Dusk", 2},
	{"Abyss Area", "Dusk_Triangle", 2},
	{"Wasteland Graveyard", "DuskGraveyard", 6},
	{"Forgotten Ark", "DuskOasis", 2},
	{"Crab Fields", "Dusk_CrabField", 3},
	{"Battlefield", "DuskMid", 2},
	{"Wasteland Temple", "DuskEnd", 1},
	{"Vault", "Night", 2},
	{"Vault 2", "Night2", 4},
	{"Vault End", "NightEnd", 0},
	{"Vault Archive", "NightArchive", 2},
	{"Starlight Desert", "NightDesert", 3},
	{"Starlight Desert Beach", "NightDesert_Beach", 0},
	{"Jar Cave", "Night_JarCave", 0},
	{"Infinite Desert", "Night_InfiniteDesert", 0},
	{"Planets", "NightDesert_Planets", 0},
	{"Office", "TGCOffice", 0},
	{"Void of Shattering", "StormEvent_VoidSpace", 0},
	{"Days of Mischief", "Event_DaysOfMischief", 0},
	{"Nintendo area", "Nintendo_CandleSpace", 0},
	{"Eden", "StormStart", 1},
	{"Eden mid", "Storm", 9},
	{"Eden end", "StormEnd", 0},
	{"!!! Orbit !!!", "OrbitMid", 0},
	{"!!! Orbit 2 !!!", "OrbitEnd", 0},
	{"!!! Heaven !!!", "CandleSpaceEnd", 0},
	{"Credits map", "Credits", 0},
	{"Eyes of Child", "AP16EyesOfChild", 0},
	{"Runaway", "AP16Runaway", 0},
	{"Soft Inside", "AP16SoftInside", 0},
	{"The Seed", "AP16TheSeed", 0},
	{"Void Space", "AP16VoidSpace", 0},
	{"Warrior", "AP16Warrior", 0}
}

crpoints = {
	{family = "Isle", name = "Isle", map = "Dawn", x = 199.0281219482422, y = 1.4949415922164917, z = 55.607757568359375},
	{family = "Isle", name = "Isle", map = "Dawn", x = 188.8359375, y = 2.1274662017822266, z = 281.8878173828125},
	{family = "Isle", name = "Isle", map = "Dawn", x = -249.32679748535156, y = 87.454345703125, z = 142.54803466796875},
	{family = "Isle", name = "Isle", map = "Dawn", x = -237.0557403564453, y = 85.76863098144531, z = 146.7663116455078},
	{family = "Isle", name = "Isle", map = "Dawn", x = -236.04269409179688, y = 86.95657348632812, z = 152.31085205078125},
	{family = "Isle", name = "Isle", map = "Dawn", x = -244.92938232421875, y = 84.61653137207031, z = 156.7991943359375},
	{family = "Isle", name = "Isle", map = "Dawn", x = -250.42015075683594, y = 86.00946044921875, z = 152.6269073486328},
	{family = "Isle", name = "Isle", map = "Dawn", x = -40.649532318115234, y = 4.388500213623047, z = 213.8318634033203},
	{family = "Isle", name = "Isle", map = "Dawn", x = -41.29156494140625, y = 4.239292621612549, z = 221.49343872070312},
	{family = "Isle", name = "Isle", map = "Dawn", x = -11.082122802734375, y = 52.980106353759766, z = 371.33514404296875},
	{family = "Isle", name = "Isle", map = "Dawn", x = -14.093791961669922, y = 51.66219711303711, z = 375.8876647949219},
	{family = "Isle", name = "Isle", map = "Dawn", x = -9.736741065979004, y = 60.848907470703125, z = 410.74066162109375},
	{family = "Isle", name = "Isle", map = "Dawn", x = -6.5760111808776855, y = 94.94068145751953, z = 414.8026123046875},
	{family = "Isle", name = "Isle", map = "Dawn", x = -20.721954345703125, y = 116.52444458007812, z = 411.71160888671875, e = true},

	{family = "Isle", name = "Trials Cave", map = "DawnCave", x = -300.23052978515625, y = 235.61544799804688, z = -3.1008522510528564},
	{family = "Isle", name = "Trials Cave", map = "DawnCave", x = -325.010009765625, y = 303.2691345214844, z = -13.350000381469727, e = true},

	{family = "Isle", name = "Water Trial", map = "Dawn_TrialsWater", x = -99.710937, y = 65.197624, z = 36.879520},
	{family = "Isle", name = "Water Trial", map = "Dawn_TrialsWater", x = -210.3384552001953, y = 65.64981079101562, z = -107.05089569091797},
	{family = "Isle", name = "Water Trial", map = "Dawn_TrialsWater", x = -429.215423, y = 69.571205, z = -1.099857, e = true},

	{family = "Isle", name = "Earth Trial", map = "Dawn_TrialsEarth", x = 6.291422367095947, y = 124.32449340820312, z = 31.029136657714844},
	{family = "Isle", name = "Earth Trial", map = "Dawn_TrialsEarth", x = -0.2812114357948303, y = 122.03596496582031, z = 18.65877914428711},
	{family = "Isle", name = "Earth Trial", map = "Dawn_TrialsEarth", x = -25.815471649169922, y = 124.36991882324219, z = -30.730470657348633},
	{family = "Isle", name = "Earth Trial", map = "Dawn_TrialsEarth", x = -3.719712495803833, y = 122.5062026977539, z = 6.43914794921875},
	{family = "Isle", name = "Earth Trial", map = "Dawn_TrialsEarth", x = 16.933677673339844, y = 128.23423767089844, z = 0.28745758533477783},
	{family = "Isle", name = "Earth Trial", map = "Dawn_TrialsEarth", x = 0.8367459774017334, y = 133.91415405273438, z = -12.411553382873535},
	{family = "Isle", name = "Earth Trial", map = "Dawn_TrialsEarth", x = 4.763298511505127, y = 133.9190673828125, z = -15.527111053466797},

	{family = "Isle", name = "Air Trial", map = "Dawn_TrialsAir", x = -137.189926, y = 104.670616, z = -8.522333, e = true},

	{family = "Isle", name = "Fire Trial", map = "Dawn_TrialsFire", x = -250.02294921875, y = 50.231990814208984, z = -14.466132164001465, e = true},

	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -434.9216613769531, y = 196.80934143066406, z = 115.62545776367188},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -431.51947021484375, y = 196.65725708007812, z = 119.02850341796875},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -426.94873046875, y = 196.61680603027344, z = 120.97035217285156},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -20.25689697265625, y = 158.474609375, z = 26.712081909179688},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 2.556781530380249, y = 150.36204528808594, z = 77.19155883789062},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 7.2708048820495605, y = 150.7943115234375, z = 58.697471618652344},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 50.220489501953125, y = 157.8102264404297, z = 81.89761352539062},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 16.6181697845459, y = 155.23190307617188, z = 103.20137786865234},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 6.3694963455200195, y = 161.8115997314453, z = 144.8772735595703},

	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 65.85206604003906, y = 187.83665466308594, z = 302.1767578125},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 96.07904815673828, y = 196.78692626953125, z = 282.33734130859375},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 130.31956481933594, y = 202.70079040527344, z = 263.935791015625},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 133.99427795410156, y = 182.4741973876953, z = 296.8442687988281},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 200.1848602294922, y = 181.25865173339844, z = 399.07965087890625},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 210.53382873535156, y = 185.65869140625, z = 410.3680114746094},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 225.5228271484375, y = 180.96774291992188, z = 374.7661437988281},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 203.23948669433594, y = 187.85186767578125, z = 313.656982421875},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 213.3845672607422, y = 193.28684997558594, z = 268.37469482421875},

	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 232.0214080810547, y = 181.00465393066406, z = 88.76461029052734},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 253.2946319580078, y = 194.7389678955078, z = 99.6910629272461},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 271.82672119140625, y = 203.0044403076172, z = 97.30021667480469},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 274.6653747558594, y = 203.00927734375, z = 95.59391021728516},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 275.1145935058594, y = 200.77865600585938, z = 95.06674194335938},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 271.93585205078125, y = 198.75755310058594, z = 94.380615234375},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 350.6317138671875, y = 187.62559509277344, z = 90.79566955566406},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 361.6009521484375, y = 193.90757751464844, z = 66.78277587890625},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 362.8221435546875, y = 198.1484375, z = 68.22998046875},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 365.0539245605469, y = 198.746337890625, z = 66.2552719116211},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 363.3024597167969, y = 196.00723266601562, z = 64.41118621826172},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 362.3773193359375, y = 194.4857635498047, z = 66.81575775146484},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 363.2718811035156, y = 187.16172790527344, z = 65.94229125976562},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 368.2834777832031, y = 185.7389678955078, z = 56.55746841430664},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 357.0162658691406, y = 185.8424072265625, z = 48.44491195678711},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 349.24114990234375, y = 184.33226013183594, z = 31.19115447998047},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 325.0887145996094, y = 188.00051879882812, z = -11.489691734313965},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 318.56646728515625, y = 192.33877563476562, z = -15.543036460876465},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 320.47406005859375, y = 196.23507690429688, z = -17.258026123046875},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 317.0406494140625, y = 196.23060607910156, z = -18.192277908325195},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 316.500244140625, y = 193.84535217285156, z = -18.51616859436035},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 273.8976745605469, y = 183.2012176513672, z = 25.326534271240234},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 317.0408935546875, y = 183.3435821533203, z = -41.40444564819336},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 457.6338806152344, y = 253.81626892089844, z = 113.07112884521484},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 456.34912109375, y = 250.56185913085938, z = 133.7495574951172},
	{family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 477.7264709472656, y = 254.38027954101562, z = 122.01375579833984, e = true},

	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = -2.825667142868042, y = 39.470245361328125, z = 6.52934455871582},
	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = 2.698847770690918, y = 39.49882888793945, z = 6.942953109741211},
	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = 6.080935478210449, y = 39.227970123291016, z = 2.244690179824829},
	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = 5.837886810302734, y = 39.229705810546875, z = -2.3993277549743652},
	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = 2.594923496246338, y = 39.22773742675781, z = -5.9242987632751465},
	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = -2.3487942218780518, y = 39.22792053222656, z = -6.088262557983398},
	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = -6.0785369873046875, y = 39.227813720703125, z = -2.5309667587280273},
	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = -6.009952068328857, y = 39.227230072021484, z = 2.5176568031311035},
	{family = "Prairie", name = "8 player puzzle", map = "DayHubCave", x = -45.04271697998047, y = 57.995277404785156, z = -26.84793472290039, e = true},

	{family = "Prairie", name = "Prairie Temple", map = "DayEnd", x = 43.756683349609375, y = 83.43392944335938, z = -100.00375366210938},
	{family = "Prairie", name = "Prairie Temple", map = "DayEnd", x = 40.04158020019531, y = 84.47063446044922, z = -106.45093536376953},
	{family = "Prairie", name = "Prairie Temple", map = "DayEnd", x = 45.88062286376953, y = 87.30172729492188, z = -109.91032409667969},
	{family = "Prairie", name = "Prairie Temple", map = "DayEnd", x = 42.534854888916016, y = 75.16962432861328, z = -127.96691131591797},

	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 120.34546661376953, y = 180.1386260986328, z = -144.81192016601562},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 118.63809204101562, y = 196.70538330078125, z = -157.4332275390625},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 124.73165130615234, y = 189.20907592773438, z = -181.74571228027344},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 86.0428466796875, y = 170.88027954101562, z = -145.3521728515625},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 53.61101531982422, y = 158.05967712402344, z = -104.67848205566406},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 57.971797943115234, y = 171.68272399902344, z = -102.97749328613281},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 116.60604095458984, y = 158.4626007080078, z = -159.919921875},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 83.18549346923828, y = 177.95904541015625, z = -194.9310302734375},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 86.93468475341797, y = 195.34017944335938, z = -192.39390563964844},
	{family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 86.43867492675781, y = 206.1831512451172, z = -197.75018310546875},

	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 221.30966186523438, y = 95.4205093383789,  z = 246.12799072265625},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 302.3828430175781, y = 102.43594360351562,z = 55.154842376708984},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 328.4344482421875, y = 55.10648727416992, z = 24.160531997680664},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 330.4920959472656, y = 0.7480080723762512,z = 49.76979446411133},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 331.5647277832031, y = 28.37299346923828, z = 77.81648254394531},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 332.7480773925781, y = 19.45809555053711, z = 109.82171630859375},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 323.9369812011719, y = 19.74265480041504, z = 119.34933471679688},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 360.99853515625, y = 0.8867171406745911,z = 102.09505462646484},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 292.2529602050781, y = 1.7972142696380615,z = 97.39100646972656},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 293.5015869140625, y = 5.671757221221924, z = 93.57311248779297},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 291.7178039550781, y = 4.960348129272461, z = 91.42939758300781},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 297.21112060546875, y = 8.015872955322266,z = 79.08104705810547},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 281.9485778808594, y = 18.21292495727539, z = 75.27326965332031},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 283.03326416015625, y = 13.549970626831055,z = 142.6686248779297},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 395.7971496582031, y = 0.5805166363716125,z = 140.3428497314453},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 402.98358154296875, y = 0.5845025777816772,z = 139.914794921875},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 407.047119140625, y = 1.8199610710144043,z = 133.8062744140625},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 402.7697448730469, y = 1.491576910018921, z = 128.71054077148438},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 408.22515869140625, y = 1.0959080457687378,z = 124.1927719116211},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 418.94366455078125, y = 1.346806287765503, z = 114.8463134765625},

	{family = "Forest", name = "Forest", map = "Rain", x = -627.5069580078125, y = 217.14407348632812, z = 132.29254150390625},
	{family = "Forest", name = "Forest", map = "Rain", x = -616.1636962890625, y = 217.96763610839844, z = 131.7092742919922},
	{family = "Forest", name = "Forest", map = "Rain", x = -606.6339721679688, y = 219.0542449951172, z = 143.15093994140625},
	{family = "Forest", name = "Forest", map = "Rain", x = -227.1379852294922, y = 94.59088897705078, z = -0.7697563171386719},
	{family = "Forest", name = "Forest", map = "Rain", x = -218.19772338867188, y = 95.24683380126953, z = 18.248083114624023},
	{family = "Forest", name = "Forest", map = "Rain", x = -197.91104125976562, y = 96.91829681396484, z = 20.681482315063477},
	{family = "Forest", name = "Forest", map = "Rain", x = -190.1367645263672, y = 99.71876525878906, z = 1.693684697151184},
	{family = "Forest", name = "Forest", map = "Rain", x = -189.6844940185547, y = 99.72039794921875, z = 6.418601036071777},
	{family = "Forest", name = "Forest", map = "Rain", x = -176.1744384765625, y = 97.58684539794922, z = 27.11359214782715},
	{family = "Forest", name = "Forest", map = "Rain", x = -152.40316772460938, y = 97.47451782226562, z = 10.711235046386719},
	{family = "Forest", name = "Forest", map = "Rain", x = -138.90557861328125, y = 99.83920288085938, z = 8.311784744262695},
	{family = "Forest", name = "Forest", map = "Rain", x = -131.69488525390625, y = 99.02848815917969, z = 15.53860855102539},
	{family = "Forest", name = "Forest", map = "Rain", x = -145.4907989501953, y = 97.76659393310547, z = 32.29670715332031},
	{family = "Forest", name = "Forest", map = "Rain", x = -132.453857421875, y = 99.41631317138672, z = 30.74054527282715},
	{family = "Forest", name = "Forest", map = "Rain", x = -117.27128601074219, y = 98.44124603271484, z = 28.47067642211914},

	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -106.87351989746094, y = 100.36298370361328, z = 26.845001220703125},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -66.9166259765625, y = 106.41206359863281, z = 15.987776756286621},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -71.43730926513672, y = 106.19283294677734, z = 29.42997932434082},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -90.48992156982422, y = 107.46654510498047, z = 68.63447570800781},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -102.53341674804688, y = 112.61001586914062, z = 98.15390014648438},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -61.1483154296875, y = 107.54759979248047, z = 71.29415893554688},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -49.152469635009766, y = 112.6225814819336, z = 106.80461120605469},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -52.2340202331543, y = 106.9559555053711, z = 68.12784576416016},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -44.152137756347656, y = 98.25785064697266, z = 40.652305603027344},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -30.000036239624023, y = 99.83853912353516, z = 89.40448760986328},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -25.262786865234375, y = 99.02619934082031, z = 106.48714447021484},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -3.019312620162964, y = 97.72338104248047, z = 54.3570442199707},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -3.3033363819122314, y = 96.63065338134766, z = 45.61486053466797},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -10.738547325134277, y = 96.560302734375, z = 38.2621955871582},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 10.920255661010742, y = 96.74674987792969, z = 63.83553695678711},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 18.17075538635254, y = 103.65972137451172, z = 81.68426513671875},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 14.015870094299316, y = 103.88633728027344, z = 86.71963500976562},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 33.499290466308594, y = 99.54107666015625, z = 92.49481201171875},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 28.90913963317871, y = 97.52631378173828, z = 77.65611267089844},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 48.61222457885742, y = 100.28351593017578, z = 64.35684204101562},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 30.346363067626953, y = 102.65869903564453, z = 50.94283676147461},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -2.8514418601989746, y = 105.27145385742188, z = 38.68331527709961},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -25.91470718383789, y = 117.96334838867188, z = 24.574310302734375},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -12.590641021728516, y = 129.6649627685547, z = 80.07986450195312},

	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -56.465213775634766, y = 84.2270736694336, z = 13.129121780395508},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -53.31209945678711, y = 85.85016632080078, z = -1.164616584777832},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -31.846580505371094, y = 85.4524917602539, z = -16.620546340942383},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -10.121115684509277, y = 85.36117553710938, z = -0.4428945779800415},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -7.689718723297119, y = 84.80403137207031, z = -7.93649435043335},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 7.335092067718506, y = 93.05524444580078, z = 9.037647247314453},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 21.534086227416992, y = 96.26712036132812, z = -18.162221908569336},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 15.145105361938477, y = 93.96243286132812, z = -30.738271713256836},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 72.56535339355469, y = 90.0170669555664, z = -0.09888890385627747},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 98.26882934570312, y = 88.79229736328125, z = 16.438302993774414},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 68.35693359375, y = 90.31097412109375, z = 5.658980846405029},

	{family = "Forest", name = "Boneyard", map = "RainMid", x = 154.72926330566406, y = 153.88075256347656, z = -80.01103973388672},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 176.21690368652344, y = 136.11322021484375, z = -74.40979766845703},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 220.8597412109375, y = 144.34341430664062, z = -63.919700622558594},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 228.4488983154297, y = 144.74513244628906, z = -69.6482925415039},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 226.59027099609375, y = 137.0164794921875, z = -94.08983612060547},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 213.70126342773438, y = 134.67535400390625, z = -82.23283386230469},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 231.302978515625, y = 134.76483154296875, z = -75.29278564453125},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 225.11880493164062, y = 135.1485595703125, z = -48.195579528808594},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 246.91844177246094, y = 140.66452026367188, z = -24.212379455566406},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 222.1226043701172, y = 135.95423889160156, z = -23.232078552246094},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 198.26341247558594, y = 134.90887451171875, z = -20.693994522094727},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 194.89169311523438, y = 139.90567016601562, z = -21.957490921020508},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 158.82020568847656, y = 137.73153686523438, z = -35.448585510253906},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 165.13662719726562, y = 134.8585662841797, z = -16.541215896606445},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 157.76380920410156, y = 164.9462127685547, z = 120.3241958618164},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 137.87315368652344, y = 135.01556396484375, z = -10.567667007446289},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 113.74283599853516, y = 140.29092407226562, z = -8.871809959411621},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 109.18257904052734, y = 138.18038940429688, z = -5.300501823425293},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 85.58588409423828, y = 138.51504516601562, z = -11.016542434692383},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 11.743234634399414, y = 140.3578643798828, z = 21.9844970703125},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 53.756980895996094, y = 145.73068237304688, z = 45.95403289794922},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 72.4646987915039, y = 144.57154846191406, z = 52.49279022216797},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 107.68956756591797, y = 138.72364807128906, z = 90.01604461669922},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 135.0379180908203, y = 146.3599853515625, z = 73.45281982421875},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 218.6438751220703, y = 135.57656860351562, z = 48.81428146362305},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 220.6811981201172, y = 135.22120666503906, z = 25.96380615234375},
	{family = "Forest", name = "Boneyard", map = "RainMid", x = 194.08200073242188, y = 137.43736267089844, z = 3.8758304119110107},

	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = -11.367512702941895, y = 104.92166900634766, z = 7.069022178649902},
	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = -16.14753532409668, y = 110.67167663574219, z = 15.755743026733398},
	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = -4.72360897064209, y = 104.92156219482422, z = -16.801280975341797},
	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = 7.661406517028809, y = 106.77925109863281, z = -13.379182815551758},
	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = 70.02780151367188, y = 110.11184692382812, z = 8.755701065063477},
	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = 67.9460678100586, y = 108.55078887939453, z = -9.949658393859863},
	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = 85.07408142089844, y = 107.62669372558594, z = 18.29657745361328},
	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = 97.59142303466797, y = 108.91648864746094, z = -10.558381080627441},
	{family = "Forest", name = "Forest Temple", map = "RainEnd", x = 96.8857192993164, y = 106.91252136230469, z = 0.5247047543525696},

	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -281.12744140625, y = 78.80378723144531, z = 63.43763732910156},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -287.4362487792969, y = 79.96927642822266, z = 64.44855499267578},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -283.3801574707031, y = 80.45760345458984, z = 60.22416687011719},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -366.309814453125, y = 121.33006286621094, z = 1.9712470769882202},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -198.94265747070312, y = 132.4135284423828, z = -53.605995178222656},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -197.06515502929688, y = 132.30697631835938, z = -38.47796630859375},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -194.4332733154297, y = 133.1480255126953, z = -34.38194274902344},

	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -118.13933563232422, y = 259.9162292480469, z = -102.75277709960938},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -110.9569091796875, y = 267.4853210449219, z = -126.63736724853516},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -149.8379669189453, y = 255.26272583007812, z = -92.76813507080078},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -226.40333557128906, y = 226.99349975585938, z = -150.1130828857422},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -332.85382080078125, y = 198.15284729003906, z = -134.965576171875},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -449.37261962890625, y = 124.79118347167969, z = -64.77295684814453},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -454.82232666015625, y = 87.15667724609375, z = 10.588098526000977},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -478.97021484375, y = 75.27848815917969, z = 67.67167663574219},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -489.9560546875, y = 72.37419128417969, z = 94.00585174560547},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -448.0929870605469, y = 75.04175567626953, z = 156.9442596435547},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -485.6522216796875, y = 44.218658447265625, z = 174.22012329101562},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -547.7459716796875, y = 44.514198303222656, z = 184.8521270751953},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -523.0845336914062, y = 44.423866271972656, z = 220.34423828125},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -519.0438842773438, y = 39.155235290527344, z = 181.5220489501953},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -461.04888916015625, y = 45.51451110839844, z = 299.1689147949219},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -547.7459716796875, y = 51.514198303222656, z = 187.8521270751953},

	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = 24.30461311340332, y = 480.3187561035156, z = 79.38916015625},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = 0.7730821967124939, y = 471.98883056640625, z = 98.73863220214844},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = 15.789102554321289, y = 476.88525390625, z = 115.07817840576172},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -4.539078712463379, y = 506.80615234375, z = 17.915287017822266},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -38.60588836669922, y = 530.302978515625, z = 26.75312042236328},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -50.825294494628906, y = 530.581298828125, z = 92.44596099853516},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -47.60591506958008, y = 560.2349243164062, z = 95.62406921386719},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -37.603267669677734, y = 558.1720581054688, z = 105.84736633300781},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -27.670698165893555, y = 534.184814453125, z = 112.93629455566406},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -71.6363754272461, y = 478.3817443847656, z = 129.7525634765625},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -91.07054901123047, y = 478.3818359375, z = 105.4310531616211},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -114.208251953125, y = 480.2586364746094, z = 122.66777038574219},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -98.4845962524414, y = 480.25885009765625, z = 142.76773071289062},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -120.6845932006836, y = 485.2546081542969, z = 156.18331909179688},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -132.12664794921875, y = 485.2548522949219, z = 140.38540649414062},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -158.90478515625, y = 494.9086608886719, z = 155.41200256347656},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -143.98617553710938, y = 494.85540771484375, z = 174.80857849121094},

	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -254.30523681640625, y = 168.2843780517578, z = -12.157695770263672},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -156.98855590820312, y = 168.2843780517578, z = 9.336337089538574},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -153.88351440429688, y = 168.28440856933594, z = 100.99378967285156},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -192.94163513183594, y = 155.13572692871094, z = 100.3702621459961},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -251.78379821777344, y = 168.28439331054688, z = 128.69223022460938},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -259.8575744628906, y = 134.6875762939453, z = 55.82533264160156},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -263.8152160644531, y = 136.0878448486328, z = 63.645477294921875},

	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 48.9593505859375, y = 1163.4764404296875, z = -426.3514709472656},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = -99.89083099365234, y = 1034.5791015625, z = 154.72640991210938},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 240.6461639404297, y = 272.93902587890625, z = -140.89434814453125},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = -9.644035339355469, y = 163.5498809814453, z = 49.412017822265625},

	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 571.593994140625, y = 888.3776245117188, z = 168.59059143066406},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = -570.09375, y = 584.3001708984375, z = 260.0085144042969},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 264.4042663574219, y = 268.474609375, z = 8.70522403717041},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = -9.91002368927002, y = 164.16592407226562, z = 42.80824279785156},

	{family = "Valley", name = "Dream Village", map = "SunsetVillage", x = 70.97738647460938, y = 50.091190338134766, z = 77.55197143554688},
	{family = "Valley", name = "Dream Village", map = "SunsetVillage", x = 73.16737365722656, y = 76.686279296875, z = 258.62237548828125},

	{family = "Valley", name = "Hermit Valley", map = "Sunset_YetiPark", x = 683.3143920898438, y = 260.7340087890625, z = -191.4088134765625},

	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -189.81155395507812, y = 141.4324493408203, z = 9.400322914123535},
	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -150.7283172607422, y = 147.15293884277344, z = -29.96817398071289},
	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -149.0789337158203, y = 140.55630493164062, z = -30.956897735595703},
	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -127.04251861572266, y = 153.80331420898438, z = -18.655099868774414},
	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -118.18791198730469, y = 153.8365020751953, z = -11.451508522033691},

	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 325.54266357421875, y = 0.7171803712844849, z = 85.6548843383789},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 305.46075439453125, y = 1.1371877193450928, z = 83.43257904052734},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 301.6896667480469, y = 0.4210582971572876, z = 7.377177715301514},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 296.58001708984375, y = 0.4209943115711212, z = -3.981872320175171},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 326.160400390625, y = 2.323960304260254, z = -93.23677825927734},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 227.25306701660156, y = 0.42345771193504333, z = -57.93296813964844},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 236.72752380371094, y = 1.6746928691864014, z = -27.1873779296875},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 235.992919921875, y = 0.8092510104179382, z = -31.845582962036133},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 241.15618896484375, y = 0.8182752132415771, z = -30.821805953979492},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 233.54840087890625, y = 1.0340262651443481, z = 38.81285858154297},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 229.27874755859375, y = 0.5555566549301147, z = 45.96807098388672},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 215.48013305664062, y = 1.0234488248825073, z = -26.13222885131836},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 166.29627990722656, y = 8.562358856201172, z = -78.78106689453125},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 160.53623962402344, y = 10.130057334899902, z = -80.67024993896484},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 243.70608520507812, y = 2.157900094985962, z = -32.00672149658203},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 164.46588134765625, y = 9.805089950561523, z = -82.57740020751953},

	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 306.1929016113281, y = 134.1763458251953, z = 148.0145721435547},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 323.9439697265625, y = 124.77117156982422, z = 160.407470703125},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 343.85357666015625, y = 119.17353057861328, z = 138.00852966308594},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 371.95269775390625, y = 124.10951232910156, z = 122.36084747314453},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 386.20697021484375, y = 141.7088165283203, z = 112.7038803100586},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 460.92181396484375, y = 116.39605712890625, z = 106.32915496826172},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 486.12408447265625, y = 109.75221252441406, z = 77.25910186767578},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 501.28094482421875, y = 108.83856964111328, z = 42.512359619140625},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 501.4571228027344, y = 109.3819580078125, z = 60.27128601074219},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 524.3303833007812, y = 108.91081237792969, z = 79.91252136230469},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 510.9862060546875, y = 108.88075256347656, z = 95.27606201171875},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 345.56427001953125, y = 102.90645599365234, z = 285.5562438964844},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 363.22430419921875, y = 103.99573516845703, z = 281.4264831542969},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 348.7824401855469, y = 113.22404479980469, z = 302.89239501953125},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 351.1968994140625, y = 120.8555679321289, z = 287.78558349609375},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 514.4852905273438, y = 115.10224151611328, z = 281.5513916015625},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 531.6036376953125, y = 115.95156860351562, z = 282.4554748535156},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 522.7727661132812, y = 122.58702087402344, z = 301.07073974609375},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 544.7249755859375, y = 120.76127624511719, z = 302.51605224609375},
	{family = "Wasteland", name = "Forgotten Ark", map = "DuskOasis", x = 555.4881591796875, y = 120.62117004394531, z = 331.4057312011719},

	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 258.125732421875, y = 91.07647705078125, z = 69.18386840820312},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 228.34080505371094, y = 90.17217254638672, z = 44.99552536010742},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 153.4028778076172, y = 99.33203125, z = 51.87026596069336},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 142.13650512695312, y = 93.74398040771484, z = 47.037357330322266},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 138.78053283691406, y = 93.7501449584961, z = 35.12449645996094},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 120.574951171875, y = 95.17142486572266, z = 40.74140548706055},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -15.21030330657959, y = 67.0012435913086, z = 64.33759307861328},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -60.70269012451172, y = 69.90999603271484, z = 48.82630157470703},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -100.31651306152344, y = 65.903076171875, z = 85.19385528564453},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -156.21961975097656, y = 69.2191390991211, z = 71.32962036132812},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -132.6044464111328, y = 82.42596435546875, z = 44.612709045410156},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -142.8655242919922, y = 77.7611083984375, z = 7.1296892166137695},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -127.0461654663086, y = 85.11608123779297, z = -7.82523250579834},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -133.0246124267578, y = 89.198486328125, z = -8.304845809936523},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -134.4520721435547, y = 89.47970581054688, z = -0.19850149750709534},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -211.3054656982422, y = 69.5741195678711, z = 38.88704299926758},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -219.38613891601562, y = 70.64981079101562, z = 40.11408996582031},

	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 491.164306640625, y = 4.449798583984375, z = -179.68690490722656},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 476.0556335449219, y = 2.060676097869873, z = -189.42762756347656},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 431.59039306640625, y = 0.42155709862709045, z = -200.47726440429688},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 403.80694580078125, y = 1.0894190073013306, z = -192.0066375732422},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 421.1584777832031, y = 0.42153123021125793, z = -172.26559448242188},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 415.8636779785156, y = 3.996347188949585, z = -132.53663635253906},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 378.10076904296875, y = 0.4215579628944397, z = -159.69430541992188},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 366.0085144042969, y = 11.055920600891113, z = -167.72021484375},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 357.328125, y = 7.422126770019531, z = -162.73782348632812},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 431.6722412109375, y = 15.666921615600586, z = -211.5840301513672},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 428.3836669921875, y = 5.863647937774658, z = -269.5289001464844},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 422.6972351074219, y = 7.908556938171387, z = -269.0980529785156},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 425.5579528808594, y = 11.680506706237793, z = -273.95233154296875},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 419.6424560546875, y = 18.240461349487305, z = -290.66522216796875},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 407.0488586425781, y = 29.246938705444336, z = -288.2356262207031},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 404.56890869140625, y = 31.243824005126953, z = -291.65728759765625},

	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -78.39532470703125, y = 104.71238708496094, z = -49.61168670654297},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -169.7626953125, y = 121.92787170410156, z = -186.3069610595703},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -167.48765563964844, y = 131.01406860351562, z = -213.3323516845703},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -162.8568878173828, y = 140.9750213623047, z = -212.9852294921875},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -153.74847412109375, y = 118.97736358642578, z = -244.85972595214844},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -184.2496795654297, y = 102.65731811523438, z = -229.24124145507812},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -196.77908325195312, y = 101.55442810058594, z = -251.3762664794922},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -228.65757751464844, y = 101.19095611572266, z = -231.16485595703125},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -234.61509704589844, y = 105.64724731445312, z = -270.49127197265625},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -242.71041870117188, y = 104.25487518310547, z = -217.41465759277344},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -303.28802490234375, y = 97.5525894165039, z = -207.71392822265625},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -285.1036071777344, y = 96.33903503417969, z = -237.7067413330078},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -339.18682861328125, y = 85.06936645507812, z = -275.5760803222656},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -363.18994140625, y = 83.6025161743164, z = -225.4769287109375},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -368.695556640625, y = 88.67375183105469, z = -269.3667907714844},

	{family = "Wasteland", name = "Temple", map = "DuskEnd", x = -2.220445394515991, y = 208.1399383544922, z = 3.485891580581665},
	{family = "Wasteland", name = "Temple", map = "DuskEnd", x = -4.854544162750244, y = 208.32373046875, z = -0.1272975504398346},
	{family = "Wasteland", name = "Temple", map = "DuskEnd", x = -1.9476174116134644, y = 208.1549072265625, z = -3.3306093215942383},
	{family = "Wasteland", name = "Temple", map = "DuskEnd", x = 1.9105192422866821, y = 207.26780700683594, z = 0.03473372757434845},

	{family = "Vault", name = "Vault Ground", map = "Night", x = -70.606674, y = 37.364311, z = 6.985261},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 4.189236, y = 40.599648, z = -0.034227},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -13.450573, y = 40.922397, z = -60.144744},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 22.819200, y = 40.668312, z = -60.574802},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -16.683757, y = 80.668174, z = 11.811931},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 16.219352, y = 80.804435, z = 16.698659},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 24.124404, y = 82.328819, z = 12.879674},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 42.028636, y = 82.557167, z = 29.837903},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -35.312850, y = 149.129699, z = -15.719433},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -30.136156, y = 146.913833, z = -3.242324},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -40.824783, y = 160.067428, z = 35.710411},

	{family = "Vault", name = "Vault Up", map = "Night2", x = 9.900154, y = 129.401641, z = -39.562488},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 9.900154, y = 135.401641, z = -39.562488, e = true}, --Empty
	{family = "Vault", name = "Vault Up", map = "Night2", x = 9.311541, y = 129.212356, z = -38.534008},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 34.263050, y = 148.153747, z = 24.740060},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 38.724605, y = 160.201873, z = 63.100666},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 41.562381, y = 182.939712, z = 11.265374},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 43.062381, y = 188.939712, z = 11.265374, e = true}, --Empty
	{family = "Vault", name = "Vault Up", map = "Night2", x = 41.120372, y = 182.449356, z = 8.276473},
	{family = "Vault", name = "Vault Up", map = "Night2", x = -48.217571, y = 163.976684, z = -16.315469},
	{family = "Vault", name = "Vault Up", map = "Night2", x = -38.842617, y = 165.501800, z = -68.752708},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 2.090648, y = 294.567474, z = 3.439403},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 6.612639, y = 295.142539, z = -3.225664},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 48.616516, y = 302.333618, z = 6.771073},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 56.743221, y = 306.096588, z = 9.978611},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 59.066856, y = 304.052276, z = -1.819200},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 58.966945, y = 307.144927, z = -11.000758},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 69.967926, y = 310.304016, z = -0.081200},
	{family = "Vault", name = "Vault Up", map = "Night2", x = 69.967926, y = 316.304016, z = -0.081200, e = true}, --Empty
	{family = "Vault", name = "Vault Up", map = "Night2", x = 72.401931, y = 309.362030, z = 0.048972},

	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = 25.960012, y = 541.458923, z = 49.532020},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -17.483531, y = 565.071044, z = 72.817947},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -31.642618, y = 565.072998, z = 72.946655},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -37.640979, y = 551.313110, z = 61.820144},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -13.328448, y = 551.813232, z = 75.945159},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -18.539285, y = 551.813232, z = 56.910717},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -41.341411, y = 543.448059, z = 61.431583},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -41.333190, y = 543.448486, z = 54.674259},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -31.593242, y = 554.311462, z = 85.431785},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -31.494831, y = 554.308959, z = 78.748741},
	{family = "Vault", name = "Vault Archive", map = "NightArchive", x = -13.159896, y = 541.464477, z = 40.102184},

	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 75.715270, y = 82.9776, z = 100.838020, e = true}, --Empty
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 75.715270, y = 76.9776, z = 100.838020},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 87.011039, y = 76.013977, z = 89.952133},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 66.691436, y = 72.158546, z = 63.658821},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 158.014846, y = 77.405067, z = 335.245422},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 164.866561, y = 77.405334, z = 352.186462},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 183.502655, y = 77.405265, z = 343.524108},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 573.401184, y = 17.064425, z = 165.830093, e = true}, --Empty
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 573.401184, y = 11.064425, z = 165.830093},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 766.331481, y = 90.628509, z = 402.817291},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 778.703063, y = 91.167816, z = 415.422760},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 792.881042, y = 90.695831, z = 399.077636},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 1041.245239, y = 134.933639, z = 392.586730},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 1026.362060, y = 150.298233, z = 395.193969},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 1025.338745, y = 150.523941, z = 412.695526},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 535.000000, y = 8.000000, z = 450.000000}, --Shipwreck area
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 618.537414, y = 1.227436, z = 600.079589},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 605.406005, y = 0.353380, z = 609.522338},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 580.832763, y = 4.860373, z = 621.304016},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 565.524414, y = 13.000000, z = 440.000000}, --Main Area
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 377.820281, y = 30.000000, z = -82.598495}, -- Bottle Area
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 384.046325, y = 20.765531, z = -111.498588},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 374.793304, y = 20.723329, z = -128.186889},
	{family = "Vault", name = "Vault Little Prince", map = "NightDesert", x = 370.226623, y = 24.600784, z = -143.685974},
}

posits = {
	{map='CandleSpace',name='BLACKOUT',x=800,y=0.6,z=0},
	{map='CandleSpace',name='Spawn',x=1.3682793378829956,y=1.1504778861999512,z=-0.7198812365531921},
	{map='Dawn',name='Trials Cave entrance',x=211.96453857421875,y=4.274348258972168,z=-63.84076690673828},
	{map='Dawn',name='Exit',x=154.19021606445312,y=103.16753387451172,z=-278.95806884765625},
	{map='Dawn',name='Rainbow',x=301.889892578125,y=413.0315246582031,z=-301.21563720703125},
	{map='Dawn',name='Cloudy',x=402.95318603515625,y=115.7956314086914,z=-10.648039817810059},
	{map='Dawn',name='Isle Elder room',x=117.75272369384766,y=1.006047010421753,z=-1733.9976806640625},
	{map='DawnCave',name='Water Trial',x=-90.0,y=245.0,z=-305.0},
	{map='DawnCave',name='Earth Trial',x=-28.13365936279297,y=253.9242401123047,z=-372.3354797363281},
	{map='DawnCave',name='Air Trial',x=21.34743881225586,y=259.1813049316406,z=-346.86083984375},
	{map='DawnCave',name='Fire Trial',x=57.113975524902344,y=251.7130889892578,z=-326.27691650390625},
	{map='Prairie_ButterflyFields',name='Skip first',x=93.07067108154297,y=150.75,z=-5.158041477203369},
	{map='Prairie_Village',name='Cave',x=157.04954528808594,y=199.9058837890625,z=225.65309143066406},
	{map='Prairie_Village',name='invisible thing',x=96.71356964111328,y=175.35667419433594,z=265.9364929199219},
	{map='Prairie_Village',name='8 Player Door',x=-48.69554138183594,y=182.15054321289062,z=324.2794189453125},
	{map='Prairie_Village',name='Temple',x=126.16890716552734,y=254.21255493164062,z=478.1236572265625},
	{map='Prairie_Cave',name='Prairie soar high OOB',x=314.2340393066406,y=235.1671600341797,z=162.43087768554688}, 
	{map='DayEnd',name='Forest',x=-128.55003356933594,y=106.04075622558594,z=41.26801681518555},
	{map='DayEnd',name='Elder Room',x=-529.508544921875,y=8.83392333984375,z=-213.78453063964844},
	{map='DayHubCave',name='Exit',x=30.72627067565918,y=42.47455596923828,z=0.237472802400589},
	{map='Prairie_Island',name='Bird Nest',x=272.2238464355469,y=175.1832275390625,z=-26.06362915390625},
	{map='Prairie_Island',name='First air flower',x=244.09881591796875,y=95.16970825195312,z=221.4185791015625},
	{map='Prairie_Island',name='Waterfall',x=494.17425537109375,y=321.3855285644531,z=393.63873291015625},
	{map='Prairie_Island',name='Top of center',x=57.3979606628418,y=102.27421569824219,z=300.8200378417969},
	{map='Prairie_Island',name='Big flower',x=90.91666412353516,y=2.906703472137451,z=293.2203063964844},
	{map='Rain',name='Skip',x=17.024648666381836,y=92.79985046386719,z=-225.68663024902344},
	{map='RainForest',name='Sunny Forest',x=6.1400275230407715,y=111.99101257324219,z=-61.309600830078125},
	{map='RainShelter',name='To Cave',x=54.64596939086914,y=68.41414642333984,z=43.7832145690918},
	{map='RainShelter',name='To Temple',x=15.340384483337402,y=88.6324691772461,z=119.18212890625},
	{map='RainShelter',name='Forest pit OOB',x=-32.04302215576172,y=206.95440673828125,z=0.1170167475938797}, 
	{map='Rain_Cave',name='Exit',x=-65.55963134765625,y=210.6380157470703,z=-285.0746154785156},
	{map='RainMid',name='Exit',x=-17.595956802368164,y=182.86737060546875,z=400.8680114746094},
	{map='RainEnd',name='Elders Room',x=2.448410749435425,y=8.948872566223145,z=503.58135986328125},
	{map='Sunset',name='Skip',x=181.40216064453125,y=49.21394348144531,z=-512.7560424804688},
	{map='Sunset',name='To First Race',x=202.9875030517578,y=56.84459686279297,z=-593.9754638671875},
	{map='Sunset',name='To Second Race',x=282.1065673828125,y=39.942588806152344,z=-527.995065460546875},
	{map='Sunset_Citadel',name='Candle run first',x=115.18697357177734,y=477.2147521972656,z=15.642013549804688},
	{map='Sunset_Citadel',name='Exit',x=199.33934020996094,y=491.9642028808594,z=-195.2884063720703},
	{map='Sunset_FlyRace',name='Skip',x=124.05903625488281,y=1045.8760986328125,z=-78.43795013427734},
	{map='Sunset_FlyRace',name='Cloud OOB',x=-812.950927734375,y=1545.5372314453125,z=-505.4371643066406},
	{map='Sunset_FlyRace',name='Valley castle OOB',x=-478.83294677734375,y=1573.1116943359375,z=76.33606719970703},
	{map='SunsetRace',name='Skip',x=236.2896728515625,y=599.3069458007812,z=-526.8030395507812},
	{map='SunsetEnd',name='Skip',x=42.99704360961914,y=166.48251342773438,z=0.7978107333183289},
	{map='SunsetColosseum',name='Dream',x=133.408065795899844,y=154.74673461914062,z=-171.10191345214844},
	{map='SunsetColosseum',name='End',x=62.833187103271484,y=145.87591552734375,z=-293.7547607421875},
	{map='SunsetEnd2',name='OOB Castle',x=308.30621337890625,y=148.89456176757812,z=-775.3768920898438},
	{map='SunsetVillage',name='Skip',x=-110.77000427246094,y=205.6576385498047,z=487.48956298828125},
	{map='SunsetVillage',name='OOB Trumpets',x=-65.07833099365234,y=128.78334045410156,z=-33.79042434692383},
	{map='Dusk',name='To Boat',x=150.89471435546875,y=1.2322540283203125,z=46.65181350708008},
	{map='Dusk',name='To Graveyard',x=-90.4443359375,y=12.013911247253418,z=158.87918090820312},
	{map='DuskGraveyard',name='To Battlefield',x=33.067073822021484,y=82.51902770996094,z=-240.50013732910156},
	{map='DuskGraveyard',name='To Crabfield',x=135.5191192626953,y=97.7408447265625,z=16.016836166381836},
	{map='DuskMid',name='To End',x=-284.5697326660156,y=92.47919464111328,z=-400.2809753417969},
	{map='DuskMid',name='To Shipwreck',x=54.159915924072266,y=111.84867095947266,z=-264.114990234375},
	{map='DuskEnd',name='Elders Room',x=-417.28424072265625,y=12.288487434387207,z=410.8535461425781},
	{map='Dusk_CrabField',name='To Battlefield',x=-338.3324279785156,y=36.55388641357422,z=387.93304443359375},
	{map='Dusk_CrabField',name='Wasteland Moon OOB',x=-338.6526184082031,y=185.0042266845703,z=400.361328125},
	{map='DuskOasis',name='Skip',x=141.16297912597656,y=120.97766876220703,z=351.2036437988281},
	{map='DuskOasis',name='Exit Ship',x=-47.61760330200195,y=141.75379943847656,z=170.869873046875},
	{map='TGCOffice',name='Vault Office Space',x=7009.4736328125,y=6921.181640625,z=9078.2421875},
	{map='Night',name='To Archive',x=-35.5402946472168,y=34.19679641723633,z=-97.76521301269531},
	{map='Night',name='To Desert',x=42.82196807861328,y=36.75535583496094,z=-81.42263793945312},
	{map='Night',name='2nd Floor',x=11.553918838500977,y=80.62894439697266,z=14.284697532653809},
	{map='Night',name='3rd Floor',x=27.935970306396484,y=153.792236328125,z=-39.151798248291016},
	{map='NightEnd',name='Thunder',x=31.983366012573242,y=347.39166259765625,z=41.15662384033203},
	{map='NightEnd',name='Elders Vault',x=-0.8692829012870789,y=195.21739196777344,z=6.841609001159668},
	{map='NightEnd',name='Full Moon Vault',x=67.19486236572266,y=240.53509521484375,z=-187.52154541015625},
	{map='NightArchive',name='Back to First Library',x=40.553749084472656,y=544.6246337890625,z=-25.288280487060547},
	{map='NightDesert',name='To Jellyfield',x=399.72943115234375,y=4.236130237579346,z=540.1605834960938},
	{map='NightDesert',name='To Vault of Knowledge',x=29.91564706713867,y=17.69660758972168,z=176.67739868164062},
	{map='NightDesert',name='To Jar',x=-76.51543426513672,y=28.447778701782227,z=372.2406921386719},
	{map='NightDesert',name='OOB Golden Skykids',x=-797.5425415039062,y=156.2596435546875,z=916.4702758789062},
	{map='NightDesert_Beach',name='Back to desert',x=464.6367492675781,y=8.204781532287598,z=552.7400512695312},
	{map='Night_JarCave',name='Back',x=-81.74847412109375,y=28.22599983215332,z=373.6864013671875},
	{map='Night2',name='Top',x=-0.18086150288581848,y=294.4930419921875,z=0.7263343930244446},
	{map='Storm',name='Skip',x=7,y=266,z=-250},
	{map='Storm',name='End of Cave',x=61.72602462768555,y=272.8486022949219,z=-332.78521728515625},
	{map='Storm',name='OOB Transparent',x=192,y=8,z=-489},
	{map='StormStart',name='Skip',x=-2,y=196,z=-19},
	{map='StormEnd',name='White Child',x=803.8466796875,y=0.6778343915939331,z=-11.73253059387207},
	{map='OrbitMid',name='Skip',x=923.1694946289062,y=2764.83251953125,z=146.8410186767578},
	{map='OrbitMid',name='Stones OOB',x=184.6337890625,y=1345.392333984375,z=-831.4788818359375},
	{map='OrbitEnd',name='Skip',x=-42.1104621887207,y=2465.890380859375,z=2261.208251953125},
	{map='Prairie_Cave',name='paintingoob',x=280.9242858886719,y=166.0093231201172,z=191.56130981445312},
	{map='Prairie_Cave',name='castle_oob',x=133.543701171875,y=308.047607421875,z=494.5435791015625},
	{map='CandleSpaceEnd',name='end',x=0.6592245101928711,y=0.5781212449073792,z=232.74395751953125},
	{map='DawnCave',name='exit_cave',x=-25.61272430419922,y=192.8677520751953,z=-38.68637466430664},
	{map='Dawn',name='Skip',x=101.23614501953125,y=2.32336688041687,z=123.376708984375},
	{map='Dawn',name='Prophecy Cave',x=211.96453857421875,y=4.274348258972168,z=-63.84076690673828},
	{map='Dawn',name='Temple',x=150.16748046875,y=102.43803405761719,z=-244.5251007080078},
	{map='Dawn_TrialsWater',name='Start',x=-0.11249076575040817,y=66.35979461669922,z=13.503379821777344},
	{map='Dawn_TrialsWater',name='Trial Meditation',x=43.719730377197266,y=67.64400482177734,z=-272.9099426269531},
	{map='Dawn_TrialsWater',name='End',x=0.060450248420238495,y=78.57532501220703,z=-411.5926513671875},
	{map='Dawn_TrialsEarth',name='Start',x=96.24566650390625,y=127.13948822021484,z=10.877419471740723},
	{map='Dawn_TrialsEarth',name='Trial Meditation',x=1.2450224161148071,y=127.96000671386719,z=15.725500106811523},
	{map='Dawn_TrialsEarth',name='End',x=-13.79636001586914,y=133.65394592285156,z=3.316030740737915},
	{map='Dawn_TrialsAir',name='Start',x=-1.648727297782898,y=30.203773498535156,z=-38.58304214477539},
	{map='Dawn_TrialsAir',name='Trial Meditation',x=-27.569198608398438,y=90.28909301757812,z=-130.7397003173828},
	{map='Dawn_TrialsAir',name='End',x=-11.577858924865723,y=105.93589782714844,z=-130.6845703125},
	{map='Dawn_TrialsFire',name='Start',x=-41.554508209228516,y=46.78275680541992,z=-22.998823165893555},
	{map='Dawn_TrialsFire',name='Trial Meditation',x=-12.22600269317627,y=50.001827239990234,z=-257.0751953125},
	{map='Dawn_TrialsFire',name='End',x=-11.194707870483398,y=50.01749038696289,z=-307.281982421875},
	{map='Prairie_ButterflyFields',name='Isle of Dawn',x=119.0,y=201.0,z=-458.0},
	{map='Prairie_ButterflyFields',name='Social Area',x=116.6399917602539,y=196.85479736328125,z=-434.001220703125},
	{map='Prairie_ButterflyFields',name='Prairie Cave',x=206.80516052246094,y=171.53472900390625,z=18.65180778503418},
	{map='Prairie_ButterflyFields',name='Prairie Birds Nest',x=-16.0,y=169.0,z=-6.0},
	{map='Prairie_ButterflyFields',name='Prairie Village',x=77.0,y=161.0,z=66.0},
	{map='Prairie_Village',name='Prairie Butterfly field',x=30.0,y=192.0,z=183.0},
	{map='Prairie_Village',name='Prairie Cave',x=162.0,y=200.0,z=222.0},
	{map='Prairie_Village',name='Prairie Birds Nest',x=-67.0,y=202.0,z=206.0},
	{map='Prairie_Cave',name='Prairie Butterfly Field',x=192.0,y=171.0,z=12.0},
	{map='Prairie_Cave',name='Prairie Village',x=243.0,y=198.0,z=226.0},
	{map='DayEnd',name='Prairie Village',x=-62.0,y=85.0,z=41.0},
	{map='Prairie_NestAndKeeper',name='Prairie Village',x=-109.54730224609375,y=184.3603515625,z=168.52159118652344},
	{map='DayEnd',name='Hidden Forest',x=-126.30734252929688,y=105.23834991455078,z=41.5018310546875},
	{map='Prairie_NestAndKeeper',name='Prairie Butterfly field',x=-49.0,y=163.0,z=37.0},
	{map='Prairie_NestAndKeeper',name='Sanctuary Islands',x=-358.0,y=127.0,z=109.0},
	{map='Prairie_Island',name='Dirty Water',x=142.66439819335938,y=2.3796894550323486,z=417.6568603515625},
	{map='Prairie_Island',name='Bell Shrine',x=24.223779678344727,y=55.22944259643555,z=335.5910339355469},
	{map='Prairie_Island',name='Mother Whale',x=407.8931579589844,y=-0.0814097449183464,z=514.7636108398438},
	{map='Rain',name='Skip to mid area',x=17.024648666381836,y=92.79985046386719,z=-225.68663024902344},
	{map='Rain',name='Social Area',x=139.7912139892578,y=216.697265625,z=-621.1143188476562},
	{map='Rain',name='To Rainforest',x=28.0,y=101.0,z=-115.0},
	{map='Rain',name='Mini Treehouse',x=57.644893646240234,y=107.6270751953125,z=-140.5428009033203},
	{map='Rain',name='Forest basecamp start',x=-12.0,y=152.0,z=-478.0},
	{map='Rain',name='Forest basecamp first gate',x=61.0,y=96.0,z=-165.0},
	{map='Rain_BaseCamp',name='Shared space',x=19.623136520385742,y=145.4346466064453,z=15.800447463989258},
	{map='Rain_BaseCamp',name='To first rain',x=21.0,y=150.0,z=152.0},
	{map='Rain_BaseCamp',name='To middle of first rain',x=-16.0,y=143.0,z=82.0},
	{map='Rain_BaseCamp',name='To Rainforest basecamp',x=-20.0,y=136.0,z=64.0},
	{map='Rain_BaseCamp',name='To mid forest',x=-40.0,y=148.0,z=58.0},
	{map='RainForest',name='Back to rain',x=21.0,y=101.0,z=-135.0},
	{map='RainForest',name='Mini Treehouse',x=58.60780334472656,y=115.9687271118164,z=-101.88823699951172},
	{map='RainForest',name='Forest basecamp',x=54.0,y=114.0,z=-114.0},
	{map='RainForest',name='To Rain mid',x=64.0,y=106.0,z=57.0},
	{map='RainShelter',name='To Rainforest',x=32.0,y=84.0,z=-67.0},
	{map='RainShelter',name='To Cave',x=51.0,y=80.0,z=43.0},
	{map='RainShelter',name='Golden Bell OOB',x=-31.19548988342285,y=74.96634674072266,z=-14.715871810913086},
	{map='Rain_Cave',name='To Sunny forest',x=-65.55963134765625,y=210.6380157470703,z=-285.0746154785156},
	{map='Rain_Cave',name='Big Fish OOB',x=-44.68874740600586,y=11.55691909790039,z=-334.6219482421875},
	{map='Rain_Cave',name='Birds OOB',x=161.14125061035156,y=-0.08140973746776581,z=149.28102111816406},
	{map='RainMid',name='Back to Rainforest',x=32.0,y=142.0,z=-27.0},
	{map='RainMid',name='To Sunny forest',x=-88,y=156.0,z=110.0},
	{map='RainMid',name='To Temple',x=-17.595956802368164,y=182.86737060546875,z=400.8680114746094},
	{map='RainMid',name='Mini Treehouse',x=-23.81351661682129,y=166.0816192626953,z=-0.289888858795166},
	{map='RainMid',name='Forest basecamp',x=-16.0,y=157.0,z=-36.0},
	{map='RainEnd',name='Butterflies',x=-0.6,y=107.0,z=83.0},
	{map='RainEnd',name='To Valley of Triumph',x=-1.0,y=211.0,z=219.0},
	{map='Sunset',name='Social Area',x=-30.16819953918457,y=305.6812438964844,z=27.05612564086914},
	{map='Sunset',name='To Second Race',x=286.0,y=41.0,z=-529.0},
	{map='Sunset',name='To Village',x=25.0,y=300.0,z=7.0},
	{map='Sunset',name='Soar High OOB',x=31.0,y=187.0,z=-467.0},
	{map='Sunset_Citadel',name='To fly race',x=206.0,y=495.0,z=-203.0},
	{map='SunsetRace',name='To main start',x=159.0,y=935.0,z=688.0},
	{map='SunsetEnd2',name='To Collosseum',x=8.0,y=147.0,z=-111.0},
	{map='SunsetEnd2',name='To Wasteland',x=12.0,y=141.0,z=-199.0},
	{map='SunsetVillage',name='Collosseum',x=-37,y=76.0,z=12.0},
	{map='SunsetVillage',name='Back to main',x=87.0,y=76.0,z=367.0},
	{map='SunsetVillage',name='To Yeti-park',x=-107.0,y=205.0,z=496.0},
	{map='SunsetVillage',name='Dream Guide',x=163.98046875,y=37.079376220703125,z=89.6847915649414},
	{map='Sunset_YetiPark',name='To Village',x=126.6,y=35.0,z=29.0},
	{map='DuskStart',name='Whirl pool',x=-171.370361328125,y=47.68985366821289,z=-873.1289672851562},
	{map='DuskStart',name='Ice Castle OOB',x=-50.03977966308594,y=4735.7001953125,z=-807.4383544921875},
	{map='DuskStart',name='Social Space',x=-77.0,y=64.0,z=-772.0},
	{map='DuskStart',name='To Valley',x=10.0,y=140.0,z=-195.0},
	{map='DuskGraveyard',name='To Dusk',x=54.0,y=97.0,z=362.0},
	{map='DuskMid',name='To End',x=-284.5697326660156,y=92.47919464111328,z=-400.2809753417969},
	{map='DuskMid',name='To Shipwreck',x=54.159915924072266,y=111.84867095947266,z=-264.114990234375},
	{map='DuskMid',name='To Graveyard',x=41.0,y=100.0,z=-41.0},
	{map='DuskEnd',name='To Vault of knowledge',x=0.0,y=208.0,z=-67.0},
	{map='Dusk_CrabField',name='To Graveyard',x=-49.0,y=26.0,z=525.0},
	{map='Night',name='4th floor',x=31.0,y=212.0,z=-40.0},
	{map='NightDesert',name='The Rose',x=133.8204345703125,y=12.115839004516602,z=347.6593322753906},
	{map='NightDesert',name='Amphi theater',x=83.05719757080078,y=73.64505767822266,z=62.82310485839844},
	{map='NightDesert',name='Light Tower',x=336.9781494140625,y=77.53258514404297,z=168.25814819335938},
	{map='NightDesert',name='Garden',x=227.37709045410156,y=16.496721267700195,z=606.0718383789062},
	{map='NightDesert',name='Throne',x=399.643310546875,y=92.43084716796875,z=778.90869140625},
	{map='NightDesert',name='BigBooks',x=408.36773681640625,y=154.7767791748047,z=1037.8370361328125},
	{map='NightDesert',name='Floating Eggrock',x=144.13259887695312,y=45.12910461425781,z=770.6494750976562},
	{map='NightDesertBeach',name='jelly',x=-5397,73779296875,y=2580,5859375,z=6082,1962890625},
	{map='NightDesert',name='To Infinite Desert',x=-21.14558982849121,y=9.46289348602295,z=547.5945434570312},
	{map='Night_InfiniteDesert',name='Back to desert',x=635.3980712890625,y=54.36724853515625,z=-85.38371276855469},
	{map='SunsetVillage',name='ALL_SPIRIT_LOL',x=-419.5585021972656,y=19.289306640625,z=-203.55723571777344},
	{map='SunsetVillage',name='OOB_STONEPIGpig2_by_MadBoii',x=2.1557862758636475,y=1.2917245626449585,z=0.5072160363197327},
	{map='Skyway',name='Back to Rain',x=133.41851806640625,y=384.35552978515625,z=281.2737731933594}
}

function return_min(n, values, only_address)
	local m = {address = 0xFFFFFFFFFF, value = 999999999}
	for k, v in ipairs(values) do
		if only_address then
			if math.abs(n - m.address) > math.abs(n - v.address) then
				m = v
			end
		else
			if math.abs(n - m.value) > math.abs(n - v.value) then
				m = v
			end
		end
	end
	return m
end

function find_player_offset()
	ptoplayer = nil
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.clearResults()
	gg.searchNumber("0;.125;.375::9", gg.TYPE_FLOAT)
	gg.refineNumber(".125", gg.TYPE_FLOAT)
	local adds = gg.getResults(gg.getResultCount())
	for k, v in ipairs(adds) do
		v.address = v.address - 0x8
	end
	local values = gx.editor.get(adds)
	player = nil
	for k, v in ipairs(values) do
		if v.value ~= 0 then
			v.address = v.address + 0x8
			player = v
			break
		end
	end

	local adds = gx.editor.get({player})
	adds[1].name = "player"
	gg.addListItems(adds)
	gg.clearResults()
	gg.setRanges(gg.REGION_C_BSS)
	gg.searchNumber(player.address, gg.TYPE_QWORD)
	local len = gg.getResultsCount()
	if len > 0 then
		ptoplayer = gg.getResults(1)[1]
		offsets.ptoplayer = ptoplayer.address - bootloader
		ptoplayer.name = "ptoplayer"
		gg.addListItems({ptoplayer})
	else
		offsets.ptoplayer = 0
		gg.toast("Failed.")
	end

	gg.clearResults()
	gg.setRanges(old_ranges)
end

function find_player_pos()
	if offsets.ptoplayer == nil then
		local found = false
		for k, v in ipairs(gg.getListItems()) do
			if v.name == "ptoplayer" then
				ptoplayer = v
				offsets.ptoplayer = ptoplayer.address - bootloader
				player = v.value
				found = true
			end
		end
		if not found then
			gg.toast("Find player pointer first or enter it manually in GG list with name \"ptoplayer\"")
			return
		end
	end

	gg.setRanges(gg.REGION_C_ALLOC)
	gg.clearResults()
	gg.searchNumber("1.0~1.2;0~1.5;-1.3~-1.1;1.0;1.0~1.2;0~1.5;-1.3~-1.1;1.0::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, ptoplayer.value + 0x400000, ptoplayer.value + 0x500000, 1)
	if gg.getResultsCount() > 0 then
		player_pos_x = gg.getResults(1)[1]
		offsets.pos_off = player_pos_x.address - player.address
		player_pos_x.name = "ppos_x"
		gg.addListItems({player_pos_x})
	else
		offsets.pos_off = 0
		gg.toast("Failed. Either you weren't at spawn or script needs update.")
	end
	gg.clearResults()
	gg.setRanges(old_ranges)
end

function find_nentity()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.clearResults()
	gg.searchNumber("1099746509", gg.TYPE_DWORD)
	local len = gg.getResultsCount()
	if len == 0 then
		offsets.ptoentity = 0
		offsets.ptonentity = 0
		gg.toast("Failed")
		return
	end
	nentity = gg.getResults(1)[1]
	gg.clearResults()
	gg.setRanges(gg.REGION_C_BSS)
	gg.searchNumber(tostring(nentity.address - 0x1000000).."~"..tostring(nentity.address), gg.TYPE_QWORD)
	local len = gg.getResultsCount()
	if len == 0 then
		offsets.ptoentity = 0
		offsets.ptonentity = 0
		gg.toast("Failed")
		return
	end
	local values = gg.getResults(len)
	ptoentity = return_min(nentity.address, values)
	offsets.ptoentity = ptoentity.address - bootloader
	offsets.ptonentity = nentity.address - gx.editor.get({{address = ptoentity.value, flags = "D"}})[1].address
	ptoentity.name = "ptoentity"
	nentity.name = "nentity"
	gg.addListItems({ptoentity, nentity})
	gg.clearResults()
	gg.setRanges(old_ranges)
end

function find_plants_offset()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.clearResults()
	gg.searchNumber("h 00 00 80 7F 00 00 00 00 00 00 80 3F 00 00 00 00 00 00 80 3F", gg.TYPE_BYTE)
	if gg.getResultsCount() == 0 then
		offsets.plants = 0
		gg.toast("Failed")
		gg.setRanges(old_ranges)
		return
	end
	gg.refineNumber(-128, gg.TYPE_BYTE)
	if gg.getResultsCount() == 0 then
		offsets.plants = 0
		gg.toast("Failed")
		gg.setRanges(old_ranges)
		return
	end
	if type(nentity) ~= "table" then
		gg.clearResults()
		gg.searchNumber("1099746509", gg.TYPE_DWORD)
		nentity = gg.getResults(1)[1]
	end
	plants = {address = gg.getResults(2)[2].address - 0x2, value = 1.0, flags = gg.TYPE_FLOAT, name = 'plants'}
	offsets.plants = plants.address - nentity.address
	gg.addListItems({plants})
	gg.clearResults()
	gg.setRanges(old_ranges)
end

function find_game_speed()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.clearResults()
	gg.searchNumber("1.0", gg.TYPE_FLOAT)
	gg.alert("Now, please hide/minimize Sky and then open GG again", "ok")
	gg.setVisible(false)
	while true do
		if gg.isVisible() then
			break
		end
		gg.sleep(500)
	end
	gg.refineNumber("0.00001", gg.TYPE_FLOAT)
	local len = gg.getResultsCount()
	if len == 0 then
		offfsets.gamespeed_off = 0
		gg.toast("Failed")
		gg.setRanges(old_ranges)
		return
	end
	gamespeed = gg.getResults(1)[1]
	if type(nentity) ~= "table" then
		gg.clearResults()
		gg.searchNumber("1099746509", gg.TYPE_DWORD)
		nentity = gg.getResults(1)[1]
	end
	offsets.gamespeed_off = gamespeed.address - nentity.address
	gamespeed.name = "gamespeed"
	gg.addListItems({gamespeed})
	gg.clearResults()
	gg.setRanges(old_ranges)
end

function find_current_map()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.clearResults()
	gg.searchNumber(":CandleSpace/Resources.lua", gg.TYPE_BYTE)
	local len = gg.getResultsCount()
	if len == 0 then
		offsets.curmap_off = 0
		gg.toast("Failed")
		return
	end
	gg.refineNumber(":C", gg.TYPE_BYTE)
	local values = gg.getResults(gg.getResultCount())
	if type(nentity) ~= "table" then
		gg.clearResults()
		gg.searchNumber("1099746509", gg.TYPE_DWORD)
		nentity = gg.getResults(1)[1]
	end
	for i = #values, 1, -1 do
		if values[i].address > nentity.address then
			table.remove(values, i)
		end
	end
	curmap = return_min(nentity.address, values, true)
	offsets.curmap_off = curmap.address - nentity.address
	curmap.name = "curmap"
	gg.addListItems({curmap})
	gg.clearResults()
	gg.setRanges(old_ranges)
end

function find_portal_offset()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.clearResults()
	gg.searchNumber(":Ap08Intro", gg.TYPE_BYTE)
	local len = gg.getResultsCount()
	if len == 0 then
		offsets.portal2_off = 0
		gg.toast("Failed")
		return
	end
	gg.refineNumber(":A", gg.TYPE_BYTE)
	local values = gg.getResults(gg.getResultCount())
	if type(nentity) ~= "table" then
		gg.clearResults()
		gg.searchNumber("1099746509", gg.TYPE_DWORD)
		nentity = gg.getResults(1)[1]
	end
	for i = #values, 1, -1 do
		if values[i].address > nentity.address then
			table.remove(values, i)
		end
	end
	portal = return_min(nentity.address, values, true)
	gg.clearResults()
	gg.searchNumber(16777216, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, portal.address, portal.address + 0x70)
	local len = gg.getResultsCount()
	if len == 0 then
		offsets.portal2_off = 0
		gg.toast("Failed")
		return
	end
	portal2 = gg.getResults(1)[1]
	offsets.portal2_off = portal2.address - nentity.address
	portal2.name = "portal2"
	gg.addListItems({portal2})
	gg.clearResults()
	gg.setRanges(old_ranges)
end

function check_offsets()
	for k, v in pairs(offsets) do
		if v == nil then offsets[k] = 0 end
	end
end

function clear_offsets()
	for k, v in pairs(offsets) do
		offsets[k] = nil
	end
end

function show_offsets()
	check_offsets()
	local output = ""
	output = output.."Found offsets:\n"
	output = output.."ptoplayer = "..string.format("%x", offsets.ptoplayer).."\n"
	output = output.."player -> pos_x = "..string.format("%x", offsets.pos_off).."\n"
	output = output.."ptoentity = "..string.format("%x", offsets.ptoentity).."\n"
	output = output.."ptonentity = "..string.format("%x", offsets.ptonentity).."\n"
	output = output.."nentity -> portal2_off = -"..string.format("%x", -offsets.portal2_off).."\n"
	output = output.."nentity -> curmap = -"..string.format("%x", -offsets.curmap_off).."\n"
	output = output.."nentity -> plants = "..string.format("%x", offsets.plants).."\n"
	output = output.."nentity -> gamespeed_off = -"..string.format("%x", -offsets.gamespeed_off).."\n"
	gg.alert(output, "ok")
end

function find_all_offsets()
	offsets = {}
	gg.toast("Scanning for player offset")
	find_player_offset()
	gg.toast("Scanning for player position offset")
	find_player_pos()
	gg.toast("Searching nentity")
	find_nentity()
	gg.toast("Scanning for current map offset")
	find_current_map()
	gg.toast("Scanning for plants offset")
	find_plants_offset()
	gg.toast("Scanning for game speed offset")
	find_game_speed()
	saveoffsets()
	find_adds()

	show_offsets()
end

-- gg.getRangesList('[anon:libc_malloc]')

function getadd(add,flag)
	local a = {
		[1] = {address = add, flags = flag}
	}

	b = gg.getValues(a)
	return tonumber(b[1].value)
end

function setadd(add,flag,val,bfreeze)
	local uu = {}

	uu[1] = {
		address = add,
		flags = flag,
		value = val,
		freeze = bfreeze
	}

	gg.setValues(uu)

	if bfreeze then 
		gg.addListItems(uu)
	else
		gg.removeListItems(uu)
	end
end

function find_adds()
	gg.clearResults()
	bootloader = gg.getRangesList('libBootloader.so')[1].start
	player = getadd(bootloader + offsets.ptoplayer, gg.TYPE_QWORD)
	player_r = player + offsets.pos_off + 0x20
	nentity = getadd(bootloader + offsets.ptoentity, gg.TYPE_QWORD) + offsets.ptonentity
	nentity_test = getadd(nentity, gg.TYPE_DWORD) == 1099746509
	candles = find_candles()
	plants = find_plants()

	if not(nentity_test) then
		gg.searchNumber(1099746509, gg.TYPE_DWORD)
		
		if gg.getResultsCount() > 0 then
			nentity = gg.getResults(1)[1].address
			nentity_test = true
		end
	end

	if not(nentity_test) then
		gg.toast("Error, some functions may not work.")
	else
		curmap = nentity + offsets.curmap_off
	end
end

function find_candles()
	if nentity_test then
		local c = {}

		local n = nentity + 0x1D4
		for i=1, 650 do
			table.insert(c, {address = n + (i - 1) * 0x1C0, flags = gg.TYPE_FLOAT, value = 0, name = 'cndl', freeze = false})
		end

		return c
	else
		return {}
	end
end

function find_plants()
	if offsets.plants == 0 or offsets.plants == nil then
		gg.toast("No plants offset was found. Need to rescan offsets")
		return
	end
	if nentity_test then
		local m = {}

		for i=1, 511 do
			m[i]= {address = nentity + offsets.plants + ((i - 1) * 8), flags = gg.TYPE_FLOAT}
		end

		local plants = gg.getValues(m)

		return plants
	else
		return {}
	end
end

function setposit(mx,my,mz)
	jh = {
		{
			address = player + offsets.pos_off,
			flags = gg.TYPE_FLOAT,
			value = mx
		},
		{
			address = player + offsets.pos_off + 0x4,
			flags = gg.TYPE_FLOAT,
			value = my
		},
		{
			address = player + offsets.pos_off + 0x8,
			flags = gg.TYPE_FLOAT,
			value = mz
		}
	}
	gg.setValues(jh)
end

function pmove(dis)
	local x,y,z = getadd(player + offsets.pos_off, gg.TYPE_FLOAT), getadd(player + offsets.pos_off + 0x4, gg.TYPE_FLOAT), getadd(player + offsets.pos_off + 0x8, gg.TYPE_FLOAT)
	local radin = getadd(player_r, gg.TYPE_FLOAT)
	
	local ax = dis * math.sin(radin)
	local az = dis * math.cos(radin)

	setposit(x + ax,y,z + az)
end

function change_map2(mp)
	-- AHHAHHAHA I like this method moree
	gg.toast(mp)
	gg.setVisible(false)
	xr1 = 0
	xr2 = 0
	xar = {}
	xtr = nentity + offsets.portal2_off

	gx.editor.set_string({
		{xtr + 0x39D0, mp, 24},
		{xtr + 0x39F0, "Black", 28}
	})
	
	xar = {
		{address = xtr - 0x34, flags=gg.TYPE_QWORD,value=49},
		{address = xtr - 0x30, flags=gg.TYPE_DWORD,value=0},

		{address = xtr - 0x6C, flags=gg.TYPE_FLOAT,value=80000},
		{address = xtr - 0x6C+0x4, flags=gg.TYPE_FLOAT,value=80000},
		{address = xtr - 0x6C+0xC, flags=gg.TYPE_FLOAT,value=80000},
		{address = xtr - 0x80, flags=gg.TYPE_FLOAT,value=80000}, -- 0x80
		{address = xtr - 0x80+0x4, flags=gg.TYPE_FLOAT,value=80000},
		{address = xtr - 0x80+0xC, flags=gg.TYPE_FLOAT,value=80000},
		{address = xtr - 0x94, flags=gg.TYPE_FLOAT,value=80000}, -- 0x94
		{address = xtr - 0x94+0x4, flags=gg.TYPE_FLOAT,value=80000},
		{address = xtr - 0x94+0xC, flags=gg.TYPE_FLOAT,value=80000},
		{address = xtr - 0xA8, flags=gg.TYPE_FLOAT,value=80000}, -- 0xA8
		{address = xtr - 0xA8+0x4, flags=gg.TYPE_FLOAT,value=80000},
		{address = xtr - 0xA8+0xC, flags=gg.TYPE_FLOAT,value=80000},

		{address = xtr - 0x2C, flags=gg.TYPE_DWORD,value=28},
		{address = xtr - 0x24, flags=gg.TYPE_QWORD,value=xtr + 0x39D0},
		{address = xtr + 0x39AC, flags = gg.TYPE_DWORD,value = #mp},
		{address = xtr - 0x1C, flags=gg.TYPE_DWORD,value=49},
		{address = xtr - 0x18, flags=gg.TYPE_DWORD,value=0},
		{address = xtr - 0x14, flags=gg.TYPE_DWORD,value=10},
		{address = xtr - 0x10, flags=gg.TYPE_DWORD,value=0},
		{address = xtr - 0xC, flags=gg.TYPE_QWORD,value=xtr+0x39F0},
		{address = xtr, flags = gg.TYPE_DWORD,value = 666}
	}

	gg.setValues(xar)
	
	set_game_speed(10)
	gg.sleep(1000)
	set_game_speed(1)
end

function changemapmenu()
	local mps = {}
	for i, v in ipairs(maps) do
		table.insert(mps, v[1])
	end
	
	local mpchoice = gg.choice(mps, nil, "Choose map that you want to teleport to")
	
	if mpchoice == nil then
		return
	end

	change_map2(maps[mpchoice][2])
end

function set_autoburn(b)
	if b then
		autoburn = on

		for i, v in ipairs(candles) do
			v.value = 1.0
			v.freeze = true
		end
		
		gg.setValues(candles)
		gg.addListItems(candles)

		for i, v in ipairs(plants) do
			v.value = 0.0
			v.freeze = true
		end

		gg.setValues(plants)
		gg.addListItems(plants)

	else
		autoburn = off

		for i, v in ipairs(candles) do
			v.value = 0.0
			v.freeze = false
		end
		
		gg.setValues(candles)
		gg.removeListItems(candles)

		for i, v in ipairs(plants) do
			v.value = 1.0
			v.freeze = false
		end

		gg.setValues(plants)
		gg.removeListItems(plants)
	end
end

function make_positions(map)
	local points = {}

	for i, v in ipairs(posits) do
		if v.map == map then
			table.insert(points, v)
		end
	end

	return points
end

function make_points_list(map)
	local m = {}

	for i, v in ipairs(crpoints) do
		if v.map == map then
			table.insert(m, v)
		end
	end

	return m
end

function get_names(list)
	local nm = {}

	for i, v in ipairs(list) do
		table.insert(nm, v.name)
	end

	return nm
end

function get_map()
	local c = ""
	local c1 = ""

	for i = 0, 23 do
		c1 = getadd(curmap + i, gg.TYPE_BYTE)

		if c1 == 47 then
			break
		end

		c = c..string.char(c1)
	end

	return c
end

function get_map_name()
	local c = get_map()

	for i, v in ipairs(maps) do
		if v[2] == c then
			return v[1]
		end
	end

	return nil
end

function get_family_by_map(map)
	local family = nil

	for i, v in ipairs(crpoints) do
		if v.map == map then
			family = v.family
			break
		end
	end

	return family
end

function get_pos_by_name(list, name)
	for i, v in ipairs(list) do
		if v.name == name then
			return {x = v.x, y = v.y, z = v.z}
		end
	end

	return nil
end

function getAction()
	actionmenu = gg.choice({
		"⬅️ Previous",
		"➡️ Next",
		"❌ EndHere!",
		"🛑 ABORT!"
	}, nil, "Choose action:")

	if actionmenu == 1 then
		return -1
	elseif actionmenu == 2 then
		return 1
	elseif actionmenu == 3 then
		return 0
	elseif actionmenu == 4 then
		return -999
	end
end

function DoPoints(points, cr_mode, use_candle)
	local b = false

	if gx.vars.settings.useautoburn then
		if autoburn == off then
			set_autoburn(true)
			b = true
		end
	end

	if use_candle == nil then
		use_candle = false
	end

	if cr_mode == nil then
		cr_mode = false
	end

	local bckp_values = gg.getValues({
		{address = player + offsets.pos_off, flags = gg.TYPE_FLOAT},
		{address = player + offsets.pos_off + 0x4, flags = gg.TYPE_FLOAT},
		{address = player + offsets.pos_off + 0x8, flags = gg.TYPE_FLOAT},
	})

	local i = 1
	local t = 0
	local st = 250
	local endt = 4000 

	while i <= #points do
		gg.toast(tostring(i).." / "..#points)
	
		if use_candle then
			gg.setValues({{address = candle, flags = gg.TYPE_BYTE, value = 1}})
		end
	
		gg.setValues({
			{address = player + offsets.pos_off + 0x8, flags = gg.TYPE_FLOAT, value = points[i].x},
			{address = player + offsets.pos_off + 0x4, flags = gg.TYPE_FLOAT, value = points[i].y},
			{address = player + offsets.pos_off, flags = gg.TYPE_FLOAT, value = points[i].z}
		})
	
		if not(points[i].e == true) and not(i == #points) then
			while true do
				if gg.isVisible(true) then
					gg.setVisible(false)
					a = 1
					break
				else
					gg.sleep(st)
					t = t + st

					if t >= endt then
						gg.toast("Manual mode")
						break
					end
				end
			end

			while t >= endt do
				if gg.isVisible(true) then
					gg.setVisible(false)

					a = getAction()

					if a ~= nil then
						break
					end
				end
			end

			if a == -999 then
				gg.setValues(bckp_values)
				i = #points + 1
				stopped = true
			elseif a == 0 then
				stopped = true
				i = #points + 1
			else
				i = i + a
				if a == -1 then
					i = clamp(i, 1, #points)
					if points[i].e == true then
						i = i - 1
					end
				end
			end

			t = 0
		else
			i = i + 1
			gg.sleep(100)
		end
	end

	if b then
		set_autoburn(false)
	end

	if use_candle then
		gg.setValues({{address = candle, flags = gg.TYPE_BYTE, value = 0}})
	end
end

function semiautocr()
	local map = get_map()
	local family = get_family_by_map(map)
	
	if family ~= nil then
		if gg.alert("Do you want to CR "..get_map_name().."?", "Yes", "Cancel") == 1 then
			DoPoints(make_points_list(map))
		end
	else
		if map == "CandleSpace" then
			gg.toast("You are at Home. Enter the portal first!")
		else
			gg.toast("CR Function unavailable for "..get_map_name())
		end
	end
end

function gotomenu()
	local map = get_map()
	
	ppoints = make_positions(map)
	
	if ppoints ~= nil then
		mp_names = get_names(ppoints)
		place = gg.choice(mp_names, nil, "Where to go?")
	
		if place == nil then
			return
		end
	
		pos = get_pos_by_name(ppoints, mp_names[place])
		setposit(pos.x, pos.y, pos.z)
	
		gg.toast(place)
	else
		gg.toast("No place to go here.")
	end
end

function set_game_speed(speed)
	setadd(nentity + offsets.gamespeed_off, gg.TYPE_FLOAT, speed, false)
end

function input_game_speed()
	local gs = getadd(nentity + offsets.gamespeed_off, gg.TYPE_FLOAT)
	local speed = gg.prompt({"Enter Game Speed:"}, {[1] = tostring(gs)}, {[1] = "number"})
	set_game_speed(speed[1])
end

function loadoffsets()
	config = gx.load_json_file(config_path)
	if config == nil then
		if gg.alert("Looks like offsets weren't found yet. Click \"OK\" to start scanning for offsets. You should start scanning for offsets before logging in to your accont (don't click \"Play\" button)", "ok", "exit") ~= 1 then
			os.exit()
		end
		gx.vars.settings = defaults
		find_all_offsets()
		config = gx.load_json_file(config_path)
	elseif config.settings.version ~= gx.vars.settings.version then
		if gg.alert("Looks like Sky was updated. Click \"OK\" to start scanning for offsets. You should start scanning for offsets before logging in to your accont (don't click \"Play\" button)", "ok", "exit") ~= 1 then
			os.exit()
		end
		gx.vars.settings = config.settings
		find_all_offsets()
		config = gx.load_json_file(config_path)
	else
		local exist = false1
		for k, v in pairs(config.offsets) do
			exist = true
			break
		end

		if not(exist) then
			if gg.alert("Looks like you cleared offsets (or the config file is corrupt). Click \"OK\" to start scanning for offsets. You should start scanning for offsets before logging in to your accont (don't click \"Play\" button)", "ok", "exit") ~= 1 then
				os.exit()
			end
			gx.vars.settings = config.settings
			find_all_offsets()
			config = gx.load_json_file(config_path)
		end
	end

	offsets = config.offsets
	gx.vars.settings = config.settings
end

function saveoffsets()
	gx.vars.settings.version = tostring(gameinfo.versionCode)
	config = {
		offsets = offsets,
		settings = gx.vars.settings
	}
	gx.save_json_file(config_path, config)
end

function init()
	pcheck()
	loadoffsets()
	find_adds()
	gg.toast("gxost-mini loaded")
end

gx.add_menu({
	title = {"gxost-mini v", {tostring, {"{gx:settings.version}"}}},
	name = "main",
	menu = {
		{"[⬆️] Wall Breach: {gx:settings.wbdistance}", {pmove, {"{gx:settings.wbdistance}"}}},
		{"[🕯️] Semi-AutoCR", {semiautocr}},
		{"[] Teleport", {changemapmenu}},
		{"[🚩] Go to", {gotomenu}},
		{"[🕘] Set Game Speed", {input_game_speed}},
		{"{gxsign} Autoburn 🔥", {set_autoburn, {"{gxbool}"}}},
		{"[⚙️] Settings", {gx.open_menu, {"settingsmenu"}}}
	},
	type = "choice"
})

gx.add_menu({
	title = "Settings:",
	name = "settingsmenu",
	menu = {
		{"[⬆️] Wall Breach distance: {gx:settings.wbdistance}", {gx.prompt_set_var, {"settings.wbdistance", "Set distance:"}}},
		{"[🔥] Use Autoburn in AutoCR: {gx:settings.useautoburn}", {gx.set_var, {"settings.useautoburn", "!{gx:settings.useautoburn}"}}},
		{"[📜] Show Offsets", {show_offsets}},
		{"[💾] Rescan offsets", {find_all_offsets}},
		{"[📝] Scan offsets manually", {gx.open_menu, {"offsetscanmenu"}}},
		{"[🗑️] Clear Offsets", {clear_offsets}},
	},
	post_f = {saveoffsets},
	type = "xback",
	menu_repeat = true
})

gx.add_menu({
	title = "Manual Scan:",
	name = "offsetscanmenu",
	menu = {
		{"Find player pointer & offset", {find_player_offset}},
		{"Find player position offset", {find_player_pos}},
		{"Find ptoentity & ptonentity", {find_nentity}},
		{"Find current map offset", {find_current_map}},
		{"Find plants offset", {find_plants_offset}},
		{"Find portal offset", {find_portal_offset}},
		{"Find game speed offset", {find_game_speed}},
	},
	post_f = {show_offsets},
	type = "back"
})

init()
gx.loop(250, nil, false)

--[[

	          ) (`-.                   .-')    .-') _    62
	           ( OO ).                ( OO ). (  OO) )   79
	  ,----.  (_/.  \_)-..-'),-----. (_)---\_)/     '._  3A
	 '  .-./-')\  `.'  /( OO'  .-.  '/    _ | |'--...__) 20
	 |  |_( O- )\     /\/   |  | |  |\  :` `. '--.  .--' 67
	 |  | .--, \ \   \ |\_) |  |\|  | '..`''.)   |  |    78
	(|  | '. (_/.'    \_) \ |  | |  |.-._)   \   |  |    6F
	 |  '--'  |/  .'.  \   `'  '-'  '\       /   |  |    73
	  `------''--'   '--'    `-----'  `-----'    `--'    74

]]--