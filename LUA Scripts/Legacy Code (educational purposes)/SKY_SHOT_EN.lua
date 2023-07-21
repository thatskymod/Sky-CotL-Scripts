gg.alert("Welcome to Skyshot Returns!!")
gg.sleep(500)
gg.alert("Update Notes:\n\n1. Added the option to use improved FPS.\n2. Added the character brightness option.\n\nSpecial thanks to my friend Sui for the assistance.")

		 
script = {process = {live = 'com.tgc.sky.android', beta = "com.tgc.sky.android.test.gold"}}
gameinfo = gg.getTargetInfo()

if gg.isVisible(true) then
	gg.setVisible(false)
end

local p = gg.getTargetInfo()

offsets = {
	ptoplayer = 0x1971F88,
	pos_off = 0x4E4630, --pos_x
	ptoentity = 0x19518D0,
	ptonentity = 0x5B761C,
	curmap_off = -0x194A13C,
	plants = 0x1464148,
	gamespeed_off = -0x184F744,
	chat = 0x5BBF84,
	portal2_off = -0x7FC60,
	ptoemotes = 0xA42624,
	ptocloset = 0x3DCB44,
	ptofnodes = 0x821420,	
	ptopbase = 0x4348E8,	
	gesture = 0x468F34,
	camera = 0xE42BB4, -- camera yaw | cam distance: -C |
	plbright = 0x45C2D4,
	hcandle = 0x57A410,	
	wing_charge = 0x45C22C,
	sleeping = 0x460890,
	pose = 0x45A428,
	closet_menu = 0x15B0F68,
	constel_menu = 0x15B4A88,
	ptofastitem = -0x10FA8,
	fastitem = 0x26C,
	--vwing = 0x470D9C,
	damage = 0x45C22C,	
	wl_pos = 0x4B4F34,
	statue_pos = -0x83053C,
	magic = 0x4681B0,
	props_off = 0x45E104,
	famount_off = 0x45E104 + 0x15D0,	
	portal_off = 0x40EB08,
	vcandles = 0x4E62B4,
	vcandles_dist = 0x70,	
	wind_off = -0x87A6CC
}



maps = {
	{"Home", "CandleSpace"},
	{"Aviary village", "MainStreet"},
	{"Shop Outfit", "MainStreet_ShopOutfits"},
	{"Shop spells", "MainStreet_ShopSpells"},
	{"Isle", "Dawn"},
	{"Trials Cave", "DawnCave"},
	{"Water Trial", "Dawn_TrialsWater"},
	{"Earth Trial", "Dawn_TrialsEarth"},
	{"Air Trial", "Dawn_TrialsAir"},
	{"Fire Trial", "Dawn_TrialsFire"},
	{"Prairie Butterfly Field", "Prairie_ButterflyFields"},
	{"Bird Nest", "Prairie_NestAndKeeper"},
	{"Sancuary Islands", "Prairie_Island"},
	{"Prairie Cave", "Prairie_Cave"},
	{"Prairie Village", "Prairie_Village"},
	{"8 player puzzle", "DayHubCave"},
	{"Prairie Temple", "DayEnd"},
	{"Forest", "Rain"},
	{"Forest Clearing", "RainForest"},
	{"Forest Elevated Clearing", "RainShelter"},
	{"Forest Caves", "Rain_Cave"},
	{"Forest Boneyard", "RainMid"},
	{"Forest Temple", "RainEnd"},
	{"Treehouse", "Rain_BaseCamp"},
	{"Wind Paths", "Skyway"},
	{"Valley", "Sunset"},
	{"Valley Citadel", "Sunset_Citadel"},
	{"Valley Fly Race", "Sunset_FlyRace"},
	{"Valley Race", "SunsetRace"},
	{"Valley Race End", "SunsetEnd"},
	{"Hermit Valley", "Sunset_YetiPark"},
	{"Dream Village", "SunsetVillage"},
	{"Valley Dream Theater", "Sunset_Theater"},
	{"Valley Music Shop", "SunsetVillage_MusicShop"},
	{"Valley Colosseum", "SunsetColosseum"},
	{"Valley Temple", "SunsetEnd2"},
	{"Wasteland Lobby", "DuskStart"},
	{"Wasteland", "Dusk"},
	{"Abyss Area", "Dusk_Triangle"},
	{"Abyss End", "Dusk_TriangleEnd"},
	{"Wasteland Graveyard", "DuskGraveyard"},
	{"Forgotten Ark", "DuskOasis"},
	{"Crab Fields", "Dusk_CrabField"},
	{"Battlefield", "DuskMid"},
	{"Wasteland Temple", "DuskEnd"},
	{"Vault", "Night"},
	{"Vault 2", "Night2"},
	{"painted world", "Night_PaintedWolrd"},
	{"Night Shelter", "Night_Shelter"},
	{"Vault End", "NightEnd"},
	{"Vault Archive", "NightArchive"},
	{"Starlight Desert", "NightDesert"},
	{"Starlight Desert Beach", "NightDesert_Beach"},
	{"Jar Cave", "Night_JarCave"},
	{"Infinite Desert", "Night_InfiniteDesert"},
	{"Planets", "NightDesert_Planets"},
	{"Office", "TGCOffice"},
	{"Void of Shattering", "StormEvent_VoidSpace"},
	{"Days of Mischief", "Event_DaysOfMischief"},
	{"Nintendo area", "Nintendo_CandleSpace"},
	{"Eden", "StormStart"},
	{"Eden mid", "Storm"},
	{"Eden end", "StormEnd"},
	{"!!! Orbit !!!", "OrbitMid"},
	{"!!! Orbit 2 !!!", "OrbitEnd"},
	{"!!! Heaven !!!", "CandleSpaceEnd"},
	{"Credits map", "Credits"}
}

crwings = {
    {map='Dawn',x=52.0,y=35.0,z=371.0}, 
    {map='Dawn',x=118.0,y=3.0,z=311.0}, 
    {map='Dawn',x=282.0,y=3.0,z=189.0}, 
    {map='Dawn',x=107.0,y=25.0,z=49.0}, 
    {map='Dawn',x=415.0,y=96.0,z=-7.0},
    {map='Dawn_TrialsFire',x=-11.0,y=50.0,z=-308.0},
    {map='Dawn_TrialsAir',x=-12.0,y=106.0,z=-130.0},
    {map='Dawn_TrialsEarth',x=-14.0,y=134.0,z=3.0},
    {map='Dawn_TrialsWater',x=0.0,y=79.0,z=-412.0},
    {map='Prairie_ButterflyFields',x=126.0,y=149.0,z=-28.0},
    {map='Prairie_ButterflyFields',x=105.0,y=175.0,z=27.0},
    {map='Prairie_ButterflyFields',x=81.0,y=161.0,z=63.0},
    {map='Prairie_NestAndKeeper',x=-138.0,y=160.0,z=144.0},
    {map='Prairie_NestAndKeeper',x=-214.0,y=182.0,z=153.0},
    {map='Prairie_Island',x=241.0,y=95.0,z=205.0},
    {map='Prairie_Island',x=64.0,y=95.0,z=308.0},
    {map='Prairie_Island',x=-21.0,y=15.0,z=383.0},
    {map='Prairie_Island',x=78.0,y=2.0,z=324.0},
    {map='Prairie_Island',x=108.0,y=3.0,z=334.0},
    {map='Prairie_Island',x=95.0,y=11.0,z=362.0},
    {map='Prairie_Island',x=62.0,y=19.0,z=273.0},
    {map='Prairie_Island',x=-147.0,y=81.0,z=119.0},
    {map='Prairie_Cave',x=348.0,y=198.0,z=111.0},
    {map='Prairie_Cave',x=290.0,y=200.0,z=178.0},
    {map='Prairie_Village',x=101.0,y=182.0,z=257.0},
    {map='Prairie_Village',x=67.0,y=187.0,z=377.0},
    {map='Prairie_Village',x=28.0,y=185.0,z=279.0},
    {map='Prairie_Village',x=138.0,y=267.0,z=479.0},
    {map='Prairie_Village',x=146.0,y=305.0,z=537.0},
    {map='DayHubCave',x=-19.0,y=60.0,z=28.0},
    {map='RainForest',x=24.0,y=128.0,z=-65.0},
    {map='RainForest',x=79.0,y=130.0,z=-12.0},
    {map='RainForest',x=104.0,y=112.0,z=-111.0},
    {map='RainForest',x=66.0,y=100.0,z=46.0},
    {map='Sunset',x=-151.0,y=264.0,z=-149.0},
    {map='Sunset',x=198.0,y=49.0,z=-517.0},
    {map='Sunset',x=166.0,y=42.0,z=-540.0},
    {map='Sunset_Citadel',x=84.0,y=559.0,z=-55.0},
    {map='Sunset_Citadel',x=115.0,y=503.0,z=-39.0},
    {map='Sunset_FlyRace',x=-396.0,y=1164.0,z=49.0},
    {map='Sunset_FlyRace',x=67.0,y=1057.0,z=-31.0},
    {map='SunsetEnd',x=196.0,y=631.0,z=-421.0},
    {map='Sunset_YetiPark',x=-8.0,y=194.0,z=475.0},
    {map='Sunset_YetiPark',x=-198.0,y=263.0,z=685.0},
    {map='SunsetVillage',x=224.0,y=55.0,z=96.0},
    {map='SunsetVillage',x=99.0,y=77.0,z=146.0},
    {map='SunsetVillage',x=-70.0,y=194.0,z=413.0},
    {map='SunsetColosseum',x=28.0,y=183.0,z=-278.0},
    {map='SunsetEnd2',x=-27.0,y=151.0,z=-164.0},
    {map='Dusk',x=98.0,y=46.0,z=368.0},
    {map='Dusk',x=29.0,y=1.0,z=343.0},
    {map='DuskGraveyard',x=113.0,y=142.0,z=386.0},
    {map='DuskGraveyard',x=305.0,y=122.0,z=560.0},
    {map='DuskOasis',x=84.0,y=93.0,z=186.0},
    {map='DuskOasis',x=67.0,y=100.0,z=121.0},
    {map='DuskOasis',x=92.0,y=79.0,z=-56.0},
    {map='DuskOasis',x=-12.0,y=66.0,z=-91.0},
    {map='DuskOasis',x=15.0,y=85.0,z=-139.0},
    {map='DuskOasis',x=28.0,y=72.0,z=-222.0},
    {map='Dusk_CrabField',x=-22.0,y=33.0,z=528.0},
    {map='Dusk_CrabField',x=-165.0,y=2.0,z=370.0},
    {map='Dusk_CrabField',x=-293.0,y=4.0,z=335.0},
    {map='DuskMid',x=-205.0,y=131.0,z=-160.0},
    {map='DuskMid',x=-238.0,y=87.0,z=-394.0},
    {map='DuskEnd',x=4.0,y=203.0,z=32.0},
    {map='Night',x=20.0,y=47.0,z=-68.0},
    {map='NightArchive',x=56.0,y=541.0,z=-34.0},
    {map='NightArchive',x=79.0,y=555.0,z=-41.0},
    {map='Night',x=34.0,y=161.0,z=-42.0},
    {map='Night2',x=-39.0,y=141.0,z=9.0},
    {map='Night2',x=13.0,y=184.0,z=42.0},
    {map='Night2',x=48.0,y=229.0,z=9.0},
    {map='Night2',x=0.0,y=304.0,z=58.0},
    {map='NightDesert',x=-96.0,y=65.0,z=388.0},
    {map='NightDesert',x=340.0,y=112.0,z=171.0},
    {map='NightDesert',x=401.0,y=76.0,z=776.0},
    {map='Prairie_WildLifePark',x=261.9,y=262.7,z=-315.8},
    {map='Prairie_WildLifePark',x=618.1,y=481.3,z=-150.2},
    {map='Prairie_WildLifePark',x=507.3,y=234.6,z=73.3},
}

-- AUTO CANDLE RUN POINTS --
crpoints = {
    {family = "Home", name = "Home", map = "CandleSpace", x = -11.474952697753906, y = 1.0653516054153442, z = 21.754070281982422},
    {family = "Home", name = "Home", map = "CandleSpace", x = -17.92003059387207, y = 1.1323552131652832, z = 17.41378402709961},
    {family = "Home", name = "Home", map = "CandleSpace", x = -20.057443618774414, y = 0.9369192719459534, z = 11.609140396118164},
    {family = "Home", name = "Home", map = "CandleSpace", x = -9.972633361816406, y = 0.8219280242919922, z = 11.372694969177246},
    {family = "Home", name = "Home", map = "CandleSpace", x = -0.6386427283287048, y = 1.3603408336639404, z = 0.9419575929641724},

	{family = "Isle", name = "Isle", map = "Dawn", x = 370.656036, y = 34.607585, z = 51.726856},
    {family = "Isle", name = "Isle", map = "Dawn", x = 311.549499, y = 1.436121, z = 117.924224},
	{family = "Isle", name = "Isle", map = "Dawn", x = 197.9732666015625, y = 1.8824630975723267, z = 55.401161193847656},
	{family = "Isle", name = "Isle", map = "Dawn", x = 188.80564880371094, y = 2.598883867263794, z = 281.9952392578125},
	{family = "Isle", name = "Isle", map = "Dawn", x = -40.48249816894531, y = 4.8827385902404785, z = 214.21710205078125},
	{family = "Isle", name = "Isle", map = "Dawn", x = -41.26372146606445, y = 4.903953552246094, z = 220.50515747070312},
	{family = "Isle", name = "Isle", map = "Dawn", x = -11.424962043762207, y = 53.06041717529297, z = 372.3326721191406},
	{family = "Isle", name = "Isle", map = "Dawn", x = -9.27645492553711, y = 60.721038818359375, z = 410.2227783203125},
	{family = "Isle", name = "Isle", map = "Dawn", x = -13.45440673828125, y = 52.171539306640625, z = 374.6302185058594},
	{family = "Isle", name = "Isle", map = "Dawn", x = -6.864572525024414, y = 95.40955352783203, z = 413.75372314453125},
	{family = "Isle", name = "Isle", map = "Dawn", x = -20.606237411499023, y = 116.71247100830078, z = 411.5111389160156},
	{family = "Isle", name = "Isle", map = "Dawn", x = 49.98896789550781, y = 24.278461456298828, z = 107.04509735107422},
	{family = "Isle", name = "Isle", map = "Dawn", x = -248.71356201171875, y = 87.71572875976562, z = 142.59107971191406},
	{family = "Isle", name = "Isle", map = "Dawn", x = -237.09129333496094, y = 86.23419952392578, z = 146.8808135986328},
	{family = "Isle", name = "Isle", map = "Dawn", x = -236.0393524169922, y = 87.44136810302734, z = 151.28338623046875},
	{family = "Isle", name = "Isle", map = "Dawn", x = -246.95970153808594, y = 85.39991760253906, z = 157.58560180664062},
	{family = "Isle", name = "Isle", map = "Dawn", x = -253.04071044921875, y = 86.86920166015625, z = 154.90817260742188},
	{family = "Isle", name = "Isle", map = "Dawn", x = -249.00608825683594, y = 86.06829833984375, z = 152.6754913330078},
	{family = "Isle", name = "Isle", map = "Dawn", x = -184.8279571533203, y = 90.4559555053711, z = 141.87677001953125},

	{family = "Isle", name = "Trials Cave", map = "DawnCave", x = -300.252471, y = 235.625747, z = -2.923966},
	{family = "Isle", name = "Trials Cave", map = "DawnCave", x = -328.902587, y = 284.778350, z = -12.368432, e = true},

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

	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -434.0650634765625, y = 196.7327880859375, z = 125.8191909790039},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -442.434326171875, y = 196.92933654785156, z = 126.36478424072266},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -435.1515808105469, y = 196.59423828125, z = 114.17571258544922},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -428.2901306152344, y = 196.90032958984375, z = 106.10945892333984},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -431.1561584472656, y = 197.1288604736328, z = 118.88468170166016},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -422.8909912109375, y = 196.61524963378906, z = 119.42495727539062},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -427.2716369628906, y = 197.09629821777344, z = 120.89807891845703},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -420.4129333496094, y = 196.7722625732422, z = 110.73902893066406},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -416.8428039550781, y = 197.6248779296875, z = 117.3946762084961},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -414.08978271484375, y = 198.43763732910156, z = 113.90576171875},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -31.244253158569336, y = 157.44467163085938, z = 123.84048461914062},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -25.177522659301758, y = 149.2626495361328, z = 113.31632232666016},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -17.872663497924805, y = 156.8743438720703, z = 39.101139068603516},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -20.580171585083008, y = 158.94158935546875, z = 26.917245864868164},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 1.4737073183059692, y = 150.24215698242188, z = 78.46833038330078},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 7.607182502746582, y = 151.29530334472656, z = 58.5430908203125},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 44.61483383178711, y = 156.4333953857422, z = 81.00585174560547},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 45.74073028564453, y = 156.81103515625, z = 90.36058807373047},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 50.310909271240234, y = 157.7774200439453, z = 82.3095703125},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 62.438663482666016, y = 160.93963623046875, z = 81.02312469482422},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 50.33897018432617, y = 156.07421875, z = 111.83123779296875},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 20.319795608520508, y = 172.40145874023438, z = 104.788330078125},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 23.90431022644043, y = 156.40342712402344, z = 109.71389770507812},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 1.2447913885116577, y = 162.6338348388672, z = 148.1076202392578},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 6.675168991088867, y = 162.28199768066406, z = 144.3789520263672},
    {family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 15.7, y = 155.2, z = 102.8},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = -28.314294815063477, y = 148.69432067871094, z = 125.12788391113281},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 27.84032440185547, y = 175.02781677246094, z = 106.41901397705078},
	{family = "Prairie", name = "Prairie Butterfly Fields", map = "Prairie_ButterflyFields", x = 5.677907943725586, y = 163.42144775390625, z = 159.9477081298828},

	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 65.85206604003906, y = 187.83665466308594, z = 302.1767578125},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 96.07904815673828, y = 196.78692626953125, z = 282.33734130859375},
    {family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 149.277, y = 202.656, z = 224.886},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 130.31956481933594, y = 202.70079040527344, z = 263.935791015625},
    {family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 111.5, y = 198.3, z = 347.2},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 133.99427795410156, y = 182.4741973876953, z = 296.8442687988281},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 200.1848602294922, y = 181.25865173339844, z = 399.07965087890625},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 210.53382873535156, y = 185.65869140625, z = 410.3680114746094},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 225.5228271484375, y = 180.96774291992188, z = 374.7661437988281},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 203.23948669433594, y = 187.85186767578125, z = 313.656982421875},
    {family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 178.6, y = 200.3, z = 289.7},
	{family = "Prairie", name = "Prairie Cave", map = "Prairie_Cave", x = 213.3845672607422, y = 193.28684997558594, z = 268.37469482421875},

    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 272.721923828125, y = 183.7411651611328, z = 27.261472702026367},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 232.08749389648438, y = 181.47222900390625, z = 88.8397216796875},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 257.0782470703125, y = 181.6366424560547, z = 101.47383880615234},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 253.4640655517578, y = 195.26266479492188, z = 99.56314086914062},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 271.39959716796875, y = 201.2777557373047, z = 97.57267761230469},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 275.16943359375, y = 201.4562225341797, z = 95.45922088623047},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 271.02178955078125, y = 199.1541290283203, z = 93.59092712402344},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 351.1038513183594, y = 187.82907104492188, z = 90.7116928100586},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 360.84820556640625, y = 194.39024353027344, z = 67.32402801513672},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 363.890380859375, y = 197.07713317871094, z = 64.4627456665039},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 363.99810791015625, y = 198.621337890625, z = 68.09441375732422},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 376.80572509765625, y = 186.4857635498047, z = 67.14299774169922},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 363.4762268066406, y = 187.62985229492188, z = 65.8404769897461},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 368.6451110839844, y = 186.25259399414062, z = 57.410640716552734},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 356.7618408203125, y = 186.24424743652344, z = 48.77674102783203},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 348.49102783203125, y = 184.40699768066406, z = 31.7186336517334},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 325.18853759765625, y = 188.48440551757812, z = -11.628552436828613},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 318.3239440917969, y = 192.7496337890625, z = -14.958328247070312},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 316.6703796386719, y = 194.45909118652344, z = -18.499284744262695},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 320.6529846191406, y = 195.24049377441406, z = -17.022144317626953},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 317.01116943359375, y = 183.81602478027344, z = -41.24715805053711},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 278.2190246582031, y = 185.12066650390625, z = 27.106273651123047},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 456.6010437011719, y = 254.24014282226562, z = 113.01968383789062},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 479.2211608886719, y = 267.06170654296875, z = 138.05459594726562},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 537.0895385742188, y = 304.6280822753906, z = 145.99746704101562},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 455.98944091796875, y = 251.04794311523438, z = 132.96841430664062},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 476.2197265625, y = 254.07073974609375, z = 122.97653198242188},
    {family = "Prairie", name = "Prairie Village", map = "Prairie_Village", x = 466.8929138183594, y = 255.12937927246094, z = 122.27827453613281},
	
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
    {family = "Prairie", name = "Prairie Temple", map = "DayEnd", x = 42.5, y = 85.2, z = -66.1},

    {family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 145.1, y = 159.9, z = -139.1},
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
    {family = "Prairie", name = "Bird Nest", map = "Prairie_NestAndKeeper", x = 152.9, y = 181.5, z = -214.8},

	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 197.7641143798828, y = 108.83638763427734, z = 224.2991485595703},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 204.99671936035156, y = 94.43135070800781, z = 241.08853149414062},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 220.04885864257812, y = 95.75849151611328, z = 245.01895141601562},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 283.13970947265625, y = 13.331665992736816, z = 142.82269287109375},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 291.8946533203125, y = 1.9571305513381958, z = 98.30908203125},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 291.9376525878906, y = 2.6003825664520264, z = 93.63809204101562},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 290.3194885253906, y = 3.9892146587371826, z = 93.61046600341797},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 299.4332275390625, y = 8.63095760345459, z = 79.7413330078125},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 281.49853515625, y = 18.570781707763672, z = 73.31011962890625},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 273.28753662109375, y = 19.04177474975586, z = 61.58187484741211},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 361.8325500488281, y = 1.2684422731399536, z = 102.3408203125},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 361.89959716796875, y = 11.205573081970215, z = 95.00312805175781},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 334.5318908691406, y = 2.5601515769958496, z = 108.65750885009766},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 324.5395202636719, y = 20.204425811767578, z = 119.29219055175781},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 333.0966491699219, y = 19.585006713867188, z = 109.7388916015625},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 330.500244140625, y = 29.064435958862305, z = 78.62501525878906},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 332.800537109375, y = 1.3003911972045898, z = 51.06552505493164},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 324.624755859375, y = 1.500983715057373, z = 79.77877044677734},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 328.65948486328125, y = 55.80884552001953, z = 24.37372398376465},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 383.0494384765625, y = 14.839371681213379, z = -20.52140235900879},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 307.5682678222656, y = 94.91777801513672, z = 64.00161743164062},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 302.0362854003906, y = 102.23536682128906, z = 58.644561767578125},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 396.0071716308594, y = 1.0686122179031372, z = 145.02462768554688},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 402.2579345703125, y = 1.0748443603515625, z = 140.00888061523438},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 407.3733825683594, y = 1.8344441652297974, z = 133.7435760498047},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 402.5759582519531, y = 1.9198238849639893, z = 128.78240966796875},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 407.8293151855469, y = 1.5859341621398926, z = 124.01689147949219},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 419.7530212402344, y = 1.0828245878219604, z = 114.50752258300781},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 418.9076843261719, y = 2.852764844894409, z = 141.90328979492188},
    {family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 118.471, y = 80.831, z = -146.730},
	{family = "Prairie", name = "Sanctuary Islands", map = 'Prairie_Island', x = 220.97914123535156, y = 1.0520873069763184, z = -128.26754760742188},

	{family = "Forest", name = "Forest", map = "Rain", x = -621.2893676757812, y = 217.5220947265625, z = 136.63812255859375},
	{family = "Forest", name = "Forest", map = "Rain", x = -619.5172729492188, y = 217.56639099121094, z = 142.85804748535156},
	{family = "Forest", name = "Forest", map = "Rain", x = -627.0397338867188, y = 217.64898681640625, z = 132.1042938232422},
	{family = "Forest", name = "Forest", map = "Rain", x = -616.7698974609375, y = 218.20982360839844, z = 132.15298461914062},
	{family = "Forest", name = "Forest", map = "Rain", x = -605.6686401367188, y = 219.3274688720703, z = 142.90277099609375},
	{family = "Forest", name = "Forest", map = "Rain", x = -303.6269226074219, y = 98.44613647460938, z = 4.925462245941162},
	{family = "Forest", name = "Forest", map = "Rain", x = -255.6790313720703, y = 93.63592529296875, z = 20.366352081298828},
	{family = "Forest", name = "Forest", map = "Rain", x = -258.16021728515625, y = 114.98158264160156, z = 2.4498724937438965},
	{family = "Forest", name = "Forest", map = "Rain", x = -226.36892700195312, y = 93.03719329833984, z = 20.56949806213379},
	{family = "Forest", name = "Forest", map = "Rain", x = -226.04368591308594, y = 95.2733154296875, z = -0.5277851819992065},
	{family = "Forest", name = "Forest", map = "Rain", x = -220.3804931640625, y = 94.94420623779297, z = 14.4481840133667},
	{family = "Forest", name = "Forest", map = "Rain", x = -218.45509338378906, y = 95.63053894042969, z = 18.23048973083496},
	{family = "Forest", name = "Forest", map = "Rain", x = -197.67904663085938, y = 97.30514526367188, z = 14.612029075622559},
	{family = "Forest", name = "Forest", map = "Rain", x = -198.40676879882812, y = 97.35270690917969, z = 21.21331214904785},
	{family = "Forest", name = "Forest", map = "Rain", x = -190.47067260742188, y = 100.2016830444336, z = 2.0369107723236084},
	{family = "Forest", name = "Forest", map = "Rain", x = -189.2777862548828, y = 100.1926498413086, z = 6.231393337249756},
	{family = "Forest", name = "Forest", map = "Rain", x = -177.49557495117188, y = 97.2308120727539, z = 18.586463928222656},
	{family = "Forest", name = "Forest", map = "Rain", x = -178.3606414794922, y = 98.04975128173828, z = 29.911996841430664},
	{family = "Forest", name = "Forest", map = "Rain", x = -168.44192504882812, y = 96.92744445800781, z = 15.176321983337402},
	{family = "Forest", name = "Forest", map = "Rain", x = -155.53160095214844, y = 98.28016662597656, z = 9.606688499450684},
	{family = "Forest", name = "Forest", map = "Rain", x = -138.5462646484375, y = 100.12368774414062, z = 10.89071273803711},
	{family = "Forest", name = "Forest", map = "Rain", x = -133.00048828125, y = 99.59758758544922, z = 15.99326229095459},
	{family = "Forest", name = "Forest", map = "Rain", x = -145.52279663085938, y = 98.16012573242188, z = 31.500253677368164},
	{family = "Forest", name = "Forest", map = "Rain", x = -118.8730239868164, y = 98.46460723876953, z = 28.38404083251953},
	{family = "Forest", name = "Forest", map = "Rain", x = -131.66778564453125, y = 99.9075927734375, z = 31.009593963623047},
	{family = "Forest", name = "Forest", map = "Rain", x = -110.73421478271484, y = 98.93668365478516, z = 29.430688858032227},

	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 105.58521270751953, y = 142.84555053710938, z = 20.468217849731445},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 82.03945922851562, y = 141.40216064453125, z = 6.580731391906738},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 61.386627197265625, y = 140.25596618652344, z = 7.753787517547607},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 69.09538269042969, y = 160.6775665283203, z = 25.572864532470703},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 60.673736572265625, y = 141.7501983642578, z = -12.187196731567383},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 35.43569564819336, y = 140.85446166992188, z = 6.7392964363098145},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 20.77667236328125, y = 137.6776885986328, z = 11.38563060760498},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 35.238704681396484, y = 140.8695831298828, z = 6.736605644226074},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 11.70361328125, y = 147.4263458251953, z = -3.7856478691101074},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 6.546524524688721, y = 147.38693237304688, z = 0.3261505961418152},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 17.792882919311523, y = 152.59564208984375, z = 0.4494355320930481},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 19.657100677490234, y = 146.18472290039062, z = 21.438615798950195},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 19.67191505432129, y = 162.43040466308594, z = 4.054534435272217},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 34.97221755981445, y = 138.07571411132812, z = 29.67296028137207},
	{family = "Forest", name = "Treehouse", map = "Rain_BaseCamp", x= 60.708221435546875, y = 140.79347229003906, z = -16.212696075439453},

	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 267.375, y = 332.397, z = -120.680},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 245.839, y = 367.077, z = -146.051},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 273.569, y = 327.611, z = -147.687},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 214.075, y = 315.975, z = -138.198},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 128.261, y = 350.825, z = -92.770},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 123.525, y = 359.633, z = -107.510},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 131.597, y = 338.295, z = -134.803},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 155.135, y = 323.591, z = -135.115},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 325.290, y = 367.150, z = -220.587},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 335.149, y = 378.517, z = -214.938},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 334.877, y = 364.053, z = -201.844},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 361.274, y = 345.678, z = -165.847},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 364.935, y = 341.374, z = -151.819},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 348.168, y = 332.000, z = -155.022},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 381.581, y = 331.177, z = 337.934},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 429.284, y = 320.199, z = 522.703},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 441.475, y = 319.398, z = 525.655},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 276.076, y = 335.565, z = 581.796},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 340.497, y = 343.845, z = 690.805},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 235.033, y = 352.802, z = 389.350},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 202.937, y = 306.784, z = 374.721},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 97.293, y = 312.991, z = 219.590},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 164.531, y = 319.641, z = 631.402},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 75.486, y = 346.333, z = 419.043},
	{family = "Forest", name = "Wind Paths", map = "Skyway", x = 280.755, y = 380.818, z = 11.880},

	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -106.79784393310547, y = 100.14737701416016, z = 27.011117935180664},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -66.97208404541016, y = 106.39827728271484, z = 15.939188957214355},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -71.39379119873047, y = 106.23229217529297, z = 29.58515167236328},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -64.58373260498047, y = 127.58283996582031, z = 23.77618408203125},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -90.58216094970703, y = 107.4986343383789, z = 68.78263854980469},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -111.20956420898438, y = 111.97493743896484, z = 104.5016860961914},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -101.85662841796875, y = 112.6841812133789, z = 97.13552856445312},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -61.13520431518555, y = 107.57537078857422, z = 71.12226867675781},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -49.22496032714844, y = 112.50108337402344, z = 106.86517333984375},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -52.07992172241211, y = 106.99028778076172, z = 68.19967651367188},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -43.84225845336914, y = 98.30781555175781, z = 40.694129943847656},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -30.387901306152344, y = 99.8733139038086, z = 89.06594848632812},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -19.77448272705078, y = 100.52644348144531, z = 88.17034912109375},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -25.136350631713867, y = 99.09033966064453, z = 106.16337585449219},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -2.6953141689300537, y = 97.7259292602539, z = 54.686195373535156},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -3.3522751331329346, y = 96.66667938232422, z = 45.73674774169922},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -10.804974555969238, y = 96.60961151123047, z = 38.42040252685547},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 10.913758277893066, y = 96.78509521484375, z = 63.987361907958984},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 18.164230346679688, y = 103.49531555175781, z = 81.83629608154297},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 14.006277084350586, y = 103.90534973144531, z = 86.85252380371094},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 33.427513122558594, y = 99.58728790283203, z = 92.53579711914062},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 28.928268432617188, y = 97.57671356201172, z = 77.79023742675781},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 47.122413635253906, y = 100.1793212890625, z = 64.99016571044922},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = 30.70799446105957, y = 102.6952896118164, z = 51.110721588134766},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -2.7336158752441406, y = 105.27145385742188, z = 38.526004791259766},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -25.89279556274414, y = 117.9773941040039, z = 24.73155975341797},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -41.90158462524414, y = 118.53023529052734, z = 19.51756477355957},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -10.476714134216309, y = 129.70359802246094, z = 78.96803283691406},
	{family = "Forest", name = "Forest's Brook", map = "RainForest", x = -14.047037124633789, y = 129.71502685546875, z = 78.63593292236328},

	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -56.2984504699707, y = 84.28899383544922, z = 13.194242477416992},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -53.13119888305664, y = 85.8959732055664, z = -1.104617953300476},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -32.04152297973633, y = 85.4687728881836, z = -16.6461238861084},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -18.939252853393555, y = 103.51744079589844, z = -44.5482063293457},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -10.06113338470459, y = 85.34862518310547, z = -0.6101300120353699},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = -7.720042705535889, y = 84.25837707519531, z = -7.878720760345459},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 7.315776824951172, y = 93.04299926757812, z = 8.814708709716797},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 21.49363136291504, y = 96.31813049316406, z = -17.86054229736328},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 15.222472190856934, y = 94.04011535644531, z = -30.590702056884766},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 23.575653076171875, y = 96.75299835205078, z = -20.856063842773438},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 68.48648071289062, y = 90.34416198730469, z = 4.472537517547607},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 69.47054290771484, y = 89.2098159790039, z = -2.8092153072357178},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 98.27557373046875, y = 88.34962463378906, z = 16.273279190063477},
	{family = "Forest", name = "Elevated Clearing", map = "RainShelter", x = 115.8653793334961, y = 89.45538330078125, z = 14.579297065734863},

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

	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -281.2309875488281, y = 78.38956451416016, z = 62.751949310302734},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -284.666015625, y = 80.55488586425781, z = 60.66569137573242},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -288.00885009765625, y = 80.52780151367188, z = 64.1376724243164},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -416.69915771484375, y = 78.63843536376953, z = 26.388769149780273},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -365.7904357910156, y = 121.37095642089844, z = 1.7882102727890015},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -198.6945343017578, y = 132.4363250732422, z = -53.944515228271484},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -196.7183380126953, y = 132.3707275390625, z = -37.305179595947266},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -193.0370330810547, y = 133.53643798828125, z = -33.206729888916016},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -213.4595489501953, y = 137.6908416748047, z = 9.732129096984863},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -201.9893798828125, y = 209.00193786621094, z = -65.59923553466797},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -295.6673583984375, y = 210.6011199951172, z = -68.79963684082031},
	{family = "Forest", name = "Forest Cave", map = "Rain_Cave", x = -284.5804748535156, y = 210.75970458984375, z = -62.6735725402832},

	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = 24.00751304626465, y = 307.7404479980469, z = -21.79813003540039},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = 22.618072509765625, y = 306.1611328125, z = -43.705726623535156},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = 1.3755019903182983, y = 306.47900390625, z = -32.390201568603516},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = 8.875714302062988, y = 306.9953918457031, z = -42.02152633666992},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -110.6434097290039, y = 267.9842529296875, z = -125.98399353027344},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -149.5267333984375, y = 263.7309265136719, z = -151.70518493652344},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -165.54371643066406, y = 251.80252075195312, z = -100.04228973388672},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -172.06787109375, y = 250.18734741210938, z = -102.27665710449219},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -179.01956176757812, y = 248.63050842285156, z = -104.67191314697266},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -186.3319549560547, y = 247.12539672851562, z = -108.07855987548828},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -195.8011474609375, y = 244.9113311767578, z = -110.77165985107422},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -222.42562866210938, y = 240.3184814453125, z = -121.38665008544922},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -226.4966583251953, y = 227.21731567382812, z = -149.61546325683594},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -331.9772644042969, y = 198.97964477539062, z = -135.12962341308594},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -449.4875793457031, y = 125.14639282226562, z = -64.7079086303711},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -454.8388977050781, y = 87.75872039794922, z = 10.069130897521973},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -478.0489807128906, y = 75.4820556640625, z = 67.7474594116211},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -489.8865051269531, y = 72.92594146728516, z = 93.58867645263672},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -448.24981689453125, y = 75.86190795898438, z = 156.45645141601562},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -444.74786376953125, y = 75.66156768798828, z = 159.89015197753906},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -485.77435302734375, y = 44.687252044677734, z = 174.4825439453125},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -487.4285583496094, y = 44.73691940307617, z = 170.49273681640625},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -517.8002319335938, y = 39.64897537231445, z = 173.7853546142578},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -518.8555297851562, y = 39.613014221191406, z = 180.8209991455078},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -531.437255859375, y = 45.13669967651367, z = 161.29344177246094},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -525.900634765625, y = 48.110198974609375, z = 185.34384155273438},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -569.9852905273438, y = 47.036006927490234, z = 163.74305725097656},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -560.4586181640625, y = 48.509151458740234, z = 196.96060180664062},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -564.3189697265625, y = 51.53343963623047, z = 214.9447479248047},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -531.3700561523438, y = 47.33890914916992, z = 237.11676025390625},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -519.706298828125, y = 49.186466217041016, z = 189.70828247070312},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -547.3261108398438, y = 44.979095458984375, z = 185.4912567138672},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -546.021484375, y = 44.92873764038086, z = 190.4704132080078},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -522.8698120117188, y = 44.819366455078125, z = 219.99240112304688},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -515.8986206054688, y = 44.82121658325195, z = 221.09228515625},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -461.1955261230469, y = 45.90361785888672, z = 298.7904357910156},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -540.724853515625, y = 41.84864044189453, z = 165.837890625},
	{family = "Valley", name = "Valley Ice Rink", map = "Sunset", x = -517.217041015625, y = 48.752281188964844, z = 198.38845825195312},

	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = 56.19135284423828, y = 474.6986999511719, z = 58.57329177856445},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = 24.30461311340332, y = 480.3187561035156, z = 79.38916015625},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = 0.7730821967124939, y = 471.98883056640625, z = 98.73863220214844},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = 15.789102554321289, y = 476.88525390625, z = 115.07817840576172},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -4.539078712463379, y = 506.80615234375, z = 17.915287017822266},
    {family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -3.157510757446289, y = 481.3544616699219, z = 119.70694732666016},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -38.60588836669922, y = 530.302978515625, z = 26.75312042236328},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -50.825294494628906, y = 530.581298828125, z = 92.44596099853516},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -47.60591506958008, y = 560.2349243164062, z = 95.62406921386719},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -37.603267669677734, y = 558.1720581054688, z = 105.84736633300781},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -27.670698165893555, y = 534.184814453125, z = 112.93629455566406},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -71.6363754272461, y = 478.3817443847656, z = 129.7525634765625},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -91.07054901123047, y = 478.3818359375, z = 105.4310531616211},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -114.208251953125, y = 480.2586364746094, z = 122.66777038574219},
    {family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -68.0142593383789, y = 474.0615234375, z = 112.4507827758789},
    {family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -10.239112854003906, y = 470.08111572265625, z = 67.00865936279297},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -98.4845962524414, y = 480.25885009765625, z = 142.76773071289062},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -120.6845932006836, y = 485.2546081542969, z = 156.18331909179688},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -132.12664794921875, y = 485.2548522949219, z = 140.38540649414062},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -158.90478515625, y = 494.9086608886719, z = 155.41200256347656},
	{family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -143.98617553710938, y = 494.85540771484375, z = 174.80857849121094},
    {family = "Valley", name = "Valley Citadel", map = "Sunset_Citadel", x = -196.232177734375, y = 492.10260009765625, z = 199.919921875},

	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -254.30523681640625, y = 168.2843780517578, z = -12.157695770263672},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -156.98855590820312, y = 168.2843780517578, z = 9.336337089538574},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -153.88351440429688, y = 168.28440856933594, z = 100.99378967285156},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -192.94163513183594, y = 155.13572692871094, z = 100.3702621459961},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -251.78379821777344, y = 168.28439331054688, z = 128.69223022460938},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -259.8575744628906, y = 134.6875762939453, z = 55.82533264160156},
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -263.8152160644531, y = 136.0878448486328, z = 63.645477294921875},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -211.52593994140625, y = 133.91896057128906, z = 44.07035446166992},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -223.0878143310547, y = 131.81741333007812, z = 38.07758712768555},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -226.65586853027344, y = 133.5016326904297, z = 32.67816162109375},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -232.8355255126953, y = 134.086181640625, z = 44.89790344238281},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -244.24478149414062, y = 136.78515625, z = 58.75127410888672},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -220.1278533935547, y = 132.5611572265625, z = 69.16756439208984},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -211.57115173339844, y = 134.9465789794922, z = 76.77666473388672},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -219.6148223876953, y = 136.5106964111328, z = 84.48727416992188},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -209.4252471923828, y = 134.20248413085938, z = 57.89286422729492},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -220.3546600341797, y = 133.20848083496094, z = 68.6723403930664},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -230.28994750976562, y = 133.32737731933594, z = 69.48483276367188},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -212.97549438476562, y = 133.54901123046875, z = 45.42156982421875},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -196.70492553710938, y = 135.36605834960938, z = 56.45188522338867},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -218.1603240966797, y = 132.80885314941406, z = 57.66897964477539},
  
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 381.46783447265625, y = 1187.694580078125, z = 76.41629028320312},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 348.8865966796875, y = 1179.8048095703125, z = -171.40061950683594},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 289.05804443359375, y = 1175.52978515625, z = -266.0985412597656},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 69.34074401855469, y = 1164.7379150390625, z = -397.760498046875},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 50.46381378173828, y = 1163.900390625, z = -397.8044738769531},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = -29.535158157348633, y = 1157.2373046875, z = -349.8327941894531},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = -32.651405334472656, y = 1051.8070068359375, z = 69.76197814941406},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = -69.29006958007812, y = 1050.3668212890625, z = 111.15153503417969},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = -100.14618682861328, y = 1038.383544921875, z = 155.33790588378906},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 450.38140869140625, y = 474.96917724609375, z = -423.32904052734375},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 450.38140869140625, y = 474.96917724609375, z = -423.32904052734375},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 450.38140869140625, y = 474.96917724609375, z = -423.32904052734375},
    {family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 450.38140869140625, y = 474.96917724609375, z = -423.32904052734375},
    {family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 450.38140869140625, y = 474.96917724609375, z = -423.32904052734375},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 418.3880615234375, y = 446.617919921875, z = -401.19354248046875},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 385.9672546386719, y = 406.02825927734375, z = -324.0826721191406},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 216.13739013671875, y = 273.684814453125, z = -141.75169372558594},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 181.4438934326172, y = 232.8076171875, z = -2.92484188079834},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 73.24301147460938, y = 185.21400451660156, z = 40.287479400634766},
	{family = "Valley", name = "Valley Fly Race", map = "Sunset_FlyRace", x = 12.287199974060059, y = 169.22158813476562, z = 52.304508209228516},

	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 571.388427734375, y = 889.5077514648438, z = 132.6311492919922},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 475.813720703125, y = 852.7994995117188, z = 159.01361083984375},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 416.1005554199219, y = 832.7763061523438, z = 158.046630859375},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = -26.074161529541016, y = 747.139404296875, z = 110.09693145751953},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = -324.5790100097656, y = 662.9506225585938, z = 209.0755157470703},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = -421.6092834472656, y = 630.8012084960938, z = 195.69529724121094},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = -570.6597900390625, y = 584.18701171875, z = 260.3428955078125},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 424.5173645019531, y = 320.4500427246094, z = 2.0229508876800537},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 424.5173645019531, y = 320.4500427246094, z = 2.0229508876800537},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 424.5173645019531, y = 320.4500427246094, z = 2.0229508876800537},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 424.5173645019531, y = 320.4500427246094, z = 2.0229508876800537},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 424.5173645019531, y = 320.4500427246094, z = 2.0229508876800537},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 388.1941223144531, y = 313.3712463378906, z = 11.490737915039062},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 265.34466552734375, y = 268.7123107910156, z = 10.775996208190918},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 74.07786560058594, y = 185.6116180419922, z = 40.443275451660156},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 36.78528594970703, y = 175.18060302734375, z = 52.33039855957031},
	{family = "Valley", name = "Valley Race", map = "SunsetRace", x = 11.6656494140625, y = 169.3128204345703, z = 44.62201690673828},

	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -189.81155395507812, y = 141.4324493408203, z = 9.400322914123535},
	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -150.7283172607422, y = 147.15293884277344, z = -29.96817398071289},
	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -149.0789337158203, y = 140.55630493164062, z = -30.956897735595703},
	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -127.04251861572266, y = 153.80331420898438, z = -18.655099868774414},
	{family = "Valley", name = "Valley Temple", map = "SunsetEnd2", x = -118.18791198730469, y = 153.8365020751953, z = -11.451508522033691},

	{family = "Valley", name = "Dream Village", map = "SunsetVillage", x = 70.97738647460938, y = 50.091190338134766, z = 77.55197143554688},
	{family = "Valley", name = "Dream Village", map = "SunsetVillage", x = 73.16737365722656, y = 76.686279296875, z = 258.62237548828125},

	{family = "Valley", name = "Hermit Valley", map = "Sunset_YetiPark", x = 683.3143920898438, y = 260.7340087890625, z = -191.4088134765625},
	
    {family = "Wasteland", name = "Abyss Area", map = "Dusk_Triangle", x = -4.397, y = 3.456, z = 192.275},
	{family = "Wasteland", name = "Abyss Area", map = "Dusk_Triangle", x = -5.067, y = 4.391, z = 183.301},
	{family = "Wasteland", name = "Abyss Area", map = "Dusk_Triangle", x = -8.384, y = 5.970, z = 179.405},
	{family = "Wasteland", name = "Abyss Area", map = "Dusk_Triangle", x = -18.226, y = 52.203, z = -59.554},
	{family = "Wasteland", name = "Abyss Area", map = "Dusk_Triangle", x = -97.881, y = 11.048, z = 100.999},
	{family = "Wasteland", name = "Abyss Area", map = "Dusk_Triangle", x = -166.344, y = -47.115, z = 11.728},
	{family = "Wasteland", name = "Abyss Area", map = "Dusk_Triangle", x = -4.397, y = 3.456, z = 192.275},
	
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 368.4274597167969, y = 45.829345703125, z = 97.87799072265625},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 343.5271301269531, y = 1.023998498916626, z = 28.541677474975586},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 317.9764404296875, y = 0.7438836097717285, z = 76.94354248046875},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 325.4920959472656, y = 0.74033123254776, z = 85.77791595458984},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 305.5571594238281, y = 1.171199917793274, z = 83.2822265625},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 308.2770080566406, y = 1.4217238426208496, z = 14.507368087768555},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 301.7413024902344, y = 0.8081896901130676, z = 7.708442687988281},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 296.51446533203125, y = 0.45377859473228455, z = -4.138810157775879},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 293.83843994140625, y = 0.8905269503593445, z = -11.340044975280762},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 277.0732421875, y = 4.055539131164551, z = -21.47586441040039},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 269.2293395996094, y = 7.118671417236328, z = -16.774219512939453},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 222.91970825195312, y = 5.276890277862549, z = -57.19615936279297},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 194.3567352294922, y = 3.4918668270111084, z = -45.62404251098633},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 221.4401397705078, y = 2.3106729984283447, z = -23.255189895629883},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 228.23818969726562, y = 0.7846509218215942, z = 43.80900955200195},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 326.1545104980469, y = 2.0018959045410156, z = -93.38907623291016},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 227.2490234375, y = 0.438206285238266, z = -57.49846267700195},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 225.2928009033203, y = 0.8820172548294067, z = -22.744657516479492},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 236.89981079101562, y = 1.5144636631011963, z = -27.312604904174805},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 243.81446838378906, y = 2.195284843444824, z = -32.12983322143555},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 236.10894775390625, y = 0.8776721358299255, z = -31.964738845825195},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 241.09019470214844, y = 0.8580641746520996, z = -30.6782283782959},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 233.70797729492188, y = 0.45435288548469543, z = 38.86399841308594},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 236.25357055664062, y = 0.4541866183280945, z = 32.95203399658203},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 229.4849395751953, y = 0.45423465967178345, z = 45.88822555541992},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 238.31820678710938, y = 0.712211012840271, z = 43.918212890625},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 215.68609619140625, y = 1.0539339780807495, z = -26.212051391601562},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 164.73159790039062, y = 9.827449798583984, z = -82.7384033203125},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 160.74208068847656, y = 9.904448509216309, z = -80.75003051757812},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 166.37889099121094, y = 8.604253768920898, z = -78.78251647949219},
	{family = "Wasteland", name = "Golden Wasteland", map = "Dusk", x = 158.5264434814453, y = 16.396326065063477, z = -90.46444702148438},

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

	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 258.1833801269531, y = 90.86054229736328, z = 68.94708251953125},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 228.49850463867188, y = 90.00775909423828, z = 45.123809814453125},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 185.94082641601562, y = 92.9181137084961, z = 83.94757843017578},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 153.4207305908203, y = 99.3650894165039, z = 52.03959274291992},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 142.14093017578125, y = 93.77613830566406, z = 47.20830154418945},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 138.78822326660156, y = 93.76949310302734, z = 35.29425811767578},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 120.38420104980469, y = 95.22319030761719, z = 40.72797393798828},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = 120.97528076171875, y = 99.36209869384766, z = 67.51303100585938},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -15.26549243927002, y = 66.78950500488281, z = 64.53081512451172},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -56.31977844238281, y = 78.47816467285156, z = 92.33842468261719},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -44.20441436767578, y = 65.88500213623047, z = 116.20182037353516},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -60.74366760253906, y = 69.96267700195312, z = 48.98817825317383},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -100.45512390136719, y = 64.45414733886719, z = 85.2697982788086},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -156.39353942871094, y = 69.28889465332031, z = 71.35746765136719},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -132.70587158203125, y = 82.4433364868164, z = 44.643314361572266},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -142.96002197265625, y = 77.76142120361328, z = 7.160616874694824},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -91.44319915771484, y = 65.42304992675781, z = -12.006403923034668},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -139.29135131835938, y = 84.40266418457031, z = 15.664560317993164},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -126.8549575805664, y = 78.89791107177734, z = -8.106765747070312},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -132.85031127929688, y = 89.11494445800781, z = -8.177999496459961},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -134.30953979492188, y = 89.48905944824219, z = -0.02497871033847332},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -211.50611877441406, y = 69.59262084960938, z = 38.853668212890625},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -222.18638610839844, y = 71.58655548095703, z = 28.150489807128906},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -222.43450927734375, y = 71.45787811279297, z = 39.390933990478516},
	{family = "Wasteland", name = "Graveyard", map = "DuskGraveyard", x = -75.39410400390625, y = 69.71725463867188, z = 187.81884765625},

	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 524.532470703125, y = 39.76478958129883, z = -27.544836044311523},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 491.13525390625, y = 4.478700160980225, z = -179.73924255371094},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 476.22161865234375, y = 2.1031339168548584, z = -189.203857421875},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 431.5865478515625, y = 0.45414429903030396, z = -200.56784057617188},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 403.7999572753906, y = 1.1163321733474731, z = -192.0970458984375},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 421.1619567871094, y = 0.4539334177970886, z = -172.36024475097656},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 415.9125061035156, y = 4.039968013763428, z = -132.53079223632812},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 378.1017761230469, y = 0.4540365934371948, z = -159.7882843017578},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 369.67919921875, y = 2.2166800498962402, z = -165.20654296875},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 366.0921630859375, y = 11.080501556396484, z = -167.6825408935547},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 357.4107971191406, y = 7.433723449707031, z = -162.7078857421875},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 431.5472106933594, y = 15.691400527954102, z = -211.6100616455078},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 335.1782531738281, y = 3.657703399658203, z = -292.884765625},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 428.5508117675781, y = 5.803680419921875, z = -269.5837707519531},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 422.8252868652344, y = 7.944647312164307, z = -269.14312744140625},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 425.7615051269531, y = 11.66157054901123, z = -273.9796142578125},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 419.8097229003906, y = 18.238203048706055, z = -290.7201232910156},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 407.1831970214844, y = 29.22856330871582, z = -288.24285888671875},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 404.62835693359375, y = 31.31813621520996, z = -291.6519775390625},
	{family = "Wasteland", name = "Crab Fields", map = "Dusk_CrabField", x = 389.9561767578125, y = 37.47071838378906, z = -331.5985412597656},

	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -78.31275939941406, y = 104.72919464111328, z = -49.379302978515625},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -169.86570739746094, y = 121.74465942382812, z = -186.28558349609375},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -160.72918701171875, y = 130.67271423339844, z = -205.17340087890625},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -167.3223876953125, y = 131.07440185546875, z = -213.46340942382812},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -162.92994689941406, y = 140.8592071533203, z = -212.8483123779297},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -153.63330078125, y = 119.03047943115234, z = -244.98951721191406},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -184.23780822753906, y = 102.69404602050781, z = -229.36158752441406},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -196.8604278564453, y = 100.45066833496094, z = -251.24659729003906},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -228.756103515625, y = 101.2101821899414, z = -231.05587768554688},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -234.74697875976562, y = 105.66409301757812, z = -270.385009765625},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -242.50132751464844, y = 104.33642578125, z = -217.5958251953125},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -303.0529479980469, y = 97.62831115722656, z = -207.63665771484375},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -285.0635986328125, y = 96.35269927978516, z = -237.6016082763672},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -339.3220520019531, y = 85.11296081542969, z = -275.4637145996094},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -394.9160461425781, y = 86.35295867919922, z = -238.68910217285156},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -363.287841796875, y = 83.58938598632812, z = -225.5239715576172},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -368.8595886230469, y = 88.71360778808594, z = -269.4107971191406},
	{family = "Wasteland", name = "Battlefield", map = "DuskMid", x = -400.5589904785156, y = 96.54808044433594, z = -286.314697265625},

	{family = "Wasteland", name = "Temple", map = "DuskEnd", x = -2.220445394515991, y = 208.1399383544922, z = 3.485891580581665},
	{family = "Wasteland", name = "Temple", map = "DuskEnd", x = -4.854544162750244, y = 208.32373046875, z = -0.1272975504398346},
	{family = "Wasteland", name = "Temple", map = "DuskEnd", x = -1.9476174116134644, y = 208.1549072265625, z = -3.3306093215942383},
	{family = "Wasteland", name = "Temple", map = "DuskEnd", x = 1.9105192422866821, y = 207.26780700683594, z = 0.03473372757434845},
	
	{family = "Vault", name = "Vault Ground", map = "Night", x = -134.80255126953125, y = 37.469669342041016, z = 28.721576690673828},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -137.40054321289062, y = 47.235626220703125, z = 31.38960838317871},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -126.75163269042969, y = 47.23581314086914, z = 39.092681884765625},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -118.83675384521484, y = 42.42567825317383, z = 34.38060760498047},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -70.85896301269531, y = 37.8479118347168, z = 7.086162567138672},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -64.59172058105469, y = 36.70794677734375, z = 8.750578880310059},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -57.836673736572266, y = 38.168861389160156, z = -9.120648384094238},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 4.210712432861328, y = 41.03799057006836, z = -0.1055704802274704},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -13.268329620361328, y = 41.020328521728516, z = 16.44295310974121},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -6.137579917907715, y = 40.5389518737793, z = -7.017568111419678},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -31.39760398864746, y = 40.48100280761719, z = -3.4820311069488525},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -4.690106391906738, y = 40.931846618652344, z = -23.401485443115234},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -13.515769004821777, y = 41.3241081237793, z = -59.911014556884766},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 22.798477172851562, y = 41.142181396484375, z = -60.75113296508789},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -0.5274515748023987, y = 42.329593658447266, z = -18.95793914794922},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -19.199512481689453, y = 41.57315444946289, z = -14.50876522064209},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -16.525033950805664, y = 81.1485595703125, z = 11.570277214050293},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 16.434904098510742, y = 81.28543090820312, z = 16.570587158203125},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -2.5300793647766113, y = 80.04046630859375, z = 18.92121124267578},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 18.169389724731445, y = 80.84380340576172, z = 6.506211280822754},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 6.481492042541504, y = 79.37555694580078, z = 20.917726516723633},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -7.699972629547119, y = 79.15180969238281, z = -22.09187126159668},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 24.284135818481445, y = 82.8080825805664, z = 12.505423545837402},
	{family = "Vault", name = "Vault Ground", map = "Night", x = 42.14326477050781, y = 83.03611755371094, z = 29.625856399536133},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -35.14784240722656, y = 149.48597717285156, z = -16.030014038085938},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -29.849456787109375, y = 147.39443969726562, z = -3.4256999492645264},
	{family = "Vault", name = "Vault Ground", map = "Night", x = -40.72027587890625, y = 160.5322265625, z = 35.60982131958008},

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
	
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 53.204410552978516, y = 84.78599548339844, z = 17.23462677001953},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 50.02665710449219, y = 84.78593444824219, z = 11.145492553710938},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 44.71040725708008, y = 84.7859878540039, z = 14.593348503112793},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 37.7985725402832, y = 85.3626937866211, z = -4.6528191566467285},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 31.782636642456055, y = 84.79595184326172, z = 0.5173283219337463},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 23.912830352783203, y = 85.01395416259766, z = 0.8463520407676697},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 28.185596466064453, y = 84.78589630126953, z = -0.9399160146713257},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 39.509857177734375, y = 84.78904724121094, z = 9.551600456237793},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 34.96644592285156, y = 85.07381439208984, z = 9.858254432678223},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 21.372793197631836, y = 85.2208480834961, z = 12.78787612915039},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 19.997421264648438, y = 88.0382308959961, z = 17.60322380065918},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 20.127546310424805, y = 84.78563690185547, z = 3.75508975982666},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 4.73272705078125, y = 86.13802337646484, z = 6.572436332702637},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 16.157649993896484, y = 84.78594207763672, z = 3.485069513320923},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 23.90901756286621, y = 84.80104064941406, z = -9.145329475402832},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 10.7672758102417, y = 84.78585052490234, z = -18.12892723083496},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 7.658942222595215, y = 84.9233169555664, z = -6.4940080642700195},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = 1.3337842226028442, y = 84.79669952392578, z = -17.997352600097656},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -0.44181227684020996, y = 84.88677215576172, z = -8.160124778747559},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -14.467450141906738, y = 84.78587341308594, z = -19.959054946899414},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -16.315353393554688, y = 84.78588104248047, z = 10.816583633422852},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -37.350868225097656, y = 84.79844665527344, z = -23.60012435913086},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -123.92622375488281, y = 84.78559875488281, z = -5.083223819732666},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -24.512475967407227, y = 84.90830993652344, z = -1.4799580574035645},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -24.733224868774414, y = 84.78577423095703, z = 4.695215702056885},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -13.599913597106934, y = 84.81719207763672, z = -7.780288219451904},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -32.738372802734375, y = 84.87251281738281, z = -1.8664618730545044},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -39.80677032470703, y = 84.91381072998047, z = -4.91522216796875},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -57.71354675292969, y = 84.78463745117188, z = -11.773419380187988},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -48.6328010559082, y = 84.96031951904297, z = 5.408512115478516},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -53.627655029296875, y = 84.78470611572266, z = 14.684122085571289},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -51.201744079589844, y = 85.0064468383789, z = 5.10370397567749},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -51.958473205566406, y = 84.78582000732422, z = 14.422720909118652},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -75.20938110351562, y = 84.78557586669922, z = -13.343505859375},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -91.41427612304688, y = 84.7857666015625, z = 8.289732933044434},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -73.9185791015625, y = 84.78604125976562, z = -11.995323181152344},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -89.68831634521484, y = 85.03477478027344, z = 18.943445205688477},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -103.52940368652344, y = 84.91454315185547, z = 0.9145287871360779},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -93.05667877197266, y = 85.4105453491211, z = 18.612539291381836},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -108.16927337646484, y = 84.88326263427734, z = 12.479379653930664},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -118.77452087402344, y = 84.83175659179688, z = 2.724475383758545},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -133.18084716796875, y = 84.86527252197266, z = 2.522139549255371},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -119.86038970947266, y = 84.84640502929688, z = 4.242026329040527},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -124.64884948730469, y = 84.7857894897461, z = -5.185454368591309},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -139.52325439453125, y = 84.90996551513672, z = -1.6170068979263306},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -143.27102661132812, y = 84.91304016113281, z = 1.2533143758773804},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -153.06153869628906, y = 84.78630065917969, z = 16.040542602539062},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -155.08258056640625, y = 84.97103881835938, z = 11.157023429870605},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -161.3558349609375, y = 84.92860412597656, z = 8.64370346069336},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -166.3325653076172, y = 84.84674072265625, z = 6.103775501251221},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -174.11376953125, y = 84.92845153808594, z = -0.27479439973831177},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -176.21092224121094, y = 84.87238311767578, z = 8.17367172241211},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -181.91143798828125, y = 84.9165267944336, z = 6.002501010894775},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -186.85833740234375, y = 84.78038787841797, z = 10.840603828430176},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -188.32261657714844, y = 84.8633804321289, z = 5.5081706047058105},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -190.3481903076172, y = 84.85118103027344, z = -0.0867968276143074},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -204.08639526367188, y = 84.80803680419922, z = -0.9210448861122131},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -207.1717987060547, y = 84.78434753417969, z = 3.1143295764923096},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -210.59738159179688, y = 85.00997161865234, z = -3.093863010406494},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -222.5833282470703, y = 87.05531311035156, z = 5.414306640625},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -245.13278198242188, y = 84.19072723388672, z = 8.608859062194824},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -251.00637817382812, y = 84.19070434570312, z = -0.20921848714351654},
	{family = "Eden", name = "Eden end", map = "StormEnd", x = -271.03424072265625, y = 84.19066619873047, z = 8.923401832580566},
}


FramentsRun = {
	{family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -211.52593994140625, y = 133.91896057128906, z = 44.07035446166992},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -223.0878143310547, y = 131.81741333007812, z = 38.07758712768555},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -226.65586853027344, y = 133.5016326904297, z = 32.67816162109375},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -232.8355255126953, y = 134.086181640625, z = 44.89790344238281},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -244.24478149414062, y = 136.78515625, z = 58.75127410888672},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -220.1278533935547, y = 132.5611572265625, z = 69.16756439208984},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -211.57115173339844, y = 134.9465789794922, z = 76.77666473388672},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -219.6148223876953, y = 136.5106964111328, z = 84.48727416992188},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -209.4252471923828, y = 134.20248413085938, z = 57.89286422729492},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -220.3546600341797, y = 133.20848083496094, z = 68.6723403930664},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -230.28994750976562, y = 133.32737731933594, z = 69.48483276367188},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -212.97549438476562, y = 133.54901123046875, z = 45.42156982421875},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -196.70492553710938, y = 135.36605834960938, z = 56.45188522338867},
    {family = "Valley", name = "Valley Colosseum", map = "SunsetColosseum", x = -218.1603240966797, y = 132.80885314941406, z = 57.66897964477539},
}


posits = {
	{map='CandleSpace',name='🏴         BLACKOUT',x=800,y=0.6,z=0},
	{map='CandleSpace',name='♨️         Spawn',x=1.3682793378829956,y=1.1504778861999512,z=-0.7198812365531921},
	{map='Dawn',name='🏞️         Daylight Prairie',x=478.00915523455,y=209.99610900806,z=-1029.204115625},
	{map='Dawn',name='🌈         Rainbow',x=301.889892578125,y=413.0315246582031,z=-301.21563720703125},
	{map='Dawn',name='🌄         Cloudy',x=402.95318603515625,y=115.7956314086914,z=-10.648039817810059},
	{map='Dawn',name='🧓         Isle Elder room',x=117.75272369384766,y=1.006047010421753,z=-1733.9976806640625},
	{map='Dawn',name='⛰️         Prophecy Cave',x=211.96453857421875,y=4.274348258972168,z=-63.84076690673828},
	{map='Dawn',name='🛕         Temple',x=150.16748046875,y=102.43803405761719,z=-244.5251007080078},
	{map='DawnCave',name='🌬️         Wind Pathes',x=-172.1148529044,y=352.74264526719,z=-375.6912841875},
	{map='DawnCave',name='💦         Water Trial',x=-90.0,y=245.0,z=-305.0},
	{map='DawnCave',name='🌎         Earth Trial',x=-28.13365936279297,y=253.9242401123047,z=-372.3354797363281},
	{map='DawnCave',name='💨         Air Trial',x=21.34743881225586,y=259.1813049316406,z=-346.86083984375},
	{map='DawnCave',name='🔥         Fire Trial',x=57.113975524902344,y=251.7130889892578,z=-326.27691650390625},
	{map='DawnCave',name='📍         Dark room',x=-10.73032855488,y=213.64297485362,z=-192.0013731562},
	{map='Prairie_ButterflyFields',name='         Skip first',x=93.07067108154297,y=150.75,z=-5.158041477203369},
	{map='Prairie_Village',name='🪨         Cave',x=157.04954528808594,y=199.9058837890625,z=225.65309143066406},
	{map='Prairie_Village',name='🛶         invisible thing',x=96.71356964111328,y=175.35667419433594,z=265.9364929199219},
	{map='Prairie_Village',name='🔞         8 Player Door',x=-48.69554138183594,y=182.15054321289062,z=324.2794189453125},
	{map='Prairie_Village',name='🛕         Temple',x=126.16890716552734,y=254.21255493164062,z=478.1236572265625},
	{map='Prairie_Cave',name='🦋         Prairie Butterfly Field',x=192.0,y=171.0,z=12.0},
	{map='Prairie_Cave',name='🏞️         Prairie Village',x=243.0,y=198.0,z=226.0},
	{map='Prairie_Cave',name='📍         paintingoob',x=280.9242858886719,y=166.0093231201172,z=191.56130981445312},
	{map='Prairie_Cave',name='🏰         castle_oob',x=133.543701171875,y=308.047607421875,z=494.5435791015625},
	{map='Prairie_Cave',name='📍         Prairie soar high OOB',x=314.2340393066406,y=235.1671600341797,z=162.43087768554688},
	{map='DayEnd',name='🌲         Forest',x=-128.55003356933594,y=106.04075622558594,z=41.26801681518555},
	{map='DayEnd',name='🧓         Elder Room',x=-529.508544921875,y=8.83392333984375,z=-213.78453063964844},
	{map='DayHubCave',name='📍         Exit',x=30.72627067565918,y=42.47455596923828,z=0.237472802400589},
    {map='Prairie_Island',name='🌬️         Wind Paths',x=433.14529418531,y=270.46878051781,z=549.35540771438},
	{map='Prairie_Island',name='🐦         Bird Nest',x=272.2238464355469,y=175.1832275390625,z=-26.06362915390625},
	{map='Prairie_Island',name='🥀         First air flower',x=244.09881591796875,y=95.16970825195312,z=221.4185791015625},
	{map='Prairie_Island',name='🏞️         Waterfall',x=494.17425537109375,y=321.3855285644531,z=393.63873291015625},
	{map='Prairie_Island',name='⛰️         Top of center',x=57.3979606628418,y=102.27421569824219,z=300.8200378417969},
	{map='Prairie_Island',name='🥀         Big flower',x=90.91666412353516,y=2.906703472137451,z=293.2203063964844},
	{map='Prairie_Island',name='🏝️         Roshi island',x=-128.4817657003,y=0.8849521875347,z=220.95448303256},
	{map='Rain',name='🌬️         Wind Pathes',x=-54.33468246461,y=275.85449218775,z=-658.8024902375},
	{map='Rain',name='📍         Social Area',x=139.7912139892578,y=216.697265625,z=-621.1143188476562},
	{map='Rain',name='🌲         To Rainforest',x=28.0,y=101.0,z=-115.0},
	{map='Rain',name='🛖         Mini Treehouse',x=57.644893646240234,y=107.6270751953125,z=-140.5428009033203},
	{map='Rain',name='🛖         Forest basecamp start',x=-12.0,y=152.0,z=-478.0},
	{map='RainForest',name='🌧️         Back to rain',x=21.0,y=101.0,z=-135.0},
	{map='RainForest',name='🧓         Sunny Forest',x=6.1400275230407715,y=111.99101257324219,z=-61.309600830078125},
	{map='RainForest',name='🛖         Mini Treehouse',x=58.60780334472656,y=115.9687271118164,z=-101.88823699951172},
	{map='RainForest',name='🌲         Forest basecamp',x=54.0,y=114.0,z=-114.0},
	{map='RainForest',name='🌧️         Rain mid',x=64.0,y=106.0,z=57.0},
	{map='RainForest',name='🔝         Rain place ',x=136.1,y=96.2,z=0.11},
	{map='RainShelter',name='🌲          Cave',x=54.64596939086914,y=68.41414642333984,z=43.7832145690918},
	{map='RainShelter',name='To Temple',x=15.340384483337402,y=88.6324691772461,z=119.18212890625},
	{map='RainShelter',name='Forest pit OOB',x=-32.04302215576172,y=206.95440673828125,z=0.1170167475938797},
	{map='Rain_Cave',name='Little Prince',x=-344.8593678775,y=-0.097037477112,z=-197.4244384725}, 
	{map='Rain_Cave',name='Exit',x=-65.55963134765625,y=210.6380157470703,z=-285.0746154785156},
	{map='RainMid',name='Exit',x=-17.595956802368164,y=182.86737060546875,z=400.8680114746094},
	{map='RainEnd',name='Elders Room',x=2.448410749435425,y=8.948872566223145,z=503.58135986328125},
	{map='RainEnd',name='Esra place to love',x=10.8,y=206.0,z=58.2},
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
	{map='SunsetColosseum',name='Dream',x=136.38674927812,y=154.63574218875,z=-168.8068237305},
	{map='SunsetColosseum',name='End',x=62.833187103271484,y=145.87591552734375,z=-293.7547607421875},
	{map='SunsetEnd2',name='OOB Castle',x=308.30621337890625,y=148.89456176757812,z=-775.3768920898438},
	{map='SunsetVillage',name='Skip',x=-110.77000427246094,y=205.6576385498047,z=487.48956298828125},
	{map='Sunset_Theater',name='The penguin',x=-18.39187434492,y=105.23886108438,z=-121.9267851562},
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
	{map='DuskOasis',name='Wind Pathes',x=-89.03162384203,y=142.94610595125,z=429.15158081469},
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
	{map='NightDesert',name='Misterius star',x=551.66864013688,y=407.59988403331,z=336.75701906875},
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
	{map='CandleSpaceEnd',name='end',x=0.6592245101928711,y=0.5781212449073792,z=232.74395751953125},
	{map='DawnCave',name='exit_cave',x=-25.61272430419922,y=192.8677520751953,z=-38.68637466430664},
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
	{map='DayEnd',name='Prairie Village',x=-62.0,y=85.0,z=41.0},
	{map='Prairie_NestAndKeeper',name='Prairie Village',x=-109.54730224609375,y=184.3603515625,z=168.52159118652344},
	{map='DayEnd',name='Hidden Forest',x=-126.30734252929688,y=105.23834991455078,z=41.5018310546875},
	{map='Prairie_NestAndKeeper',name='Prairie Butterfly field',x=-49.0,y=163.0,z=37.0},
	{map='Prairie_NestAndKeeper',name='Sanctuary Islands',x=-358.0,y=127.0,z=109.0},
	{map='Prairie_Island',name='Dirty Water',x=142.66439819335938,y=2.3796894550323486,z=417.6568603515625},
	{map='Prairie_Island',name='Bell Shrine',x=24.223779678344727,y=55.22944259643555,z=335.5910339355469},
	{map='Prairie_Island',name='Mother Whale',x=407.8931579589844,y=-0.0814097449183464,z=514.7636108398438},
	{map='Rain',name='Skip to mid area',x=17.024648666381836,y=92.79985046386719,z=-225.68663024902344},
	{map='Rain_BaseCamp',name='Shared space',x=19.623136520385742,y=145.4346466064453,z=15.800447463989258},
	{map='Rain_BaseCamp',name='To first rain',x=21.0,y=150.0,z=152.0},
	{map='Rain_BaseCamp',name='To middle of first rain',x=-16.0,y=143.0,z=82.0},
	{map='Rain_BaseCamp',name='To Rainforest basecamp',x=-20.0,y=136.0,z=64.0},
	{map='Rain_BaseCamp',name='To mid forest',x=-40.0,y=148.0,z=58.0},
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
	{map='Sunset_YetiPark',name='Wind Pathes',x=-447.4780273435,y=342.84793090831,z=660.11218171875},
	{map='DuskStart',name='Whirl pool',x=-171.370361328125,y=47.68985366821289,z=-873.1289672851562},
	{map='DuskStart',name='Temple',x=-51.30135349844,y=181.36267089875,z=-789.2449951875},
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
	{map='Skyway',name='Back to Rain',x=133.41851806640625,y=384.35552978515625,z=281.2737731933594},
	{map='Skyway',name='Tunnel 1',x=-128.47596740722656,y=299.3070068359375,z=246.2905731201172},
    {map='Skyway',name='Tunnel 2',x=-149.53952026367188,y=298.14678955078125,z=238.4850616455078},
    {map='Skyway',name='Tunnel 3',x=-133.56265258789062,y=293.8212585449219,z=258.87957763671875},
    {map='Skyway',name='Tunnel 4',x=-128.7419891357422,y=287.17138671875,z=267.2208557128906},
    {map='Skyway',name='Tunnel 5',x=-101.95697021484375,y=306.36834716796875,z=274.76190185546875},
	{map='Skyway',name='Prophecy Cave',x=320.436,y=310.011,z=496.618},
    {map='Skyway',name='Sanctuary Island',x=539.998,y=289.546,z=502.741},
    {map='Skyway',name='Forests Cave',x=200.157,y=279.916,z=24.577},
    {map='Skyway',name='Yeti Park',x=431.916,y=321.597,z=24.172},
    {map='Skyway',name='Forgotten Ark',x=720.369,y=301.286,z=89.960},
    {map='Skyway',name='Starlight Desert',x=779.688,y=304.072,z=346.424},
    {map='Skyway',name='Skyway OBB',x=379.203,y=265.203,z=496.203},
	{map='OrbitEnd',name='GALAXY',x=38.50898361206055,y=4085.533447265625,z=1718.953125},
    {map='Dusk_TriangleEnd',name='Manta (step 1)',x=801.4453735351562,y=0.7042173147201538,z=5.263149261474609},
    {map='Dusk_TriangleEnd',name='Skystars(step2)',x=13.815317153930664,y=-44.58546829223633,z=-2.993274450302124},
    {map='Dusk_Triangle',name='Leviatan',x=-406.2,y=7.3,z=-224.5},
	{map='Sunset_FlyRace',name='OOB nubes',x=-812.950927734375,y=1545.5372314453125,z=-505.4371643066406},
    {map='Sunset_FlyRace',name='OOB Dorado y sombra',x=109.92562103271484,y=906.3428955078125,z=2269.62060546875,},
    {map='Sunset_FlyRace',name='OOB Templo uno',x=-472.6501770019531,y=1249.221435546875,z=-52.310367584228516},
    {map='Sunset_FlyRace',name='OOB Templo dos',x=-478.7032775878906,y=1564.540283203125,z=87.92137145996094},
    {map='Sunset_FlyRace',name='OOB Templo tres',x=-317.6,y=1250.4,z=-27.3},
    {map='Sunset_FlyRace',name='OOB horizonte Dorado',x=4143.90673828125,y=5386.37890625,z=-1443.9156494140625},
	{map='DuskMid',name='Prison Demons',x=-416.3,y=12.3,z=411.0},
	{map='TGCOffice',name='🔙exit',x=6.7,y=61.6,z=-21.8}
}
local old_ranges = gg.getRanges()

bootloader = nil
player = nil
sarray = {}

-- bootloader to player offset 0x1441FE8
-- bootloader to entity offset  0x172D4D8
-- bootloader to gui offset 0x0x16d0500 (basically search for number us "Ca" 330,712,483,300)
-- entity to nentity offset 0x80505C  (seems like this offset never changes)
-- player to props offset  0x447624
-- player to firework charge amount offset  0x447624 + 0x1540
-- friend_node(each) to node_price offset -2C
-- nentity to portal_off -0x4011F0
-- nentity to darkplants  (511) or (315) or (256)

-- PTOPBASE IS 424848 -this is just wing light count of the player (I didn't event know about it before)

-- MOV W0, W0			704,644,064 	<- to return 0
-- MOV W0, #0x1 		1,384,120,352 	<- to return 1
-- ????????????			4,043,309,695 	<- Chats
-- CBZ W8, [PC, #0xC]	872,415,336 	<- Friendship Nodes
-- LDR W8, [X28,#0x28]	-1,186,976,888 	<- Emotes
-- CSET W0, WZR, NE 	446,629,856 	<- Cosmetics

settings = {
	wdistance = 5.0,
	useautoburn = true
}
-- players -> 12800
-- player wing charge -> 5BC8
-- player code -> 10B00

gg.setRanges(gg.REGION_C_ALLOC)

local ropaDesbloqueada = false

-- Función para activar o desactivar el desbloqueo de ropa
function unlockClothes()
    if ropaDesbloqueada then
        -- Desactivar el desbloqueo de ropa
        ropaDesbloqueada = false
        gg.toast("clothes = off")
        sv(cu, 16, cu0)
    else
        -- Activar el desbloqueo de ropa
        ropaDesbloqueada = true
        gg.toast("clothes = on")
        sv(cu, 4, cu1)
    end
end

local fullEnergyEnabled = false

-- Función para activar o desactivar la energía completa
function toggleFullEnergy()
    if fullEnergyEnabled then
        -- Desactivar la energía completa
        fullEnergyEnabled = false
        gg.toast("Desactivado - Energía Completa")
        sv(en,16,en0)
    else
        -- Activar la energía completa
        fullEnergyEnabled = true
        gg.toast("Activado - Energía Completa")
        sv(en,4,en1)
    end
end

function wingedlight()
if c2 == 1 then
gg.toast("Searching for address")
gg.setRanges(mrange)
gg.searchNumber('403;0;-3.4E38~3.4E38F;-3.4E38~3.4E38F;-3.4E38~3.4E38F;8;10200::25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,pl0,pl0+0xFFFFF,0)
if gg.getResultsCount() == 0 then
gg.toast("Failed")
else
pl = gg.getResults(7)
wl = pl[1].address - 0x10
gg.clearResults()
gg.toast("Successful")
gg.sleep(500)
end
if wl == nil then else
local p = gv(wl,4)
local e = "Invalid value"
local n = gg.prompt({'Winged Light'},{p},{'text'})
if n ~= nil then local v = tonumber(n[1])
if v ~= nil then
if v >= 0 then
if v <= 999999999 then sv(math.floor(wl),4,v)
else gg.toast(e) end
else gg.toast(e) end
else gg.toast(e) end
end
end
else gg.toast("Address not found") end
end

function readchats()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('2.74928501e11;-1.1289e-22~-1.1285e-22;0.00018336263;1.19210767e-7::21',16)
if gg.getResultsCount() == 4 then
chat = gg.getResults(4)[4].address
gg.setValues({{address=chat,flags=16,value=2.74878956e11}})
end
gg.clearResults()
end

function gamespeed()
if gs == nil then
if c1 == 1 then
gg.toast("Searching for address")
gg.setRanges(mrange)
gg.searchNumber('1.01~3.4E38;1.01~3.4E38;1E-45~0.1;1E-45~0.1::13',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,base0-0x200,base0,0)
if gg.getResultsCount() == 0 then
gg.toast("Failed")
else
pl = gg.getResults(1)
gs = pl[1].address - 0x4
gg.clearResults()
if cv(gs+0x4,1.99,gs+0x8,1.99,gs+0xC,0.000009,16) == false then
gg.toast("Failed") gs = nil
else
gg.toast("Successful")
gg.sleep(500)
end end
else gg.toast("Address not found") end
end
if gs == nil then else
v = gv(gs,16)
a = gg.alert("Game Speed : x"..v,">>","<<","cancel")
if a == nil then end
if a == 1 then
if v >= 10.0 then else
if v >= 3.0 then v = v + 1.0 else
if v >= 2.0 then v = v + 0.5 else
v = v + 0.25
end
end
end
sv(gs,16,v) gamespeed()
end
if a == 2 then
if v <= 0.0 then else
if v > 3.0 then v = v - 1.0 else
if v > 2.0 then v = v - 0.5 else
v = v - 0.25 end end end
sv(gs,16,v) gamespeed() end
if a == 3 then end
end
end


function autowax()
    if c1 == 1 then
        local a = gg.alert('Ultra rapid farm \n\nExecute?', "Yes", "No")
        if a ~= 0 then
            if a == 1 then
                gg.toast("Searching for address")
                gg.setRanges(mrange)
                gg.searchNumber('99~199;1~32;1~32;1~32;1~32;0.333F~99999F;-3.4E38F~3.4E38F::25', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, base1, base1 + 0x15FFFFF, 0)

                if gg.getResultsCount() == 0 then
                    gg.toast("Failed")
                else
                    pl = gg.getResults(7)
                    dtaddr = pl[7].address
                    gg.clearResults()
                    gg.searchNumber('1.01~3.4E38;1.01~3.4E38;1E-45~0.1;1E-45~0.1::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, base0 - 0x200, base0, 0)

                    if gg.getResultsCount() == 0 then
                        gg.toast("Failed")
                    else
                        pl = gg.getResults(1)
                        gs = pl[1].address - 0x4
                        gg.clearResults()

                        if cv(gs + 0x4, 1.99, gs + 0x8, 1.99, gs + 0xC, 0.000009, 16) == false then
                            gg.toast("Failed")
                        else
                            gg.toast("Successful")
                            gg.sleep(1000)
                            gg.alert("Interrupted when open GameGuardian")
                            ct = 0
                            fv(gs, 16, 90)
                            local time = os.time()

                            for i, v in pairs(resulta) do
                                if gg.isVisible(true) then
                                    gg.setVisible(false)
                                    ct = 1
                                    break
                                else
                                    fv(gs, 16, 90)
                                    gg.toast('Execution ' .. i .. '/' .. #resulta)
                                end

                                gg.setValues({{address = dtaddr, flags = 4, value = v[1]}})

                                for k = 0, (#v - 1) / 32 do
                                    local sendid = {}

                                    for j = 1, 32 do
                                        if v[j + (1 + k * 32)] ~= nil then
                                            sendid[j] = {address = dtaddr + j * 4, flags = 4, value = v[j + (1 + k * 32)]}
                                        else
                                            break
                                        end
                                    end

                                    sendid[33] = {address = dtaddr + 33 * 4, flags = 4, value = #sendid}
                                    gg.setValues(sendid)

                                    while gg.getValues(sendid)[33].value ~= 0 do
                                    end
                                end
                            end

                            fv(gs, 16, 1)
                            rv(gs)

                            if ct == 1 then
                                gg.toast("Interrupted")
                            else
                                gg.toast("Done" .. " (" .. os.time() - time .. "s)")
                            end
                        end
                    end
                end
            elseif a == 2 then
                start()
            end
        end
    else
        gg.toast("Address not found")
    end
end


function autodaily()
    if c1 == 1 then
        local a = gg.alert('AutoDailies\n\nEjecutar?', "Sí", "No")
        if a ~= 0 then
            if a == 1 then
                gg.toast("Buscando dirección")
                gg.setRanges(mrange)
                gg.searchNumber('1;0~99999F;2;0~99999F;3;0~99999F;4;0~99999F::29', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, base2, base2 + 0xFFFFFF, 0)
                if gg.getResultsCount() == 0 then
                    gg.toast("Falló")
                else
                    pl = gg.getResults(1)
                    mrrw = pl[1].address
                    gg.clearResults()
                    if not (gv(mrrw - 4, 4) == 0) then
                        gg.toast("Falló")
                    else
                        gg.toast("Éxito")
                        gg.sleep(1000)
                        count = 0
                        while true do
                            count = count + 1
                            if gv(mrrw + count * 8, 4) == count + 1 then
                                gg.toast("Obteniendo recuento de misiones > " .. count)
                            else
                                gg.toast("Obteniendo recuento de misiones > " .. count)
                                gg.sleep(200)
                                gg.toast("Hecho")
                                gg.sleep(1000)
                                break
                            end
                        end
                        rwsl = count
                        rwjg = rwsl * 8 + 12
                        rwjg2 = rwjg + rwsl * 4
                        mrrwid = {}
                        for i = 1, rwsl do
                            mrrwid[i] = i
                        end
                        local tmp2 = {}
                        for i = 1, rwsl do
                            tmp2[i] = { address = mrrw + 4 + (mrrwid[i] - 1) * 8, flags = 16 }
                        end
                        tmp2 = gg.getValues(tmp2)
                        for i = 1, rwsl do
                            tmp2[i].value = tmp2[i].value + 60
                        end
                        gg.setValues(tmp2)
                        tmp2 = {}
                        for v = 1, rwsl do
                            tmp2[v] = { address = mrrw + rwjg + 4 * v, flags = 4, value = mrrwid[v] }
                        end
                        gg.setValues(tmp2)
                        local tmp3 = { { address = mrrw + rwjg2, flags = 4, value = rwsl } }
                        gg.setValues(tmp3)
                        gg.toast("Misiones diarias completadas")
                    end
                end
            elseif a == 2 then
                main()
            end
        end
    else
        gg.toast("Dirección no encontrada")
    end
end

resulta = {

{-768833570;-114950142};
--Season Candle

{2081768701;-1475869311;-1475870469;-1475867244;2060386341;-1475869891;-1475867188;-1475869894;-1475869369;2060386402;2060386350;2060386346;2060386388;-1475869726;2060386373;2060386422;-1475869746;2060386390;2060386333;-1475867243;2060386378;-1475867241;-1475869295;2060386396;2060386398;2060386369;-1475869728;2060386367;-1475867187;2060386360;-1475867237;2060386362;2060386361;2060386331;2060386326;2060386365;2060386404;-11796312;2060386355;2060386403;-1475870470;-1475868052;2060386371;-1475869888;-1475869306;-1475869317;2060386386;2060386322;-1475869736;2060386399;-1475867239;-1475869739;-1475867248;2060386385;2060386358;-1475867247;-1475869734;2060386426;-11796317;2060386420;2060386405;-1475867246;2060386393;2060386392;2060386339;2060386379;-1475869733;-1475867307;2060386335;-1475869730;2060386408;-1475870615;-1475870434;-1475869900;2060386419;2060386425;2060386324;2060386380;2060386349;2060386401;-1475869883;-1475868057;2060386383;-1475869750;2060386318;2060386321;2060386328;2060386338;2060386421;2060386319;2060386363;-1475869354;-1475869368;-11796328;-1475869889;2060386364;-1475869353;2060386359;-1475869732;2060386375;-1475869351;-11796323;-1475869297;-1475869296;2060386384;-1475869292;2060386368;-1475867234;2060386344;-1475869893;2060386353;2060386387;-1475869314;2060386376;-1475867402;-1475867400;2060386317;2060386336;2060386351;-1475869884;2060386394;2060386329;-1475869312;-1475869299;-1475869897;-11796311;-1475867240;2060386332;-1475867238;2060386357;-1475867235;-1475869352;-1475867233;2060386334;-1475869722;-1475869898;-1475869727;-11796327;-11796325;-1475869305;-1475869316;-11796322;2060386348;2060386320;-11796318;2060386323;2060386423;-1475869723;2060386370;2060386409;-11796316;-11796314;2060386372;-1475869301;2060386327;2060386428;-11796310;2060386382;-11796309;-1475868053;-11796326;2060386407;-1475869735;2060386345;2060386381;2060386356;2060386374;2060386391;-1475870511;-1475867189;2060386400;2060386325;2060386366;2060386377;2060386342;2060386337;2060386410;-1475869291;-1475869744;-1475869731;-1475867392;-11796324;-11796313;-1475869882;-11796320;-1475869300;-11796321;2060386427;-1475867403;-1475867401;2060386330;-1475869737;-1475868754;2060386352;-11796315;2060386395;-1475867191;-1475867190;-1475869886;-1475869432;-1475869738;-11796319;-1475867242;-1475869729;2060386316;2060386343;2060386340;2060386397;2060386347;-1475869881;-1475869350;-1475867404;-1475869745;2060386354;2060386429;-1475869899;-1475869298;-1475867311;-1475869293;2060386389;-1475869887;2060386411;-1475867236;-1475869892;-1475867245;-1475867167;-1475867166;-1475868583;-1475868245;-1475868266;-1475868244;-1475868246;-1475867107;-1475868237;-1475867165;-1475867164;-1475867163;-1475868587;-1475869079;-1475869073;-1475869069;-1475869068;-1475869070;-1475869064;-1475869059;-1475868272;-1475869055;-1475869063;-1475867111;-1475867162;-1475867160;-1475867161;-1475867106;-1475867108;-1475868257;-1475868256;-1475868258;-1475868268;-1475869074;-1475869075;-1475867172;-1475867170;-1475867109;-1475868584;-1475868252;-1475868249;-1475868250;-1475868248;-1475868247;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475867095;-1475869072;-1475867156;-1475867155;-1475869071;-1475869067;-1475869065;-1475869066;-1475868255;-1475868254;-1475868253;-1475868267;-1475868582;-1475867157;-1475867159;-1475867158;-1475867105};
    {164626931;840696279;-11796145;-11796153;-11796359;-11796326;-11796299;-11796331;-11796221;-11796335;-11796292;-11796114;-11796354;-11796134;840696285;-11796159;-11796294;-11796237;-11796366;-11796228;-11796233;-11796123;-11796141;-11796287;-11796224;-11796146;-11796162;-11796167;-11796273;-11796143;-11796283;840696280;-11796124;-11796290;-11796297;840696276;-11796308;-11796360;-11796148;840696278;-11796163;-11796150;-11796278;-11796338;-11796109;-11796132;-11796276;-11796131;-11796357;-11796169;-11796312;-11796234;-11796137;-11796365;-11796155;-11796217;-11796099;-11796291;-11796144;-11796115;-11796277;-11796302;-11796348;-11796102;-11796122;-11796285;-11796333;-11796346;-11796107;-11796101;-11796231;-11796129;-11796158;-11796168;-11796307;-11796230;-11796269;-11796236;-11796317;-11796339;-11796171;-11796110;840696274;-11796282;-11796311;-11796271;-11796322;-1848049379;-11796274;-11796293;-11796272;-11796218;-11796324;-11796147;-11796157;-11796313;-11796320;-11796288;-11796321;-11796119;840696283;-11796229;-11796226;-11796314;-11796270;-11796315;-11796174;-11796305;-11796173;-11796118;-1848049380;-11796140;-11796139;-11796337;-11796295;-11796223;-11796136;-11796164;-11796128;-11796319;-11796340;-11796069;-11796281;-11796100;-11796172;-11796225;-11796161;-11796113;-11796286;-11796219;-11796279;-11796133;-11796152;-11796166;-11796316;-11796165;-11796367;-11796160;-11796298;-11796235;840696282;-11796332;-11796336;-11796154;-11796301;-11796220;840696277;-11796309;-11796135;-11796227;-11796323;-11796149;-11796275;-11796104;-11796108;-11796345;-11796329;-11796318;-11796170;-11796328;-11796306;-11796356;-11796138;-11796232;-11796303;-11796105;-11796327;-11796106;-11796130;-11796284;-11796142;-11796120;-11796151;-11796300;-11796358;-11796355;-11796156;-11796103;-11796280;-11796296;-11796304;2093678875;2093678875;2093678983;2093678983;2093678983;2093678983;2093678983;2093678983;2093678862;2093678862;2093678862;2093678862;2093678862;2093678862;2093678862;2093678862;2093678862;2093678940;2093678940;2093678940;2093678940;2093678940;2093678940;2060386386;2060386372;2060386387;2060386388;2060386426;2060386427;2060386421;34603138;2060386418;2060386423;2060386419;2060386420;2060386422;-11796411;-11796410;-11796409;2060386390;2060386385;2060386397;2060386389;2060386405;2060386396;2093678927;2093678927;2093678927;2093678927;2093678927;2093678927;2093678927;2093678927;2093678927;2093678927;2093678927;2093678927;2093678927;2093678888;2093678888;2093678888;2093678888;2093678888;2093678888;2093678888;2093678888;2093678914;2093678914;2093678914;2093678914;2093678914;2093678914;2093678914;2093678914;2093678914;2093678914;2093678914;2093678914;2060386401;2060386402;2060386403;2060386391;2060386399;2060386392;2060386393;2060386409;2060386431;34603094;34603095;2060386430;2060386429;-11796353;2060386428;-11796408;-11796407;-11796386;-11796385;-11796384;-11796383;-11796382;-11796381;2093678849;2093678849;2093678849;2093678849;2093678849;2093678849;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;2093678901;34603102;2060386374;2060386424;2060386425;2060386414;-11796404;-11796403;-11796402;-11796401;-11796400;-11796399;-11796398;-11796397;-11796396;-11796395;-11796394;-11796393;-11796391;-11796390;-11796389;-11796388;-11796387;-11796380;-11796379;2093678953;2093678953;2093678953;2093678953;2093678953;2093678953};
    {-2135324521;-11796204;-11796409;1167523990;-11796189;-11796202;1167523973;-11796379;1167523987;-11796404;-11796383;-11796368;-11796387;1167524013;1167524012;-11796394;1167524051;1167524071;1167524055;1167524073;1167524062;1167523991;1167524087;1167524093;1167523985;1167524084;1167524080;1167524058;1167524089;1167524081;1167523975;1167523995;1167524052;1167524005;1167524088;-11796216;-11796380;-11796227;-11796381;-11796366;-11796207;-11796199;-11796190;-11796376;-11796224;-11796211;1167523989;-11796201;-11796407;-11796198;-11796371;-11796370;-11796405;-11796229;-11796230;-11796402;-11796226;-11796408;-11796228;-11796406;-11796232;-11796197;1167524044;-11796186;-11796378;1167523986;-11796184;-11796185;-11796219;-11796385;-11796384;-11796188;-11796206;-11796377;1167524083;1167524059;-11796396;1167524085;1167524053;-11796209;-11796231;1167524043;1167524078;-11796382;-11796215;-11796208;-11796369;-11796395;-11796386;-11796220;-11796375;-11796392;1167524086;-11796367;-11796393;-11796210;1167523948;-11796213;-11796200;1167524042;-1948973999;34603327;34603326;-1948974989;-1948974299;-1948974299;-1948974299;-1948974299;34603298;34603300;2060386398;-11796326;-11796325;-11796324;-1848049365;2060386390;-1848049357;2060386404;2060386403;2060386394;2060386389;2060386393;2060386392;-11796321;-11796320;-11796319;-11796318;-11796317;-11796316;-11796315;-11796314;-11796313;-11796267;-11796266;-11796265;-11796264;-11796263;-11796262;-11796261;-11796260;-11796259;2060386480;2060386485;2060386484;2060386503;2060386502;2060386483;2060386481;2060386504;2060386479;2060386454;2060386455;2060386462;2060386452;2060386457;2060386459;2060386451;2060386458;2060386449;2060386406;2060386439;2060386434;2060386563;2060386448;2060386405;-11796311;-11796310;34603376;34603382;34603385;2060386489;2060386490;34603402;34603403;2060386488;34603380;-1948974929;-1948974929;-1948974929;-1948974929;-1948974929;2060386540;2060386541;2060386536;2060386539;2060386456;2060386460;2060386461;2060386466;2060386467;2060386559;2060386391;2060386493;2060386494;2060386495;2060386496;2060386497;2060386498;2060386534;2060386530;2060386533;2060386531;2060386499;2060386500;2060386506;2060386507;2060386508;-11796286;-11796285;-11796284;-11796283;-11796282;-11796281;-11796280;-11796279;-11796306;-11796305;-11796304;-11796303;-11796302;-11796301;-11796300;-11796299;-11796298;34603372;34603372;34603372;34603372;34603372;34603372;34603372;34603372;34603372;34603372;34603372;34603372;34603372;2060386445;2060386447;2060386442;2060386443;2060386444;2060386446;2060386603;2060386604;-11796278;-11796277;-11796276;-11796275;-11796274;-11796273;-11796272;-11796271;-11796270;2060386600;2060386402;2060386601;2060386551;2060386602;2060386395;2060386396;2060386472;2060386599;-11796257;-11796256;-11796255;-11796254;-11796253;-11796252;-11796251;-11796250;-11796249;-11796295;-11796294;-11796293;-11796292;-11796291;-11796290;-11796289;-11796288;-1948974839;-1948974842;2060386468;2060386478;2060386535;-1948974584;-1948974580;34603347;-1765408585;-1765408582;-1948974797;-1948974796;-1948974637;-1948974636;-1948974635;-1948974634;-1948974633;-1948974858;-1948974857;840695978;840695979;840695980;840695981;34603420;-1948973998;-1948974847;-1948974833;-1948974815;-1948974731};
    {-1237641587;-11795904;-11795924;1293287546;-11795902;-881917946;-11795928;-11795937;1293288159;-11795935;-11795881;-11795942;1293287745;1293287547;1293287621;-11795916;-11795892;-11795907;-11795927;-11795920;-11795883;-11795896;-11795910;-11795900;1293287618;1293287756;-11795887;1293288990;1293287936;1293287750;-11795886;1293288989;1293288986;-11795885;1293287959;1926758854;1293288988;-11795890;1293288160;-11795912;1293288161;-11795899;-11795921;-11795882;1293288163;1293288991;1293287545;1293287960;1293287942;1293287951;1293287619;1293287747;-11795943;-11795936;1293287749;1293287755;1293287620;1293287617;-11795908;-11795934;-11795930;-11795929;-11795909;-11795919;-11795931;1293287549;-11795889;-11795926;-11795925;1293288162;-11795933;-11795898;-11795893;1926758937;-11795938;-1855455090;-11795888;-11795932;-11795903;-11795884;-11795891;-1466630124;-11795894;-11795940;-11795917;1293288993;1293287616;-11795911;-11795918;1293287544;-11795895;-11795914;-11795913;-11795897;-11795915;-11795923;-11795939;-11795906;-11795905;1293287548;1293288164;1293287941;-11796134;-11796133;-11796132;-11796131;-11796130;-11796128;-11796127;-11796126;-11796125;-11796124;-11796123;-11796121;-11796120;-11796119;-11796118;-11796117;-11796116;-11796114;-11796113;-11796112;-11796111;-11796110;-11796109;-11796107;-11796106;-11796105;-11796104;-11796103;-11796102;-11796100;-11796099;-11796098;-11796097;-11796096;-11796095;-11796093;-11796092;-11796091;-11796090;-11796089;-11796088;-11796086;-11796085;-11796084;-11796083;-11796082;-11796081;-11796079;-11796078;-11796077;-11796076;-11796075;-11796074;-11796141;-11796140;-11796139;-11796138;-11796137;-11796073;2060386369;2060386370;2060386368;2060386367;2060386365;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386823;2060386378;2060386381;2060386375;2060386376;2060386377;2060386394;2060386396;2060386406;2060386833;2060386392;2060386393;-1855455206;-1855455204;-1855455205;-1855455207;-1855455096;-1855455218;-1855455222;-1855455214;-1855455216;-1855455213;-1855455223;-1855455177;-1855455174;-1855455179;-1855455178;-1855455176;-1855455217;-1855455230;-1855455210;-1855455226;-1855455231;-1855455227;-1855455076;-1855455075;-1855455074;-1855455073;-1855455072;-1855455071;-1855455070;-1855455069;-1855455068;-1855455064;-1855455061;-1855455060;-1855455056;-1855455048;-1855455012;-1855455006;-1855455005;-1855455003;-1855454968;-1855454967;-1855454965;-1855454962;-1855454961;-1855454958;-1855455162;-1855455038;-1855454995;-1855454994;-1855454993;-1855454991;2060386364;2060386380;2060386844;2060387026;2060387027;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400;2060386400};
    {-1455381650;-11796171;-11795862;-11795860;-1541078608;-11795876;-11796076;-11795866;-11796166;-1541078761;-11795857;-1541078606;-1541078760;-11795861;-11796221;-11796054;-11796126;-1541078591;-11796216;-11795874;-11796071;-11796134;-11796226;-11796053;-11796086;-11795873;-11795937;-11795864;-11796222;-11795863;-11796058;-1541078755;-1541078596;-11796091;-11796229;-11796075;-11796125;-11796121;-1541078781;-1541078782;-11796060;-11796228;-11796214;-11796123;-11796088;-11795877;-11796064;-11796199;-11796082;-11795926;-11795935;-11796074;-11796220;-11796170;-11796092;-11796084;-11796388;-11796050;-11796223;-1541078600;-11795879;-11796048;-1541078593;-11796062;-11796218;-11796089;-11796097;-11796095;-11796132;-11796073;-1541078594;-11796078;-11796225;-11796044;-1541078762;-11796169;-11795855;-11795907;-11796061;-11796113;-11796217;-11796178;-1541078607;-11796099;-11795932;-11796219;-11796070;-11796133;-11796080;-1541078599;-11796212;-11796079;-11796055;-11796098;-11795867;-11796066;-11795875;-11796122;-11796179;-11796258;-11795887;-11795854;2060386339;-11795913;-11796072;-11796244;-11796101;-11795905;-1541078754;-11796239;-11796042;-11795856;-11796094;-11796068;-1541078601;-11796215;-11795897;-11795858;-1541078597;-11796230;-11796197;-11796382;-1541078604;-11796087;-11796093;-11795886;-11795859;-11795885;-11796096;-11796083;-11796077;-11796065;-11795928;-11796063;-11795918;-11795871;-11795868;-11796227;-11796085;-11795906;-1541078598;-11796067;-11795865;-11795950;-1541078592;-1541078595;-11796049;-11796177;-11795872;-11796057;-11796213;-11796224;-11796209;-11796090;-11796232;-11796069;1842806871;1842806871;1842806871;1842806871;2060386413;2060386411;2060386410;2060386478;2060386479;2060386481;2060386475;2060386489;2060386477;2060386490;34603227;2060386507;2060386373;2060386520;2060386376;2060386509;2060386522;-1541078808;-1541078807;-1541078806;-1541078805;-1541078804;-1541078803;-1541078802;-1541078801;-1541078800;-11796130;-11796129;-11796128;-1541078784;-1541078784;-1541078784;-1541078784;2060386383;2060386388;2060386384;2060386380;2060386381;2060386382;2060386379;2060386408;2060386530;2060386529;2060386528;2060386531;2060386526;2060386407;2060386532;2060386527;-1541078819;-1541078818;-1541078817;-1541078816;-1541078815;-1541078814;-1541078813;-1541078812;-1541078811;-11796153;-11796152;-11796151;-11796150;-11796149;-11796148;-11796147;-11796146;2060386496;2060386493;2060386492;2060386482;-1948974396;2060386491;2060386494;-1948974387;2060386392;2060386390;2060386505;2060386391;2060386495;2060386504;2060386389;2060386503;2060386393;2060386465;2060386466;2060386416;2060386395;2060386396;2060386394;34603371;34603370;2060386417;-11796162;-11796161;-11796160;-11796159;-11796158;-11796157;-11796156;-11796155;-11796154;-11796145;-11796144;-11796143;-11796142;-11796141;-11796139;-11796138;-11796137};
    {864432821;-11796452;-11796145;-11796153;-11796460;-11796390;-11796140;-11796418;-11796383;-11796387;-11796114;-11796054;-11796422;-11796157;-11796134;-11796053;-11796083;-11796463;-11796469;-11796086;-11796419;-11796149;-11796119;-11796058;-11796454;-11796385;-11796421;-11796108;-11796085;-11796052;-11796389;-11796123;-11796444;-11796088;-11796141;-11796082;-11796047;-11796411;-11796146;-11796425;-11796078;-11796143;-11796124;-11796084;-11796457;-11796158;-11796117;-11796065;-11796417;-11796136;-11796407;-11796128;-11796446;-11796148;-11796163;-11796150;-11796132;-11796443;-11796470;-11796414;-11796466;-11796109;-11796106;-11796468;-11796382;-11796388;-11796397;-11796161;-11796131;-11796116;-11796380;-11796453;-11796137;-11796155;-11796113;-11796164;-11796118;-11796156;-11796111;-11796384;-11796133;-11796115;-11796445;-11796080;-11796144;-11796055;-11796152;-11796402;-11796451;-11796139;-11796066;-11796462;-11796162;-11796420;-11796122;34603802;-11796135;-11796154;-11796165;-11796160;-11796125;-11796120;-11796107;-11796461;-11796459;-11796072;-11796110;-11796167;-11796064;-11796121;-11796142;-11796151;-11796159;-11796129;-11796068;-11796458;-11796168;-11796423;-11796073;-11796138;-11796386;-11796127;-11796071;-11796130;-11796112;-11796456;-11796381;-11796455;-11796079;2060386317;-11796049;-11796465;-11796467;-11796464;-11796069;2060386527;-11796267;-11796266;-11796265;-11796264;-11796263;-11796262;-11796261;-11796260;-11796259;-11796258;-11796257;-11796256;-11796254;-11796253;-11796252;-11796251;-11796250;-11796249;-11796248;-11796247;-11796246;-11796245;-11796244;-11796243;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;2060386326;-11796332;-11796331;-11796330;-11796329;-11796328;-11796327;-11796326;-11796325;-11796324;-11796323;-11796322;-11796321;2060386518;2060386517;2060386519;-11796293;-11796292;-11796291;-11796290;-11796289;-11796288;-11796287;-11796286;-11796285;-11796284;-11796283;-11796282;2060386467;2060386468;2060386469;2060386470;2060386521;2060386522;2060386523;-11796343;2060386344;-11796342;-11796341;-11796340;-11796339;-11796338;-11796337;-11796336;-11796335;2060386347;2060386348;-11796319;-11796318;-11796317;-11796316;-11796315;-11796314;-11796313;-11796312;-11796311;-11796310;-11796309;-11796308;-11796306;-11796305;-11796304;-11796303;-11796302;-11796301;-11796300;-11796299;-11796298;-11796297;-11796296;-11796295;-11796280;-11796279;-11796278;-11796277;-11796276;-11796275;-11796274;-11796273;-11796272;-11796271;-11796270;-11796269;2060386384;2060386383;2060386387;2060386386;2060386385;2060386500;2060386496;2060386498;2060386499;2060386497};
    {-1936060159;-11795976;-11796409;-11796189;2105409728;-11796110;2105409720;2402;-11795982;-11796390;-11795995;-11796418;-11796166;-11795954;2105409707;-11796415;34604580;-11795979;-11796038;-11795958;-11796400;2105409703;-11796387;-11796221;-11796335;-11796126;2212;-11796344;-11796412;2401;-11796472;2400;-11795937;-11795966;-11796419;-11796227;-11796350;-11796406;-11796125;-11796352;-11796383;-11796119;2105409727;-11796360;-11796178;-11796152;-11796147;-11796146;-11796145;-11796138;-11796347;-11796137;2105409722;34603265;-11796121;-11795975;-11796118;-11796417;-11796090;-11796107;-11796106;-11796168;-11796105;-11795952;-11796385;-11796100;-11796037;-11796096;-11796093;-11796103;-11796422;-11796408;-11796031;-11796039;-11796158;-11795959;-11796104;-11796176;-11796005;-11796002;-11796001;-11795997;-11796421;-11796044;-11796000;-11795983;-11795981;-11795978;-11796165;-11795977;-11795973;-11795970;-11795992;-11795964;-11795961;-11796036;-11795956;-11796099;-11795953;-11796160;-11796134;-11795951;-11796157;-11795948;-11795946;-11795943;-11796382;-11795942;-11795941;-11795938;-11795955;-11796389;-11796345;-11796405;-11796140;2105409701;-11796139;-11795939;-11796123;-11795993;-11795971;-11796042;2105409699;-11796212;-11796343;-11795947;-11795957;-11796388;-11796226;2105409706;-11796009;2105409713;-11796120;-11796023;-11795945;-11796151;-11795968;-11796088;-11796114;-11796109;-11796141;-11796399;-11796112;-11796153;-11796091;-11796130;-11795969;-11796410;-11796342;2105409719;-11796370;-11796156;-11796174;-11796045;-11795980;-11796175;-11796181;-11796184;-11796186;-11796179;-11796135;-11796149;-11796167;-11795930;-11796346;-11796006;-11796182;-11796162;-11796358;2105409705;-11796368;-11796113;2105409725;-11796161;-11796187;2105409702;-11796411;-11796416;-11796122;-11796040;-11796423;-11795944;-11796173;-11796398;-11796102;-11796159;-11795974;-11795949;-11796177;-11796047;34604581;-11796170;-11796143;-11796183;-11796092;-11796124;-11795994;-11796414;-11796117;-11796136;-11796043;-11796034;-11796164;-11796407;-11796128;-11796148;-11796163;-11796089;-11796097;-11796391;-1848049553;2213;2210;-11796095;-11796132;-11796046;-11796424;-11796041;-11796172;2209;-11796353;-11796131;-11796116;-11796169;34604543;405405699;-11796155;-11796029;34604569;2105409700;-11796185;-11796180;-11796111;-11795972;-11796384;-11796133;-11796188;-11795940;34604570;-11796144;-11796033;-11795965;-11796115;-11796032;-11796098;-11796348;-11796420;2403;-11796333;-11796336;-11796154;-11796028;-11796024;-11796101;-11796035;-11796094;-11795960;2105409711;-11795967;-11795963;-11796386;-11796127;-11795927;-11796142;-11796213;34604582;-11795950;-11796049;2211};
    {1638008359;-11795924;-11796110;-11795890;1167524309;-11796395;-11796342;-11796410;-11796145;-11796282;-11796076;-11796268;-11795947;-11796390;-11795882;-11796326;-11796404;-11796266;-11796418;-11796322;-11796267;-11795954;-11796274;-11796383;-11795958;-11796293;-11796272;-11796292;-11796114;-11796422;-11796126;-11796257;-11796071;-11796324;-11796354;-11795936;2060386422;-11796364;-11795928;-11796255;-11795964;-11796320;-11796083;-11796344;-11796288;-11795944;-11796256;-11795891;-11796105;-11795937;-11795966;-11796259;-11795934;-11795930;-11795929;-11795961;-11796119;-1848049540;2060386421;-11796091;-11796385;-11796104;-11796421;-11796294;1167524310;-11796108;-11795943;-11795931;-11796085;-1848049543;-11796314;-11796345;-11796389;-11796270;-11796123;-11796262;-11796088;-11796315;-11796141;-11796149;-11796082;-11795889;-11795926;-11796305;-11796318;-11796265;-11796411;-11796074;-11796146;-11796273;-11795881;-11796134;-11795925;-11796078;-11796143;-11796125;-11796092;-11796283;-11796124;-11796306;-11796084;-11796388;-11796067;-11796290;-11796406;-11796297;-11796139;-11796337;-11795955;-11796414;-11796341;1167524313;-11796136;-11796308;-11796407;-11795942;-11796303;1167524311;-11795938;-11796319;-11796148;-11796089;-11796097;-11796340;-11796338;-11796095;-11796109;-11795888;-11796132;-11796106;-11796100;-11796073;-11796343;-11796397;-11796353;1167524312;-11796325;-11796131;-11796116;-11795927;-11796137;-11796365;-11796113;-11796029;-11796099;-11795932;-11796118;-11796103;-11796111;-11795969;-11796070;-11796291;-11795883;-11796384;-11795885;-11796133;-11795941;-11796080;-11795940;-11796144;-11796079;-11795939;-11796316;-11795965;-11796253;-11796402;-11796289;-11796098;-11796254;-11796066;-11796298;-11796420;-11796263;-11795949;-11795946;-11796102;-11796122;-11795971;-11796346;-11796121;-11796258;-11795887;-11796304;-11796323;-11796072;2060386419;-11796101;-11795957;-11796275;-11796264;-11796075;-11796279;-11796129;-11796094;-11795956;1167524315;-11796068;-11795960;-11796295;-11795933;-11795918;-11796382;-11796020;-11795962;-11796087;-11795967;-11795959;-11795952;-11796351;-11796261;-11796271;-11796307;-11796269;-11796138;-11796386;-11796140;-11795953;-11796252;-11796127;2060386417;-11795923;1167524314;-11796093;-11795886;-11796135;-11796096;-11796317;-11796130;-11796112;-11795948;-11796387;-11796355;-11796077;-11795968;-11796142;-11796120;-11796281;-11796260;2060386418;-11795950;-11796321;-11796339;-11796280;-11796296;-11795963;-11795935;-11796090;-11796352;-11796081;2060386420;-11796417;-11796115;-11796117;-11796069};
    {-1987505335;-11796204;1482555571;-11796452;-11796448;-11796202;-11796018;-11796311;-11796076;-11796025;-11796460;34603487;-11796030;-1948974986;-11796299;-11796418;-11796322;-11795977;-11796267;-11796021;2105409563;-11796415;-11796400;-11796293;-11796403;-11796310;1482555567;-11796292;-11796466;-11796054;1482555575;-11796313;-11796320;-11796288;-11796463;-11796412;2105409568;-11796401;-11796419;2105409564;-11796058;-11796454;-11796013;-11796027;-11796421;-11796012;-11796060;-11796214;-11796314;1482555582;-11796270;-11796207;1482555807;-11796088;-11796199;34603254;1482555814;-11796265;-11796287;-11796006;-11796162;-11796425;-11796398;-11796328;-11796283;-11796471;-11796023;-11796211;-11796290;2105409566;-11796457;-11796414;-11796043;-11796034;-11796048;34603258;-11796308;-11796198;-11796446;-11796319;-11796007;-11796278;-11796089;-11796010;-11795978;34603496;1482555577;-11796132;-11796046;-11796015;-2089680819;-11796039;-11796041;-11796026;-11796276;-11796131;34603255;-11796295;34603494;-11796169;-11796036;-11795991;-11796453;-11796029;-11796205;-11796286;-11796045;1482555572;-11795972;-11796133;34603492;-11796445;1482555578;-11796206;-11796316;-11796055;-2089680822;-11796402;1482555573;-11796300;-11796451;-11796298;-11796274;-11796284;-11796307;-11796291;1482555579;-11796281;-11796289;-11796417;-11796277;-11796305;-11796273;-11796399;-11796262;-11796462;-2089680818;2105409562;-11796302;-11796037;1482555805;-11796410;-11796296;-11796323;-11796271;-11796301;-11796315;-11796032;-11796024;-11796014;-11796003;-11796009;-11796008;-11796280;-11796002;-11796001;-11795993;1482555827;1482555820;-11796266;-11795971;-11796272;-11796312;-11795952;-11796052;-11796017;1482555580;-11796038;-11796297;-11796285;-11796321;-11796279;-11796004;1482555581;-11796019;-11796411;-11796416;-11796040;-11796318;-11796294;-11796263;-11796420;-11796306;-11795976;-11796268;-11796028;-11796309;-11796304;-11796459;-11796275;-11796264;34603256;-11796075;-11796042;34603257;2105409567;-11796035;2105409565;-11796458;-11796020;-11795967;-11796031;-11795963;-11796168;-11796203;-11796413;-2089680821;34603493;-11796269;-1948974984;-11796077;-11796449;-2089680817;-11796317;-2089680820;-11796456;-11796220;-11796465;-11796450;-11796461;2105409561;-11796016;34603495;-11796049;-11796455;-11796467;34603259;-11796200;-11796090;1482555576;-11796464;-11796447};
    {1241316521;-11795976;-11796308;1185742898;-11796171;-11795985;-11796163;-11796278;-11796089;-11796196;-11795860;-11796342;-11795978;-11796379;-11795833;-11796311;-11796359;-11795888;-11796268;-11795899;-11796025;-11796073;-11796326;-11796026;-11796299;-11796361;-11795995;-11796353;-11796166;-11795869;-11795977;-11796427;-11796331;-11796192;-11796037;-11795892;-11796295;-11796357;-11796021;-11796300;-11796350;-11796365;-11796193;-11796378;-11796368;-11795831;-11796029;-11796358;-11795861;-11796293;-11796118;-11796387;-11796221;-11795835;-11796335;-11796292;-11795883;-11795972;-11795975;-11795870;-11796362;-11796002;-11796114;-11795880;-11796349;-11795878;-11796188;-11795894;-11796080;-11796216;-11795842;-11796079;-11796354;-11796033;-11796206;-11796364;-11796440;-11796255;-11796301;-11795965;-11796022;-11795964;-11796367;-11796374;-11796277;-11795896;-11796083;-11796254;-11795836;-11796344;-11796348;1185742896;-11796003;-11796019;-11796321;-11796086;-11795891;-11796333;-11795984;-11795966;-11796017;-11796419;1185742890;-11796028;-11796014;-11796296;-11796119;-11796024;1185742887;-11796013;-11796091;1185742889;-11796076;-11796101;-11796366;-11795834;-11796012;-11795845;-11796085;-11795859;-11795849;-11796251;-11796129;-11796214;-11796256;-11796345;-11796052;-11796023;-11796215;-11796020;-11796208;-11796207;-11795897;-11796087;-11796176;-11795967;-11795853;-11796031;-11795963;-11796329;-11796203;-11796351;-11796369;-11796082;-11796009;-11795974;-11796190;-11796287;-11796074;-11796081;-11796088;-11795848;-11796375;-11795886;1185742853;-11796302;-11796261;-11795875;-11795838;-11796170;-11795873;-11796183;-11796051;-11795855;-11796191;-11795895;1185742888;-11796471;-11796309;1185742894;-11796018;-11795854;-11795898;-11795876;-11796220;-11795832;-11795840;-11796050;-11795881;-11796276;-11796046;-11796015;-11796356;-11796297;-11796343;-11796042;-11796016;-11796172;1185742895;-11795994;-11795877;-11796307;-11796312;-11796004;-11796252;-11795973;-11796195;-11796205;-11796352;-11796355;-11796341;-11796310;-11795884;-11795846;-11796363;-11796090;-11796201;-11796464;-11796260;-11795971;-11796334;-11796298};
    {295816905;1167524520;2093678845;-1855455182;1167524508;1167524494;-53346071;1167524518;-53346073;-1466630133;1167524514;1167524488;-53346198;1167524506;-53346051;-53346035;-53346063;1167524493;-53346061;-473038846;1167524510;-473038842;-53346075;1167524507;1167524486;1167524511;2093678846;1167524502;1167524532;-53346057;-473038640;-1466630127;-53346223;-53346055;1167524487;-53346059;-53346067;-473038641;1167524503;1167524496;-1466630138;2093678763;-53346047;-53346049;-53346037;-53346229;-53346225;1167524500;1167524489;-1466630131;1167524515;-53346045;2105409619;1167524490;-1466630126;-1466630128;2093678847;-1466630129;-53346078;34603672;1167524519;-53346043;-473038844;-53346039;-53346077;2093678843;-473038845;-53346224;1167524505;2093678842;1167524516;1167524504;-1466630132;1167524495;1167524498;1167524533;1167524517;2093678844;-53346053;1167524512;-53346232;-473038843;1167524509;-53346231;1167524501;1167524497;-473038638;1167524492;-53346069;-1466630097;-53346041;1167524499;1167524491;1167524513;2105409825;2105409825;2105409825;-1466630125;-1466630124;-1466630121;-1466630120;-1466630119;-1466630118;-1466630117;-1466630116;-1466630115;-1466630114;-1466630113;-1466630112;-1466630111;-1466630110;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409775;2105409777;2105409779;2105409780;2105409781;2105409991;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409981;2105409846;2105409846;2105409846;2105409846;2105409846;2105409846;2105409948;2105409945;2105409946;2105409947;2105409951;2105409953;2105409954;2105409955;2105409966;2105409967;2105409969;2105409970;2105409971;2105409972;2105409973;2105409975;2105409976;2105409977;2105409978;2105409979;2105409980;2105409873;2105409873;2105409873;2105409873;2105409873};
    {-1212213378;-1855454770;-1855454497;-1855454668;-1855454908;-1855455188;-1855454025;-1855454923;-1855454513;-1855454643;-1855454534;-1855454931;-1855454651;-1855454819;-1855454510;-1855454675;-1855454928;-1855454026;-1855455185;-1855453950;-1855455079;-1855453706;-1855454684;-1855454605;-1855455065;-1855454919;-1855454542;-1855453498;-1855454776;-1855455166;-1855455010;-1855454518;-1855454591;-1855454023;-1855453838;-1855454504;-1855453840;-1855454716;-1855455153;-1855453839;-1855454938;-1855454024;-1855454588;-1855455098;-1855454593;-1855454027;-1855455018;-1855453841;-1855455175;-1855454602;-1855454948;-1855454600;-1855454905;-1855454650;-1855454598;-1855454932;-1855454501;-1855454532;-1855454512;-1855454604;-1855454029;-1855454580;-1855454899;-1855454946;-1855454493;-1855454774;-1855454665;-1855455052;-1855454949;-1475867167;-1475867166;-1475868583;-1475868245;-1475868266;-1475868244;-1475868246;-1475867107;-1475868237;-1475867165;-1475867164;-1475867163;-1475868587;-1475869079;-1475869073;-1475869069;-1475869068;-1475869070;-1475869064;-1475869059;-1475868272;-1475869055;-1475869063;-1475867111;-1475867162;-1475867160;-1475867161;-1475867106;-1475867108;-1475868257;-1475868256;-1475868258;-1475868268;-1475869074;-1475869075;-1475867172;-1475867170;-1475867109;-1475868584;-1475868252;-1475868249;-1475868250;-1475868248;-1475868247;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475869078;-1475867095;-1475869072;-1475867156;-1475867155;-1475869071;-1475869067;-1475869065;-1475869066;-1475868255;-1475868254;-1475868253;-1475868267;-1475868582;-1475867157;-1475867159;-1475867158;-1475867105};
    {-1817621630;-11796409;-11796448;-11796342;-11796410;-11796145;-11796153;-11796379;-11796311;-11796326;-1541078909;-11796299;-11796140;-11796418;-11796322;-11796331;-11796192;-11796415;-11796368;-1541078902;-11796449;-11796400;-11796431;-11796310;-11796335;-11796363;-11796422;-11796071;-11796324;-11796147;-11796354;-1541078910;-11796364;-11796301;-11796313;-11796320;-11796344;-11796463;-11796412;-1541078891;-11796469;-11796321;-11796086;-11796149;-11796408;-11796229;-11796152;-11796259;-11796305;-11796390;-11796085;-11796345;-11796444;-11796088;-11796141;-11796199;-11796082;-11796411;-11796146;-11796074;-11796425;-11796423;-11796328;-11796084;-11796348;-11796067;-11796461;-11796356;-11796406;-11796447;-11796079;-11796233;-11796414;-11796470;-11796142;-11796367;-11796252;-11796315;-11796424;-11796341;-11796223;-11796201;-11796194;-11796334;-11796319;-11796148;-11796089;-11796371;-11796340;-11796338;-11796076;-11796073;-11796343;-11796439;-11796300;-11796193;-11796155;-11796378;-11796099;-11796468;-11796349;-11796080;-11796157;-11796144;-11796433;-11796316;-11796440;-11796358;-11796419;-11796451;-11796248;-11796083;-11796066;-11796377;-11796302;-11796401;-11796102;-11796445;-11796462;-11796362;-11796360;-11796434;-11796426;-11796347;-11796357;-11796151;-11796325;-11796336;-1541078895;-11796417;-11796456;-11796333;-11796432;-11796359;-1541078904;-11796143;-11796200;-11796438;-11796374;-11796198;-11796346;-11796195;-11796370;-11796154;-11796353;-11796156;-11796150;-11796437;-11796355;-11796139;-11796309;-11796138;-11796107;-11796337;-11796196;-11796242;-11796312;-11796392;-11796361;-11796375;-11796068;-11796314;-11796303;-11796304;-11796081;-11796323;-11796077;-11796450;-11796465;-11796352;-1541078897;-11796332;-11796070;-11796376;-11796069;-11796446;-11796072;-11796365;-11796416;-11796436;-11796318;-11796366;-11796435;-11796100;-11796420;-11796380;-11796101;-11796177;-11796075;-11796429;-11796087;-1541078896;-11796413;-11796430;-11796472;-11796373;-1541078892;-11796327;-11796317;-11796191;-11796330;-1541078903;-11796339;-11796247;-11796467;-11796372;-11796090};
    {-1944435120;-11796145;-11796153;-11796359;-11796368;-11796400;2060386350;-11796394;-11796363;2060386346;-1848049507;-11796354;-11796364;-11796149;-11796381;-11796366;-11796389;2060386338;-11796141;2060386323;-11796146;-11796398;-11796143;-11796356;-1848049585;-11796438;2060386324;-11796360;-11796148;-11796391;1167524006;2060386326;-11796353;-1848049505;-11796357;-11796350;2060386325;-11796365;-11796378;1167524450;-11796144;1167523977;1167523992;-11796347;2060386320;-1848049536;2060386344;-11796379;-11796390;-11796404;-11796140;-11796152;-11796383;-1848049586;-11796403;-11796147;-11796157;1167524468;1167524470;1167524066;-11796401;2060386345;-11796385;-1848049506;2060386352;-11796376;-11796388;-11796139;2060386353;1167524647;-11796361;-11796380;-11796358;-1848049510;-11796355;-11796156;-1848049514;-11796138;-11796384;-11796395;1167524057;-11796367;-11796402;1167524648;-11796151;-11796377;-11796387;-11796399;-11796154;2060386327;-11796396;2060386354;-1848049513;-11796351;1167524469;-11796382;1167524447;-11796155;-11796150;-11796369;-11796386;-11796375;-11796392;-11796352;1167524448;1167523932;2060386351;-11796393;-11796362;-11796142;2060386329;2060386305;1167524516;1167524449;1167524486;1167524606;1167524607;1167524608;1167524609;1167524612;1167524613;1167524614;1167524611;1528234068;1528234068;1528234068;1167524886;1167524887;1167524889;1167524890;1167524891;1167524892;1167524883;1167524894;1167524896;1167524803;1167524848;1167524781;1167524839;1167524849;1167524840;1167524788;1167524842;1167524797;1167524789;1167524792;1167524802;1167524798;1167524832;1167524509;1167524471;34603170;1167524511;1167524056;1167524510;1167524851;1167524854;1167524855;1167524856;1167524858;1167524861;1167524862;1167524865;1167524866;1167524868;1167524869;1167524870;1167524871;1167524872;1167524857};
    {1147491976;-11796198;-11796110;-11796395;-11796342;-11796340;-11796338;-11796109;-11796311;-11796100;-11796343;-11796326;-11796197;-11796353;-11796322;-11796331;-11796192;-11796196;-11796312;-11796352;-11796099;-11796108;-11796301;-11796394;-11796335;-11796389;-11796362;-11796399;-11796344;-11796349;-11796188;-11796354;-11796316;-11796336;-11796193;-11796320;-11796350;-11796248;-11796348;-11796242;-11796346;-11796229;-11796106;-11796361;-11796274;-11796314;-11796315;-11796200;-11796310;-11796319;-11796321;-11796189;-11796105;-11796194;-11796333;-11796397;-11796332;-11796259;-11796324;-11796195;-11796396;-11796317;-11796328;-11796103;-11796313;-11796318;-11796102;-11796355;-11796308;-11796323;-11796107;-11796104;-11796101;-11796233;-11796345;-11796329;-11796347;-11796199;-11796190;-11796392;-11796327;-11796398;-11796191;-11796393;-11796339;-11796337;-11796247;-11796252;-11796341;-11796223;-11796201;-1765408696;-1765408697;1926758635;1926758636;1926758633;-11796429;-11796428;-11796427;-11796426;-11796425;-11796424;-11796423;-11796422;-11796421;-11796420;-1765408694;-1765408692;-1765408693;-11796436;-11796435;-11796434;-11796414;-11796413;-11796412;-11796452;-11796451;-11796450;-11796410;-11796409;-11796408;-11796406;-11796405;-11796404;-11796402;-11796401;-11796400;-11796418;-11796417;-11796416;2060386331;2060386332;2060386333;2060386414;2060386415;2060386416;-1765408736;-1765408732;-1765408731;-1765408730;-1765408729;-1765408728;-1765408727;-1765408726;-1765408725;-1765408724;-1765408723;-1765408722;-1765408721;-1765408720;-1765408719;-1765408718;-1765408717;-1765408716;-1765408715;-1765408714;-1765408713;-1765408712;-1765408711;-1765408710;-1765408705;-1765408699;-1765408698;1926758637;1926758638;1926758639;-11796474;-11796473;-11796472;-11796471;-11796470;-11796469;-11796468};
    {1597085778;-11796308;-11796303;-1948974520;-11796282;-11796268;-11796271;-11796299;-11796276;-1948974505;-11796274;-11796300;-1948974508;-11796286;-11796291;-11796292;-11796277;-1948974507;-1948974518;-11796289;-11796298;-11796288;-1948974504;-11796285;-1948974522;-11796304;-11796301;-11796294;-11796275;-11796279;-11796270;-11796307;-11796269;-11796305;-1948974509;-1948974521;-11796273;-1948974517;-11796283;-11796278;-11796293;-11796284;-11796302;-11796281;-11796290;-11796267;-11796295;-11796297;-1948974506;-11796280;-11796296;-1948974519;-11796272;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;-11796370;-11796369;-11796368;-11796367;-11796366;-11796365;-11796364;-11796400;-11796399;-11796398;-11796397;-11796396;-11796395;-11796394;-11796415;-11796414;-11796413;-11796412;-11796411;-11796410;-11796409;-11796432;-11796431;-11796430;-11796429;-11796428;-11796427;-11796426;-11796467;-11796465;-11796463;-11796461;-11796449;-11796448;-11796447;-11796445;-11796444;-11796443;-11796442;-11796441;-11796440;-11796439;-11796438;-11796437;-11796436;-11796435;-11796434;-11796384;-11796383;-11796382;-11796381;-11796380;-11796379;-11796378;-11796377;-11796376;-11796375;-11796374;-11796373;-11796355;-11796354;-11796353;-11796352;-11796351;-11796350;-11796349;-11796348;-11796347;-11796346;-11796345;-11796344;-11796362;-11796361;-11796360;-11796359;-11796358;-11796357;-11796356;-11796391;-11796390;-11796389;-11796388;-11796387;-11796386;-11796385;-11796407;-11796406;-11796405;-11796404;-11796403;-11796402;-11796401;-11796424;-11796423;-11796422;-11796421;-11796420;-11796419;-11796418};
    {-136010643;-11796476;-1948975068;-1948975081;-1948975049;-1948975083;-1948975044;-1948975091;-1948975033;-1948975048;-1948975046;-1948975080;-1948975074;-1948975037;-1948975082;-1948975078;-1948975079;-1948975077;-1948975073;-1948975047;-1948975051;-1948975034;-1948975042;-11796478;-1948975090;-1948975066;-1765408760;-1948975063;-11796477;-1948975032;-1948975043;-1948975035;-1948975076;-1765408763;-1948975041;-1948975072;-1948975040;-1948975038;-1948975052;-1948975084;-1948975039;-1948975036;-1948975045;-1765408759;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;2060386365;-11796370;-11796369;-11796368;-11796367;-11796366;-11796365;-11796364;-11796400;-11796399;-11796398;-11796397;-11796396;-11796395;-11796394;-11796415;-11796414;-11796413;-11796412;-11796411;-11796410;-11796409;-11796432;-11796431;-11796430;-11796429;-11796428;-11796427;-11796426;-11796467;-11796465;-11796463;-11796461;-11796449;-11796448;-11796447;-11796445;-11796444;-11796443;-11796442;-11796441;-11796440;-11796439;-11796438;-11796437;-11796436;-11796435;-11796434;-11796384;-11796383;-11796382;-11796381;-11796380;-11796379;-11796378;-11796377;-11796376;-11796375;-11796374;-11796373;-11796355;-11796354;-11796353;-11796352;-11796351;-11796350;-11796349;-11796348;-11796347;-11796346;-11796345;-11796344;-11796362;-11796361;-11796360;-11796359;-11796358;-11796357;-11796356;-11796391;-11796390;-11796389;-11796388;-11796387;-11796386;-11796385;-11796407;-11796406;-11796405;-11796404;-11796403;-11796402;-11796401;-11796424;-11796423;-11796422;-11796421;-11796420;-11796419;-11796418};
    {-1644045427;-11796342;-11796311;-11796076;-11796299;-11796322;-11796274;-11796272;-11796310;-11796335;-11796324;-11796301;-11796313;-11796344;-11796294;-11796314;-11796270;-11796315;-11796305;-11796318;-11796287;-11796273;-11796283;-11796306;-11796297;-11796337;-11796341;-11796308;-11796303;-11796319;-11796338;-11796343;-11796276;-11796295;-11796286;-11796080;-11796079;-11796316;-11796277;-11796302;-11796285;-11796336;-11796309;-11796304;-11796323;-11796284;-11796075;-11796279;-11796298;-11796278;-11796282;-11796340;-11796271;-11796300;-11796081;-11796077;-11796296;-11796317;-11796281;-11796320;-11796307;-11796312;-11796339;-11796280;-11796275;-11796433;-11796432;-11796443;-11796441;-11796439;-11796442;-11796440;-11796438;-11796437;2060386339;2060386344;2060386332;2060386355;2060386338;2060386329;2060386328;2060386333;2060386330;2060386334;2060386347;2060386348;-11796429;-11796428;-11796427;-11796426;-11796425;-11796424;-11796423;-11796422;-11796421;-11796420;-11796419;-11796418;-11796456;-11796455;-11796454;-11796453;-11796452;-11796451;-11796450;-11796449;-11796448;-11796447;-11796446;-11796445;-11796408;-11796400;-11796399;-11796398;-11796397;-11796396;-11796395;-11796469;-11796468;-11796467;-11796466;-11796465;-11796464;-11796463;-11796462;-11796461;-11796460;-11796459;-11796458;-11796416;-11796415;-11796414;-11796413;-11796412;-11796411;-11796410;-1765407649;-1765407648;-1765407647;-1765407645;-1765407644;-1765407643;-1765407642;-1765407641;-1765407640;-1765407639;-1765407638;-1765407637;-1765407636;-1765407635;-1765407634;-1765407632;-1765407631;-1765407630;-11796403;-11796405;-11796404;-11796402;-11796407;-11796401;-11796406};
    {170656205;-11795976;-11796171;-11796056;-11796166;-11795977;-11795954;-11795958;-11796257;-11796071;-11796160;-11796083;-11796159;-11796259;-11795961;-11796047;-11796174;-11796175;-11796305;-11796167;-11795951;-11796306;-1848049380;-11795955;-11796057;-11796043;-11796048;-11796308;-11796164;-11796161;-11795956;-11796073;-11796039;-11796041;-11796172;-11796037;-11796169;-11796061;-11795964;-11796080;-11796055;-11795965;-11796165;-11796036;-11796044;-11796059;-11796045;-11796084;-11796040;-11796258;-11796304;-11795970;-11796072;-11795957;-11796035;-11796173;-11795962;-11795959;-11795952;-11795953;-11796262;-11796260;-11795950;-11796307;-11795968;-11796162;-11796112;-11795974;-11796049;-11795971;-11796069;-1765407641;-11796455;-11796346;-11796345;-11796342;-11796337;-11796335;-11796331;-11796330;-11796328;-11796320;-11796319;-11796318;-11796317;-11796314;-11796313;-11796312;-11796311;-11796310;-11796254;-11796253;-11796252;-11796251;-11796250;-11796248;-11796247;-11796246;-11796245;-11796244;-11796243;-11796241;-11796240;-11796239;-11796238;-11796237;-11796236;-11796223;-11796222;-11796221;-11796220;-11796219;-11796218;-11796216;-11796215;-11796214;-11796213;-11796212;-11796211;-11796209;-11796208;-11796207;-11796206;-11796205;-11796204;-11796202;-11796201;-11796200;-11796199;-11796198;-11796196;-11796195;-11796194;-11796193;-11796192;-11796191;-11796189;-11796188;-11796187;-11796186;-11796185;-11796184;-11796182;-11796181;-11796180;-11796179;-11796178;-11796177;-11796026;-11796025;-11796024;-11796023;-11796022;-11796021};
    {1649439303;-11795904;-11795924;-11795902;-11795901;-11795928;486;2093678728;-11795997;-11795943;-1541078220;-11795994;-11795981;479;-1541078214;-11795892;405405802;-11795972;-11796002;2093678985;-1541078419;-11795910;-11796003;-11795900;-11795970;-11795933;2093679137;-1541078734;-11795968;2093678984;-11795998;-11795950;-1541078733;-11795922;-11795912;-11795899;-11795921;2093678920;-11795995;-11795977;2093679133;2105409868;2105409869;2093678842;405405804;-1541078872;-11795941;405405805;-1541078215;2093679134;2093679135;-11795980;-11795908;2105409867;-11795934;-1541078874;-11795930;-11795929;2093678921;-1541078864;-11795909;2093678983;-11795919;-1541078213;-11795979;-11795907;-11795954;-11795916;-11796046;-11795949;-11795939;-11795936;-11795937;-11795920;-11795925;-1541078226;-11795923;-11796081;-11795975;-11795999;-11796085;-11796029;-11795971;-11795918;-11795896;-11795973;-11795906;-11795905;-11796006;-11795931;-11795969;-11796000;-11795911;-11795947;-11795927;-11795895;-11795893;-11795894;-11795926;-11795946;-11795942;-11795974;-11796045;-11795945;405405806;-11795951;-1541078871;-11795898;-11795996;-11795938;482;-11795978;-11795888;2093678778;-11796004;-11795903;2093678982;405405803;-11795940;-11795917;2093678721;-11795913;-11795915;-11795897;-11795952;405405801;-1541078731;-11795953;-1541078219;-11795948;2093678986;-11796420;-11796454;-11796421;-11796406;-11796405;-11796404;1926758753;1926758766;-11796332;-11796258;-11796240;-11796239;-11796238};
    {-2115418256;-11796360;2060386366;-11796409;2060386374;2060386432;2060386364;2060386361;-11796470;2060386413;2060386344;-11796311;-11796359;2060386331;-11796268;-11796460;2060386343;-11796424;2060386341;-11796404;-11796266;2060386340;2060386424;2060386359;-11796267;2060386433;-11796357;-11796312;2060386325;-11796415;-11796400;2060386336;-11796355;-11796466;2060386346;-11796422;2060386337;-11796257;2060386371;2060386423;2060386373;2060386422;-11796465;-11796316;-11796255;2060386332;-11796253;-11796402;2060386363;-11796254;-11796462;2060386410;-11796463;-11796420;-11796412;-11796401;-11796461;2060386345;-11796256;-11796469;2060386372;2060386414;-11796259;2060386415;-11796419;2060386334;2060386431;2060386368;2060386339;2060386375;2060386365;-11796356;-11796459;-11796258;-11796408;2060386429;2060386342;-11796421;2060386333;2060386369;2060386426;-11796264;2060386378;2060386412;-11796398;-11796314;2060386430;2060386327;-11796262;-11796315;-11796269;-11796265;-11796411;2060386417;-11796425;2060386427;-11796458;2060386335;-11796423;-11796406;-11796399;-11796261;-11796416;-11796413;-11796358;2060386367;2060386425;2060386324;2060386428;2060386328;2060386338;-11796251;-11796317;-11796410;-11796313;-11796403;2060386377;-11796260;2060386362;2060386411;-11796457;2060386323;2060386370;2060386416;-11796468;2060386326;-11796407;-11796263;-11796405;2060386360;-11796414;2060386376;-11796467;-11796252;2060386379;-11796250;2060386329;-11796417;-11796464;2060386418};
    {312004957;2060386366;-11796409;-11796416;1167523884;-11796148;-11796150;2060386357;-11796089;2060386362;-11796448;-11796391;-11796395;-11796145;-11796153;-11796076;-11796073;-11796460;-11796390;-11796397;-11796140;2060386340;2060386365;2060386359;34603041;-11796426;-11796383;-11796415;-11796453;-11796433;-11796155;-11796449;-11796400;-11796399;-11796431;-11796387;-11796394;1167523885;-11796070;-11796466;-11796384;-11796422;-11796475;-11796080;-11796071;1167523880;-11796144;-11796079;-11796147;-11796465;-11796157;-11796451;-11796083;-11796462;-11796463;-11796420;2060386352;-11796401;-11796461;-11796469;-11796086;2060386322;-11796149;-11796154;-11796396;-11796454;2060386354;-11796468;2060386328;2060386321;-11796385;-11796459;-11796072;-11796474;2060386333;-11796075;34603042;-11796429;-11796085;-11796068;-11796389;-11796382;-11796458;-11796087;2060386358;-11796138;2060386318;-11796088;-11796141;-11796430;-11796472;-11796082;2060386315;1167523879;-11796386;-11796074;-11796081;-11796392;-11796398;-11796143;-11796476;2060386314;2060386307;34603039;-11796151;-11796432;-11796084;-11796388;-11796152;-11796067;2060386339;2060386356;1167523878;2060386316;2060386355;2060386332;2060386331;-11796427;-11796156;2060386320;-11796146;-11796139;-11796142;2060386338;2060386319;-11796361;2060386353;2060386360;2060386317;-11796455;-11796467;-11796066;-11796077;2060386306;-11796473;2060386329;-11796090;-11796464;-11796069};
    {2050064391;-11796308;-11796476;-11796416;-11796452;-11796443;-11796448;2093678914;-11796470;-11796432;2093678954;-11796468;-11796460;-11796326;2093678716;2093678718;-11796424;2093678849;-11796439;-11796418;2093678939;-11796427;-11796295;-11796426;-11796300;-11796453;2093678916;-11796449;-11796478;-11796431;2093678837;-11796466;2093678918;2093679072;-11796445;-11796475;-11796465;-11796255;-11796301;2093678917;-11796277;-11796451;2093678846;2093679079;-11796254;-11796463;-11796420;2093678941;-11796461;-11796256;-11796469;-11796321;2093678913;2093679084;2093678864;2093678963;-11796454;-11796459;-11796446;-11796474;-11796421;2093678949;2093679088;2093678965;-11796440;-11796429;2093678964;-11796251;2093678707;2093678950;-11796444;-11796430;2093678935;2093678962;-11796287;2093679090;-11796457;2093678850;2093678871;2093678937;2093678938;2093678955;-11796425;2093678915;-11796302;-11796423;-11796261;-11796435;-11796441;2093678822;2093678727;-11796419;2093678966;-11796456;-11796296;-11796471;-11796442;-11796473;-11796422;2093678940;-11796260;2093679070;2093678919;-11796472;-11796436;2093679078;2093679092;2093679074;2093678847;2093678952;-11796477;-11796297;2093678961;2093678960;-11796299;-11796447;-11796428;2093679094;2093678951;2093678953;-11796455;-11796450;2093678741;-11796467;2093679068;-11796252;-11796438;-11796462;-11796298;2093678936;-11796433;2093679069;-11796417;-11796464;2093679091};
    {-1050035699;-11796476;-11796448;-11796145;-11796282;-11796153;-11796379;-11796311;-11796390;-11796326;1293287554;-11796140;1293287690;-1541078828;-11796152;-11796331;-11796325;-11796400;-11796293;-11796387;-11796394;-11796310;-11796292;-11796475;-1855455135;-11796442;-11796147;-11796332;-11796157;-11796313;-11796288;-11796401;-11796469;-1541078829;-11796149;-11796381;2060386333;-11796294;-11796389;-11796329;-11796141;-11796411;-11796287;-11796146;-11796143;-11796328;-11796283;-11796471;-11796473;-11796306;1293287528;-11796388;-11796290;-11796406;-11796297;-11796447;-11796457;-11796414;-11796407;-11796303;-11796416;-11796148;-11796278;-11796443;-1855455057;-11796470;-11796391;-11796441;1293287720;-11796468;-1541078827;1293287523;-11796312;-11796380;2060386325;-11796155;-11796378;-11796156;-11796291;-11796384;-11796281;2060386308;-11796144;-11796440;1293287530;-11796289;-11796462;-11796302;-1855455046;-11796285;-11796154;-11796309;1293287689;-11796304;2060386321;-11796474;2060386322;-11796279;-11796139;-11796465;-11796150;-11796382;1293287531;-11796472;-11796386;-11796327;-11796466;-11796445;-11796456;-1172111224;-11796142;-11796284;-11796151;-11796307;2060386307;-11796295;-11796385;-1541078826;-11796280;-11796286;-11796393;-11796314;2060386334;-11796138;-11796305;-11796308;2060386310;-11796467;-11796296;-11796437;-1172111187;-1172111219;-11796464};
    {2060214456;-11796299;2060386476;2060386486;2060386485;2060386391;2060386487;2060386478;2060386338;2060386442;2060386484;2060386369;2060386360;2060386376;1674052671;2060386474;2060386362;2060386464;2060386468;2060386365;2060386359;-11796378;2060386403;2060386371;2060386423;2060386401;2060386435;2060386368;2060386483;2060386358;2060386370;2060386335;2060386448;2060386428;1926758854;2060386364;-11796379;2060386475;1674052665;2060386363;2060386470;2060386466;2060386471;2060386415;2060386446;2060386444;2060386462;2060386452;-11796305;2060386377;2060386353;2060386366;2060386432;-11796371;2060386347;2060386472;-11796300;2060386436;2060386465;2060386445;2060386454;-11796374;2060386441;-11796377;2060386447;2060386372;2060386469;-11796301;2060386429;2060386380;2060386463;2060386450;2060386395;2060386389;-11796373;2060386417;-11796375;-11796392;2060386374;2060386451;2060386477;-11796372;2060386375;2060386453;2093678875;2093678983;2093678983;2093678983;2093678983;2093678862;2093678862;2093678862;2093678862;2093678940;2093678940;2093678940;2093678940;2093678927;2093678927;2093678888;2093678888;2093678888;2093678888;2093678888;2093678888;2093678888;2093678888;2093678888;2093678888;2093678849;2093678849;2093678849;2093678849;2093678953;2093678953;2093678953;2093678953};
    {507487826;2060386357;2060386364;2060386344;-11796076;2060386341;2060386350;2060386337;-11796071;2060386311;2060386319;498;2060386391;1167524689;1167524691;2060386378;-11796085;-11796207;2060386314;2060386338;2060386312;-11796088;2060386315;-11796074;2060386367;500;2060386307;2060386377;2060386353;2060386360;2060386376;2060386379;2060386348;-11796089;2060386362;2060386361;2060386331;2060386316;2060386326;2060386343;2060386340;2060386365;2060386359;2060386383;2060386347;2060386325;2060386355;2060386336;-11796070;2060386308;-11796080;2060386371;-11796079;1167524690;-11796206;2060386332;-11796066;2060386384;2060386372;2060386322;2060386309;2060386368;2060386375;2060386354;2060386321;-11796072;-11796209;-11796075;-11796073;2060386366;-11796068;2060386363;-11796208;-11796087;-11796067;2060386327;2060386334;2060386381;-11796077;2060386370;-11796081;2060386358;499;2060386335;2060386306;2060386385;2060386324;2060386318;2060386328;2060386356;2060386369;2060386330;2060386313;2060386323;2060386382;2060386374;2060386320;2060386310;2060386342;2060386351;2060386317;2060386329;-11796090;-11796069;-11796175;-11796174;-11796173;-11796172;-11796171;-11796170;-11796169;-11796168;-11796167;-11796166;-11796165;-11796164};
    {-1900248111;-1138884564;-1138884560;-1138884603;-1948974517;-1138884584;-1138884527;-1138884491;-1138884533;-1138884528;-1138884572;34603495;-1138884591;-1948974608;-1138884585;-1138884578;-1138884531;-1138884592;-1948974607;-1948974516;-1948974519;-1138884582;-1948974611;-1948974609;-1948974520;-1948974612;-1948974515;-1138884555;-1138884589;-1138884567;-1138884583;-1138884581;34603487;-1138884546;34603494;-1948974610;-1138884526;-1138884565;-1138884598;-1138884569;-1138884571;-1138884538;-1138884548;-1138884550;-1138884568;-1138884525;-1138884559;-1138884537;-1138884553;-1138884570;-1138884574;-1138884541;-1138884552;-1138884577;-1138884586;-1138884530;-1138884587;-1138884562;-1138884594;-1138884595;-1138884604;-1138884539;-1138884602;-1138884532;-1138884529;-1138884549;-1138884596;-1138884599;-1138884545;-1138884605;-1138884551;-1138884580;-1138884544;-1138884542;34603492;-1138884563;-1138884554;-1138884489;-1138884597;-1138884540;-1138884575;-1138884601;-1138884600;-1138884588;-1138884576;-1138884535;-1138884561;-1138884566;-1138884556;-1138884557;34603493;-1138884547;-1138884543;-1138884593;-1138884536;-1138884590;-1138884534;-1138884558;-1948974518;-1138884579};
    {748712866;2093679187;-11796145;-11796153;-11796140;-11796152;2093679055;2093679129;2093679093;2093679106;-11796147;2093679107;2093679180;2093679120;-11796149;2093679087;-11796141;-2015297144;-11796146;2093679098;2093679096;2093679075;-2015297143;2093679054;-11796139;2093679094;2093679060;2093679202;-11796148;-11796150;2093679067;-2015297146;2093679127;2093679126;2093678823;2093678826;2093678889;2093678895;2093679058;2093679097;2093679112;2093679113;2093679117;2093679131;2093679083;2093679073;2093678929;2093679077;2093679057;2093679115;2093679133;-2015297148;-11796155;-11796156;2093679132;2093679092;2093679104;2093679006;2093679121;2093679089;2093679086;2093679059;2093679110;2093679090;2093679108;2093678831;-2015297150;2093679056;2093679081;2093679099;2093679111;-11796144;2093679088;2093679076;2093679103;-2015297147;2093678818;2093679095;2093679079;-2015297145;-11796417;-11796154;2093679194;2093679085;-2015297149;2093679105;2093679114;-11796138;-11796151;2093679109;-11796142;2093679118;-11796143;2093679078;2093679125;2093679116;2093679080;2093679130;2093679091};
    {-1574275404;-11796145;-11796153;-11796149;-11796287;-11796143;-11796283;-11796297;-11796150;-11796278;-11796155;-11796144;-11796289;-11796285;-1627586479;-11796140;-11796152;-11796157;-11796288;-1855452427;-11796151;-11796139;-11796290;-11796295;-11796286;-11796156;-11796281;-11796282;-11796291;-1855452431;-11796293;-11796154;-11796292;-11796141;-11796147;-11796294;-11796138;-11796146;-11796284;-11796142;-11796148;-11796280;-11796296;-11796279;-11796327;-11796326;-11796325;-11796324;-11796323;-11796322;-11796321;-11796380;-11796379;-11796378;-11796377;-11796363;-11796362;-11796361;-11796343;-11796342;-11796341;-11796340;-11796339;-11796338;-11796337;-11796351;-11796350;-11796349;-11796348;-11796347;-11796346;-11796345;-11796388;-11796387;-11796386;-11796385;-11796384;-11796383;-11796382;-11796411;-11796410;-11796409;-11796408;-11796400;-11796399;-11796398;-11796396;-11796395;-11796394;-11796393;-11796392;-11796391;-11796390;-11796359;-11796358;-11796357;-11796356;-11796355;-11796354;-11796353};
    --{263580627;-11796476;-1335754701;2105409874;-11796395;-11796311;-11796359;-11796390;2105409873;2105409992;-11796383;-11796415;-11796400;-11796478;-11796387;-11796475;-1335754680;-11796313;2105409971;-11796355;-11796401;2105409869;2105409872;-11796385;-11796381;-11796314;2105409990;-11796389;-1335754668;-11796398;1482555782;-11796388;2105409991;-11796356;-11796477;-1335754702;-1335754729;-11796360;-11796416;-1335754718;-11796397;2105409974;-11796357;-11796312;-11796380;-11796378;-11796358;2105409973;-1335754647;-11796384;-1335754691;2105409975;-11796316;-11796315;2105409994;-11796377;-11796399;-1335754690;-1335754657;-1335754658;-11796479;-1335754679;-1335754717;2105409976;-11796396;-11796386;2105409989;-11796374;2105409871;-1335754646;-11796382;-11796413;-1335754728;-11796414;2105409972;-1335754669;-11796375;-11796317;-11796379;-11796391;-11796393;-11796392;-11796376;2105409993};
    {817373972;-11796443;-11796470;-11796432;-11796441;-11796468;-11796439;-11796418;-11796353;-11796365;-11796433;-11796451;-11796400;-11796431;-11796406;-11796454;-11796434;-11796442;-11796465;-11796440;-11796367;498;499;-11796462;-11796463;-11796461;-11796469;-11796473;-11796364;500;-11796474;-11796445;-11796472;-11796460;-11796428;-11796427;-11796437;-11796426;-11796357;-11796363;-11796457;-11796471;-11796456;-11796459;-11796449;-11796450;-11796466;-11796354;-11796368;-11796429;-11796452;-11796438;-11796444;-11796453;-11796366;-11796435;-11796455;-11796458;-11796355;-11796430;-11796425;-11796352;-11796436;-11796356;-11796467;-11796464;-11796175;-11796174;-11796173;-11796172;-11796171;-11796170;-11796169;-11796168;-11796167;-11796166;-11796165;-11796164};
    {2518601;-11796308;-11796435;-11796303;-11796319;-11796443;-11796391;-11796395;-11796390;-11796424;-11796397;-11796299;-11796439;-11796386;-11796312;-11796427;-11796389;-11796426;-11796383;-11796300;-11796380;-11796378;-11796400;-11796431;-11796387;-11796422;-11796445;-11796428;-11796442;-11796440;-11796367;-11796374;-11796302;-11796321;-11796393;-11796396;-11796385;-11796317;-11796375;-11796392;-11796369;-11796371;-11796368;-11796377;-11796379;-11796381;-11796311;-11796309;-11796384;-11796316;-11796306;-11796305;-11796304;-11796310;-11796398;-11796298;-11796366;-11796430;-11796429;-11796432;-11796314;-11796437;-11796444;-11796318;-11796373;-11796441;-11796425;-11796423;-11796436;-11796421;-11796297;-11796296;-11796438;-11796372;-11796434};
    {-161371567;-11796071;-11796083;-11796086;-11796088;-11796082;-11796084;-11796067;-11796089;-11796073;-11796070;-11796080;-11796066;-11796072;-11796075;-11796068;-11796076;-11796087;-11796079;-11796081;-11796085;-11796069;-11796074;-11796077;-11796090;-1541078482;-1541078482;-1541078482;-1541078482;-1541078501;-1541078489;-1541077972;-1541077972;-1541077972;-1541077972;-1541077979;-1541077979;-1541077979;-1541077979;-1541078593;-1541078582;-1541078589;-1541078590;-1541078548;-1541078525;-1541078524;-1541077989;-1541077988;-1541077987;-1541077986;-1541077985;-1541077984;-1541077983;-1541077965;-1541077965;-1541077965;-1541077965};
    {-977706424;2060386357;2060386364;2060386350;2060386349;2060386346;2060386337;2060386311;2060386363;2060386319;2060386345;2060386328;2060386360;2060386333;2060386331;2060386370;2060386330;2060386338;2060386352;2060386312;2060386318;2060386313;2060386369;2060386367;2060386376;2060386324;2060386366;2060386336;2060386374;2060386348;2060386362;2060386361;2060386326;2060386343;2060386340;2060386325;2060386355;2060386372;2060386322;2060386334;2060386368;2060386339;2060386375;2060386354;2060386342;2060386327;2060386332;2060386373;2060386356;2060386320;2060386310;2060386321;2060386358;2060386314;2060386344;2060386351};
    {1887730855;-11795976;-11796460;-11795977;-11796478;-11796466;-11796475;1293289203;-11796465;1293288535;1293289206;-11796119;-11795974;1293288897;-11796471;1293288554;-11796470;-11795978;-11795971;-11796129;1293289269;-11796118;-11795972;-11796002;-11796046;1293288900;-11796474;-11796472;-11796469;-11796114;-11796473;-11795973;-11795964;-11796476;-11796467;-11796461;-11796468;-11796459;-11795975;-11795966;-11796477;-11796463;-11795965;-11796462;1293289266;-11796042;1293288484;-11795967;-11795963;1293288481;1293288546;2093678694;1293287987;1293288176;-11796464;1293288469};
    {-768833570;-11796476;-11796449;-11796400;2060386349;2060386486;2060386388;2060386485;-11796412;2060386390;2060386306;2060386468;2060386355;2060386488;2060386504;-11796434;2060386387;2060386356;2060386475;-11796390;-114950141;-1765408587;-11796408;405405705;2060386353;2060386489;2060386348;2060386347;1185742864;-11796395;-11796451;2060386389;2060386474;405405704;-11796436;2060386305;2060386307;-881917928;-881917923;-881917922;2105410001;2105410001;2105409997;2105409989;2105409985;2105409993;-11796258;-11796240;-11796239;-11796238};
    {1323747701;-1541078874;-1855454159;-1541078872;1482555820;1482555807;-1855455008;-1855454409;-1541078871;-1475867566;-809369585;-809369583;-809369573;-809369578;-1475870010;-1475866992;-1475867021;-1475866924;-1475870494;-1475866937;-1475869652;-1475869444;-1475869521;-1475869696;-1475869752;-1475868325;-1475867681;-1475866982;-1475867822;-1475869597;-1475869357;-1475869983;-1475869190;-1475869856;-1475866911;-1475867002;-1475867811;-1475867586;-1475869320;-1475866894;-1475869221;-1475870154;-1475867807;-1475867568;-1475869663};
    {-1934656620;-11796476;-11796395;-11796379;-11796311;-11796359;-11796390;-11796383;-11796415;-11796400;-11796478;-11796387;-11796475;-11796313;-11796385;-11796381;-11796389;-11796398;-11796388;-11796356;-11796414;-11796360;-11796416;-11796391;-11796397;-11796357;-11796312;-11796380;-11796378;-11796384;-11796386;-11796377;-11796401;-11796479;-11796396;-11796355;-11796358;-11796413;-11796316;-11796375;-11796477;-11796315;-11796317;-11796382;-11796392;-11796374;-11796314;-11796376;-11796399;1482555782;-11796393};
    {-410824576;-11796476;-11795978;-11796046;-11795977;-11796478;-11796118;-11795972;-11795975;-11796002;-11796114;-11796465;-11795965;-11795964;2093679120;-11796463;-11796461;2093679119;-11796469;-11795966;-11796119;-11796474;-11796042;-11796129;-11795963;-11796462;-11796472;-11795967;-11795973;2093679121;-11796477;-11796470;-11796468;-11796466;-11796471;2093679118;-11796460;-11796475;-11795974;-11796473;-11796459;-11795971;-11795976;2093679117;-11796467;2093679116;-11796464};
    {567986524;-587661257;-587661296;-587661241;-587661298;-587661282;-587661258;-587661244;-587661234;-587661267;-587661305;-587661272;-587661273;-587661307;-587661302;-587661300;-587661290;-587661281;-587661270;-587661287;-587661268;-587661239;-587661280;-587661285;-587661240;-587661278;-587661277;-587661266;-587661274;-587661297;-587661259;-587661255;-587661289;-587661251;-587661250;-587661249;-587661232;-587661310;-587661304;-587661237;-587661230;-587661242;-587661236;-587661233;-587661261;-587661264;-587661291;-587661260;-587661301;-587661235;-587661269;-587661231;-587661299;-587661292;-587661284;-587661288;-587661254;-587661238;-587661309;-587661276;-587661286;-587661283;-587661246;-587661306;-587661245;-587661295;-587661253;-587661294;-587661247;-587661263;-587661229;-587661252;-587661262;-587661265;-587661256;-587661271;-587661243;-587661279;-587661248;-587661275;-587661303;1167523919;1167523922;1167523920;1167523917;1167523899;1167523898;1167523902;1167523904;1167523906;1167523905;1167523924;1167523923;1167523882;1167523879;1167523874;1167523873;1167523864;1167523928;1167523932;1167523934;1167523938;1167523941;1167523946;1167523947;1167523952;1167523955;1167523959;1167523961;1167523965;1167523968;1167523973;1167523974;1167523979;1167523982;1167523986;1167523988;1167523992;1167523995;1167524000;1167524001;1167524006;1167524009;1167524013;1167524015;1167524018;1167524022;1167524024;1167524028;1167524032;1167524036;1167524037;1167524040;1167524046;1167524050;1167523893;1167524054;1167524057;1167524062;1167524063;1167524068;1167524071;1167524075;1167524077;1167524082;1167524085;1167524087;1167524091;1167524094;1167524099;1167524100;1167524105;1167524108;2105409846;2105409948;2105409945;2105409946;2105409947;2105409951;2105409953;2105409954;2105409955;2105409966;2105409967;2105409969;2105409970;2105409971;2105409972;2105409973;2105409975;2105409976;2105409977;2105409978;2105409979;2105409980;2105409873;2105409873;2105409873;2105409873;2105409873};
    {1705189686;1674051595;1674051597;1674051596;1674051598;1674051593;1674051592;1674051594;1674051600;1674051599;1167523919;1167523922;1167523920;1167523917;1167523899;1167523898;1167523902;1167523904;1167523906;1167523905;1167523924;1167523923;1167523882;1167523879;1167523874;1167523873;1167523864;1167523928;1167523932;1167523934;1167523938;1167523941;1167523946;1167523947;1167523952;1167523955;1167523959;1167523961;1167523965;1167523968;1167523973;1167523974;1167523979;1167523982;1167523986;1167523988;1167523992;1167523995;1167524000;1167524001;1167524006;1167524009;1167524013;1167524015;1167524018;1167524022;1167524024;1167524028;1167524032;1167524036;1167524037;1167524040;1167524046;1167524050;1167523893;1167524054;1167524057;1167524062;1167524063;1167524068;1167524071;1167524075;1167524077;1167524082;1167524085;1167524087;1167524091;1167524094;1167524099;1167524100;1167524105;1167524108;2105409846;2105409948;2105409945;2105409946;2105409947;2105409951;2105409953;2105409954;2105409955;2105409966;2105409967;2105409969;2105409970;2105409971;2105409972;2105409973;2105409975;2105409976;2105409977;2105409978;2105409979;2105409980;2105409873;2105409873;2105409873;2105409873;2105409873};
    {-1184245578;-1765408541;-11796474;405405709;-11796464;2105409825;2105409825;2105409825;-1466630125;-1466630124;-1466630121;-1466630120;-1466630119;-1466630118;-1466630117;-1466630116;-1466630115;-1466630114;-1466630113;-1466630112;-1466630111;-1466630110;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409855;2105409775;2105409777;2105409779;2105409780;2105409781;2105409991;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409962;2105409981;2105409846;2105409846;2105409846;2105409846;2105409846;2105409846;2105409948;2105409945;2105409946;2105409947;2105409951;2105409953;2105409954;2105409955;2105409966;2105409967;2105409969;2105409970;2105409971;2105409972;2105409973;2105409975;2105409976;2105409977;2105409978;2105409979;2105409980;2105409873;2105409873;2105409873;2105409873;2105409873};
    {1612139937;-11796406;-1475867566;-809369585;-809369583;-809369573;-809369578;-1475870010;-1475866992;-1475867021;-1475866924;-1475870494;-1475866937;-1475869652;-1475869444;-1475869521;-1475869696;-1475869752;-1475868325;-1475867681;-1475866982;-1475867822;-1475869597;-1475869357;-1475869983;-1475869190;-1475869856;-1475866911;-1475867002;-1475867811;-1475867586;-1475869320;-1475866894;-1475869221;-1475870154;-1475867807;-1475867568;-1475869663};
    {1190972738;-11796476;-11796468;-11796326;-1848049579;-11796325;2060386336;-11796475;2060386337;-11796332;-11796465;498;499;-1848049626;-11796479;450;-11796474;-11796328;2060386329;-11796333;-11796478;2060386339;-11796467;-1848049628;2060386341;2060386326;-11796466;-11796329;2060386340;-11796327;2060386338;-1848049597;-1848049624;451;449;500;2060386335;-11796473;-1848049590;-11796477;-11796464};
    {1759178769;2105409609;-11796310;2105409583;2060386307;-11795892;-11795883;-11795896;-11796285;-11795900;-11795887;2105409581;-11795886;-11795895;-11795890;-11795899;-11795882;-11796383;2105409606;-11795891;-11795898;-11795888;-11795889;2105409584;-11795893;-11796463;-11795884;-11795894;-11796206;-2015297409;-11795897;-11795881;2105409610;-11795885};
    {-224855659;-1172110256;-1172110836;-1172110280;-1172110270;-1172110837;-1172110266;-1172110248;-1172110271;-1172110981;-1172110979;-1172110262;-1172110259;-1172110257;-1172110909;-1172110254;-1172110284;-1172110253;-1172110261;-1172110264;-1172110956;-1172110282;-1172110247;-1172110807;-1172110258};
    {649101397;-11795890;-11795899;1293287674;-11795882;1293287872;-11796383;1293287873;-11795889;-11795898;-11795893;-11795892;-11795884;-11795894;-11796206;1293287675;-11795896;-11795900;-11795887;-11795897;-11795888;-11795885;-11795886;-11795895;-11795881;1293287865;-11795891;1293287864;-11795883};
    {128844448;-11796452;506;-11796311;-11796359;-11796449;-11796313;924;-11796314;-11796315;-1765408760;-11796356;-11796406;-11796360;-11796407;-11796357;-11796312;-11796453;-11796358;-11796355;-11796451;867;-11796317;-11796316;-1765408758;-1765408759;-11796450;-11796455;-11796454};
    {-1243448568;2060386410;2060386406;-11796432;-11796429;2060386412;2060386341;2060386460;2060386457;1674051698;2060386459;2060386349;2060386405;2060386458;2060386357;2060386408;2060386456;1926758854};
    {-1036005362;2060386410;2060386459;2060386412;2060386341;1674051713;2060386457;2060386460;2060386349;1674051739;-11796429;2060386456;1674051695;-11796432;2060386408;2060386458};
    {1844499196;1167524221;1167523888;1167523878;1167523877;1167523895;1167523876;1167524306;1167524160;1167524220;1167524307;1167524218;1167524219;1167523889;1167523880};
}

on  = '¦✅¦'
off = '¦❌¦'

function sign(b)
	if b then return on else return off end
end

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
		if indexof(sarray,uu[1].address) == -1 then
			gg.removeListItems(uu)
		else
			gg.addListItems(uu)
		end
	end
end

function setstr(addr,range,str)
	nn = gg.bytes(str)
	hv = {}

	if #nn < range then
		mm = range - #nn
		for i = 1, mm do
			table.insert(nn,0)
		end
	end

	for i = 1, range do
		table.insert(hv,{address = addr + (i - 1),flags = gg.TYPE_BYTE,value = nn[i]})
	end

	gg.setValues(hv)
end

function addtostr(add,amount)
	mp = ''

	for i = 0, amount do
		mu = getadd(add + i,gg.TYPE_BYTE)

		if mu < 1 then break end

		mp = mp .. string.char(mu)
	end

	return mp
end

function indexof(a,b)
	for k, v in ipairs(a) do
		if v == b then
			return k 
		end
	end

	return -1
end

function has(t, a)
	for i, v in ipairs(t) do
		if v == a then
			return true
		end
	end

	return false
end

-----------------------------------

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

function get_names(list)
	local nm = {}

	for i, v in ipairs(list) do
		table.insert(nm, v.name)
	end

	return nm
end

function get_pos_by_name(list, name)
	for i, v in ipairs(list) do
		if v.name == name then
			return {x = v.x, y = v.y, z = v.z}
		end
	end

	return nil
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

function make_fastpoints_list(family)
	return
end

function make_map_list(family)
	local m = {}

	for i, v in ipairs(crpoints) do
		if v.family == family then
			if not(has(m, v.name)) then
				table.insert(m, v.name)
			end
		end
	end

	return m
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

-----------------------------------

function find_adds()
	bootloader = gg.getRangesList('libBootloader.so')[1].start
	player = getadd(bootloader + offsets.ptoplayer, gg.TYPE_QWORD)
	player_r = player + offsets.pos_off + 0x20
	pbase = player + offsets.ptopbase
	nentity = getadd(bootloader + offsets.ptoentity, gg.TYPE_QWORD) + offsets.ptonentity
	nentity_test = getadd(nentity, gg.TYPE_DWORD) == 1099746509

	if not(nentity_test) then
		gg.searchNumber(1099746509, gg.TYPE_DWORD)
		
		if gg.getResultsCount() > 0 then
			nentity = gg.getResults(1)[1].address
			nentity_test = getadd(nentity, gg.TYPE_DWORD) == 1099746509
		end
	end

	if not(nentity_test) then
		gg.toast("Error, some functions may not work.")
	else
		curmap = nentity + offsets.curmap_off
	end
end

function find_pos()
	local coords = {
		z = player + offsets.pos_off,
		y = player + offsets.pos_off + 4,
		x = player + offsets.pos_off + 8
	}

	return coords
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

function find_nodes()
	if nentity_test then
		local n = {}
		local offs = nentity + offsets.friend_node

		local mx = 45

		for i = 0, mx do
			if string.find(addtostr(offs + i * 0x2E8 + 0x1, 20), "aceptar_") then
				table.insert(n, {offs + i * 0x2E8 + offsets.node_off, getadd(offs - offsets.node_off, gg.TYPE_DWORD)})
			end
		end

		gg.toast("Found "..#n.." friendship nodes")
		return n
	else
		return {}
	end
end

find_adds()

-- Teleport variables
coords = find_pos()

candle = coords['x'] - offsets.hcandle
prop_bckp = nil
cape_bckp = nil

wind_bckp = {}

custom_teleport_points = {}

mslot = {
	'❌empty',
	'❌empty',
	'❌empty',
	'❌empty',
	'❌empty',
	'❌empty',
	'❌empty',
	'❌empty',
	'❌empty'
}

-- Hack variables

inffire = off
fakesleep = off

autoburn = off
candles = find_candles()
plants = find_plants()
cosmetics = off
friendnode_unlock = off
friend_nodes = nil -- this has to be found only after logging in { deprecated :) }
energy = off
quick = off
quick_results = nil
clouds = off
clouds_results = nil
cosmetic_lock = off
chat_read = off
noknock = off
godmode = off
walkwithinst = off
cur_cape = nil
cur_world1 = nil
oonaki = off
oonaki_resulfs = nil
capespam = off
wing = off
maxlvwing = off
wingpower = off
graphx = off
charg = off
under = off
jump = off
flygravity = off
noequip = off
texture = off
cloudss = off
Skyshot = -1

glow1 = nsl
glow2 = nsl
glow3 = sl

str1 = false
str2 = false
str3 = false

line = ''
positions = {}

gg.setRanges(old_ranges)
gg.clearResults()

local old = gg.getRanges();

gg.setVisible(false)
gg.clearResults()
--gg.toast("Searching for address")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('7,020,670,180,468,457,475',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,1)
if gg.getResultsCount() == 0 then
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber('7,020,670,180,468,457,475',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,1)
end



gg.sleep(500)

if gg.getResultsCount() == 1 then
mrange = gg.getRanges()
a = gg.getResults(1)
base0 = a[1].address
base1 = a[1].address + 0x2000000
base2 = a[1].address + 0x200000
c1 = 1
gg.clearResults()
--gg.toast("1 - Successful")
else gg.toast("1 - Failed")
end
gg.sleep(500)

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('32,481,138,503,150,965',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,1)
if gg.getResultsCount() == 0 then
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber('32,481,138,503,150,965',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,1)
end

if gg.getResultsCount() == 1 then
pl = gg.getResults(1)
pl0 = pl[1].address
c2 = 1
gg.clearResults()
end

gg.sleep(500)

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-4.29621514e-14;-2.15730008e-14;-6.13017998e13;-1.27424102e34;-2.87131023e-14;-2.89733413e-14;-1.01380916e-28;-1.13700566e-13::29',16)
if gg.getResultsCount() == 8 then
a = gg.getResults(1)
cu = a[1].address - 0x4
cu0 = 6.57735814e-23
cu1 = 1384120352
xcu = 1
gg.clearResults()
--gg.toast("3 - Successful")
else gg.toast("3 - Failed")
end
gg.sleep(500)

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-0.04690396786;9.37361232e-21::5',16)
if gg.getResultsCount() == 2 then
a = gg.getResults(1)
en = a[1].address + 0xC
en0 = 8.59771529e-21
en1 = 505794560
xen = 1
gg.clearResults()
--gg.toast("4 - Successful")
else gg.toast("4 - Failed")
end

gg.sleep(500)

gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber('1D;2D;5D;10D;20D;35D;55D;75D;100D;120D;150D;200D;250D;300D;400D::57', gg.TYPE_DWORD)
wnglv = gg.getResults(14)
gg.clearResults()
revertwnglv = {}
for i, v in ipairs(wnglv) do
revertwnglv[i] = {address = v.address, flags = v.flags, value = v.value}
end

gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('0.30426996946F;1.0F;1.0F;1.0F;0.5F::73', gg.TYPE_FLOAT)
gg.refineNumber(1, gg.TYPE_FLOAT)
wingpwr = gg.getResults(3)
gg.clearResults()
revertwingpwr = {}
for i, v in ipairs(wingpwr) do
revertwingpwr[i] = {address = v.address, flags = v.flags, value = v.value}
end

gg.searchNumber('3.5', gg.TYPE_FLOAT)
quickstp = gg.getResults(1)
gg.clearResults()
revertquickstp = {}
for i, v in ipairs(quickstp) do
revertquickstp[i] = {address = v.address, flags = v.flags, value = v.value}
end

gg.searchNumber('2.5', gg.TYPE_FLOAT)
chargwing = gg.getResults(1)
gg.clearResults()
revertchargwing = {}
for i, v in ipairs(chargwing) do
revertchargwing[i] = {address = v.address, flags = v.flags, value = v.value}
end


gg.searchNumber('1D;0.15000000596F;0.5F;1.0F;0.40000000596F::25', gg.TYPE_DWORD)
clouds = gg.getResults(5)
gg.clearResults()
revertclouds = {}
for i, v in ipairs(clouds) do
  revertclouds[i] = {address = v.address, flags = v.flags, value = v.value}
end

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1,000.0F;0.05000000075F;-0.05000000075F::9', gg.TYPE_FLOAT)
graph = gg.getResults(3)
gg.clearResults()
revertgraph = {}
for i, v in ipairs(graph) do
revertgraph[i] = {address = v.address, flags = v.flags, value = v.value}
end

gg.searchNumber('-0.01499999966', gg.TYPE_FLOAT)
undergrnd = gg.getResults(2)
gg.clearResults()
revertundergrnd = {}
for i, v in ipairs(undergrnd) do
revertundergrnd[i] = {address = v.address, flags = v.flags, value = v.value}
end

gg.searchNumber('4.90000009537F;4.59999990463F;0.89999997616F;0.81999999285F::13', gg.TYPE_FLOAT)
gg.refineNumber('4.9', gg.TYPE_FLOAT)
jumppwr = gg.getResults(4)
gg.clearResults()
revertjumppwr = {}
for i, v in ipairs(jumppwr) do
revertjumppwr[i] = {address = v.address, flags = v.flags, value = v.value}
end

gg.searchNumber('-3.16081619263', gg.TYPE_FLOAT)
flygrvt = gg.getResults(1)
gg.clearResults()
revertflygravity = {}
for i, v in ipairs(flygrvt) do
revertflygravity[i] = {address = v.address, flags = v.flags, value = v.value}
end

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('32,481,138,503,150,965',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,1)
if gg.getResultsCount() == 0 then
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber('32,481,138,503,150,965',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,1)
end
if gg.getResultsCount() == 1 then
Core1 = gg.getResults(1)[1].address
gg.clearResults()
--gg.toast("Successful")
--else gg.toast("Failed")
end

-- Finding Value of Speed of Walk --

gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('3.5', gg.TYPE_FLOAT)
quick_results = gg.getResults(1)
gg.clearResults()

------------------------------------

------ Finding Value of Clouds -----

gg.searchNumber('1D;0.15000000596F;0.5F;1.0F;0.40000000596F::25', gg.TYPE_DWORD)
clouds_results = gg.getResults(1)
gg.clearResults()

function set_game_speed(speed)
	setadd(nentity + offsets.gamespeed_off, gg.TYPE_FLOAT, speed, false)
end


function wing_charge()
	charg = on
	chargwing[1].value = '4.5'
	gg.setValues(chargwing)
	gg.sleep(8000)
	gg.setValues(revertchargwing)
	charg = off
end

function under()
	if under == on then
	  under = off 
	  gg.setValues(revertundergrnd)
	  gg.toast('Underground is deactivated')
	else
	  under = on 
	  undergrnd[2].value = '-2'
	  gg.setValues(undergrnd)
	  gg.toast('Underground is activated')
	end
end

function jumping()
	if jump == on then
	  jump = off
      gg.setValues(revertjumppwr)
	  gg.toast('Jump distance midair is deactivated')
	else
	  jump = on
	  jumppwr[1].value = '10'
	  gg.setValues(jumppwr)
	  gg.toast('Jump distance midair activated')
	end
end

function gravity()
	if flygravity == on then
	  flygravity = off
	  gg.setValues(revertflygravity)
	  gg.toast('flygravity deactivated')
	else
	  flygravity = on
	  flygrvt[1].value = '5'
	  gg.setValues(flygrvt)
	  gg.toast('flygravity activated')
	end
end

function clouds()
	if cloudss == on then
	  cloudss = off
	  gg.setValues(revertclouds)
	  gg.toast('Clouds deactivated')
	else
	  cloudss = on
	  clouds[1].value = '0'
	  gg.setValues(clouds)
	  gg.toast('Clouds activated')
	end
end

function change_map(mp)
	setstr(player + offsets.portal_off, 30, '.' .. mp)
	set_game_speed(10)
	pmagic(8, 224110574, 0)
	gg.sleep(1000)
	set_game_speed(1)
	setstr(player + offsets.portal_off, 30, '.Rain_Cave')
	pmagic(8, 0)
end

function setposit(mx,my,mz)
	jh = {
		{
			address = coords['z'],
			flags = gg.TYPE_FLOAT,
			value = mx
		},
		{
			address = coords['y'],
			flags = gg.TYPE_FLOAT,
			value = my
		},
		{
			address = coords['x'],
			flags = gg.TYPE_FLOAT,
			value = mz
		}
	}
	gg.setValues(jh)
end

function pmove(dis)
	local x,y,z = getadd(coords['z'], gg.TYPE_FLOAT), getadd(coords['y'], gg.TYPE_FLOAT), getadd(coords['x'], gg.TYPE_FLOAT)
	local radin = getadd(player_r, gg.TYPE_FLOAT)
	
	local ax = dis * math.sin(radin)
	local az = dis * math.cos(radin)

	setposit(x + ax,y,z + az)
end

function pmagic(arr,id,sil)
	nn = {}
	tgt = player + (offsets.magic + (0x30 * (arr-1)))

	setadd(tgt,gg.TYPE_DWORD,id,false)

	if id ~= 0 then
		setadd(tgt + 0xC,gg.TYPE_DWORD,2139095040,false)
		setadd(tgt + 0x28,gg.TYPE_DWORD,sil,false)
		setadd(player + offsets.magic + 0xCBC, gg.TYPE_DWORD, 12, true)
	else
		setadd(tgt + 0xC,gg.TYPE_DWORD,0,false)
		setadd(tgt + 0x28,gg.TYPE_DWORD,0,false)
		setadd(player + offsets.magic + 0xCBC, gg.TYPE_DWORD, 12, false)
	end
end

function dospell()
	mlist = {}

	for i, v in ipairs(magicsid) do
		table.insert(mlist, v[1])
	end

	magicmenu = gg.choice(mlist, nil, "Choose spell:")

	if magicmenu == nil then
		return
	end

	if magicmenu == 1 then
		slotmenu = gg.multiChoice(mslot, nil, "Choose slots to remove:")
	else
		slotmenu = gg.choice(mslot, nil, "Choose slot:")
	end

	if slotmenu == nil then
		return
	end

	if magicmenu == 1 then
		for i, v in pairs(slotmenu) do
			mslot[i] = magicsid[magicmenu][1]
			pmagic(i, magicsid[magicmenu][2], 0)
		end
	else
		mslot[slotmenu] = magicsid[magicmenu][1]
		pmagic(slotmenu, magicsid[magicmenu][2], 0)
	end
end

function show_candles(bool)
	local xv = {}
	for i = 0,512 do
		if getadd(nentity + offsets.vcandles + (offsets.vcandles_dist * i) - 0x4,gg.TYPE_DWORD) ~= 0 then
			if bool then
				table.insert(xv,{address = nentity + offsets.vcandles + (offsets.vcandles_dist * i),flags = gg.TYPE_DWORD,value = 28673})
			else
				table.insert(xv,{address = nentity + offsets.vcandles + (offsets.vcandles_dist * i),flags = gg.TYPE_DWORD,value = 0})
			end			
		else
			break;
		end
	end

	gg.toast(#xv)
	gg.setValues(xv)
end

function unlock_all(b)
	if b then
		cosmetics = on
		setadd(bootloader + offsets.ptoemotes, gg.TYPE_DWORD, 1384120352, false)
		setadd(bootloader + offsets.ptocloset, gg.TYPE_DWORD, 1384120352, false)
	else
		cosmetics = off
		setadd(bootloader + offsets.ptoemotes, gg.TYPE_DWORD, -1186976888, false)
		setadd(bootloader + offsets.ptocloset, gg.TYPE_DWORD, 446629856, false)
	end
end

function unlockelders()
	gg.clearResults()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('h 00 00 00 00 00 00 80 3F CD CD CD CD 00 00 00 00', gg.TYPE_BYTE, false, nil, bootloader - 0x1FFFFFFFF, bootloader)
	local count = gg.getResultsCount()
	if count ~= 0 then
		r = gg.getResults(count)
		for k,v in ipairs(r) do
			v.address = v.address - 0x2
			v.value = 0
			v.flags = gg.TYPE_FLOAT
		end
		gg.setValues(r)
	end
	gg.setRanges(old_ranges)
end

function set_cosmetic_lock(b)
	if b then
		cosmetic_lock = on

		cur_cape = gg.getValues({
			{address = player + offsets.cape2_off, flags = gg.TYPE_DWORD}
		})[1].value
		cur_world1 = get_map()

		capeset(cur_cape, false)
		cape_bckp = nil
	else
		cosmetic_lock = off
		capeset(cur_cape, false)
	end
end

function propset(id, freeze)
	if freeze == nil then
		freeze = true
	end

	local n = gg.getValues({
		{address = player + offsets.props_off, flags = gg.TYPE_DWORD}
	})

	n[1].value = id
	n[1].freeze = freeze

	gg.addListItems(n)
	gg.setValues(n)
end

function propmenu()
	local plist = {}

	for i, v in ipairs(propsid) do
		table.insert(plist, v[2])
	end

	local pmenu = gg.choice(plist, nil, "prop:")

	if pmenu == nil then
		return
	else
		if prop_bckp == nil then
			prop_bckp = getadd(player + offsets.props_off, gg.TYPE_DWORD)
		end
		
		if pmenu == #propsid then
			propset(prop_bckp, false)
			prop_bckp = nil
		else
			propset(propsid[pmenu][1])
		end
	end
end

function capeset(id, freeze)
	if freeze == nil then
		freeze = true
	end

	local n = gg.getValues({
		{address = player + offsets.cape_off, flags = gg.TYPE_DWORD},
		{address = player + offsets.cape2_off, flags = gg.TYPE_DWORD}
	})

	for i, v in ipairs(n) do
		v.value = id
		v.freeze = freeze
	end

	if freeze then
		gg.addListItems(n)
	else
		gg.removeListItems(n)
	end

	gg.setValues(n)
end

function capemenu()
	local clist = {}

	for i, v in ipairs(capesid) do
		table.insert(clist, v[2])
	end

	local cmenu = gg.choice(clist, nil, "Capes:")

	if cmenu ~= nil then
		if cape_bckp == nil then
			cape_bckp = getadd(player + offsets.cape_off, gg.TYPE_DWORD)
		end

		if cmenu == #clist then
			capeset(cape_bckp, false)
			cape_bckp = nil
		else
			capeset(capesid[cmenu][1], true)
		end
	end
end

function nowind()
	xy = {}

	for i=0, 100 do
		xk = nentity + offsets.wind_off + (i * 0x100)

		if getadd(xk, gg.TYPE_DWORD) ~= 0 then
			for y = 1, 14 do
				table.insert(xy, {address = xk - (y * 0x4), flags = gg.TYPE_DWORD, value = 0})
			end
		end
	end

	gg.setValues(xy)
end

function clamp(n, a, b)
	if n < a then return a end
	if n > b then return b end
	return n
end

function getAction()
	actionmenu = gg.choice({
		"⬅️ Previous",
		"➡️ Next",
		"❌ END!",
		"🛑 ABORT!"
	}, nil, "choose:")

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

function get_next_map(map)
	local back = {}
	local next = {}
	local maps = {}
	local mps = {}

	for i, v in ipairs(crpoints) do
		if indexof(mps, v.map) == -1 then
			table.insert(mps, v.map)
			table.insert(maps, {name = v.name, map = v.map})
		end
	end

	if map == mps[1] then
		back = maps[#maps]
		next = maps[2]
   return {b = back, n = next}
	elseif map == mps[#mps] then
		back = maps[#maps - 1]
		next = maps[1]
    return {b = back, n = next}
	else
		for i, v in ipairs(maps) do
			if v.map == map then
				back = maps[i - 1]
				next = maps[i + 1]
	

			 return {b = back, n = next}

			end
		end
	end

	return nil
end

function PointsEnd(map)
	local n = get_next_map(map)
	local mmenu = {
		"⬅️|"..n.b.name,
		"➡️|"..n.n.name,
		"✔️| Listo!"
	}

	if n ~= nil then
		while true do
			gg.setVisible(false)
			action = gg.choice(mmenu, nil, "We are in: "..get_map_name().."\n (Teleport just for you)")
			
			if action == nil then
				while true do
					if gg.isVisible(true) then
						gg.setVisible(false)
						break
					end

					gg.sleep(500)
				end
			else
				break
			end
		end

		if action == #mmenu then
			gg.toast("Done!")
		elseif action == 1 then
			ChangeMapDoPoints(n.b.map)
		elseif action == 2 then
			ChangeMapDoPoints(n.n.map)
		end

	else
		gg.toast("Next map no found")
		return
	end
end

function gotomenu()
    local map = get_map()

    ppoints = make_positions(map)

    if ppoints ~= nil then
        mp_names = get_names(ppoints)
        place = gg.choice(mp_names, nil, "Where do you want to go?")

        if place == nil then
            return
        end

        pos = get_pos_by_name(ppoints, mp_names[place])
        setposit(pos.x, pos.y, pos.z)

        gg.toast(place)
    else
        gg.toast("there are no places to go here.")
    end
end

function ChangeMapDoPoints(map)
	local cur_map = get_map()
	change_map(map)

	while cur_map ~= map do
		gg.sleep(1000)
		cur_map = get_map()
	end

	gg.sleep(1000)

	while true do
		if gg.isVisible(true) then
			gg.setVisible(false)
			break
		end
		gg.sleep(500)
	end

	DoPoints(make_points_list(map))
end



function DoPoints(points, cr_mode, use_candle)
	local b = false
	local stopped = false

	if settings.useautoburn then
		if autoburn == off then
			toggle_autoburn(true)
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
		{address = coords.x, flags = gg.TYPE_FLOAT},
		{address = coords.y, flags = gg.TYPE_FLOAT},
		{address = coords.z, flags = gg.TYPE_FLOAT},
	})

	local i = 1
	local t = 0
	local st = 250
	local endt = 60000

	while i <= #points do
		gg.toast(tostring(i).." / "..#points)
	
		if use_candle then
			gg.setValues({{address = candle, flags = gg.TYPE_BYTE, value = 1}})
		end
	
		gg.setValues({
			{address = coords['x'], flags = gg.TYPE_FLOAT, value = points[i].x},
			{address = coords['y'], flags = gg.TYPE_FLOAT, value = points[i].y},
			{address = coords['z'], flags = gg.TYPE_FLOAT, value = points[i].z}
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
		toggle_autoburn(false)
	end

	if use_candle then
		gg.setValues({{address = candle, flags = gg.TYPE_BYTE, value = 0}})
	end


end

function settingsmenu()
	local smenu = gg.choice({
		"Distance breackwall: "..settings.wdistance,
		"Use Autoburn in AutoCandleRun: "..sign(settings.useautoburn)
	}, nil, "settings:")

	if smenu == nil then 
		return
	end

	if smenu == 1 then
		local wbd = gg.prompt({"Default distance: "..settings.wdistance}, {[1] = settings.wdistance}, {[1] = "number"})
		if wbd ~= nil then
			settings.wdistance = wbd[1]
		end

		gg.toast("Distance breackwall: "..settings.wdistance)
	elseif smenu == 2 then
		settings.useautoburn = not(settings.useautoburn)
		gg.toast("Use Autoburn in AutoCandleRun: "..sign(settings.useautoburn))
	end
end

function update()
	if cosmetic_lock == on then
		ccape2 = gg.getValues({
			{address = player + offsets.cape2_off, flags = gg.TYPE_DWORD}
		})[1].value

		if cur_cape ~= ccape2 then
			ccape = gg.getValues({
				{address = player + offsets.cape_off, flags = gg.TYPE_DWORD}
			})[1].value

			if ccape == ccape2 then
				wrld = get_map()
				if cur_world1 ~= wrld then
					capeset(cur_cape, false)
					cur_world1 = wrld
				end
			else
				capeset(ccape2, false)
				cur_cape = ccape2
			end
		end
	end
end

function getCords()
    local array = {};
    local bool;
    local map = get_map();
    for i, v in ipairs(crpoints) do
        if v.map == map then
            bool = true;
            table.insert(array, {v.x, v.y, v.z});
        end
    end
    return array, bool;
end
function wing_charge()
	charg = on
	chargwing[1].value = '4.5'
	gg.setValues(chargwing)
	gg.sleep(8000)
	gg.setValues(revertchargwing)
	charg = off
end

local quick = false

function toggleQuick()
    if quick then
        quick_results[1].value = 3.5
        quick = false
        gg.toast("Quick steps Off")
    else
        quick_results[1].value = 200
        quick = true
        gg.toast("Quick steps On")
    end

    gg.setValues(quick_results)
end



function show_location()
	values = gg.getValues({
		{address = coords['x'], flags = gg.TYPE_FLOAT},
		{address = coords['y'], flags = gg.TYPE_FLOAT},
		{address = coords['z'], flags = gg.TYPE_FLOAT},
	})

	crds = {
		x = tostring(values[1].value),
		y = tostring(values[2].value),
		z = tostring(values[3].value)
	}

	gg.choice({
		"X : "..crds['x'],
		"Y : "..crds['y'],
		"Z : "..crds['z']
	})
end

function AbsorbWings()
    local offset = nentity + offsets.wl_pos
    local values1 = {}
    local values2 = {}
    local count = 0

    for i = 0, 11 do
        ad = offset + i * 0x130 + 0xA8
        st = getadd(ad, gg.TYPE_DWORD)

        if st == 1 then
            count = count + 1
            table.insert(values1, {address = ad, value = 4, flags = gg.TYPE_DWORD})
            table.insert(values2, {address = ad, value = 8, flags = gg.TYPE_DWORD})
        end
    end

    gg.setValues(values1)
    gg.sleep(200)
    gg.setValues(values2)
    
    if count == 0 then
        gg.toast("Aqui no se encuentran alas")
    else
        gg.toast("Alas encontradas: "..count)
    end            
end
function getposit()
	local values = gg.getValues({
		{address = coords["z"], flags = gg.TYPE_FLOAT},
		{address = coords["y"], flags = gg.TYPE_FLOAT},
		{address = coords["x"], flags = gg.TYPE_FLOAT},
	})

	return {
		x = values[1].value,
		y = values[2].value,
		z = values[3].value
	}
end


function iap()

    gg.setRanges(gg.REGION_OTHER| gg.REGION_C_ALLOC)
	gg.searchNumber(':season', 1,false, gg.SIGN_EQUAL,0, -1)
	original_values = gg.getResults(30000, nil, nil, nil, nil, nil, nil, nil, nil) 
	gg.editAll(':global', 1)
	gg.clearResults()
    gg.setRanges(gg.REGION_OTHER| gg.REGION_C_ALLOC)
    gg.searchNumber(':global', 1,false,gg.SIGN_EQUAL,0, -1)
    original_values = gg.getResults(30000, nil, nil, nil, nil, nil, nil, nil, nil) 
    gg.editAll('0', 1)
    gg.clearResults()
	gg.toast("Check Shop")
end

i = 0

function UnlockSeason()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber("7037807", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
	gg.editAll("0", gg.TYPE_QWORD)
	gg.clearResults()
	gg.toast(" CLEAR QUEST ON ")
end

function rapidwings()
	local cords, bool = getwings();
    if bool then
        for i, v in ipairs(cords) do
			if gg.isVisible(true) then
				break;
			end
            gg.setValues({
            {
                address = coords.x,
                flags = gg.TYPE_FLOAT,
                value = v[3],
            },
            {
                address = coords.y,
                flags = gg.TYPE_FLOAT,
                value = v[2],
            },
            {
                address = coords.z,
                flags = gg.TYPE_FLOAT,
                value = v[1],
            },
        });
        gg.sleep(5500);
        end
    else
        return gg.toast("There are no routes here at the moment");
    end
end

function getwings()
    local array = {};
    local bool;
    local map = get_map();
    for i, v in ipairs(crwings) do
        if v.map == map then
            bool = true;
            table.insert(array, {v.x, v.y, v.z});
        end
    end
    return array, bool;
end


function UnlockSeason()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber("7037807", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
	gg.editAll("0", gg.TYPE_QWORD)
	gg.clearResults()
	gg.toast(" CLEAR QUEST ON ")
end

function MENU3() 
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
    gg.searchNumber(":com.tgc.sky.android.test.gold/0", gg.TYPE_BYTE)
    gg.getResults(5000)
    gg.editAll(":com.tgc.sky.android.test.gole/0", gg.TYPE_BYTE)
    gg.toast("Done")
    gg.clearResults()
end

function betaorange()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":SPASS", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_BYTE)
gg.toast("OPEN SHOP AND HAVE FUN")
end

function fireworks()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('32,481,138,503,150,965', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 1)

    if gg.getResultsCount() == 0 then
        gg.setRanges(gg.REGION_OTHER)
        gg.searchNumber('32,481,138,503,150,965', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
    end

    if gg.getResultsCount() == 1 then
        pl = gg.getResults(1)
        fw = pl[1].address + 0x8667C
    end

    fv(fw, 4, 999999)
end

function noselect()
    gg.toast("Nothing selected")
end

function rapidfarm()

    if settings.useautoburn then
		if autoburn == off then
			toggle_autoburn(true)
			b = true
		end
	end

    local cords, bool = getCords();
    if bool then
        for i, v in ipairs(cords) do
            if gg.isVisible(true) then
                break;
            end

            gg.setValues({
                {
                    address = coords.x,
                    flags = gg.TYPE_FLOAT,
                    value = v[1],
                },
                {
                    address = coords.y,
                    flags = gg.TYPE_FLOAT,
                    value = v[2],
                },
                {
                    address = coords.z,
                    flags = gg.TYPE_FLOAT,
                    value = v[3],
                },
            });

            gg.sleep(1000);
        end


    else
        return gg.toast("No hay rutas disponibles en este momento");
    end
end

function gv(a,f)
local t = {}
t[1] = {}
t[1].address = a
t[1].flags = f
local t = gg.getValues(t)
t = t[1].value
return t
end

function cv(a1,v1,a2,v2,a3,v3,f)
re = 0
local t = {}
t[1] = {}
t[1].address = a1
t[1].flags = f
t[2] = {}
t[2].address = a2
t[2].flags = f
t[3] = {}
t[3].address = a3
t[3].flags = f
local t = gg.getValues(t)
if t[1].value > v1 then
if t[2].value > v2 then
if t[3].value < v3 then
re = 1
end end end
if re == 1 then return true
else return false end
end

function sv(a,f,v)
local t = {}
t[1] = {}
t[1].address = a
t[1].flags = f
t[1].value = v
gg.setValues(t)
end

function fv(a,f,v)
local t = {}
t[1] = {}
t[1].address = a
t[1].flags = f
t[1].value = v
t[1].freeze = true
gg.addListItems(t)
end

function rv(a)
local t = {}
t[1] = {}
t[1].address = a
gg.removeListItems(t)
end

sh = Core1 + 0x83EB0
sh2 = Core1 + 0x83EB4

function setvalue(address, flags, value)
local tt = {}
tt[1] = {}
tt[1].address = address
tt[1].flags = flags
tt[1].value = value
gg.setValues(tt)
end

function frzvalue(address, flags, value)
local tt = {}
tt[1] = {}
tt[1].address = address
tt[1].flags = flags
tt[1].value = value
tt[1].freeze = true
gg.addListItems(tt)
end

function ufrzvalue(address, flags, value)
local tt = {}
tt[1] = {}
tt[1].address = address
tt[1].flags = flags
tt[1].value = value
tt[1].freeze = false
gg.addListItems(tt)
end

local startTime
local elapsedTime

function alternateGlow()
    local startTime = os.time()
    local interval = 10  -- 10 seconds
    local optionInterval = 0.5  -- 500 ms between options
    local glowOption = 1

    while os.time() - startTime <= interval do
        if gg.isVisible(true) then
            gg.setVisible(false)
        end

        if os.time() - startTime >= glowOption * optionInterval then
            if glowOption == 1 then
                frzvalue(sh, 16, 999)
                frzvalue(sh2, 16, 999)
                glow1 = sl
                glow2 = nsl
                glow3 = nsl
            elseif glowOption == 2 then
                frzvalue(sh, 16, 3.4e38)
                frzvalue(sh2, 16, 3.4e38)
                glow1 = nsl
                glow2 = sl
                glow3 = nsl
            end

            glowOption = (glowOption % 2) + 1
        end

        -- Add a delay of 500 ms
        gg.sleep(500)
    end

    -- Turn off glow after 10 seconds
    frzvalue(sh, 16, 0)
    frzvalue(sh2, 16, 0)
    glow1 = nsl
    glow2 = nsl
    glow3 = sl
    ufrzvalue(sh, 16, 0)
    ufrzvalue(sh2, 16, 0)
    setvalue(sh, 16, 0)
    setvalue(sh2, 16, 0)
end


function glow()
  while true do
    if gg.isVisible(true) then
      X = 1
      gg.setVisible(false)
    end
    if X == 1 then
      Neu = gg.choice({
        "Glow",
        "Glow Black",
        "Off",
        "Party",
        "Back"
      }, nil, "Glowing Body")

      if Neu == 1 then
        frzvalue(sh, 16, 999)
        frzvalue(sh2, 16, 999)
        glow1 = sl
        glow2 = nsl
        glow3 = nsl
        gg.toast("Glowing Body - Glow")
        frzvalue(sh, 16, 999)
        frzvalue(sh2, 16, 999)
      elseif Neu == 2 then
        frzvalue(sh, 16, 3.4e38)
        frzvalue(sh2, 16, 3.4e38)
        glow1 = nsl
        glow2 = sl
        glow3 = nsl
        gg.toast("Glowing Body - Glow Black")
        frzvalue(sh, 16, 3.4e38)
        frzvalue(sh2, 16, 3.4e38)
      elseif Neu == 3 then
        frzvalue(sh, 16, 0)
        frzvalue(sh2, 16, 0)
        glow1 = nsl
        glow2 = nsl
        glow3 = sl
        frzvalue(sh, 16, 0)
        frzvalue(sh2, 16, 0)
        gg.toast("Glowing Body - Off")
        ufrzvalue(sh, 16, 0)
        ufrzvalue(sh2, 16, 0)
        setvalue(sh, 16, 0)
        setvalue(sh2, 16, 0)
      elseif Neu == 4 then
        alternateGlow()
      elseif Neu == 5 then
        start()
      end
      X = -1
    end
  end
end

function addrjump(a,b) tem=gg.getValues({[1]={address=a+b,flags=32}})[1].value return tem end
local so=gg.getRangesList('libBootloader.so')[1].start
fps=addrjump(addrjump(so,0x1770270),0)+0x188
gg.addListItems({{address=fps ,flags = 16,name="fps"}})

function set_target_fps()
    local result = gg.prompt({'Enter the Target FPS:'},{''},{'number'})

    if result == nil then
        gg.toast("Cancelled. Target FPS not set.")
        return
    end

    gg.setValues({{address = Fps, value = result[1], flags = 16}})
    gg.toast("Target FPS set to " .. result[1])
end

so = gg.getRangesList("libBootloader.so")[1].start

gg.setVisible(false)

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("7020670180468457475", 32, false, 536870912, 0, -1, 1)
base = gg.getResults(1)[1].address
gg.clearResults()
gg.searchNumber("1;0;100::9", 16, false, 536870912, base - 0xFFFFF, base + 0xFFFFF, 3)
t = gg.getResults(1)
Ry = t[1].address - 0x4C
gg.clearResults()
if gg.getValuesRange(t)[1] == 'Ca' then
    gg.setRanges(gg.REGION_C_ALLOC)
else
    gg.setRanges(gg.REGION_OTHER)
end
gg.searchNumber(gv(Ry, 16) .. ";20~60::5", 16, false, 536870912, so, -1, 2)
Fps = gg.getResults(2)[2].address
gg.clearResults()

gg.addListItems({{address = Fps, flags = 16, name = "Fps"}})

function Frun()
	local cords, bool = FragmentsRun();
    if bool then
        for i, v in ipairs(cords) do
			if gg.isVisible(true) then
				break;
			end
            gg.setValues({
            {
                address = coords.x,
                flags = gg.TYPE_FLOAT,
                value = v[1],
            },
            {
                address = coords.y,
                flags = gg.TYPE_FLOAT,
                value = v[2],
            },
            {
                address = coords.z,
                flags = gg.TYPE_FLOAT,
                value = v[3],
            },
        });
        gg.sleep(600);
        end
    else
        return gg.toast("Go to coliseum");
    end
end

function FragmentsRun()
    local array = {};
    local bool;
    local map = get_map();
	
    for i, v in ipairs(FramentsRun) do
        if v.map == map then
            bool = true;
            table.insert(array, {v.x, v.y, v.z});
        end
    end
    return array, bool;
end


function Chats()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('2.74928501e11;-1.1289e-22~-1.1285e-22;0.00018336263;1.19210767e-7::21',16)
if gg.getResultsCount() == 4 then
chat = gg.getResults(4)[4].address
gg.setValues({{address=chat,flags=16,value=2.74878956e11}})
end
gg.clearResults()
end

function wingpower()
	pwr = gg.choice({
	  '[🪫] OFF',
	  '[🔋] soft',
	  '[💪] strong',
	  '[💪] strong extreme [💪]',
	  '[⬆️] explore new heights',
	  '[⬇️] Too high? Fly down',

	}, nil, 'WARNING, DON\'T TRAP YOURSELF')
	if pwr == nil then
	  noselect()
	else
		if pwr == 1 then
			wingpwr[3].value = 1 -- Restaurar el valor original
			gg.setValues(wingpwr)
			gg.toast('Wing power desactivado')
		elseif pwr == 2 then
			wingpwr[3].value = 2
			gg.setValues(wingpwr)
			gg.toast('Wing power activado')
		elseif pwr == 3 then
			wingpwr[3].value = 5
			gg.setValues(wingpwr)
			gg.toast('Wing power activado')
		elseif pwr == 4 then
			wingpwr[3].value = 20
			gg.setValues(wingpwr)
			gg.toast('Wing power activado')
		elseif pwr == 5 then
			wingpwr[3].value = 2000
			gg.setValues(wingpwr)
			gg.toast('Wing power activado')
		elseif pwr == 6 then
			wingpwr[3].value = -500
			gg.setValues(wingpwr)
			gg.toast('Wing power activado')
		end
	end
end


function start()
    while true do
        if gg.isVisible(true) then
            X = 1
            gg.setVisible(false)
        end
        if X == 1 then
            Neu = gg.choice({
                "[⬆️] Break wall:"..settings.wdistance,
                "[🫂] Farm With friends",
                "[🕯️] URF and Dailys",
                "[🌀] Go to",
                "[🪄] Player Mods ",
                "[🛠️] Tools!!",
                "[🗺️] Show location",
                "[⚙️] Settings",
                "[💲] Donate",
            }, nil, '========SKYSHOT========')
            if Neu == 1 then
                pmove(settings.wdistance)
            end
            if Neu == 2 then
                farmingmenu()
            end
            if Neu == 3 then
                automatics()
            end
            if Neu == 4 then
                gotomenu()
            end        
            if Neu == 5 then
                utilities()
            end
            if Neu == 6 then
                tools()
            end
            if Neu == 7 then
                show_location()
            end
            if Neu == 8 then
                settingsmenu()
            end
            if Neu == 9 then
                gg.toast(" Visit our discord server") 
            end
            X = -1
        end
    end
end

function farmingmenu()
  while true do
    if gg.isVisible(true) then
      X = 1
      gg.setVisible(false)
    end
    
    if X == 1 then
      local map = get_map()
      ppoints = make_positions(map)

      if ppoints ~= nil then
        mp_names = get_names(ppoints)
        local new_menu_order = {
          "[⬆️] Break wall:" .. settings.wdistance,
          "[🦸] Run",
          "[🏃] Run Manual",
          "[🕊️] Wings Run",
          "[💎] Coliseum Fragments",
          "=============Go To Menu==========="
        }

        for _, name in ipairs(mp_names) do
          table.insert(new_menu_order, name)
        end

        Neu = gg.choice(new_menu_order, nil, "Enjoy with friends : ")

        if Neu == nil then
          -- No hacer nada si no se selecciona ninguna opci贸n
        elseif Neu == 1 then  
          pmove(settings.wdistance) 
        elseif Neu == 2 then
          rapidfarm()
        elseif Neu == 3 then
          runmanual()
        elseif Neu == 4 then
          rapidwings()
        elseif Neu == 5 then
          Frun()
        elseif Neu == 6 then
          start()
          return
        else
          pos = get_pos_by_name(ppoints, new_menu_order[Neu])
          setposit(pos.x, pos.y, pos.z)
          
        end
        X = -1
      end
    end
  end
end


function runmanual()
        local map = get_map()
        local family = get_family_by_map(map)
        if family ~= nil then
          if gg.alert("Press the GG icon to move, let's go for candles in "..get_map_name().."?", "Sí", "Cancelar") == 1 then
            DoPoints(make_points_list(map))
          else
            return
          end
        else
          if map == "CandleSpace" then
            gg.toast("Estás en Casa. ¡Entra al portal primero!")
          else
            gg.toast("No podemos buscar velas en "..get_map_name())
          end
        end
end

function toggle_autoburn()
    if nentity_test then
        if autoburn == off then
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

            autoburn = on
        else
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

            autoburn = off
        end
    else
        gg.toast("Autoburn no se activó debido a un error interno.")
    end
end

function automatics()
  while true do
    if gg.isVisible(true) then
      X = 1
      gg.setVisible(false)
    end
    if X == 1 then
      Neu = gg.choice({
        "[⏩] Ultra Rapid Farm",
        "[📰] dailys missions",
        "[🔙] Back"
      }, nil, "Automatic Functions ")

      if Neu == 1 then
        autowax()
      end
      if Neu == 2 then
        autodaily()
      end
      if Neu == 3 then
        start()
      end
      X = -1
    end
  end
end


function tools()
  while true do
    if gg.isVisible(true) then
      X = 1
      gg.setVisible(false)
    end
    if X == 1 then
      Neu = gg.choice({
        "[💵] STORE LIVE",
        "[🔒] Bypass Beta",
        "[🕯️] Orange Candles beta",
        "[🔙] Back"
      }, nil, "Tools")

      if Neu == 1 then
        iap()
      end
      if Neu == 2 then
        MENU3()
      end
      if Neu == 3 then
        betaorange()
      end
      if Neu == 4 then
        start()
      end
      X = -1
    end
  end
end

function utilities()
  while true do
    if gg.isVisible(true) then
      X = 1
      gg.setVisible(false)
    end
    if X == 1 then
      Neu = gg.choice({
        "[🔥] Burning",
        "[💬] read chats",
        "[✨] Glow",
        "[🤤] Fps", 
        "[🦋] Wings power",
        "[👕] Unlock clothes",
        "[🎆] Fireworks unlimited",
        "[🔋] Full energy",
        "[🦸] Wing Level",
        "[👟] Quick steps",
        "[🔙] Back"
      }, nil, "Utilities hacks")

      if Neu == 1 then
        toggle_autoburn()
     elseif Neu == 2 then
        Chats()
     elseif Neu == 3 then
        glow()
      elseif Neu == 4 then
        set_target_fps()
      elseif Neu == 5 then
        wingpower()
      elseif Neu == 6 then
        unlockClothes()
      elseif Neu == 7 then
        fireworks()
      elseif Neu == 8 then
        toggleFullEnergy()
      elseif Neu == 9 then
        wingedlight()
      elseif Neu == 10 then
        toggleQuick()
      elseif Neu == 11 then
        start()
      end
      X = -1
    end
  end
end






gg.toast("SKYSHOT RETURNS!!")
gg.sleep(500)
gg.toast("thanks my friend Sui!!")

while true do
	if gg.isVisible(true) then
		gg.setVisible(false)
		start()
	end


	gg.sleep(500)
end