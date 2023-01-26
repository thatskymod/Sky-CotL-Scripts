--That dead sky open source by Kel
--Do you have some good functions or codes?
--Tell me discord ExMachina#5142



gg.toast('FuckChina Loaded')
ddd = "a21.09.05"
pshare = ''
umenu = true
fasthome = true
fastvalue = false
echanged = false
teleping = false
fastmax = 0
crset = {enable = false, level = 0, map = ''}
wrset = {enable = false, level = 0, map = ''}
spinset = {enable = false, rot = 0, val = 0, lby = true, speed = 20}
huiset = false
psettings = {
  crspeed=3,
  crdelay=1500,
  crabsorb=100,
  wrdelay=1100,
  warpdis=6,
  portalspeed=true,
  fasthome=true,
  nodamage=true,
  ggspeed=false,
  showmenu = true,
  smcrdelay = 1000,
  smwrdelay = 1000,
  portaldef = false,
  fhspeed = 100,
  cmimage = 1,
  aeleven = false,
  ufps = 30
  }
  
scriptv = {process ='com.tgc.sky.android',version=175117}
teleparr = {spec = false,follow = false,collect = false,enable = false,hide = false,arr = 1}
gameinfo = gg.getTargetInfo()
crarray = {}
wrarray = {}
rmarray = {}
px = 0.0
py = 0.0
pz = 0.0
mev = 0
andro = gg.ANDROID_SDK_INT
resettick = -1
magictick = -1
maxemote = ''
reached = ''

pbase = 0x00
prange = {a = 0,b = -1}
rbootloader = gg.getRangesList('libBootloader.so')[1].start
poffsets = {
  sival = -1096122630,
  ptoplayer = 0x1872A90,
  ptoentity = 0x1AEBDF0,
  ptopbase = 0x3DB2D8,
  ptonentity = 0xC8936C,
  ptonworld = 0x63BD0C,
  ptofps = 0x17D6648,
  ptocwings = 0x1767BD0,
  wlevel = 0x22400,
  positX = 0x1C968,
  positY = 0x1C96C,
  positZ = 0x1C970,
  bheight = 0x00,
  pose = 0x1FCC0,
  pwing = 0x223DC,
  ewing = 0x24018,
  eprop = 0x24034,
  famount = 0x25558,
  gesture = 0x2C4C4,
  magic = 0x2B788,
  bsize = 0x25494,
  uemote = -0x43D20,
  eflowers = 0xB266A8,
  pshout = 0x22DE0,
  pdamage = 0x2245C,
  wwings = 0x4E066C,
  wobjs = 0x8F88A4,
  wbtns = 0x992348,
  gohome = 0x23C18,
  elist = 0x138BD73,
  gspeed = 0x156150C,
  eused = 0x2B48C,
  vcandles = 0x501B44,
  gchat = 0x93F224,
  ucandle = 0x5953D0,
  fullmagic = 0x27B68,
  mymagic = 0x23A18,
  mportal = 0x17438,
  mcandles = 0x266F8,
  sglow = 0x21D00,
  wwind = 0x9DC4BC,
  pwalk = 0x122DA7C,
  cfrags = 0x91ABD0,
  gcamera = 0xF9086C,
  ecrabs = 0x5A49CC,
  uihook = 0x94143C,
  shoutscale = 0x255A8,
  daily = 0x1303A24,
  wingmap = 0x12CE41C,
  enode = 0x1397DC0,
  fastfly = 0x122523C
  }

allmagics = {}
sarray = {}
candles = {}
flowers = {}
nodes = {}
spirits = {}
emotelist = {}
myemotes = {}
eoffsets = {
  wforce = 0x00,
  jforce = 0x00,
  sspeed = 0x00,
  cspeed = 0x00,
  cloud = 0x00,
  graphic = 0x00,
  ground = 0x00,
  jump = 0x00,
  gravity = 0x00,
  slide = 0x00,
  world = 0x00,
  nworld = 0x00,
  nentity = 0x00,
  ncamera = 0x00,
  brighter = 0x00,
  gnode = 0x00,
  gframe = 0x00,
  gspirits = 0x00,
  pdesk = 0x00,
  glight = 0x00,
  wlight = 0x00
}
mid = {
  {'💫Small',1692428656,0},
  {'💫Samller',2142718166,0},
  {'💫Big',891098028,0},
  {'💫Bigger',-1879316162,0},
  {'💫Glow',1097748727,0},
  {'💫Recharge',1750685908,0},
  {'💫Floating',1860519737,0},
  {'💫Anti Dragon',1067647386,0},
  {'💫Anti Darkness',383062578,0},
  {'💫Anti rain',-1463943689,0},
  {'💫A lot of candlelight',-1727483534,0},
  {'💞Flight Blessing',-1362469224,0},
  {'💞Friendship Back to Back',1405645877,0},
  {'💞Friendship Bear Hug',1677246236,0},
  {'💞Friendship Warp',998754260,0},
  {'🙀Dark Crab Calling',1725047129,0},
  {'🙀Jellyfish Calling',-957441587,0},
  {'🙀Manta Calling',1814753890,0},
  {'🧸Lantern',1319710173,0},
  {'🧸Table',256924066,0},
  {'🧸Harp',-1001892262,0},
  {'🧸Swing',1064080243,0},
  {'🧸Seesaw',-2095749161,0},
  {'🧸Tea table',10058409,0},
  {'️🧸Transparent Umbrella',1167393926,0},
  {'👗Green Bud Cloak',2079599063,1},
  {'👗TGC Cloak',540856305,1},
  {'👗Ghost Bat Cloak',625581156,1},
  {'👗Spider Silk Cloak',930203946,1},
  {'👗Snowflake Cloak',-784831205,1},
  {'👗Christmas Cloak',1306675982,1},
  {'👗White bird cloak',-1623262339,1},
  {'👗petal cloak',-6043825,1},
  {'👗Lightseeker bulb',1375571404,1},
  {'👗Cloak of Spring', -445538750,1},
  {'👗Sakura Cloak',162066154,1},
  {'👗Ocean Cloak',329684861,1},
  {'👗Dream Season Red Velvet Cloak',-308941587,1},
  {'👗Dream Season Graduation Cloak',-1822337532,1},
  {'️👗Rainbow Cloak', -195929339,1},
  {'️👑Rainbow Flower', 2141511649,2},
  {'️👑Rainbow Tassel', -290700605,2},
  {'👑Pumpkin Hat',1046521292,2},
  {'👑Witche Hat',1983755432,2},
  {'👑Lion Dance Hat',2093744529,2},
 {'👑Double Maru Head',-2099997114,2},
 {'👑Felt Hat',-823266018,2},
 {'👑Sakura Hairstyle',373243257,2},
 {'👑Dream Season Hair',1059767859,2},
 {'🤡White Fox Mask', 784922793,2},
 {'🤡Red Rabbit Mask', 964659005,2},
 {'🤡Winter Mask with Sharp Mouth', -218615327,2},
 {'🤡Tauren Mask',-849020465,2},
 {'🤡Rose Mask',-938578505,2},
 {'🤡Spring Red Face Mask',-1636163586,2},
 {'🤡Dream Season Phoenix Mask',771982951,2},
 {'🤡Dream Season Ultimate Mask',144876107,2},
 {'🤡Antler',1909998088,2},
 {'🤡Christmas hat',-1409683913,2},
 {'🤡banquet bow tie',8361886,2},
 {'👑Orange headgear',-1616733323,2},
 {'🤡Ocean Necklace',-1938239955,2},
 {'️🌠turquoise tail',1318288330,0},
 {'️🌠black tail',-176902809,0},
 {'️🌠blue tail',-1951801352,0},
 {'️🌠Cyan tail',1918290563,0},
 {'️🌠Green tail',637646527,0},
 {'️🌠Purple pink tail',-1527316661,0},
 {'️🌠orange tail',1237283438,0},
 {'️🌠purple tail',470393304,0},
 {'️🌠purple tail',-1071076330,0},
 {'️🌠Red tail',-1304862813,0},
 {'️🌠Yellow tail',-1354381164,0},
 {'️🌠Rainbow trail',147016038,0},
 {'Fox',2237536272,0},
 {'Pants Sword',3799734077,0},
 {'Scarf Cape',2207305370,1},
 {'Asteroid Jacket',1402240423,1},
 {'🆕️Chair Wood',3136256372,0},
 {'🆕️Chair Cloth',472595010,0},
 {'🆕️Chair Pipe',2428135093,0},
{'🆕️Hair Pin',4123817368,0},
{'🆕️Brazier 2',160072902,0},
{'🆕️Summer Umbrella',2878211958,0},
{'🆕️Summer Hat',2052387583,2},
{'🆕️Recliner',2875484078,0},
{'🆕️Golden Cape',330655056,1},
{'🆕️Kizuna AI Call',2413103828,0},
{'🆕️Small rabit',-848739711,0},
{'🆕️Winter piano',-1202427550,0},
 {'❌none',0,0}
};
windwallset = {
     {"CandleSpace", 4726487308484830694},
   {"Dawn", 4767182666960336740 },
    {"Prairie_Village", 4885521378999697401},
    {"DayHubCave", 4769030533679547514},
    {"Rain", 4814944809953808321},
    {"RainForest", 4834051251148619776},
    {"RainShelter", 4810601017446974458},

    {"RainMid", 4829954002675894547},
    {"RainEnd", 4817725702471155712},
    {"Rain_BaseCamp", 4843677694493622950},
    {"Sunset", -4560560199779603680},
    {"Sunset_Citadel", 4902590410129506426},
    {"SunsetEnd", 4792210659019202290},
    {"Sunset_YetiPark", -4379302222571855137},
    {"SunsetVillage", 4648938001794681213},
    {"SunsetColosseum", 4909629393377870248},
    {"DuskStart", 4793244457638695424},
    {"Dusk", 4803651955820274913},
    {"DuskGraveyard", 4807836432909636834},
    {"DuskOasis", 4845558260964967524},
    {"Dusk_CrabField", 4794390915414850800},
    {"DuskMid", 4830500777766158336},
    {"DuskEnd", 4855161876522205184},
    {"CandleSpaceEnd", 32706758321},
    {"Orbit", 32706758321},
    {"NightDesert", 4756517339743666084},
    {"NightDesert", 4689256204097823239}
}

cworld = {
   {"[Home]CandleSpace", 'CandleSpace'},
   {"[Isle]Dawn", 'Dawn'},
   {"[Isle]DawnCave", 'DawnCave'},
   {"[Trial]Dawn_TrialsWater", 'Dawn_TrialsWater'},
   {"[Trial]Dawn_TrialsEarth", 'Dawn_TrialsEarth'},
   {"[Trial]Dawn_TrialsAir", 'Dawn_TrialsAir'},
   {"[Trial]Dawn_TrialsFire", 'Dawn_TrialsFire'},
    {"[Prairie]Prairie_ButterflyFields", 'Prairie_ButterflyFields'},
    {"[Prairie]Prairie_NestAndKeeper", 'Prairie_NestAndKeeper'},
    {"[Prairie]Prairie_Island", 'Prairie_Island'},
    {"[Prairie]Prairie_Cave", 'Prairie_Cave'},
    {"[Prairie]Prairie_Village", 'Prairie_Village'},
    {"[Prairie]DayHubCave", 'DayHubCave'},
    {"[Prairie]DayEnd", 'DayEnd'},
    {"[Forest]Rain", 'Rain'},
    {"[Forest]RainForest", 'RainForest'},
    {"[Forest]RainShelter", 'RainShelter'},
    {"[Forest]Rain_Cave", 'Rain_Cave'},
    {"[Forest]RainMid", 'RainMid'},
    {"[Forest]RainEnd", 'RainEnd'},
    {"[Forest]Rain_BaseCamp", 'Rain_BaseCamp'},
    {"[Valley]Sunset", 'Sunset'},
    {"[Valley]Sunset_Citadel", 'Sunset_Citadel'},
    {"[Valley]Sunset_FlyRace", 'Sunset_FlyRace'},
    {"[Valley]SunsetRace", 'SunsetRace'},
    {"[Valley]SunsetEnd", 'SunsetEnd'},
    {"[Valley]Sunset_YetiPark", 'Sunset_YetiPark'},
    {"[Valley]SunsetVillage", 'SunsetVillage'},
    {"[Valley]SunsetColosseum", 'SunsetColosseum'},
    {"[Valley]SunsetEnd2", 'SunsetEnd2'},
    {"[Desert]DuskStart", 'DuskStart'},
    {"[Desert]Dusk", 'Dusk'},
    {"[Desert]DuskGraveyard", 'DuskGraveyard'},
    {"[Desert]DuskOasis", 'DuskOasis'},
    {"[Desert]Dusk_CrabField", 'Dusk_CrabField'},
    {"[Desert]DuskMid", 'DuskMid'},
    {"[Desert]DuskEnd", 'DuskEnd'},
    {"[Library]Night", 'Night'},
    {"[Library]Night2", 'Night2'},
    {"[Library]NightArchive", 'NightArchive'},
    {"[New season]NightDesert", 'NightDesert'},
    {"[New season]Night Beach", 'NightDesert_Beach'},
    {"[New season]Jar cave", 'Night_JarCave'},
    {"[New season]Infinite desert", 'Night_InfiniteDesert'},
    {"[New season]Planet", 'NightDesert_Planets'},
    {"Office", 'TGCOffice'},
    {"Eden1", 'StormStart'},
    {"Eden2", 'Storm'},
    {"[Nintendo] Nintendo_CandleSpace", 'Nintendo_CandleSpace'},
    {"⚠️Eden sacrifice⚠️", 'StormEnd'},
    {"⚠️Eden rebirth1⚠️", 'OrbitMid'},
    {"⚠️Eden rebirth2⚠️", 'OrbitEnd'},
    {"⚠️Heaven⚠️", 'CandleSpaceEnd'},
    {"⚠️Credit⚠️", 'Credits'},
 }
 
 doors = {
   
 }

mslot = {
  'none',
  'none',
  'none',
  'none',
  'none',
  'none',
  'none',
  'none',
  'none'
}

spiritlist = {
  {414084241,"Pointing"},
   {3666569351,"No"},
   {4249009249,"Hurry up"},
   {1466879858,"Yawn"},
   {64338276,"Butterfly"},
   {2540775602,"Bird"},
   {1568825369,"Candle up"},
   {2851084244,"Waving"},
   {3063270590,"Laughing"},
   {1060667581,"Applause"},
   {3881128326,"Wiping sweat"},
   {4182042971,"Crying"},
   {419578801,"Confused"},
   {1156673674,"Kneel down"},
   {1464190897,"Hide and seek"},
   {2381086145,"Stomp"},
   {3576552037,"Shy"},
   {3930381583,"Cold"},
   {1728053750,"Whale"},
   {3307167098,"Anchor back"},
   {1942389483,"Bow"},
   {3809307521,"Backflip"},
   {2395108553,"Hold your hands"},
   {2859830090,"Cheers"},
   {416637648,"Handstand"},
   {3768849824,"Manta calling"},
   {1999438929,"Salute"},
   {4155738138,"Sneaky"},
   {2886532097,"Brave"},
   {1060292445,"Surprised"},
   {3630339793,"Faint"},
   {2159324587,"Look around"},
   {2797886853,"Floating"},
   {2041153668,"Magic"},
   {2017461200,"Ghost manta calling"},
   {3576140497,"Standing Posture"},
   {3594096657,"Pray"}
}

pid = {
  {57978849, "Windmill🏅"},
       {-677716449,"Purple Umbrella"},
       {-644161211,"Transparent Umbrella"},
       {-1593950895, "Lantern🏮"},
       {992885953, "bench 💺"},
       {-1444947170,"Christmas Bench💺"},
       {3580839943, "Swing ❤"},
       {3779226149, "Campfire 🔥"},
       {-1030495085, "Seesaw 🔨"},
       {3634028466, "Flower Umbrella🌂"},
       {2574095143, "Umbrella☔"},
       {3269660804, "Guitar🎻"},
       {2352004821,"Ukulele 🎸"},
       {-1382855507, "Pipa🎸"},
       {396560731, "Flute🎶"},
       {1237767078, "Pan flute 🎺"},
       {1889256860,"Piano🎹"},
       {3275797515,"White Piano🎼"},
       {3280753494,"Firework 🎆"},
       {4246711693, "Shaker"},
       {4196378836, "Daser"},
       {900914909, "Steel Drum"},
       {3499881140,"Big Quilt Drum"},
       {2003040587,"Small Double Drum"},
       {2671000446, "Harp"},
       {399957901, "Xiloph"},
       {1064146256, "Circle Harp"},
       {1021011859, "Horn 🎷"},
       {2186944737,"Ancestor Jar"},
       {2041015009,"Ancestral Kettle"},
       {776794517,"Ancestral Spear"},
       {-896102798,"Cornet"},
       {1079120316,"Bookcase"},
       {1994487329,"Hammock"},
       {-1762117817,"Torch"},
       {-1513173800,"Tent"},
       {-2094712299,"lantern?"},
       {1661108877,"Hoop"},
       {3314486409, "Tea table"},
       {351343999,'Rose'},
       {638976622,'Star lamp'},
       {-1723880395,'Fox'},
       {-994414187,'Birthday flag'},
       {1638144370,'Ocarina'},
       {-2058340788,'Yellow Umbrella'},
       {1480625729,'Double Chair'},
       {-1352265746,'Wooden Double chair'},
       {1192794220,'Pipe'},
       {9427151,'Beach ball'},
       {-1192675672,'Beach bed'},
       {1793801900,'Stone fire'},
       {313507026,'Mini stone fire'},
       {2035109393,"Nothing"}
}

cpoint = {
  pr1 = {
    {96.95172882080078, 203.9423370361328, 272.4224853515625}, 
    {66.72240447998047, 198.46482849121094, 362.03570556640625}, 
    {-19.729448318481445, 196.543701171875, 319.23468017578125}
    
  },
  pr2 = {
    {245.62545776367188, 95.5485610961914, 221.84703063964844},
    {51.063480377197266, 1.082053542137146, 331.52166748046875}, 
    {101.43079376220703, 28.913820266723633, 333.3686218261719}, 
    {130.28009033203125, 8.608041763305664, 284.0380859375}, 
    {88.30374145507812, 22.063486099243164, 291.025634765625}, 
    {128.39881896972656, 2.812415361404419, 407.2574157714844}, 
  },
  fr1 = {
    {8.200207710266113, 95.40240478515625, -216.9573974609375}, 
    {10.919458389282227, 97.72982025146484, -178.7023162841797}, 
    {22.434154510498047, 97.86457061767578, -142.3035888671875}
  },
  fr2 = {
    {33.83924102783203, 108.33233642578125, -62.17718505859375}, 
    {95.2885513305664, 112.5270004272461, -99.4018783569336}, 
    {93.52252960205078, 110.70069122314453, -52.32523727416992}, 
    {35.76015090942383, 109.07188415527344, -32.329010009765625}, 
    {62.64570999145508, 96.57581329345703, 2.5483744144439697}, 
    {84.50806427001953, 105.29931640625, 26.362586975097656}, 
    {48.2465934753418, 103.63257598876953, 12.391707420349121}
  },
  fr3 = {
    {2.839021682739258, 86.61508178710938, -46.81080627441406}, 
    {-9.491637229919434, 83.67889404296875, -13.139968872070312}, 
    {-5.647504806518555, 87.60029602050781, 13.881937026977539}, 
    {7.8890228271484375, 88.57525634765625, 88.58280944824219}
  },
  fr4 = {
    {63.966339111328125, 79.49282836914062, -284.2691955566406}, 
    {0.7326644062995911, 121.19961547851562, -367.0590515136719}, 
    {-45.982337951660156, 132.8380584716797, -198.25119018554688}
  },
  fr5 = {
    {17.38182258605957, 146.5189971923828, 15.60563850402832}, 
    {81.17194366455078, 141.08465576171875, 120.81361389160156}, 
    {47.68941879272461, 144.47244262695312, 65.90519714355469}, 
    {115.50276947021484, 164.77035522460938, 158.94093322753906}, 
    {-6.182575702667236, 136.4398956298828, 200.41183471679688}, 
    {26.954795837402344, 139.68226623535156, 224.25071716308594}, 
    {-10.194414138793945, 134.5517120361328, 152.5101318359375}, 
    {-81.54685974121094, 135.01173400878906, 223.6342315673828}, 
    {-58.3707275390625, 136.15643310546875, 179.88563537597656}, 
    {-56.886383056640625, 135.4618377685547, 218.7360382080078}, 
    {-20.806842803955078, 134.6183624267578, 207.5647430419922}, 
    {-21.810287475585938, 134.55897521972656, 261.7059020996094}, 
    {-73.90713500976562, 147.9859619140625, 159.4910430908203}
  },
  fr6 = {
    {11.568278312683105, 110.44747161865234, -11.819001197814941}, 
    {-14.350753784179688, 104.80479431152344, 0.6991578936576843}, 
    {-0.7532340884208679, 107.81478118896484, 68.78583526611328}, 
    {2.1829042434692383, 106.96797180175781, 90.21467590332031}
  },
  va1 = {
    {-30.466176986694336, 147.114501953125, -151.39772033691406}, 
    {-17.43215560913086, 154.89381408691406, -126.94638061523438}
  },
  de1 = {
    {83.19461822509766, 0.8931258916854858, 313.50323486328125}, 
    {-29.68844985961914, 1.954253911972046, 238.90013122558594}, 
    {-69.21147918701172, 8.101288795471191, 171.30227661132812}, 
    {1.350915551185608, 1.1179736852645874, 299.5738830566406}, 
    {-59.2152214050293, 4.482473850250244, 224.3214874267578}, 
    {-90.4620132446289, 2.6760103702545166, 326.61895751953125}, 
    {44.365570068359375, 0.6282044649124146, 228.56680297851562}
  },
  de2 = {
    {77.69338989257812, 92.25956726074219, 260.7549133300781}, 
    {43.791255950927734, 90.14799499511719, 229.9110870361328}, 
    {53.92071533203125, 99.21656036376953, 152.45957946777344}, 
    {63.40105438232422, 66.34053039550781, -13.661370277404785}, 
    {44.300437927246094, 94.3846435546875, 130.56182861328125}, 
    {10.916092872619629, 76.6250228881836, -133.59512329101562}, 
    {-4.162625789642334, 89.4147720336914, -135.28839111328125}, 
    {49.96483612060547, 69.7237777709961, -62.57978820800781}, 
    {81.1445083618164, 64.3047866821289, -107.21367645263672}, 
    {70.5404052734375, 69.17701721191406, -156.1171112060547}, 
    {32.799076080322266, 69.72303009033203, -217.41574096679688}
  },
  de3 = {
    {98.68771362304688, 115.79803466796875, 468.6960754394531}, 
    {68.91381072998047, 109.1550521850586, 490.6760559082031}, 
    {47.52444839477539, 108.5938720703125, 513.4615478515625}, 
    {80.95787811279297, 108.51556396484375, 509.0512390136719}, 
    {296.867431640625, 116.74671936035156, 526.1262817382812}, 
    {310.94061279296875, 120.83760833740234, 556.564453125}, 
    {297.31475830078125, 115.4719009399414, 348.1332702636719}
  },
  de4 = {
    {-140.23443603515625, 1.2785651683807373, 421.68963623046875}, 
    {-180.7798614501953, 3.973724365234375, 484.90673828125}, 
    {-194.31446838378906, 0.8118993043899536, 400.9505920410156}, 
    {-168.3665771484375, 2.0468192100524902, 371.8758239746094}, 
    {-274.99176025390625, 12.156349182128906, 424.8158264160156}, 
    {-292.43408203125, 31.235795974731445, 403.9704895019531}
  },
  de5 = {
    {-48.612648010253906, 104.93779754638672, -77.65389251708984}, 
    {-215.27764892578125, 136.3376922607422, -164.43309020996094}, 
    {-249.95486450195312, 101.41854858398438, -190.11062622070312}, 
    {-210.87734985351562, 90.00242614746094, -321.1565246582031}, 
    {-247.11279296875, 84.56513214111328, -372.64276123046875}, 
    {-276.9136047363281, 85.47688293457031, -344.01361083984375}
  }
}

posits = {
}

crlist = {
}

imgs = {
  'Clear',
  'Black',
  'White',
  'Blue',
  'Brown',
  'Cyan',
  'Gray',
  'Green',
  'Lime',
  'Magenta',
  'Orange',
  'Red',
  'Yellow',
  'TiktokLogo',
  'UIEye',
  ''
}

mlist = {}

hitarr = {
}

--That dead sky open source by Kel
--Do you have some good functions or codes?
--Tell me discord ExMachina#5142

function indexof(a,b)
  for k,v in ipairs(a) do 
    if v == b then
      return k 
    end
  end
  return -1
end

function compare2(a,b)
  return a.v < b.v
end

function getadd(add,flag)
  local uu = {}
  uu[1] = {
    address = add,
    flags = flag
  }
  yy = gg.getValues(uu)
  return tonumber(yy[1].value)
end

function gamespeed(val)
  if poffsets.gspeed == 0x00 or psettings.ggspeed then
    gg.setSpeed(val)
    else
    setadd(eoffsets.nentity - poffsets.gspeed,gg.TYPE_FLOAT,val,true)
  end
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
    if indexof(sarray,uu[1].address) == -1
    then
      gg.removeListItems(uu)
    else
      gg.addListItems(uu)
    end
  end
end

function isfreeze(add)
  mlist = gg.getListItems()
  for i, v in next, mlist do
    if mlist[i].address == add then
      --print(mlist[1])
      return mlist[i].freeze
    end
  end
  return false
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

function getpatch()
  API = gg.makeRequest('https://raw.githubusercontent.com/Kelrit402/TGC_Sky_is_dead/main/Sharelocate.lua').content
  if not API then
    gg.toast('patch failed')
  else
    pcall(load(API))
  end
end

function toint(n) 
  local s = tostring(n) 
  local i, j = s:find('%.') 
  if i then 
    return tonumber(s:sub(1, i-1)) 
  else 
    return n 
  end 
end

function tbltostr(tbl)
    local result = "{"
    for k, v in pairs(tbl) do
        if type(k) == "string" then
            result = result..k.."="
        end
        if type(v) == "table" then
            result = result..tbltostr(v)
        elseif type(v) == "boolean" then
            result = result..tostring(v)
        else
            result = result..v
        end
        result = result..","
    end
    if result ~= "" then
        result = result:sub(1, result:len()-1)
    end
    return result.."}"
end

function savedata()
  local data = io.open('/sdcard/fuck.cfg','w')
  data:write("psettings=" .. tbltostr(psettings))
  data:close()
end

function loadsave()
  local data = io.open('/sdcard/fuck.cfg','r')
  if data == nil then
    savedata()
    return;
  end
  local str = data:read('*a')
  data:close()
  if str == nil then 
    savedata()
  else
    ert = pcall(load(str))
    if not ert then
      savedata()
    end
    if psettings.fhspeed == nil then
      psettings.fhspeed = 100
    end
    if psettings.cmimage == nil then
      psettings.cmimage = 1
    end
    if psettings.aeleven == nil then
      psettings.aeleven = false
    end
    if psettings.ufps == nil then
      psettings.ufps = 30
    end
  end
end

function boolling(boo)
  if type(boo) ~= "boolean" then return; end
  if boo then
    return '✅'
    else
    return '❌'
  end
end

function toggle(boo)
  if boo then
    return false
  else
    return true
  end
end

function replace(text,bf,tg)
  retText = text
  for i=0, 10 do
  strFindStart, strFindEnd = string.find(retText, bf)
  if strFindStart ~= nil then
    local nStringCnt = string.len(retText)
    retText = string.sub(retText, 1, strFindStart-1) .. tg ..  string.sub(retText, strFindEnd+1, nStringCnt)
  end
  end
  return retText
end

function fbyte(str,ka,kb) 
  local K, F = ka, 16384 + kb 
  return (str:gsub('%x%x', function(c) 
    local L = K % 274877906944
    local H = (K - L) / 274877906944 
    local M = H % 128 
    c = tonumber(c, 16) 
    local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m 
    return string.char(m) 
  end )) 
end

function fpbase()
  pbase = getadd(rbootloader + poffsets.ptoplayer,gg.TYPE_QWORD) + poffsets.ptopbase
  eoffsets.nentity = getadd(rbootloader + poffsets.ptoentity,gg.TYPE_QWORD) + poffsets.ptonentity
  xtest1 = getadd(pbase,gg.TYPE_DWORD)
  xtest2 = getadd(eoffsets.nentity,gg.TYPE_DWORD)
  if xtest1 < 0 and getadd(pbase + 0x10,gg.TYPE_DWORD) ~= 371 then
  gg.alert('Cannot find player base!\n1. Game loading is not completed\n2. restart script at home\n3. restart the game')
  os.exit()
  end
  if xtest2 ~= 1099746509 then
    gg.alert('Cannot find world base!\nsomething is wrong!\nsome features may not work')
  end
  --methods for unexpected errors
  --07.30 no longer used
  --[[
  gg.clearResults()
  nn = {}
  mm = {}
  --gg.toast('failed! trying again...')
  gg.clearResults()
  gg.searchNumber('h 73 01 00 00 00 00 00 00', gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  gg.refineNumber(115)
  nn = gg.getResults(gg.getResultsCount())
  for k, v in ipairs(nn) do
      spnt1 = getadd(v.address - 0x10,gg.TYPE_DWORD)
      spnt3 = getadd(v.address + poffsets.pdamage - 0x14,gg.TYPE_DWORD)
      if spnt1 > 0 and spnt3 == spnt1 then
        pbase = v.address - 0x10
        return;
      end
  end
  
  --gg.toast('failed! trying again...')
  nn = {}
  mm = 0
  gg.clearResults()
  gg.searchNumber(':device_capabilities',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  nn=gg.getResults(1)
  if gg.getResultsCount() > 0 and getadd(nn[1].address - 0x58,gg.TYPE_DWORD) > 0 and getadd(nn[1].address - 0x58,gg.TYPE_DWORD) < 1000 then
    pbase = nn[1].address - 0x58
    return
  end
  ]]--
end

function vcheck()
  if tonumber(gameinfo.versionCode) < scriptv.version then
    gg.alert('[Error] Game version mismatch! \ngame : ' .. tonumber(gameinfo.versionCode) .. '\nscript : ' .. scriptv.version)
  end
  if tonumber(gameinfo.versionCode) > scriptv.version then
    gg.alert('[Error] Script needs update! \ngame : ' .. tonumber(gameinfo.versionCode) .. '\nscript : ' .. scriptv.version)
  end
  if gameinfo.packageName ~= scriptv.process then
    gg.alert('[Error] You selected wrong process!\ngame : ' .. gameinfo.packageName)
  end
end

function startup()
  gg.addListItems({{address=gg.getRangesList('libBootloader.so')[1].start,flags=32,name='bootloader'}})
  loadsave()
  vcheck()
  nn = 0
  gg.clearResults()
  gg.setVisible(false)
  mm = gg.getRangesList('[anon:libc_malloc]')
  prange.a = rbootloader - 0x1FFFFFFFF
  prange.b = rbootloader
  fpbase()
  nn = 'Player : ' .. tostring(itoh(pbase)) .. ' ' .. getadd(pbase,gg.TYPE_DWORD) .. 'D'
  print(nn)
  gg.clearResults()
  eoffsets.sspeed = getadd(rbootloader+poffsets.ptocwings,gg.TYPE_QWORD)
  eoffsets.cspeed = eoffsets.sspeed - 0x33CE4
  eoffsets.cloud = eoffsets.sspeed - 0x33CE8
  eoffsets.glight = eoffsets.sspeed - 0x1C134
  eoffsets.wforce = eoffsets.sspeed + 0x530
  eoffsets.jforce = eoffsets.sspeed + 0x638
  eoffsets.wlight = eoffsets.sspeed - 0x3FD08
  --[[
  ggrange(gg.REGION_C_DATA)
gg.searchNumber("3.5", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
if gg.getResultsCount() ~= 0 then
  eoffsets.sspeed = mm[1].address
  eoffsets.cspeed = mm[1].address - 0x33CE4
  eoffsets.cloud = mm[1].address - 0x33CE8
  eoffsets.glight = mm[1].address - 0x1C134
  eoffsets.wforce = mm[1].address + 0x530
  eoffsets.jforce = mm[1].address + 0x638
end
gg.clearResults()

--setadd(eoffsets.graphic,gg.TYPE_FLOAT,1,false)
--gg.addListItems(nn)

gg.searchNumber("-0.01499999966", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(2)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'ground',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.ground = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("0.8", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'slide',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.slide = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("4.90000009537F;4.59999990463F;0.89999997616F;0.81999999285F::13", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'jump accelerate',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.jump = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("-3.16081619263", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'gravity',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.gravity = sn5.address
end
--gg.addListItems(nn)
]]--
mm = {}
nn = {}
ggrange(gg.REGION_C_ALLOC)
gg.clearResults()
nn[1] = {
    name = 'wlevel',
    address = pbase,
    flags = gg.TYPE_DWORD,
    value = getadd(pbase,gg.TYPE_DWORD)
  }
gg.addListItems(nn)
nn = {}
nn[1] = {
  name = 'posit X',
  address = pbase + poffsets.positX,
  flags = gg.TYPE_FLOAT
}
nn[2] = {
  name = 'posit Y',
  address = pbase + poffsets.positY,
  flags = gg.TYPE_FLOAT
}
nn[3] = {
  name = 'posit Z',
  address = pbase + poffsets.positZ,
  flags = gg.TYPE_FLOAT
}
nn[4] = {
  name = 'pwing',
  address = pbase + poffsets.pwing,
  flags = gg.TYPE_FLOAT
}
nn[5] = {
  name = 'ewing',
  address = pbase + poffsets.ewing,
  flags = gg.TYPE_DWORD
}
nn[6] = {
  name = 'eprop',
  address = pbase + poffsets.eprop,
  flags = gg.TYPE_DWORD
}
nn[7] = {
  name = 'mgk1',
  address = pbase + poffsets.magic,
  flags = gg.TYPE_DWORD
}
nn[8] = {
  name = 'mgk trigger',
  address = pbase + poffsets.magic + 0xC00,
  flags = gg.TYPE_DWORD
}
nn[9] = {
  name = 'bsize',
  address = pbase + poffsets.bsize,
  flags = gg.TYPE_FLOAT
}
gg.addListItems(nn)
nn = {}
nn = gg.getListItems()
for i, v in next, nn do
  table.insert(sarray,nn[i].address)
end

--[[
--0x138AF2C
gg.clearResults()
nn = {}
mm = {}
gg.searchNumber(1487508559, gg.TYPE_DWORD,false,nil,prange.a,prange.b)
nn = gg.getResults(gg.getResultCount())
for i, v in ipairs(nn) do 
  mm[i] = {address = v.address +4,flags = 4}
end
mm = gg.getValues(mm)
for i, v in ipairs(mm) do
  if v.value == 11 then 
    eoffsets.world = v.address + 8
    --gg.addListItems({v})
    break 
  end
end
if eoffsets.world == 0x00 then gg.toast('err') end
gg.addListItems(gg.getValues({{address = eoffsets.world, flags = 4}}))
--ggrange(4)

gg.clearResults()
gg.searchNumber(1099746509,4,false,nil,prange.a,prange.b)
nn = 0x00
eoffsets.nentity = gg.getResults(gg.getResultCount())[1].address
]]--
poffsets.elist = eoffsets.nentity - poffsets.elist
nn = eoffsets.nentity + 0x1D4
for i=1,450 do
  table.insert(candles,{address=nn+(i-1)*0x1C0,flags=16,value=0,name='cc',freeze=false})
end
--B0700C
mm = {}
 for i=1,256 do
   mm[i]= {address = eoffsets.nentity + poffsets.eflowers + ((i-1) * 8),flags = 16}
 end
 flowers = gg.getValues(mm)
 
 eoffsets.nworld = getadd(eoffsets.nentity - poffsets.ptonworld,gg.TYPE_QWORD)
 
 nn = 0x00
 gg.clearResults()
 ggrange(gg.REGION_CODE_APP)
 gg.searchNumber('h 72 74 5F 63 68 61 74 5F 74 65 78 74 5F 65 6E 74 72 79 5F 70')
 if gg.getResultsCount() > 3 then
 nn = gg.getResults(5)[4].address
 gg.clearResults()
 setstr(nn,27,'by ExMachina')
 end
 ggrange(4)
 --[[
 nn = {}
 mm = {}
 gg.clearResults()
gg.searchNumber(334569360,4)
eoffsets.nworld = gg.getResults(gg.getResultCount())[1].address + 0x364
]]--
--camera 2000f;2000f;1
--gg.clearResults()
--gg.searchNumber(0.16699999571,16)
eoffsets.ncamera = eoffsets.nentity - poffsets.gcamera

--gg.addListItems(candles)
gg.clearResults()
if andro >= 30 then
    gg.toast('\n𝙉𝙤 𝙋𝙖𝙞𝙣 𝙔𝙚𝙨 𝙂𝙖𝙞𝙣\n' .. ddd .. ' [A11] by Kel')
    print('Android 11 detected')
  else
    gg.toast('\n𝙉𝙤 𝙋𝙖𝙞𝙣 𝙔𝙚𝙨 𝙂𝙖𝙞𝙣\n' .. ddd .. ' by Kel')
end
  
if psettings.nodamage then
  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,0,true)
end
if psettings.fasthome then
  fasthome = true
  else
  fasthome = false
end
eoffsets.gframe = getadd(rbootloader + poffsets.ptofps,gg.TYPE_QWORD) + 0x160
setadd(eoffsets.gframe,gg.TYPE_FLOAT,psettings.ufps,false)
getpatch()
print('𝙉𝙤 𝙋𝙖𝙞𝙣 𝙔𝙚𝙨 𝙂𝙖𝙞𝙣\n')
end

function itoh(int)
  return string.format("%x",int)
end

function debg()
  nn = ''
  nn = nn .. tostring(itoh(pbase)) .. ' -- wingcount\n'
  nn = nn .. tostring(itoh(pbase + poffsets.positX)) .. ' position X\n'
  nn = nn .. tostring(itoh(pbase + poffsets.bheight)) .. ' height offset\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pose)) .. ' pose 0 1 2 4\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pwing)) .. ' wing energy\n'
  nn = nn .. tostring(itoh(pbase + poffsets.ewing)) .. ' equipped wing\n'
  nn = nn .. tostring(itoh(pbase + poffsets.famount)) .. ' firework amount\n'
  nn = nn .. tostring(itoh(pbase + poffsets.gesture)) .. ' gesture state\n'
  nn = nn .. tostring(itoh(pbase + poffsets.magic)) .. ' magics\n'
  nn = nn .. tostring(itoh(pbase + poffsets.bsize)) .. ' body size\n'
  nn = nn .. tostring(itoh(pbase + poffsets.uemote)) .. ' emote upgrades\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pdamage)) .. ' player damage\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pshout)) .. ' player shout\n'
  nn = nn .. tostring(itoh(eoffsets.nentity + poffsets.eflowers)) .. ' entity flowers\n'
  nn = nn .. tostring(itoh(eoffsets.nentity + poffsets.wwings)) .. ' entity wings\n'
  nn = nn .. tostring(itoh(eoffsets.world)) .. ' respawn world\n'
  nn = nn .. tostring(itoh(eoffsets.nworld)) .. ' current world\n'
  nn = nn .. tostring(itoh(eoffsets.ncamera)) .. ' player camera\n'
  print(nn)
end

--math
function pmove(dis)
  local x,y,z = getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT), getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)
  local radin = getadd(pbase + poffsets.positZ + 0x18,gg.TYPE_FLOAT)
  
  local ax = dis * math.sin(radin)
  local az = dis * math.cos(radin)
  --gg.toast(radin)
  setposit(x + ax,y,z + az)
  gg.setVisible(false)
end

function upemote()
  setadd(pbase + poffsets.eused,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0x4,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0x8,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0xC,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0x10,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0x14,gg.TYPE_DWORD,0,true)
  
  getemote()
  
  epoint = pbase + poffsets.uemote
  revert = {}
  cemote = {}
  for i = 0,128 do 
    gd = epoint + (0x30 * i)
    if getadd(gd - 0x4,gg.TYPE_DWORD) ~= 0 then
      if getadd(gd,gg.TYPE_DWORD) > 3 then
        table.insert(cemote,addtostr(gd - 0x1F,12))
      end
      table.insert(revert,getadd(gd,gg.TYPE_DWORD))
      setadd(gd,gg.TYPE_DWORD,6,false)
      else
        break
    end
  end
  
  for k,v in pairs(emotelist) do
    for x,z in pairs(cemote) do
      if v[2] == 'emote' and v[1] == z then
        maxemote = z
      end
    end
  end
  
  if #maxemote == 0 then
    gg.toast('Failed! no completed emote!')
    for k,v in pairs(revert) do
      setadd(epoint + (0x30 * (k-1)),gg.TYPE_DWORD,v,false)
    end
    return
  end
  for k,v in pairs(emotelist) do
    if v[2] == 'emote' and v[3] ~= 'CandleSpace' then
      setstr(v[4],12,maxemote)
    end
  end
  gg.toast('done : ' .. maxemote)
end

function getcoord(boo)
  if boo then
    return {getadd(pbase + poffsets.positX,gg.TYPE_FLOAT)
    ,getadd(pbase + poffsets.positY,gg.TYPE_FLOAT)
    ,getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)}
  else
    return {x=getadd(pbase + poffsets.positX,gg.TYPE_FLOAT)
    ,y=getadd(pbase + poffsets.positY,gg.TYPE_FLOAT)
    ,z=getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)}
  end
end

function ggrange(vr)
  if psettings.aeleven then
    if vr ~= gg.REGION_CODE_APP then
      gg.setRanges(vr | gg.REGION_OTHER)
    else
      gg.setRanges(vr)
    end
  else
    gg.setRanges(vr)
  end
  --gg.setRanges(vr)
end

function echange(boo)
  getemote()
  gg.setVisible(false)
  if boo then
  for i,v in ipairs(emotelist) do
    if v[5] == 2089048596 then
      setadd(v[4]+0xD7-0x10,gg.TYPE_DWORD,1251050323,false)
      setstr(v[4]+0x60-0x18,24,'UiSocialPlayfight')
      hitarr[1] = v[4]
    end
    if v[5] == -1968658055 then
      setadd(v[4]+0xD7-0x10,gg.TYPE_DWORD,145501185,false)
      setstr(v[4]+0x60-0x18,24,'UiEmoteSocialBearHug')
      hitarr[2] = v[4]
    end
  end
  else
    setadd(hitarr[1]+0xD7-0x10,gg.TYPE_DWORD,2089048596,false)
    setstr(hitarr[1]+0x60-0x18,24,'UiEmoteAP10Bubbles')
      
    setadd(hitarr[2]+0xD7-0x10,gg.TYPE_DWORD,-1968658055,false)
    setstr(hitarr[2]+0x60-0x18,24,'UiEmoteAP08DeepBreath')
  end
end

function getemote()
  if #emotelist ~= 0 then
    return;
  end
  gg.toast('Scanning...')
  if poffsets.elist == 0x00 then
  gg.toast('Reading memory...')
  emotelist = {}
  gg.setVisible(false)
  gg.clearResults()
  ggrange(4)
  gg.searchNumber('h 00 00 00 00 0C 73 6B 79 6B 69 64 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0A 76 6F 69 63 65 00 00 00 00 00 00 00 00 00 00',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  gg.refineNumber(115)
  if gg.getResultCount() == 0 then
    gg.toast('fail!')
    return;
  end
  poffsets.elist = gg.getResults(1)[1].address
  end
  emotelist = {}
  for i = 0, 128 do
    xd = poffsets.elist + (0xF0 * i)
    if getadd(xd,gg.TYPE_BYTE) < 1 then
      break
    end
    
    cd1 = addtostr(xd,12)
    cd2 = addtostr(xd + 0x18,12)
    cd3 = addtostr(xd + 0x30,24)
    cd4 = getadd(xd + 0xD7 - 0x10,gg.TYPE_DWORD)
    cd5 = addtostr(xd + 0x60 - 0x18,24)
    table.insert(emotelist,{cd1,cd2,cd3,xd,cd4,cd5})
  end
  epoint = pbase + poffsets.uemote
  for i = 0,128 do 
    gd = epoint + (0x30 * i)
    if getadd(gd - 0x4,gg.TYPE_DWORD) ~= 0 then
      table.insert(myemotes,{addtostr(gd - 0x1F,12),getadd(gd + 0x28,gg.TYPE_DWORD),gd - 0x28})
      else
        break
    end
  end
  --print(emotelist)
  gg.toast('found : ' .. #emotelist .. ' emotes')
end

function chemote()
  getemote()
  xb1 = {}
  xb2 = {}
  for k,v in pairs(myemotes) do
    table.insert(xb1,v[1])
  end
  for k,v in pairs(emotelist) do
    if v[2] == 'emote' then
      table.insert(xb2,v[1])
    else
      table.insert(xb2,'[❌] ' .. v[1])
    end
    
  end
  x=gg.choice(xb1,nil,'Your emote')
  q=gg.choice(xb2,nil,'Set emote to')
  if x ~= nil and q ~= nil then
    if myemotes[x] == nil or emotelist[q] == nil then
      gg.toast('error!')
    else
      setadd(myemotes[x][3],gg.TYPE_DWORD,emotelist[q][5],false)
      setadd(myemotes[x][3] - 0xc,gg.TYPE_DWORD,5,false)
      gg.toast(myemotes[x][1] .. ' → ' .. emotelist[q][1])
    end
  end
end

function schemote()
  getemote()
  xb1 = {}
  for k,v in pairs(emotelist) do
    table.insert(xb1,v[1])
  end
  x=gg.choice(xb1,nil,'Target anim')
  q=gg.choice(xb1,nil,'Set anim to')
  if x ~= nil and q ~= nil then
    if myemotes[x] == nil or emotelist[q] == nil then
      gg.toast('error!')
    else
      
      setadd(emotelist[x][4] + 0xD7,gg.TYPE_DWORD,emotelist[q][5],false)
      gg.toast(emotelist[x][1] .. ' → ' .. emotelist[q][1])
    end
  end
end

function absflower()
  gg.setVisible(false)
  tmp = {}
  tup = {}
  kj = 0
  mposit = getcoord(true)
  for i = 0,150 do
    jj = eoffsets.nentity + poffsets.wobjs + i*0x210
    if getadd(jj + 0xC,gg.TYPE_FLOAT) == 1 then
    kj = kj + 1
    for j = 0, 2 do
      table.insert(tmp,{address = jj + j * 4,flags = gg.TYPE_FLOAT, value = mposit[j + 1]})
    end
    end
    if getadd(jj + 0xC + 0x70,gg.TYPE_FLOAT) > 0 then
    for j = 0, 2 do
      --table.insert(tup,{address = jj + 0x70 + (j * 4),flags = gg.TYPE_FLOAT, value = mposit[j + 1]}) 
    end
    end
    --gg.addListItems(tmp[i])
  end
  gg.setValues(tmp)
  gg.sleep(100)
  gg.setValues(tup)
  gg.toast('done : ' .. kj)
end


function abslight()
  ---1,309,381,888
  nn = 0
  for i = 1,12 do
    nn = getadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD)
    if nn == 1 then
      setadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD,4,false)
    end
    
  end
  gg.sleep(200)
  for i = 1,12 do
    setadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD,8,false)
  end
end

function absorb()
  gg.setVisible(false)
  abslight()
  for i,v in pairs(candles) do
    v.value = 1.0
  end
  for i,v in pairs(flowers) do
    v.value = 0.0
  end
  gg.setValues(candles)
  gg.setValues(flowers)
  
  gg.clearResults()
  ggrange(4)
  --gg.searchNumber('-842203136',4,false,nil,eoffsets.nentity,pbase)
  gg.searchNumber('h 00 00 60 40 00 00 00 00 00 00 80 BF 00 00 CD CD',gg.TYPE_BYTE,false,nil,eoffsets.nentity,pbase)
  gg.refineNumber(-128)
  nn = {}
  mm = gg.getResults(gg.getResultCount())
  local tmp={}
  --vx,vy,vz = getadd(pbase+poffsets.positX,gg.TYPE_FLOAT),getadd(pbase+poffsets.positY,gg.TYPE_FLOAT),getadd(pbase+poffsets.positZ,gg.TYPE_FLOAT)
  for i,v in pairs(mm) do
    --table.insert(nn,{address = v.address - 0x6A,flags = gg.TYPE_FLOAT, value = vx})
    --table.insert(nn,{address = v.address - 0x6A+0x4,flags = gg.TYPE_FLOAT, value = vy})
    --table.insert(nn,{address = v.address - 0x6A+0x8,flags = gg.TYPE_FLOAT, value = vz})
    table.insert(nn,{address = v.address - 0xA,flags = gg.TYPE_FLOAT, value = 99999})
  end
  gg.setValues(nn)
  --gg.addListItems(nn)
  gg.clearResults()
end

function absspirits()
  ExMach = 0xFCD0
  xde = {}
  mpos = getcoord(true)
  for i = 0, 40 do
    xda = pbase + 0xAB438 + (i * ExMach)
    if getadd(xda-0x18,gg.TYPE_DWORD) ~= 0 and getadd(xda,gg.TYPE_FLOAT) ~= 0 then
      table.insert(xde,{address=xda,flags=gg.TYPE_FLOAT,value=mpos[1],freeze=true})
      table.insert(xde,{address=xda+(0x4),flags=gg.TYPE_FLOAT,value=mpos[2],freeze=true})
      table.insert(xde,{address=xda+(0x8),flags=gg.TYPE_FLOAT,value=mpos[3],freeze=true})
      end
  end
  gg.setValues(xde)
end

function portallegacy(str)
  if eoffsets.world == 0x00 then
    gg.clearResults()
    ggrange(4)
    gg.searchNumber(1487508559, gg.TYPE_DWORD,false,nil,eoffsets.nentity,pbase)
    if gg.getResultsCount() ~= 0 then
      nba = gg.getResults(gg.getResultsCount())
      for w,c in ipairs(nba) do
      	if getadd(c.address+0x4,gg.TYPE_DWORD) == 11 then
      	  eoffsets.world = c.address + 0xC
      	  break
      	end
      end
    else
    gg.toast('fail!')
    return;
    end
  end
  gg.setVisible(false)
  hh = gg.getSpeed()
  setstr(eoffsets.world,24,str)
  gg.sleep(100)
  mm = 0
  mm = getadd(pbase,4)
  setadd(pbase,4,0,false)
  gamespeed(10)
  gg.sleep(500)
  setadd(pbase,4,mm,false)
  gamespeed(100)
  gg.sleep(1500)
  gamespeed(hh)
  gg.sleep(1000)
  setstr(eoffsets.world,24,'CandleSpace')
  setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14.0,false)
end

function portal(str)
  if psettings.portaldef then
    portallegacy(str)
    return;
  end
  gg.setVisible(false)
  xr1 = 0
  xr2 = 0
  xar = {}
  xtr = eoffsets.nentity - poffsets.mportal
  mgc = getcoord(true)
  setstr(xtr + 0x36D0,24,str)
  setstr(xtr + 0x36F0,28,imgs[psettings.cmimage])
  
  setadd(xtr + 0x372C,gg.TYPE_DWORD,string.len(str),false)
  xar = {
    --{address = xtr + 0x372C,flags=gg.TYPE_DWORD,value=11},
    {address = xtr - 0x34,flags=gg.TYPE_QWORD,value=49},
    {address = xtr - 0x30,flags=gg.TYPE_DWORD,value=0},
    {address = xtr - 0x7C,flags=gg.TYPE_FLOAT,value=80000},
    {address = xtr - 0x90,flags=gg.TYPE_FLOAT,value=80000},
    {address = xtr - 0xA4,flags=gg.TYPE_FLOAT,value=80000},
    {address = xtr - 0x2C,flags=gg.TYPE_DWORD,value=28},
    {address = xtr - 0x24,flags=gg.TYPE_QWORD,value=xtr + 0x36D0},
    {address = xtr + 0x372C,flags = gg.TYPE_DWORD,value = string.len(str)},
    {address = xtr - 0x1C,flags=gg.TYPE_DWORD,value=49},
    {address = xtr - 0x18,flags=gg.TYPE_DWORD,value=0},
    {address = xtr - 0x14,flags=gg.TYPE_DWORD,value=10},
    {address = xtr - 0x10,flags=gg.TYPE_DWORD,value=0},
    {address = xtr - 0xC,flags=gg.TYPE_QWORD,value=xtr+0x36F0},
    --{address = xtr - 0x74,flags = gg.TYPE_FLOAT,value = mgc[1]},
    --{address = xtr - 0x74 + 0x4,flags = gg.TYPE_FLOAT,value = mgc[2]},
    --{address = xtr - 0x74 + 0x8,flags = gg.TYPE_FLOAT,value = mgc[3]},
    {address = xtr,flags = gg.TYPE_DWORD,value = 1}
  }
  gg.setValues(xar)
  --setadd(xtr + 0x372C,gg.TYPE_DWORD,string.len(str),false)
  
  --setadd(xtr,gg.TYPE_DWORD,1,false)
  if psettings.portalspeed then
    gamespeed(8)
    gg.sleep(1000)
    gamespeed(1)
  else
    gg.sleep(1000)
  end
end

function teleb()
  a = {}
  b = {}
  for i,v in pairs(pworld) do
    table.insert(a,v[1])
  end
  c=gg.choice(a,nil,getmap())
  if x == nil then return; end
  for i,v in pairs(pworld[c]) do
    if type(v) == 'table' then
    table.insert(b,v[2])
    end
  end
  d=gg.choice(b,nil,getmap())
  if d == nil then return; end
  d = d + 1
  setposit(pworld[c][d][1][1],pworld[c][d][1][2],pworld[c][d][1][3])
  gg.setVisible(false)
end

function getmap()
  nn = ''
  for i = 0, 24 do
    mm = getadd(eoffsets.nworld + i,gg.TYPE_BYTE)
    if mm == 0 then
      break
    end
    nn = nn .. string.char(mm)
  end
  
  return nn
end

function pmagic(arr,id,sil)
  --if id == 0 then mreset(); return; end
  nn = {}
  tgt = pbase + (poffsets.magic + (0x30 * (arr-1)))
  if id == -1 or id == -2 then
    mm = {}
    for i,v in ipairs(mid) do
      if v[3] == id * -1 then
        table.insert(mm,v[2])
      end
    end
    setadd(tgt,gg.TYPE_DWORD,mm[math.random(1,#mm)],false)
  else
    setadd(tgt,gg.TYPE_DWORD,id,false)
  end
  if id ~= 0 then
  setadd(tgt + 0x8,gg.TYPE_DWORD,2139095040,false)
  --[[
  setadd(tgt + 0x8,gg.TYPE_DWORD,1629255046,false)
  setadd(tgt + 0x10,gg.TYPE_DWORD,1629253046,false)
  setadd(tgt + 0x18,gg.TYPE_DWORD,1358535875,false)
  setadd(tgt + 0x1C,gg.TYPE_DWORD,-398117947,false)
  setadd(tgt + 0x20,gg.TYPE_DWORD,-1848272760,false)
  setadd(tgt + 0x24,gg.TYPE_DWORD,1993010466,false)
  ]]--
  setadd(tgt + 0x28,gg.TYPE_DWORD,sil,false)
  else
    setadd(tgt + 0x8,gg.TYPE_DWORD,0,false)
    setadd(tgt + 0x28,gg.TYPE_DWORD,0,false)
  end
  setadd(pbase + poffsets.magic + 0xC00,gg.TYPE_DWORD,12,true)
  --gg.toast(poffsets.magic + 0xC00)
  setadd(tgt + 0x28,gg.TYPE_DWORD,sil,false)
end

function setposit(mx,my,mz)
  jh = {
    {
      address = pbase + poffsets.positX,
      flags = gg.TYPE_FLOAT,
      value = mx
    },
    {
      address = pbase + poffsets.positY,
      flags = gg.TYPE_FLOAT,
      value = my
    },
    {
      address = pbase + poffsets.positZ,
      flags = gg.TYPE_FLOAT,
      value = mz
    }
  }
  gg.setValues(jh)
end

function getpos()
  pmg = getcoord(true)
 px = pmg[1]
 py = pmg[2]
 pz = pmg[3]
--print(px,py,pz)
gg.toast(tostring(px) .. " / " .. tostring(py) .. " / " .. tostring(pz))
end

function viscandle(bool)
  xv = {}
  for i = 0,128 do
    if getadd(eoffsets.nentity + poffsets.vcandles + (0x70 * i) - 0x4,gg.TYPE_DWORD) ~= 0 then
      if bool then
        table.insert(xv,{address = eoffsets.nentity + poffsets.vcandles + (0x70 * i),flags = gg.TYPE_DWORD,value = 28673})
        else
        table.insert(xv,{address = eoffsets.nentity + poffsets.vcandles + (0x70 * i),flags = gg.TYPE_DWORD,value = 0})
      end
      
    else
      break;
    end
  end
  --gg.toast(#xv)
  gg.setValues(xv)
end

function noclip()
gg.clearResults()
gg.setVisible(false)
gg.searchNumber('1F;0~~0;65,537D::9', gg.TYPE_FLOAT,false,nil,prange.a,prange.b)
gg.refineNumber('1.0', gg.TYPE_FLOAT)
if gg.getResultsCount() == 0 then 
  gg.toast('failed!')
  return;
end
bb = gg.getResults(gg.getResultsCount())
  for i,c in pairs(bb) do
    ee = {}
    ee[1] = {address = c.address, flags = c.flags, value = 0}
    ee[2] = {address = c.address - 0x4, flags = c.flags, value = 0}
    ee[3] = {address = c.address - 0xC, flags = c.flags, value = 0}
    ee[4] = {address = c.address - 0x10, flags = c.flags, value = 0}
    gg.setValues(ee)
  end
end

function inputstr()
    input=gg.prompt(
      {''},
      {[1]=''},
    	{[1]='text'})
    return input[1]
end

function inputnum(def)
    input=gg.prompt({'Default : ' .. def}
    	, 	{[1]=def}
    	, 	{[1]='number'})
    	if input==nil then 	
    	    return def
    	else
    	    return input[1]
    	end
end

function setstr(add,range,str)
  nn = gg.bytes(str)
  hv = {}
  if #nn < range then
    mm = range - #nn
    for i = 1, mm do
      table.insert(nn,0)
    end
  end
  for i = 1, range do
    table.insert(hv,{address = add + (i - 1),flags = gg.TYPE_BYTE,value = nn[i]})
    --setadd(add + (i - 1),gg.TYPE_BYTE,nn[i],false)
  end
  gg.setValues(hv)
end

function changehit()
  --2089048596
  --1251050323
  gg.setVisible(false)
  gg.clearResults()
  if hitarr[1].value == 0 then
  gg.searchNumber('1251050323',gg.TYPE_DWORD,false,nil,prange.a,prange.b)
  ResultCount=gg.getResultCount()
    if ResultCount~=0 then
      hitarr=gg.getResults(ResultCount)
    else
      gg.toast('failed')
      return
    end
  end
  
  
  if hitarr[1].value ~= 2089048596 then
    for i, v in next, hitarr do
      hitarr[i].value = 2089048596
    end
    gg.toast('bubbles → hit 👊 ')
  else
    for i, v in next, hitarr do
      hitarr[i].value = 1251050323
    end
    gg.toast('hit 👊 → bubbles')
  end
  gg.setValues(hitarr)
  --gg.clearResults()
end

function startrace(ty)
  if ty == 1 then
    setposit(166.247,1187,397.849)
    setadd(pbase+poffsets.pose,gg.TYPE_DWORD,2,false)
    else
    setposit(156.288,935.1,662.21)
    setadd(pbase+poffsets.pose,gg.TYPE_DWORD,2,false)
  end
  --[[
  {map='Sunset_FlyRace'$$name='sit1'$$x=166.2477569580078$$y=1186.892578125$$z=397.8493957519531}$$
{map='SunsetRace'$$name='sit2'$$x=156.28892517089844$$y=935.0137329101562$$z=662.2101440429688}$$

  
  setadd(eoffsets.nentity + poffsets.rrace,gg.TYPE_DWORD,1,true)
  rcs = 0
  for i=0,50 do
    gg.sleep(200)
    if getadd(eoffsets.nentity + poffsets.rrace+0x1F0,gg.TYPE_DWORD) > 0 then
      return true
    end
    rcs = i
  end
  if rcs == 50 then
    setadd(eoffsets.nentity + poffsets.rrace,gg.TYPE_DWORD,1,false)
    return false
  end
  ]]--
end

function dorace()
  gg.toast('Starting race...')
  if getmap() == 'Sunset_FlyRace' then
    startrace(1)
    else
    startrace(2)
  end
    absflower()
    absorb()
    
    gamespeed(psettings.crspeed*3)
    gg.sleep(psettings.crdelay)
    for i = 0,10 do
      if getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD) ~= 0 then
        setadd(eoffsets.nentity + poffsets.cfrags,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD),false)
        break;
      end
      gg.sleep(psettings.crdelay)
    end
    gamespeed(psettings.crspeed)
    portal('SunsetEnd')
    gg.sleep(psettings.crdelay)
    abslight()
    for i = 0,10 do
      gg.sleep(psettings.crdelay)
      if getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD) ~= 0 then
        setadd(eoffsets.nentity + poffsets.cfrags,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD),false)
        break;
      end
    end
    portal('SunsetColosseum')
    gg.sleep(psettings.crdelay)
    gg.sleep(psettings.crdelay)
    absflower()
    for i = 0,10 do
      if getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD) ~= 0 then
        setadd(eoffsets.nentity + poffsets.cfrags,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD),false)
        break;
      end
      gg.sleep(psettings.crdelay)
    end
    gamespeed(psettings.crspeed*5)
    absorb()
    for i = 0,10 do
      gg.sleep(psettings.crdelay)
      if getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD) ~= 0 then
        setadd(eoffsets.nentity + poffsets.cfrags,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD),false)
        break;
      end
    end
    gg.sleep(psettings.crdelay)
  gamespeed(psettings.crspeed)
end

function espam()
  if getadd(pbase + poffsets.magic,gg.TYPE_DWORD) == 0 then 
    pmagic(1,1750685908,0)
  end
  adr = pbase + poffsets.magic + 0x28
  --gg.toast(tostring(isfreeze(adr)))
  if isfreeze(adr) then
    setadd(adr,gg.TYPE_DWORD,0,false)
  else
    setadd(adr,gg.TYPE_DWORD,0,true)
  end
end

function mtrigger()
  if crset.enable then
    if mev == 1 then
    if getadd(pbase + poffsets.pshout,gg.TYPE_FLOAT) < 0.6 then
      if crset.level >= #crarray then
      crset.level = #crarray - 1
    end
    crset.level = crset.level + 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
      setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
    end
  end
  if mev == 2 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 2 then
      if crset.level >= #crarray then
      crset.level = #crarray - 1
    end
    crset.level = crset.level + 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
  if mev == 3 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 1 then
      if crset.level >= #crarray then
      crset.level = #crarray - 1
    end
    crset.level = crset.level + 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
    else
  if mev == 1 then
    if getadd(pbase + poffsets.pshout,gg.TYPE_FLOAT) < 0.6 then
      pmove(psettings.warpdis)
      setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
    end
  end
  if mev == 2 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 2 then
      pmove(psettings.warpdis)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
  if mev == 3 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 1 then
      pmove(psettings.warpdis)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
  end
end

function htrigger()
  if fastvalue then
    fastmax = fastmax + 1
    if getadd(pbase + poffsets.gohome,gg.TYPE_FLOAT) == 1 or fastmax > 25 then
      gamespeed(1)
      fastvalue = false
      fastmax = 0
      setadd(pbase + poffsets.gohome,gg.TYPE_FLOAT,1,false)
    end
  else
    if getadd(pbase + poffsets.gohome,gg.TYPE_FLOAT) ~= 1 then
      fastmax = 0
      gamespeed(psettings.fhspeed)
      fastvalue = true
    end
  end
  
end

function teleplayers()
  vh = gg.choice({
    '⏩Teleport to players',
    '🚸Collect players',
    '🏃Follow players',
    '👁Spectate players',
    '🤝Take players hands',
    '🚷Hide all players',
    '💕Unlock friendly nodes',
    '🔄Reset friendly nodes'
  },nil,'')
  if vh == 1 then
    vsr = {}
    vsw = {}
    table.insert(vsr,'Nearest')
    table.insert(vsr,'Farthest')
    for i = 1, 7 do
      ght=pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(ght,gg.TYPE_FLOAT) == 0 then
        table.insert(vsr,'Empty')
      else
        ap = {x=getadd(ght,gg.TYPE_FLOAT),y=getadd(ght+0x4,gg.TYPE_FLOAT),z=getadd(ght+0x8,gg.TYPE_FLOAT)}
        bp = getcoord(false)
        dist = (math.floor(calc3d(bp,ap)*100)/100)
        table.insert(vsw,{v=dist,a=i})
        table.insert(vsr,'['..i..'] wings : '..toint(getadd(ght + 0x5A98,gg.TYPE_FLOAT))..' distance : '..dist)
      end
    end
    nra = gg.choice(vsr,nil,'')
    if nra == nil then return; end
    if #vsw ~= 0 then
      table.sort(vsw,compare2)
      if nra == 1 then
        nra = vsw[1].a
      elseif nra == 2 then
        nra = vsw[#vsw].a
      else
        nra = nra - 2
      end
    else
      nra = nra - 2
    end
    exma = pbase + poffsets.positX + (nra * 0xFDC0)
    elkhan = {getadd(exma,gg.TYPE_FLOAT),getadd(exma + 0x4,gg.TYPE_FLOAT),getadd(exma + 0x8,gg.TYPE_FLOAT)}
    if elkhan[1] ~= 0 and elkhan[2] ~= 0 then
      setposit(elkhan[1],elkhan[2],elkhan[3])
      else
      gg.toast('player is not exist')
    end
    gg.setVisible(false)
  end
  if vh == 2 then
    teleparr.colllect = true
    teleparr.enable = true
    gg.setVisible(false)
    xde = {}
    mpos = getcoord(true)
    for i=1, 7 do
      xda = pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(xda,gg.TYPE_FLOAT) ~= 0 then
        table.insert(xde,{address=xda,flags=gg.TYPE_FLOAT,value=mpos[1] + i/2 - 1.5,freeze=true})
        table.insert(xde,{address=xda+(0x4),flags=gg.TYPE_FLOAT,value=mpos[2],freeze=true})
        table.insert(xde,{address=xda+(0x8),flags=gg.TYPE_FLOAT,value=mpos[3],freeze=true})
      end
    end
    if #xde ~= 0 then
      gg.setValues(xde)
      gg.addListItems(xde)
    end
    return;
  end
  if vh == 3 then
    vsr = {}
    vsw = {}
    table.insert(vsr,'Nearest')
    table.insert(vsr,'Farthest')
    for i = 1, 7 do
      ght=pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(ght,gg.TYPE_FLOAT) == 0 then
        table.insert(vsr,'Empty')
      else
        ap = {x=getadd(ght,gg.TYPE_FLOAT),y=getadd(ght+0x4,gg.TYPE_FLOAT),z=getadd(ght+0x8,gg.TYPE_FLOAT)}
        bp = getcoord(false)
        dist = (math.floor(calc3d(bp,ap)*100)/100)
        table.insert(vsw,{v=dist,a=i})
        table.insert(vsr,'['..i..'] wings : '..toint(getadd(ght + 0x5A98,gg.TYPE_FLOAT))..' distance : '..dist)
      end
    end
    nra = gg.choice(vsr,nil,'')
    if nra == nil then return; end
    if #vsw ~= 0 then
      table.sort(vsw,compare2)
      if nra == 1 then
        nra = vsw[1].a
      elseif nra == 2 then
        nra = vsw[#vsw].a
      else
        nra = nra - 2
      end
    else
      nra = nra - 2
    end
    exma = pbase + poffsets.positX + (nra * 0xFDC0)
    elkhan = {getadd(exma,gg.TYPE_FLOAT),getadd(exma + 0x4,gg.TYPE_FLOAT),getadd(exma + 0x8,gg.TYPE_FLOAT)}
    if elkhan[1] ~= 0 and elkhan[2] ~= 0 then
      teleparr.follow = true
      teleparr.enable = true
      teleparr.arr = nra
      else
      gg.toast('player is not exist')
    end
    gg.setVisible(false)
  end
  if vh == 4 then
    if hcamera() then
      else
      gg.toast('camera hook failed!')
      return;
    end
      
    vsr = {}
    vsw = {}
    table.insert(vsr,'Nearest')
    table.insert(vsr,'Farthest')
    for i = 1, 7 do
      ght=pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(ght,gg.TYPE_FLOAT) == 0 then
        table.insert(vsr,'Empty')
      else
        ap = {x=getadd(ght,gg.TYPE_FLOAT),y=getadd(ght+0x4,gg.TYPE_FLOAT),z=getadd(ght+0x8,gg.TYPE_FLOAT)}
        bp = getcoord(false)
        dist = (math.floor(calc3d(bp,ap)*100)/100)
        table.insert(vsw,{v=dist,a=i})
        table.insert(vsr,'['..i..'] wings : '..toint(getadd(ght + 0x5A98,gg.TYPE_FLOAT))..' distance : '..dist)
      end
    end
    nra = gg.choice(vsr,nil,'')
    if nra == nil then return; end
    if #vsw ~= 0 then
      table.sort(vsw,compare2)
      if nra == 1 then
        nra = vsw[1].a
      elseif nra == 2 then
        nra = vsw[#vsw].a
      else
        nra = nra - 2
      end
    else
      nra = nra - 2
    end
    exma = pbase + poffsets.positX + (nra * 0xFDC0)
    elkhan = {getadd(exma,gg.TYPE_FLOAT),getadd(exma + 0x4,gg.TYPE_FLOAT),getadd(exma + 0x8,gg.TYPE_FLOAT)}
    if elkhan[1] ~= 0 and elkhan[2] ~= 0 then
      teleparr.spec = true
      teleparr.enable = true
      teleparr.arr = nra
      else
      gg.toast('player is not exist')
    end
    gg.setVisible(false)
  end
  if vh == 5 then
    --Taran and Tosta will copy this
    vsr = {}
    vsw = {}
    table.insert(vsr,'Nearest')
    table.insert(vsr,'Farthest')
    for i = 1, 7 do
      ght=pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(ght,gg.TYPE_FLOAT) == 0 then
        table.insert(vsr,'Empty')
      else
        ap = {x=getadd(ght,gg.TYPE_FLOAT),y=getadd(ght+0x4,gg.TYPE_FLOAT),z=getadd(ght+0x8,gg.TYPE_FLOAT)}
        bp = getcoord(false)
        dist = (math.floor(calc3d(bp,ap)*100)/100)
        table.insert(vsw,{v=dist,a=i})
        table.insert(vsr,'['..i..'] wings : '..toint(getadd(ght + 0x5A98,gg.TYPE_FLOAT))..' distance : '..dist)
      end
    end
    nra = gg.choice(vsr,nil,'')
    if nra == nil then return; end
    if #vsw ~= 0 then
      table.sort(vsw,compare2)
      if nra == 1 then
        nra = vsw[1].a
      elseif nra == 2 then
        nra = vsw[#vsw].a
      else
        nra = nra - 2
      end
    else
      nra = nra - 2
    end
    gg.setVisible(false)
    exma = pbase + poffsets.positX + (nra * 0xFDC0)
    elkhan = {getadd(exma+0xEB78,gg.TYPE_DWORD),getadd(exma + 0xEB7C,gg.TYPE_DWORD)}
    if elkhan[1] ~= 0 and elkhan[2] ~= 0 then
      setadd(pbase+0x1AF08+0x18,gg.TYPE_DWORD,elkhan[1],false)
      setadd(pbase+0x1AF08+0x30,gg.TYPE_DWORD,elkhan[1],false)
      setadd(pbase+0x1AF08+0x48,gg.TYPE_DWORD,elkhan[2],false)
      setadd(pbase+0x1AF08+0x10,gg.TYPE_QWORD,exma+0x5B90,false)
      setadd(pbase+0x1AF08+0x28,gg.TYPE_QWORD,exma+0x5B90,false)
      setadd(pbase+0x1AF08,gg.TYPE_DWORD,getadd(pbase+0x1AF08,gg.TYPE_DWORD)+1,false)
      else
      gg.toast('Failed!')
    end
  end
  if vh == 6 then
    teleparr.enable = true
    teleparr.hide = true
    for i = 1, 7 do
      setadd(pbase + poffsets.positY + (i * 0xFDC0),gg.TYPE_FLOAT,-999,true)
    end
    gg.setVisible(false)
  end
  if vh == 7 then
    gg.setVisible(false)
    getfriendnode()
    srd = {}
    for k,v in ipairs(nodes) do
      table.insert(srd,{address = v[2] - 0x14,flags = gg.TYPE_DWORD,value = 0})
    end
    gg.setValues(srd)
    gg.toast('done')
  end
  if vh == 8 then
    gg.setVisible(false)
    resetfriendnode()
  end
end

function hcamera()
    if eoffsets.ncamera == 0x00 then
      --camera 2000f;2000f;1
      gg.setVisible(false)
      gg.clearResults()
      gg.searchNumber('h 00 00 FA 44 00 00 FA 44 00 00 80 3F',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
      if gg.getResultCount() == 0 then return false end
      
      eoffsets.ncamera = gg.getResults(1)[1].address + 0xB0
    gg.clearResults()
    end
    return true
end

--IQ10 Auto farm cus i'm lazy
function wingfarm(aa,bb)
  nyn = ''
  for i = aa, bb do
    nyn = getmap()
    portal(cworld[i][2])
    gg.sleep(psettings.wrdelay)
    for w = 0,10 do
      gg.sleep(psettings.wrdelay)
      if nyn ~= getmap() then
        gg.sleep(psettings.wrdelay)
        break;
      end
    end
    abslight()
    gg.sleep(psettings.wrdelay * 0.4)
  end
  gg.toast('done')
end

function candlefarm(aa,bb)
  nyn = ''
  myn = getadd(pbase + poffsets.mcandles,gg.TYPE_DWORD)
  myb = getadd(pbase + poffsets.mcandles + 0xC,gg.TYPE_DWORD)
  setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,true)
  gamespeed(psettings.crspeed)
  for i,v in pairs(candles) do
    v.value = 1.0
    v.freeze = true
  end
  gg.setValues(candles)
  gg.addListItems(candles)
  for i,v in pairs(flowers) do
    v.value = 0
    v.freeze = true
  end
  gg.setValues(flowers)
  gg.addListItems(flowers)
  
  for i = aa, bb do
    nyn = getmap()
    ntn = {6974}
    if cworld[i][2]~='SunsetEnd' and cworld[i][2]~='SunsetColosseum' then
    portal(cworld[i][2])
    --gg.sleep(psettings.crdelay)
    for w = 0,10 do
      gg.sleep(psettings.crdelay)
      if nyn ~= getmap() then
        gg.sleep(psettings.crdelay)
        break;
      end
    end
    gamespeed(psettings.crspeed)
    nyn = getmap()
    if nyn == 'Prairie_Village' then
      ntn = cpoint.pr1
    elseif nyn == 'Prairie_Island' then
      ntn = cpoint.pr2
    elseif nyn == 'Rain' then
      ntn = cpoint.fr1
    elseif nyn == 'RainForest' then
      ntn = cpoint.fr2
    elseif nyn == 'RainShelter' then
      ntn = cpoint.fr3
    elseif nyn == 'Rain_Cave' then
      ntn = cpoint.fr4
    elseif nyn == 'RainMid' then
      ntn = cpoint.fr5
    elseif nyn == 'RainEnd' then
      ntn = cpoint.fr6
    elseif nyn == 'SunsetEnd2' then
      ntn = cpoint.va1
    elseif nyn == 'Dusk' then
      ntn = cpoint.de1
    elseif nyn == 'DuskGraveyard' then
      ntn = cpoint.de2
    elseif nyn == 'DuskOasis' then
      ntn = cpoint.de3
    elseif nyn == 'Dusk_CrabField' then
      ntn = cpoint.de4
    elseif nyn == 'DuskMid' then
      ntn = cpoint.de5
    elseif nyn == 'Sunset_FlyRace' or nyn == 'SunsetRace' then
      dorace()
    end
    viscandle(true)
    if ntn[1] == 6974 then
      absorb()
      gg.sleep(psettings.crabsorb)
      else
      for k,c in pairs(ntn) do
        setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14,true)
        if nyn ~= getmap() then
          portal(nyn)
          gg.sleep(psettings.crdelay)
        end
        
        setposit(c[1],c[2],c[3])
        absorb()
        gg.sleep(psettings.crabsorb)
      end
    end
    end
  end
  myn = getadd(pbase + poffsets.mcandles,gg.TYPE_DWORD) - myn
  myb = myn + getadd(pbase + poffsets.mcandles + 0xC,gg.TYPE_DWORD) - myb
  gamespeed(1)
  --gg.toast('Collected ' .. toint(math.floor(myb/150)) .. ' candles(' .. myb .. ' points)')
  gg.toast('done')
  setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
  gg.removeListItems(candles)
  gg.removeListItems(flowers)
end

function doorpeek(boo)
  dpoint = eoffsets.nentity - poffsets.mportal
  vf = {}
  if boo then
    gg.setVisible(false)
    for i = 0, 15 do
      if getadd(dpoint + (0xE0 * i) - 0x4,gg.TYPE_DWORD) == 0 then
      break;
      end
      for y = 1,13 do
        table.insert(vf,{address=dpoint+(0xE0*i)-(0x4*y),flags=gg.TYPE_DWORD,value=0})
      end
      gg.setValues(vf)
      nowind()
    end
    
    return;
  end
  vf = {}
  mf = {}
  for i = 0, 15 do
    if getadd(dpoint + (0xE0 * i) - 0x4,gg.TYPE_DWORD) == 0 then
      break;
    end
    if getadd(dpoint + (0xE0 * i),gg.TYPE_DWORD) == 1 then
      if getadd(dpoint + (0xE0 * i) - 0x34,gg.TYPE_DWORD) == 49 then
        table.insert(vf,addtostr(getadd(dpoint + (0xE0 * i) - 0x34 + 0x10,gg.TYPE_QWORD),24))
        else
        table.insert(vf,addtostr(dpoint + (0xE0 * i) - 0x33,24))
      end
      table.insert(mf,{x=getadd(dpoint + (0xE0 * i) - 0x74,gg.TYPE_FLOAT),y=getadd(dpoint + (0xE0 * i) - 0x74+0x4,gg.TYPE_FLOAT),z=getadd(dpoint + (0xE0 * i) - 0x74+0x8,gg.TYPE_FLOAT)})
    end
  end 
  hf = gg.choice(vf,nil,'')
  if hf == nil then return; end
  setposit(mf[hf].x,mf[hf].y,mf[hf].z)
end

function getmagics()
  gg.toast('Scanning...')
  xcv = pbase - poffsets.fullmagic
  for i = 0, 512 do
   xbv = xcv + (0x80 * i)
   if getadd(xbv + 0x8,gg.TYPE_DWORD) == 0  and getadd(xbv,gg.TYPE_DWORD) == 0 then
     
     break;
   end
   xse1 = addtostr(xbv - 0x17,20)
   xse2 = getadd(xbv-0x20,gg.TYPE_DWORD)
   xse3 = getadd(xbv,gg.TYPE_DWORD)
   if #xse1 < 1 then
     xse1 = addtostr(xbv + 0x13,20)
   end
   table.insert(allmagics,{xse1,xse2,xse3})
  end
end

function modmagic(ty) 
  if ty == 1 then 
    gg.setVisible(false) 
    for i = 0, 99 do 
      if getadd(pbase - poffsets.mymagic + (0x18 * i),gg.TYPE_DWORD) == 0 and getadd(pbase - poffsets.mymagic + (0x18 * i) + 0x10,gg.TYPE_DWORD) < 1 then 
        break 
      end 
    setadd(pbase - poffsets.mymagic + (0x18 * i) + 0x10,gg.TYPE_DWORD,999,false) 
    end 
    gg.toast('done') 
    return; 
  end 
  if ty == 2 then 
    mine = {} 
    madd = {} 
    aname = {} 
    if #allmagics == 0 then 
      getmagics() 
    end 
    for i = 0, 110 do 
      xco = getadd(pbase - poffsets.mymagic + (0x18 * i),gg.TYPE_DWORD) 
      xcu = pbase - poffsets.mymagic + (0x18 * i) 
      if xco == 0 and getadd(xcu + 0x10,gg.TYPE_DWORD) < 1 then 
        break 
      end 
      for k,v in ipairs(allmagics) do 
        if v[2] == xco then 
          table.insert(mine,v[1])
          table.insert(madd,xcu) 
        end 
      end 
    end 
    for k,v in ipairs(allmagics) do 
      table.insert(aname,v[1]) 
    end 
    mxb = gg.choice(mine,nil,'select your magic') 
    if mxb == nil then 
      return; 
    end 
    mxc = gg.choice(aname,nil,'select what do you want') 
    if mxc == nil then 
      return; 
    end 
    setadd(madd[mxb],gg.TYPE_DWORD,allmagics[mxc][2],false) 
  end
end

function ovrdaily()
  owval = inputnum(1)
  ftarget = eoffsets.nentity - poffsets.daily
  ftbl = {}
  for i = 0, 512 do
    vc1 = getadd(ftarget + (0x50*i),gg.TYPE_QWORD)
    if vc1 < 1 then break; end
    table.insert(ftbl,{address = ftarget + (0x50*i) + 0x8,flags = gg.TYPE_DWORD,value = owval})
    table.insert(ftbl,{address = ftarget + (0x50*i) + 0xC,flags = gg.TYPE_FLOAT,value = 1})
  end
  gg.setValues(ftbl)
  gg.toast('done')
end

function dumpdaily()
  ftarget = eoffsets.nentity - poffsets.daily
  fstr = ''
  for i = 0, 512 do
    vc1 = getadd(ftarget + (0x50*i),gg.TYPE_QWORD)
    if vc1 < 1 then break; end
    fstr = fstr .. addtostr(vc1,38) .. '/' .. getadd(ftarget + (0x50*i) + 0x8,gg.TYPE_DWORD) .. '/' .. getadd(ftarget + (0x50*i) + 0xC,gg.TYPE_FLOAT) .. '\n'
  end
  gg.copyText(fstr)
end

function magicmenu()
  gf = gg.choice({'Do spell','Do spell no effects','Modify my spell','Unlimited spells temporary', 'Random spells','Remove all spells'},nil,'')
  if gf == nil then return; end
  if gf == 1 or gf == 2 then
    y={}
    for i, v in ipairs(mid) do
      table.insert(y,mid[i][1])
    end
    table.insert(y,'Manual')
    x=gg.choice(y,nil,'select spell')
    for i = 0,9 do
      xa = getadd(pbase + (poffsets.magic + (0x30 * i)),gg.TYPE_DWORD)
      for h,d in ipairs(mid) do
        if xa == d[2] then
          mslot[i+1] = d[1]
        end
      end
    end
    t=gg.choice(mslot,nil,'select slot')
    if (x ~= nil and t ~= nil) then
      gg.setVisible(false)
      if x == #y then
        jas = inputnum(0)
        mslot[t] = jas
        pmagic(t,jas,gf-1)
      else
        mslot[t] = mid[x][1]
        pmagic(t,mid[x][2],gf-1)
      end
      return;
    end
  end
  if gf == 3 then
    modmagic(2)
  end
  if gf == 4 then
    modmagic(1)
  end
  if gf == 5 then
    pmagic(7,-1,1)
    pmagic(6,-2,1)
  end
  if gf == 6 then
    gg.setVisible(false)
    for i=1,9 do
      pmagic(i,0,1)
    end
  end
  gg.setVisible(false)
end

function dumpmagic()
  if #allmagics == 0 then
    getmagics()
  end
  
xstr = ''
 xcv = pbase - poffsets.fullmagic
 for k,v in ipairs(allmagics) do
   xstr = xstr .. 'name : ' .. v[1] .. '\nvalue : ' .. v[2] .. '\nvalue2 : ' .. v[3] .. '\n'
 end
 gg.copyText(xstr)
end

function dumpdata()
  xstr = ''
  gg.clearResults()
  ggrange(4)
  gg.searchNumber('h 00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F AF 52 E3 CD')
  gg.refineNumber(-81)
  if gg.getResultsCount() == 0 then
   gg.toast('fail!')
   return;
  end
 xcv = gg.getResults(1)[1].address
 for i = 0, 512 do
   xbv = xcv + (0x6D0 * i)
   if getadd(xbv,gg.TYPE_DWORD) == 0 then 
     break;
   end
   xstr = xstr .. 'name : ' .. addtostr(xbv + 0x5B,24) .. '\ntype : ' .. addtostr(xbv + 0x329,24) .. '\nvalue : ' .. getadd(xbv,gg.TYPE_DWORD) .. '\n'
 end
 gg.copyText(xstr)
end

function searchgl()
  gg.clearResults()
  ggrange(4)
  gg.setVisible(false)
  gg.searchNumber(':glow_15',nil,false,nil,prange.a,prange.b)
  if gg.getResultsCount() == 0 then
   gg.toast('fail!')
  else
  eoffsets.brighter=gg.getResults(1)[1].address + 0x1F
  end
end

function collectcrab(uy)
  frz = true
  eval = {}
  rpoint = eoffsets.nentity - poffsets.ecrabs
  mpoint = getcoord(true)
  if uy == 0 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    --eposit = {getadd(rpoint + (0xC80*i),gg.TYPE_FLOAT),getadd(rpoint + (0xC80*i)+0x4,gg.TYPE_FLOAT),getadd(rpoint + (0xC80*i)+0x8,gg.TYPE_FLOAT)}
    table.insert(eval,{address=rpoint + (0xC80*i),flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='crabX'})
    table.insert(eval,{address=rpoint + (0xC80*i)+0x4,flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='crabY'})
    table.insert(eval,{address=rpoint + (0xC80*i)+0x8,flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='crabZ'})
    end
if #eval == 0 then return; end
  --gg.setValues(eval)
  if isfreeze(rpoint) then
    gg.removeListItems(eval)
    gg.toast('off')
    else
    gg.addListItems(eval)
    gg.toast('on')
  end
  return;
  end
  if uy == 1 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    --setadd(pbase + poffsets.pcrabs,gg.TYPE_QWORD,rpoint-0x38,false)
    setadd(rpoint + (0xC80*i)+0xC80,gg.TYPE_DWORD,41249,false)
    setadd(rpoint + (0xC80*i)+0x5AC-0x4,gg.TYPE_DWORD,41249,false)
    end
    for i=0,50 do
      
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    --setadd(pbase + poffsets.pcrabs,gg.TYPE_QWORD,0,false)
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,0,false)
    end
    return;
  end
  if uy == 2 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,41249,true)
    setadd(rpoint + (0xC80*i)+0x5AC-0x4,gg.TYPE_DWORD,41249,false)
    gg.sleep(200)
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,0,false)
    setadd(rpoint + (0xC80*i)+0x5AC-0x4,gg.TYPE_DWORD,41249,false)
    end
  end
  if uy == 3 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,41249,false)
    end
  end
  if uy == 4 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,0,false)
    end
  end
end

function collectkrill(uy)
  frz = true
  eval = {}
  pattern = 0x2B0
  rpoint = eoffsets.nentity - poffsets.ecrabs - 0xC170
  mpoint = getcoord(true)
  if uy == 0 then
    for i=0,10 do
    evalid = getadd(rpoint + (pattern*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    --eposit = {getadd(rpoint + (0xC80*i),gg.TYPE_FLOAT),getadd(rpoint + (0xC80*i)+0x4,gg.TYPE_FLOAT),getadd(rpoint + (0xC80*i)+0x8,gg.TYPE_FLOAT)}
    table.insert(eval,{address=rpoint + (pattern*i)+0x4,flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='krillY'})
    end
if #eval == 0 then return; end
  --gg.setValues(eval)
  if isfreeze(rpoint) then
    gg.removeListItems(eval)
    gg.toast('off')
    else
    gg.addListItems(eval)
    gg.toast('on')
  end
  return;
  end
  if uy == 1 then
    for i=0,10 do
    --detec : 1D0
    evalid = getadd(rpoint + (pattern*i),gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
      table.insert(eval,{address=rpoint + (pattern*i),flags=gg.TYPE_FLOAT,value=mpoint[1]})
      table.insert(eval,{address=rpoint + (pattern*i)+0x4,flags=gg.TYPE_FLOAT,value=mpoint[2]})
      table.insert(eval,{address=rpoint + (pattern*i)+0x8,flags=gg.TYPE_FLOAT,value=mpoint[3]})
    end
    gg.setValues(eval)
    return;
  end
  if uy == 2 then
    for i=0,10 do
    --detec : 1D0
    evalid = getadd(rpoint + (pattern*i),gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    if isfreeze(rpoint+(pattern*i)+0x24) then
      setadd(rpoint+(pattern*i)+0x24,gg.TYPE_FLOAT,0,false)
    else
      setadd(rpoint+(pattern*i)+0x24,gg.TYPE_FLOAT,0,true)
    end
    end
    return;
  end
  if uy == 3 then
    for i=0,10 do
    --detec : 1D0
    evalid = getadd(rpoint + (pattern*i),gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    if isfreeze(rpoint+(pattern*i)+0x1AC) then
      setadd(rpoint+(pattern*i)+0x1AC,gg.TYPE_DWORD,257,false)
    else
      setadd(rpoint+(pattern*i)+0x1AC,gg.TYPE_DWORD,257,true)
    end
    end
    return;
  end
  if uy == 4 then
    for i=0,10 do
    --detec : 1D0
    evalid = getadd(rpoint + (pattern*i),gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    if isfreeze(rpoint+(pattern*i)+0x1AC) then
      setadd(rpoint+(pattern*i)+0x1AC,gg.TYPE_DWORD,258,false)
    else
      setadd(rpoint+(pattern*i)+0x1AC,gg.TYPE_DWORD,258,true)
    end
    end
    return;
  end
  if uy == 5 then
    setposit(getadd(rpoint,gg.TYPE_FLOAT),getadd(rpoint+0x4,gg.TYPE_FLOAT),getadd(rpoint+0x8,gg.TYPE_FLOAT))
  end
end

function fkelders()
  gg.clearResults()
  ggrange(4)
  gg.searchNumber('h 00 00 00 00 00 00 80 3F CD CD CD CD 00 00 00 00',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  if gg.getResultsCount() == 0 then
    gg.toast('fail!')
    return;
  else
    mm = gg.getResults(gg.getResultsCount())
    for k,v in ipairs(mm) do
      v.address = v.address - 0x2
      v.flags = gg.TYPE_FLOAT
      v.value = 0
    end
    gg.setValues(mm)
  end
end

function hookui()
  vm = getmap()
  if reached ~= vm then
    reached = ''
  end
  cgh = gg.choice({
    'Access far buttons',
    'Pants',
    'Mask',
    'Hair',
    'Cape',
    'Prop',
    'Hide/Show ui',
    'Lock ui',
    'Exit'
  },nil,'')
  vtarget = getadd(eoffsets.nentity + poffsets.uihook,gg.TYPE_QWORD) + 0x18
  if cgh == 1 then
    gg.setVisible(false)
    if reached ~= getmap() then
      reachtest()
      reached = vm
    end
  end
  if cgh == 2 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,0,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 3 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,3,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 4 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,2,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 5 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,1,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 6 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,8,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 7 then
    if getadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD) == 0 then
      setadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD,1,false)
    else
      setadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD,0,false)
    end
  end
  if cgh == 8 then
    if isfreeze(vtarget - 0xC208 + 0x30) then
      setadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD,0,false)
      else
      setadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD,0,true)
    end
  end
  ThisScriptMadeBy = 'Kel'
  if cgh == 9 then
    huiset = false
    domenu()
  end
  gg.setVisible(false)
end

function getfriendnode()
  if #nodes < 3 then
    --[[
    gg.clearResults()
    ggrange(4)
    gg.setVisible(false)
    gg.searchNumber(1601466469,gg.TYPE_DWORD,false,nil,prange.a,prange.b)
    if gg.getResultsCount() == 0 then
      gg.toast('fail!')
    else
      eoffsets.gnode=gg.getResults(1)[1].address
      for i = 0, 39 do
        nn = eoffsets.gnode + (0x2E0 * i)
        mm = nn - 0x18
        ww = mm - 0x14
        yy = addtostr(nn - 0x4,20)
        if string.find(yy,'accept_') then
        table.insert(nodes,{yy,mm,getadd(mm,gg.TYPE_DWORD),getadd(ww,gg.TYPE_DWORD)})
        end
      end
      --print(nodes)
    end
    gg.clearResults()
    ]]--
  
    eoffsets.gnode=eoffsets.nentity - poffsets.enode
    for i = 0, 39 do
      nn = eoffsets.gnode + (0x2E0 * i)
      mm = nn - 0x18
      ww = mm - 0x14
      yy = addtostr(nn - 0x4,20)
      if string.find(yy,'accept_') then
        table.insert(nodes,{yy,mm,getadd(mm,gg.TYPE_DWORD),getadd(ww,gg.TYPE_DWORD)})
      end
    end
  end
  
end

function setdesk(str,add)
  if eoffsets.pdesk == 0x00 then
    gg.setVisible(false)
    gg.clearResults()
    ggrange(4)
    gg.searchNumber('h 22 55 69 4F 75 74 66 69 74 50 72 6F 70 43 68 61 69 72 00 00 00 00 00 00 14 74 61 62')
    gg.refineNumber(20)
    if gg.getResultsCount() == 0 then
      gg.toast('fail!')
      return;
    end
    eoffsets.pdesk = gg.getResults(1)[1].address + 0x1
  end
  setstr(eoffsets.pdesk + add,24,str)
end

function setspirit(val)
  nfirst = false
  if eoffsets.gspirits == 0x00 then
    nfirst = true
    gg.setVisible(false)
    gg.clearResults()
    ggrange(4)
    gg.searchNumber('h D3 21 18 8F 00 00 00 00 12 6E 61 6D 65 5F 64 61 77 6E 00 00')
    dq = gg.getResults(gg.getResultsCount())
    if gg.getResultsCount() == 0 then
      gg.toast('fail!')
      return;
    end
    eoffsets.gspirits = dq[1].address
    gg.clearResults()
  end
  --spirits = {}
  for i = 0, 40 do
    mm = eoffsets.gspirits + (0x80 * i)
    if nfirst then
    table.insert(spirits,{getadd(mm,gg.TYPE_QWORD),addtostr(mm + 0x9,20),mm})
    end
    setadd(mm,gg.TYPE_QWORD,val,false)
  end
  gg.toast('done')
  --print(eoffsets.gspirits)
end

function calc3d(a,b)
  return math.sqrt((a.x - b.x)^2 + (a.y - b.y)^2 + (a.z - b.z)^2)
end

function telelist()
  kurr = {'🆙️Share this location'}
  karr = {0}
  nun = getmap()
  for k,v in pairs(posits) do
    if nun == v.map then
      table.insert(karr,v)
      table.insert(kurr,replace(v.name,'_',' '))
    end
  end
  xx=gg.choice(kurr,nil,nun)
  if xx == nil then
    return;
  end
  if xx == 1 then
    pshare = pshare .. '{map=\'' .. getmap() .. '\'$$name=\'' .. replace(inputstr(),' ','_') .. '\'$$x=' .. getadd(pbase + poffsets.positX,gg.TYPE_FLOAT) .. '$$y=' .. getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) .. '$$z=' .. getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT) .. '}$$\n'
    gg.copyText(pshare)
    gg.toast('Paste the code to discord group!')
    else
    setposit(karr[xx].x,karr[xx].y,karr[xx].z)
  end
  gg.setVisible(false)
end

function resetfriendnode()
  xrs = {}
  for i,v in ipairs(nodes) do
    table.insert(xrs,{address = nodes[i][2],flags = gg.TYPE_BYTE,value = nodes[i][3]})
    table.insert(xrs,{address = nodes[i][2]-0x14,flags = gg.TYPE_DWORD,value = nodes[i][4]})
  end
  gg.setValues(xrs)
  gg.toast('node reset')
end

function reachtest()
  nda = {}
  ndb = 0
  for i = 1, 603 do
    agr = eoffsets.nentity - poffsets.wbtns + (0x50 * i)
    ags = getadd(agr,gg.TYPE_DWORD)
    if ags == 0 then break end
    agf = getadd(agr-0xC,gg.TYPE_FLOAT)
    if agf > 2 and agf < 4 then
    for y = 0, 8 do
      table.insert(nda,{address = agr - 0x8 - (0x4 * y), flags = gg.TYPE_FLOAT,value = 0})
    end
    ndb = ndb + 1
    end
  end
  gg.toast(ndb)
  gg.setValues(nda)
end

function nowind()
  nn = 0x00
  kj = false
  xy = {}
  ggrange(4)
  gg.setVisible(false)
  for i=0,100 do
    xk = eoffsets.nentity - poffsets.wwind + (i*0x100)
    if getadd(xk,gg.TYPE_DWORD) ~= 0 then
    for y = 1, 14 do
      table.insert(xy,{address = xk - (y * 0x4),flags = gg.TYPE_DWORD,value = 0})
    end
    end
  end
  gg.setValues(xy)
  gg.toast('done')
  --[[
  nmp = getmap()
  for i,v in ipairs(windwallset) do
    if nmp == windwallset[i][1] then
      gg.clearResults()
      gg.searchNumber(windwallset[i][2],gg.TYPE_QWORD,false,nil,prange.a,prange.b)
      if gg.getResultsCount() > 0 then
        kj = true
        nn=gg.getResults(1)[1].address
        for y = 1, 14 do
          setadd(nn - (y * 0x4),gg.TYPE_FLOAT,0,false)
        end
      end
      
    end
  end
  if kj == false then
    gg.toast('fail!')
  else
    gg.toast('done : ' .. nmp)
  end
  gg.clearResults()
  ]]--
end

function scsettings()
  xcs = gg.choice({
    'Auto CR speed hack : ' .. psettings.crspeed,
    'Auto CR delay : ' .. psettings.crdelay .. 'ms',
    'Auto CR after delay : ' .. psettings.crabsorb .. 'ms',
    'Auto WR delay : ' .. psettings.wrdelay .. 'ms',
    'Breach wall distance : ' .. psettings.warpdis,
    'No damage wings : ' .. boolling(psettings.nodamage),
    'Fast return home : ' .. boolling(psettings.fasthome),
    'Use gg speedhack : ' .. boolling(psettings.ggspeed),
    'SpeedHack when change map : ' .. boolling(psettings.portalspeed),
    'Auto show up script menu : ' .. boolling(psettings.showmenu),
    'Semi-auto candle runner delay : ' .. psettings.smcrdelay .. 'ms',
    'Semi-auto wing runner delay : ' .. psettings.smwrdelay .. 'ms',
    'Use legacy map changer : ' .. boolling(psettings.portaldef),
    'Fasthome speed : ' .. psettings.fhspeed,
    'Change map image : ' .. imgs[psettings.cmimage],
    'Android 11(Testing) : ' .. boolling(psettings.aeleven),
    'Fps : ' .. psettings.ufps
  },nil,'')
  if xcs == nil then return; end
  if xcs == 1 then
    psettings.crspeed = inputnum(3)
  end
  if xcs == 2 then
    psettings.crdelay = inputnum(1500)
  end
  if xcs == 3 then
    psettings.crabsorb = inputnum(0)
  end
  if xcs == 4 then
    psettings.wrdelay = inputnum(1100)
  end
  if xcs == 5 then
    psettings.warpdis = inputnum(6)
  end
  if xcs == 6 then
    psettings.nodamage = toggle(psettings.nodamage)
  end
  if xcs == 7 then
    psettings.fasthome = toggle(psettings.fasthome)
  end
  if xcs == 8 then
    psettings.ggspeed = toggle(psettings.ggspeed)
  end
  if xcs == 9 then
    psettings.portalspeed = toggle(psettings.portalspeed)
  end
  if xcs == 10 then
    psettings.showmenu = toggle(psettings.showmenu)
  end
  if xcs == 11 then
    psettings.smcrdelay = inputnum(1000)
  end
  if xcs == 12 then
    psettings.smwrdelay = inputnum(1000)
  end
  if xcs == 13 then
    psettings.portaldef = toggle(psettings.portaldef)
  end
  if xcs == 14 then
    psettings.fhspeed = inputnum(100)
  end
  if xcs == 15 then
    gh = gg.choice(imgs,nil,'')
    if gh ~= nil then
      psettings.cmimage = gh
    end
  end
  if xcs == 16 then
    psettings.aeleven = toggle(psettings.aeleven)
  end
  if xcs == 17 then
    psettings.ufps = inputnum(30)
  end
  savedata()
  scsettings()
end

startup()
--That dead sky open source by Kel
--Do you have some good functions or codes?
--Tell me discord ExMachina#5142

gg.setVisible(false)
gg.showUiButton()

function domenu()
      m=gg.choice({'🎈Wings'
      	,'🕯Collect Candles'
      	,'⬆️Breach wall'
      	,'🌏World'
      	,'☸Engine settings'
      	,'♿Troll'
      	,'💫Magic'
      	,'🎭Emotes'
      	,'🏧Set props'
        ,'🔄Auto run'
        ,'📽camera'
        ,'🚻Players'
        ,'🆖️Interface'
        ,'📝Script settings'
        ,'⚠️Testing features'
      },nil,'')
      if m == 1 then
        nn = 0
        nn = getadd(pbase,gg.TYPE_DWORD)
        x=gg.choice({
        'Fill'
        ,'Set wing counts'
        ,'Lock wing energy'
      	,'Throw wings'
      	,'⚠️Explode wings'
      	,'No losing wings'
      	,'Invisible wing'
      	,'Office wing'
      	,'Nintendo red'
      	,'Nintendo blue'
      	},nil,'')
      	if x == 1 then
      	  setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14.0,false)
      	end
      	if x == 2 then
      	  setadd(pbase,gg.TYPE_DWORD,inputnum(nn),false)
      	end
      	if x == 3 then
      	  adr = pbase + poffsets.pwing
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_FLOAT,14,false)
            gg.toast('off')
          else
            setadd(adr,gg.TYPE_FLOAT,inputnum(14),true)
            gg.toast('on')
          end
      	end
    	  
      	if x == 4 then
      	  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,inputnum(1),false)
      	end
      	if x == 5 then
      	  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,nn - 1,false)
      	end
      	if x == 6 then
      	  adr = pbase + poffsets.pdamage
      	  if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,0,false)
            gg.toast('off')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
      	end
      	if x == 7 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,0,false)
          gg.toast('Change your pants or hair')
      	end
    	  if x == 8 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,2219120716,false)
      	end
      	if x == 9 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,320385458,false)
      	end
      	if x == 10 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,496297629,false)
      	end
      	gg.setVisible(false)
      end
      if m == 2 then 
        --abslight()
        absorb()
      end
      if m == 3 then 
        pmove(psettings.warpdis)
      end
      if m == 4 then 
        x=gg.choice({
        '➡️Teleport'
      	,'⏩Change map'
      	,'🤝Change map together'
      	,'🏠Change home code'
      	,'⬇️Save this location'
      	,'⬆️Load saved location' .. math.floor(px) .. ', ' .. math.floor(py) .. ', ' ..math.floor(pz)
      	,'🪄Modify coord'
      	,'🔔Show all candles'
      	,'🔕Hide all candles'
      	,'⚠️Noclip'
      	,'☁️Show/Hide clouds'
      	,'⏫Warp up'
      	,'⏬Warp down'
      	,'🦀Crabs'
      	,'🦐Krills'
      	,'🚪Remove map changes/limits'
      	,'Set Warp distance'
      	,'Set breaching hotkey'
      	},nil,getmap())
      	if x == 1 then 
      	  telelist()
        end
      	if x == 2 then 
      	   y={}
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️Manual')
         r=gg.choice(y,nil,'')
         if (r ~= nil) then 
           if r == #y then
            istr = inputstr()
            if istr ~= nil then
              portal(istr)
            end
             else
            portal(cworld[r][2])
            end
         end
      	end
      	if x == 3 then
      	  y={}
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️Crash game')
         r=gg.choice(y,nil,'Select map and use your wing! ')
         if (r ~= nil) then 
           gg.setVisible(false)
           if psettings.fhspeed > 1 and fasthome and not teleping then
            fasthome = false
            teleping = true
            gg.toast('Fast home disabled')
           end
           xre = eoffsets.nentity - poffsets.wingmap
           setadd(xre,gg.TYPE_QWORD,49,false)
           setadd(xre+0x4,gg.TYPE_DWORD,0,false)
           setadd(xre+0x8,gg.TYPE_DWORD,28,false)
           setadd(xre+0xC,gg.TYPE_DWORD,0,false)
           --use pointer to not crash game
           setadd(xre+0x10,gg.TYPE_QWORD,eoffsets.nentity - poffsets.wingmap + 0x36D0,false)
           if r == #y then
            setstr(eoffsets.nentity - poffsets.wingmap + 0x36D0,24,'ExMachina')
          else
            setstr(eoffsets.nentity - poffsets.wingmap + 0x36D0,24,cworld[r][2])
          end
           setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,1973407668,false)
         end
         WhyYouRemoveThisLine = 'by ExMachina'
      	end
      	if x == 4 then 
      	   y={}
      	   if eoffsets.world == 0x00 then
      	      gg.clearResults()
      	      ggrange(4)
      	      gg.searchNumber(1487508559, gg.TYPE_DWORD,false,nil,eoffsets.nentity,pbase)
      	      if gg.getResultsCount() ~= 0 then
      	        nba = gg.getResults(gg.getResultsCount())
      	        for w,c in ipairs(nba) do
      	          if getadd(c.address+0x4,gg.TYPE_DWORD) == 11 then
      	            eoffsets.world = c.address + 0xC
      	            break
      	          end
      	        end
      	        else
      	          gg.toast('fail!')
      	      end
      	   end
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️Manual')
         r=gg.choice(y,nil,'')
         if (r ~= nil) then 
           if r == #y then
            istr = inputstr()
            if istr ~= nil then
              setstr(eoffsets.world,24,istr)
            end
            else
              setstr(eoffsets.world,24,cworld[r][2])
           end
          gg.setVisible(false)
         end
      	end
      	if x == 5 then
      	  getpos()
      	  gg.setVisible(false)
      	end
        if x == 6 then 
          setposit(px, py, pz) 
          gg.setVisible(false)
        end
        if x == 7 then 
          usp = gg.prompt({"Coord X", "Coord Y", "Coord Z"}, {[1]= getadd(pbase+poffsets.positX,gg.TYPE_FLOAT),[2]= getadd(pbase+poffsets.positY,gg.TYPE_FLOAT),[3]= getadd(pbase+poffsets.positZ,gg.TYPE_FLOAT)}, {[1]="number",[1]="number",[1]="number"})
          if usp[1] == nil then
            usp[1] = getadd(pbase+poffsets.positX,gg.TYPE_FLOAT)
          end
          if usp[2] == nil then
            usp[2] = getadd(pbase+poffsets.positY,gg.TYPE_FLOAT)
          end
          if usp[3] == nil then
            usp[3] = getadd(pbase+poffsets.positZ,gg.TYPE_FLOAT)
          end
          setposit(usp[1],usp[2],usp[3])
          gg.setVisible(false)
        end
      if x == 8 then
        gg.setVisible(false)
        viscandle(true)
      end
      if x == 9 then
        gg.setVisible(false)
        viscandle(false)
      end
      if x == 10 then
          noclip()
      end
      if x == 11 then
          if getadd(eoffsets.cloud,gg.TYPE_DWORD) == 1 then
            setadd(eoffsets.cloud,gg.TYPE_DWORD,0,false)
            else
            setadd(eoffsets.cloud,gg.TYPE_DWORD,1,false)
          end
          gg.setVisible(false)
      end
      if x == 12 then
        setposit(getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) + psettings.warpdis, getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT))
          gg.setVisible(false)
      end
      if x == 13 then
        setposit(getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) - psettings.warpdis, getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT))
          gg.setVisible(false)
      end
      if x == 14 then
        xfr = gg.choice({'Collect all','Remove all'})
        gg.setVisible(false)
        if xfr == 1 then
          collectcrab(1)
        elseif xfr == 2 then
          collectcrab(0)
        end
        
      end
      if x == 15 then
        xfr = gg.choice({'Collect all','Remove all','Idiot','Go to Krill'})
        gg.setVisible(false)
        if xfr == 1 then
          collectkrill(1)
        elseif xfr == 2 then
          collectkrill(0)
        elseif xfr == 3 then
          collectkrill(2)
        elseif xfr == 4 then
          collectkrill(5)
        end
      end
      if x == 16 then
        doorpeek(true)
      end
      if x == 17 then
          psettings.warpdis = inputnum(6)
          --savedata()
      end
      if x == 18 then
          k=gg.choice({
        'Disable'
      	,'Honk'
      	,'Sit'
      	,'Sit 2'
      	},nil,'')
          if k == 1 then mev = 0 end
          if k == 2 then
            mev = 1 
            setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
          end
          if k == 3 then mev = 2 end
          if k == 4 then mev = 3 end
        end
      if x == 18 then
          nnn = '{\"' .. getmap() .. '\",  {'
          for i = 0, 6 do
            nnn = nnn .. getadd(eoffsets.nworld + (i * 4),4) .. '; '
          end
          nnn = nnn .. '}},\n'
          gg.copyText(nnn)
        end
        
      end
      if m == 5 then
        
         x=gg.choice({
           '🔄Wing fast Recharge',
           '⏫Wing force',
           '➡️Jet fly mode',
           '⏩Ground acceleration',
           '⏭Engine speed',
           '↗️Jump acceleration', 
           '⤴️Jump distance',
           '📳FPS',
           '🚸Body size(Client)',
           '🚹No knockdown',
           '🔥Auto burn',
           '🌬Remove wind wall',
           '🏠Fast home/candles',
           '🔦Light multiply',
           '🏜World bright'
         },nil,'')
          if x == 1 then 
            if getadd(eoffsets.cspeed,gg.TYPE_FLOAT) >= 3.0 then
              setadd(eoffsets.cspeed,gg.TYPE_FLOAT,2.5,false)
              gg.toast('off')
            else
              setadd(eoffsets.cspeed,gg.TYPE_FLOAT,3.5,false)
              gg.toast('on')
            end
          end
         if x == 2 then 
           setadd(eoffsets.wforce,gg.TYPE_FLOAT,inputnum(1.0),false)
         end
        if x == 3 then
          if isfreeze(eoffsets.nentity - poffsets.fastfly) then
              setadd(eoffsets.nentity - poffsets.fastfly,gg.TYPE_FLOAT,1,false)
              gg.toast('off')
            else
              setadd(eoffsets.nentity - poffsets.fastfly,gg.TYPE_FLOAT,-20,true)
              gg.toast('on')
            end
        end
        if x == 4 then 
           setadd(eoffsets.sspeed,gg.TYPE_FLOAT,inputnum(3.5),false)
        end
        if x == 5 then 
          gamespeed(inputnum(1))
          gg.setVisible(false)
        end
        if x == 6 then 
           setadd(eoffsets.jump,gg.TYPE_FLOAT,inputnum(4.9),false)
        end
        if x == 7 then 
           setadd(eoffsets.jforce,gg.TYPE_FLOAT,inputnum(1),false)
        end
        if x == 8 then 
          if eoffsets.gframe == 0x00 then
            eoffsets.gframe = getadd(rbootloader + poffsets.ptofps,gg.TYPE_QWORD) + 0x160
          end
          vframe = inputnum(30)
          setadd(eoffsets.gframe,gg.TYPE_FLOAT,vframe,false)
          psettings.ufps = vframe
          savedata()
        end
        if x == 9 then 
           setadd(pbase + poffsets.bsize,gg.TYPE_FLOAT,inputnum(0),true)
        end
        if x == 10 then
          adr = pbase + poffsets.pose
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,0,false)
            gg.toast('off')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
        end
        if x == 11 then
          if candles[1].freeze then
            for i,v in pairs(candles) do
              v.value = 0
              v.freeze = false
            end
            gg.setValues(candles)
            gg.removeListItems(candles)
            for i,v in pairs(flowers) do
              v.value = 1
              v.freeze = false
            end
            gg.setValues(flowers)
            gg.removeListItems(flowers)
            gg.toast('off')
          else
            for i,v in pairs(candles) do
              v.value = 1.0
              v.freeze = true
            end
            gg.setValues(candles)
            gg.addListItems(candles)
            for i,v in pairs(flowers) do
              v.value = 0
              v.freeze = true
            end
            gg.setValues(flowers)
            gg.addListItems(flowers)
            gg.toast('on')
          end
        end
        if x == 12 then
          nowind()
        end
        if x == 13 then
          if fasthome then
            fasthome = false
            gamespeed(1)
            gg.toast('off')
          else
            fasthome = true
            fastvalue = false
            gg.toast('on')
          end
          
        end
        if x == 14 then
          setadd(eoffsets.glight,gg.TYPE_FLOAT,inputnum(1),false)
        end
        if x == 15 then
          setadd(eoffsets.wlight,gg.TYPE_FLOAT,inputnum(1),false)
        end
        
      end
        
      if m == 6 then
         x=gg.choice({
           '🎹Walking piano'
           ,'😵Spam magics'
           ,'💥Infinity fireworks'
           ,'Super bright'
           ,'Cyan bright'
           ,'Blue brught'
           ,'Black light'
           ,'💬Table hijack'
           ,'👻Ghost walk'
           ,'😱Magic cape'
           ,'🦀Throw crabs'
           ,'📢Super shout'
           ,'🎤Lock shout scale'
           ,'🔃Spinbot'
         },nil,'')
       if x == nil then
         x = 0
       end
        gg.setVisible(false)
        if x == 1 then 
          adr = pbase + poffsets.gesture
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,65793,false)
            gg.toast('off')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
        end
        if x == 2 then 
          espam()
        end
        if x == 3 then
          adr = pbase + poffsets.famount
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,5,false)
          else
            setadd(adr,gg.TYPE_DWORD,5,true)
          end
        end
        
        if x == 4 then
          if getadd(pbase - poffsets.sglow,gg.TYPE_FLOAT) < 2 then
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,40000,false)
            pmagic(8,1097748727,1)
          else
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1,false)
            pmagic(8,0,1)
          end
        end
        if x == 5 then
          if getadd(pbase - poffsets.sglow,gg.TYPE_FLOAT) < 40001 then
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,105000,false)
            pmagic(8,1097748727,1)
          else
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1,false)
            pmagic(8,0,1)
          end
        end
        if x == 6 then
          if getadd(pbase - poffsets.sglow,gg.TYPE_FLOAT) < 100556 then
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1055555,false)
            pmagic(8,1097748727,1)
          else
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1,false)
            pmagic(8,0,1)
          end
        end
        if x == 7 then
          if getadd(pbase - poffsets.sglow,gg.TYPE_FLOAT) < 1055556 then
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1000000000,false)
            pmagic(8,1097748727,1)
          else
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1,false)
            pmagic(8,0,1)
          end
        end
        if x == 8 then
          --default = 2, table = 7, swing = 13
          rv = gg.choice({
           'Table/Campfire/Tea table',
           'Swing/Seesaw',
           'Stone bench',
           'Manual(test)',
           'Disable'
         },nil,'')
          if rv == 1 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,7,true)
          end
          if rv == 2 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,13,true)
          end
          if rv == 3 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,4,true)
          end
          if rv == 4 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,inputnum(2),true)
          end
          if rv == 5 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,2,false)
          end
        end
        if x == 9 then
          adr = eoffsets.nentity - poffsets.pwalk
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,0,false)
            gg.toast('off')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
        end
        if x == 10 then
          if magictick < 0 then
            rmarray = {}
            for i,v in ipairs(mid) do
              if v[3] == 1 then
                table.insert(rmarray,v[2])
              end
            end
            magictick = 0
          else
            magictick = -1
          end
        end
        if x == 11 then
          gg.setVisible(false)
          collectcrab(2)
        end
        if x == 12 then
          ghf = tonumber(inputnum(10))
          if ghf ~= nil and ghf > 0 then
          gg.setVisible(false)
          for i = 0, ghf do
            pmagic(7,1725047129,0)
            gg.sleep(5)
          end
          end
          pmagic(7,0,0)
        end
        if x == 13 then
          adr = pbase + poffsets.shoutscale
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_FLOAT,0,false)
            gg.toast('off')
          else
            vsld = gg.prompt({'seek bar 1 [0; 50]'},{50},{'number'})
            if vsld[1] == nil then
              vsld[1] = 5
              else
              vsld[1] = vsld[1] / 10
            end
            setadd(adr,gg.TYPE_FLOAT,vsld[1],true)
            gg.toast('on')
          end
        end
        if x == 14 then
          spinmenu()
        end
      end
      
      if m == 7 then
        magicmenu()
      end
      if m == 8 then
        x=gg.choice({
           'Upgrade all emotes'
           ,'Change special emotes'
           ,'Change all emotes'
         },nil,'❌This features got patched by tgc❌')
       if x == 1 then
         gg.setVisible(false)
         upemote()
       end
       if x == 2 then
         if echanged then
          echange(false)
          echanged = false
        else
          echange(true)
          echanged = true
         end
       end
       if x == 3 then
         chemote()
       end
       if x == 4 then
         schemote()
       end
       
      end
      if m == 9 then
         y={}
        for i, v in ipairs(pid) do
          table.insert(y,pid[i][2])
        end
         x=gg.choice(y,nil,'')
         if (x ~= nil) then 
           if pid[x][3] ~= nil then
            setdesk(pid[x][3],pid[x][4])
           end
           setadd(pbase + poffsets.eprop,gg.TYPE_DWORD,pid[x][1],false)
            gg.setVisible(false)
         end
      end
      if m == 10 then 
        x=gg.choice({
           'Auto wing farm'
           ,'⚠️Auto candle farm⚠️'
           ,'Semi-Auto candle farm'
           ,'Semi-Auto wing farm'
           ,'Lock player candle'
           ,'Unlock elders'
           ,'Absorb spirits(unstable!)'
         },nil,'')
       if x == 1 then
         y=gg.choice({
           'All'
           ,'Isle'
           ,'Prairie'
           ,'Forest'
           ,'Valley'
           ,'Desert'
           ,'Library'
           ,'Eden'
         },nil,'This will cannot be stopped!')
          if y == 1 then
            wingfarm(2,47)
          end
          if y == 2 then
            wingfarm(2,7)
          end
          if y == 3 then
            wingfarm(8,14)
          end
          if y == 4 then
            wingfarm(15,21)
          end
          if y == 5 then
            wingfarm(22,30)
          end
          if y == 6 then
            wingfarm(32,37)
          end
          if y == 7 then
            wingfarm(38,45)
          end
          if y == 8 then
            wingfarm(46,47)
          end
       end
       
       if x == 2 then
         y=gg.choice({
           'All'
           ,'Isle'
           ,'Prairie'
           ,'Forest'
           ,'Valley'
           ,'Desert'
           ,'Library'
           ,'Eden'
         },nil,'This will cannot be stopped')
          if y == 1 then
            candlefarm(2,45)
          end
          if y == 2 then
            candlefarm(2,7)
          end
          if y == 3 then
            candlefarm(8,14)
          end
          if y == 4 then
            candlefarm(15,21)
          end
          if y == 5 then
            candlefarm(22,30)
          end
          if y == 6 then
            candlefarm(31,37)
          end
          if y == 7 then
            candlefarm(38,44)
          end
          if y == 8 then
            candlefarm(47,48)
          end
       end
       if x == 3 then
         gg.setVisible(false)
          crset.enable = true
          crmenu()
       end
       if x == 4 then
         gg.setVisible(false)
          wrset.enable = true
          wrmenu()
        end
        if x == 5 then
          if isfreeze(eoffsets.nentity + poffsets.ucandle) then
            setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),false)
            gg.toast('off')
            else
            setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),true)
            gg.toast('on')
          end
            
        end
        if x == 6 then
          gg.setVisible(false)
          fkelders()
        end
        if x == 7 then
          gg.setVisible(false)
          pmap = getmap()
          gg.toast('Open gg to stop')
          for i = 0, 60 do
            if gg.isVisible(true) or pmap ~= getmap() then
              break;
            end
            absspirits()
            gg.sleep(900)
          end
          gg.toast('Absorb spirits disabled')
        end
      end
      if m == 11 then
        if hcamera() then
          y=gg.choice({
           'Lock yaw'
           ,'Lock pitch'
           ,'Lock roll'
           ,'Auto rotate'
           ,'Camera distance'
           ,'Camera height'
           ,'Camera fov'
           ,'Camera balance'
           ,'Camera left/right'
         },nil,'')
        if y == 1 then
          nn = getadd(eoffsets.ncamera,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera) then
            setadd(eoffsets.ncamera,gg.TYPE_FLOAT,nn,false)
            gg.toast('off')
          else
          setadd(eoffsets.ncamera,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('on')
          end
        end
        if y == 2 then
          nn = getadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera + 0x4) then
            setadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT,nn,false)
            gg.toast('off')
          else
          setadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('on')
          end
        end
        if y == 3 then
          nn = getadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera + 0x8) then
            setadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT,nn,false)
            gg.toast('off')
          else
          setadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('on')
          end
        end
        if y == 4 then
          if isfreeze(eoffsets.ncamera+0x80) then
            setadd(eoffsets.ncamera + 0x80,gg.TYPE_DWORD,1,false)
            gg.toast('off')
          else
            setadd(eoffsets.ncamera + 0x80,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
        end
        if y == 5 then
          setadd(eoffsets.ncamera - 0x8C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x8C,gg.TYPE_FLOAT)),false)
        end
        if y == 6 then
          if isfreeze(eoffsets.ncamera-0x5C) then
            setadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT,0.5,false)
            gg.toast('off')
          else
            setadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT)),true)
            gg.toast('on')
          end
        end
        if y == 7 then
          setadd(eoffsets.ncamera - 0x9C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x9C,gg.TYPE_FLOAT)),false)
        end
        if y == 8 then
          if isfreeze(eoffsets.ncamera-0x20) then
            setadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT,0.5,false)
            gg.toast('off')
          else
            setadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT)),true)
            gg.toast('on')
          end
        end
        --0x394
        if y == 9 then
          z=gg.choice({
           'Disable'
           ,'Lock left'
           ,'Lock right'
         },nil,'')
          if z == 1 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65536,false)
          end
          if z == 2 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65536,true)
          end
          if z == 3 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65537,true)
          end
        end
        else
          gg.toast('Hook camera failed!')
        end
        
      end
      if m==12 then
        teleplayers()
      end
      if m==13 then
        hookui()
        huiset = true
      end
      if m == 14 then
        scsettings()
      end
      if m == 15 then
        x=gg.choice({'search 1D','print offsets','print emotes','print items','print magics','print daily','frags','pick crab','throw crab','absorb spirits','execute','load coord','door'
        },nil,'⚠️This features are not stable')
        if x == 1 then
          xgd = gg.getResults(gg.getResultsCount())
          for k,v in ipairs(xgd) do
            if getadd(v.address + 0x50,gg.TYPE_DWORD) == 30 and getadd(v.address + 0x50 + 0x50,gg.TYPE_DWORD) == 31 and getadd(v.address + 0x50+ 0x50 + 0x50,gg.TYPE_DWORD) == 32 then
              gg.addListItems({v})
            end
          end
        end
        if x == 2 then
          debg()
        end
        if x == 3 then
          getemote()
          xstr = ''
          for k,v in ipairs(emotelist) do
            xstr = xstr .. 'name : ' .. v[1] .. '\ntype : ' .. v[2] .. '\nmap : ' .. v[3] .. '\nvalue : ' .. v[5] .. '\nicon : ' .. v[6] .. '\n'
          end
          gg.copyText(xstr)
        end
        if x == 4 then
          dumpdata()
        end
        if x == 5 then
          dumpmagic()
        end
        if x == 6 then
          dumpdaily()
        end
        if x == 7 then
          absflower()
        end
        if x == 8 then
          collectcrab(3)
        end
        if x == 9 then
          collectcrab(4)
        end
        if x == 10 then
          absspirits()
        end
        if x == 11 then
          local fld,lrf = pcall(load(inputstr()))
          if not fld then gg.alert(lrf) end
        end
        if x == 12 then
          local fld,lrf = pcall(load('table.insert(posits,' ..replace(inputstr(),'$$',',') .. ')'))
          if not fld then gg.toast(lrf) end
        end
        if x == 13 then
          doorpeek(false)
        end
        
      end
        --absflower()
      
end

function crmenu()
  if #crlist == 0 then
    gg.toast('failed to load coord list!')
    return;
  end
  hq = getmap()
  --gg.toast(#crlist)
  if #crarray == 0 then
    crset.map = hq
    crset.level = 0
    for k,v in ipairs(crlist) do
      if v.map == hq then
        table.insert(crarray,v)
      end
    end
    if #crarray == 0 then
      jy=gg.choice({'❌Exit',
    '🔒Lock player candle',
    '⬆️Breach Wall',
    '⏩Teleport',
    '🔥Auto burn',
    '💸Wing run'},nil,'No data on this map')
      if jy == 1 then
        gg.setVisible(false)
        crarray = {}
        crset.level = 0
        crset.map = ''
        crset.enable = false
        domenu()
      end
      if jy == 2 then
        if isfreeze(eoffsets.nentity + poffsets.ucandle) then
          setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),false)
          gg.toast('off')
        else
          setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),true)
          gg.toast('on')
        end
      end
      if jy == 3 then
        pmove(psettings.warpdis)
      end
      if jy == 4 then
        telelist()
      end
      if jy == 5 then
        if candles[1].freeze then
          gg.removeListItems(candles)
          gg.removeListItems(flowers)
          gg.toast('off')
        else
          for i,v in pairs(candles) do
            v.value = 1.0
            v.freeze = true
          end
          gg.addListItems(candles)
          for i,v in pairs(flowers) do
            v.value = 0
            v.freeze = true
          end
          gg.addListItems(flowers)
          gg.toast('on')
        end
      end
      if jy == 6 then
        crset.enable = false
        wrset.enable = true
        wrmenu()
        return;
      end
      return
    end
    
  end
  --gg.toast(#crarray)
  if hq ~= crset.map or #crarray == 0 then
    crarray = {}
    crset.level = 0
    crset.map = ''
    crmenu()
    return;
  end
  jy=gg.choice({
    '➡️Next Point',
    '⬅️Previous Point',
    '🔒Lock player candle',
    '⬆️Breach Wall',
    '⏩Teleport',
    '🔁Run all',
    '⏸Coord list',
    '🔥Auto burn',
    'Hotkey',
    '💸Wing run',
    '🛄Main menu',
    '❌Exit'
  },nil,'candle : ' .. crset.level .. '/' .. #crarray)
  if jy == 1 then
    gg.setVisible(false)
    if crset.level >= #crarray then
      crset.level = #crarray - 1
    end
    crset.level = crset.level + 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
  end
  if jy == 2 then
    gg.setVisible(false)
    if crset.level <= 1 then
      crset.level = 2
    end
    crset.level = crset.level - 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
  end
  if jy == 3 then
    if isfreeze(eoffsets.nentity + poffsets.ucandle) then
      setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),false)
      gg.toast('off')
    else
      setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),true)
      gg.toast('on')
    end
  end
  if jy == 4 then
    pmove(psettings.warpdis)
  end
  if jy == 5 then
    telelist()
  end
  if jy == 6 then
    gg.setVisible(false)
    for k,v in ipairs(crarray) do
      gg.sleep(psettings.smcrdelay)
      if crset.level >= #crarray then
        gg.toast('done')
        break
      end
      crset.level = crset.level + 1
      setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
    end
  end
  if jy == 7 then
    xvw = {}
    for i,v in ipairs(crarray) do
      table.insert(xvw,'['..i..'] '..math.floor(v.x)..' / '..math.floor(v.y)..' / '..math.floor(v.z))
    end
    xve = gg.choice(xvw,nil,'')
    if xve == nil then
      return;
      else
      crset.level = xve
      setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
    end
  end
  if jy == 8 then
    if candles[1].freeze then
      gg.removeListItems(candles)
      gg.removeListItems(flowers)
      gg.toast('off')
    else
      for i,v in pairs(candles) do
        v.value = 1.0
        v.freeze = true
      end
      gg.addListItems(candles)
      for i,v in pairs(flowers) do
        v.value = 0
        v.freeze = true
      end
      gg.addListItems(flowers)
      gg.toast('on')
    end
  end
  if jy == 9 then
    k=gg.choice({
        'Disable'
      	,'Honk'
      	,'Sit'
      	,'Sit 2'
      	},nil,'')
    if k == 1 then mev = 0 end
    if k == 2 then
      mev = 1 
      setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
    end
    if k == 3 then mev = 2 end
    if k == 4 then mev = 3 end
    gg.setVisible(false)
  end
  if jy == 10 then
    crset.enable = false
    wrset.enable = true
    wrmenu()
    return;
  end
  if jy == 11 then
    domenu()
    return;
  end
  if jy == 12 then
    mev = 0
    gg.setVisible(false)
    crset.enable = false
    domenu()
  end
  gg.setVisible(false)
end

function wrmenu()
  hq = getmap()
  --gg.toast(#crlist)
  if #wrarray == 0 then
    wrset.map = hq
    wrset.level = 0
    xdt = eoffsets.nentity + poffsets.wwings - 0x28
    for i=0,6 do
      fq1=getadd(xdt+(0x120*i),gg.TYPE_FLOAT)
      fq2=getadd(xdt+(0x120*i)+0x4,gg.TYPE_FLOAT)+0.7
      fq3=getadd(xdt+(0x120*i)+0x8,gg.TYPE_FLOAT)
      if fq1 ~= 0 and fq2 ~= 0 and getadd(xdt+(0x120*i)+0x20,gg.TYPE_FLOAT) ~= 0 then
        table.insert(wrarray,{x=fq1,y=fq2,z=fq3})
      end
    end
    if #wrarray == 0 then
      jy=gg.choice({'❌Exit',
    '🔒Lock player candle',
    '⬆️Breach Wall',
    '⏩Teleport',
    '🕯Candle run'},nil,'No wings detected on this map')
      if jy == 1 then
        gg.setVisible(false)
        wrarray = {}
        wrset.level = 0
        wrset.map = ''
        wrset.enable = false
        domenu()
      end
      if jy == 2 then
        if isfreeze(eoffsets.nentity + poffsets.ucandle) then
          setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),false)
          gg.toast('off')
        else
          setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),true)
          gg.toast('on')
        end
      end
      if jy == 3 then
        pmove(psettings.warpdis)
      end
      if jy == 4 then
        telelist()
      end
      if jy == 5 then
        crset.enable = true
        wrset.enable = false
        crmenu()
        return;
      end
      return
    end
    
  end
  --gg.toast(#wrarray)
  if hq ~= wrset.map or #wrarray == 0 then
    wrarray = {}
    wrset.level = 0
    wrset.map = ''
    wrmenu()
    return;
  end
  
  
  jy=gg.choice({'➡️Next Point',
    '⬅️Previous Point',
    '⬆️Breach Wall',
    '⏩Teleport',
    '🔁Run all',
    '⏸Coord list',
    '🕯Candle run',
    '🛄Main menu',
    '❌Exit'},nil,'candle : ' .. wrset.level .. '/' .. #wrarray)
  if jy == 1 then
    gg.setVisible(false)
    if wrset.level >= #wrarray then
      wrset.level = #wrarray - 1
    end
    wrset.level = wrset.level + 1
    setposit(wrarray[wrset.level].x,wrarray[wrset.level].y,wrarray[wrset.level].z)
  end
  if jy == 2 then
    gg.setVisible(false)
    if wrset.level <= 1 then
      wrset.level = 2
    end
    wrset.level = wrset.level - 1
    setposit(wrarray[wrset.level].x,wrarray[wrset.level].y,wrarray[wrset.level].z)
  end
  if jy == 3 then
    pmove(psettings.warpdis)
  end
  if jy == 4 then
    telelist()
  end
  if jy == 5 then
    gg.setVisible(false)
    for k,v in ipairs(wrarray) do
      gg.sleep(psettings.smwrdelay)
      if wrset.level >= #wrarray then
        gg.toast('done')
        break
      end
      wrset.level = wrset.level + 1
      setposit(wrarray[wrset.level].x,wrarray[wrset.level].y,wrarray[wrset.level].z)
    end
  end
  if jy == 6 then
    xvw = {}
    for i,v in ipairs(wrarray) do
      table.insert(xvw,'['..i..'] '..math.floor(v.x)..' / '..math.floor(v.y)..' / '..math.floor(v.z))
    end
    xve = gg.choice(xvw,nil,'')
    if xve == nil then
      return;
      else
      wrset.level = xve
      setposit(wrarray[wrset.level].x,wrarray[wrset.level].y,wrarray[wrset.level].z)
    end
  end
  if jy == 7 then
    crset.enable = true
    wrset.enable = false
    crmenu()
    return;
  end
  if jy == 8 then
    domenu()
    return;
  end
  if jy == 9 then
    gg.setVisible(false)
    wrset.enable = false
    domenu()
  end
  gg.setVisible(false)
end

function spinmenu()
  gg.setVisible(false)
  if spinset.enable then
    spinset.enable = false
    setadd(spad,gg.TYPE_DWORD,0,false)
    setadd(eoffsets.nentity - poffsets.pwalk - 0x90,gg.TYPE_FLOAT,0,false)
    setadd(eoffsets.nentity - poffsets.pwalk - 0x88,gg.TYPE_FLOAT,0,false)
    gg.toast('off')
    return;
  end
  
  spnf = gg.choice({'Spin','Moon Walk','Front lock','Random','Ghost Walk : ' .. boolling(spinset.lby),'Spin speed'},nil,'')
  if spnf == nil then
    return;
  end
  if spnf == 5 then
    spinset.lby = toggle(spinset.lby)
    spinmenu()
    return;
  end
  if spnf == 6 then
    spinset.speed = inputnum(20)
    spinmenu()
    return;
  end
  spad = eoffsets.nentity - poffsets.pwalk
  spinset.enable = true
  spinset.val = spnf
  setadd(spad,gg.TYPE_DWORD,0,spinset.lby)
end

function telemenu()
  xh = gg.choice({
    'Select other',
    'Exit'},nil,'')
  if xh == 1 then
    teleplayers()
  end
  if xh == 2 then
      gg.setVisible(false)
    xde = {}
    mpos = getcoord(true)
    for i=1, 7 do
      xda = pbase + poffsets.positX + (i * 0xFDC0)
      for d=0,2 do
        table.insert(xde,{address=xda+(d*0x4),flags=gg.TYPE_FLOAT})
      end
    end
    if #xde ~= 0 then
      gg.removeListItems(xde)
    end
     xq = {}
      table.insert(xq,{address = eoffsets.ncamera-0x70,flags=gg.TYPE_FLOAT})
      table.insert(xq,{address = eoffsets.ncamera-0x70+0x4,flags=gg.TYPE_FLOAT})
      table.insert(xq,{address = eoffsets.ncamera-0x70+0x8,flags=gg.TYPE_FLOAT})
      gg.removeListItems(xq)
    
    teleparr.spec = false
    teleparr.follow = false
    teleparr.collect = false
    teleparr.hide = false
    teleparr.enable = false
    
    return;
  end
end

function spinloop()
  if not spinset.enable then
    return;
  end
  if spinset.val == 1 then
    if spinset.rot > 360 then
      spinset.rot = 0
    end
    spinset.rot = spinset.rot + spinset.speed
  end
  if spinset.val == 2 then
    spinset.rot = getadd(eoffsets.ncamera,gg.TYPE_FLOAT)*180/math.pi+180
  end
  if spinset.val == 3 then
    spinset.rot = getadd(eoffsets.ncamera,gg.TYPE_FLOAT)*180/math.pi
  end
  if spinset.val == 4 then
    spinset.rot = math.random(0,360)
  end
  setadd(eoffsets.nentity - poffsets.pwalk - 0x90,gg.TYPE_FLOAT,math.sin(spinset.rot*math.pi/180),true)
  setadd(eoffsets.nentity - poffsets.pwalk - 0x88,gg.TYPE_FLOAT,math.cos(spinset.rot*math.pi/180),true)
end

function teleloop()
  if teleparr.enable == false then return; end
  --[[
  if teleparr.collect then
    xde = {}
    mpos = {getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT), getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)}
    for i=1, 7 do
      xda = pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(xda,gg.TYPE_FLOAT) ~= 0 then
        for d=0,2 do
          table.insert(xde,{address=xda+(d*0x4),flags=gg.TYPE_FLOAT,value=mpos[d+1] + i,freeze=true})
        end
      end
    end
    if #xde ~= 0 then
      gg.setValues(xde)
      --gg.addListItems(xde)
    end
    return;
  end
  ]]--
  if teleparr.follow then
    xda = pbase + poffsets.positX + (teleparr.arr * 0xFDC0)
    tx,ty,tz = getadd(xda,gg.TYPE_FLOAT), getadd(xda + 0x4,gg.TYPE_FLOAT), getadd(xda + 0x8,gg.TYPE_FLOAT)
    if tx ~= 0 then
      setposit(tx,ty+1,tz)
    else
      gg.toast('Target is not exist!')
      teleparr.spec = false
      teleparr.follow = false
      teleparr.collect = false
      teleparr.enable = false
    end
    return;
  end
  if teleparr.spec then
    xda = pbase + poffsets.positX + (teleparr.arr * 0xFDC0)
    tx,ty,tz = getadd(xda,gg.TYPE_FLOAT), getadd(xda + 0x4,gg.TYPE_FLOAT), getadd(xda + 0x8,gg.TYPE_FLOAT)
    if tx ~= 0 then
      xq = {}
      table.insert(xq,{address = eoffsets.ncamera-0x70,flags=gg.TYPE_FLOAT,value=tx,freeze=true})
      table.insert(xq,{address = eoffsets.ncamera-0x70+0x4,flags=gg.TYPE_FLOAT,value=ty,freeze=true})
      table.insert(xq,{address = eoffsets.ncamera-0x70+0x8,flags=gg.TYPE_FLOAT,value=tz,freeze=true})
      gg.setValues(xq)
      gg.addListItems(xq)
      --setposit(tx,ty+1,tz)
    else
      gg.toast('Target is not exist!')
      teleparr.spec = false
      teleparr.follow = false
      teleparr.collect = false
      teleparr.enable = false
    end
    return;
  end
end

while true do
  if teleparr.enable then
    teleloop()
  end
  if mev ~= 0 and teleparr.enable == false then
    mtrigger()
  end
  if fasthome and teleparr.enable == false then
    htrigger()
  end
  if spinset.enable then
    spinloop()
  end
  if resettick > -1 then
    resettick = resettick - 1 
    if resettick < 1 then
      resetfriendnode()
      resettick = -1
    end
  end
  if magictick > -1 then
    magictick = magictick + 1 
    if magictick > 4 then
      pmagic(7,rmarray[math.random(1,#rmarray)],1)
      magictick = 0
    end
  end
  
  if gg.isClickedUiButton() then
    if crset.enable then
      crmenu()
    elseif wrset.enable then
      wrmenu()
    elseif teleparr.enable then
      telemenu()
    elseif huiset then
      hookui()
    else
      domenu()
    end
  end
  if gg.isVisible(true) then
    if teleping then
      gg.toast('Fast home enabled')
      teleping = false
      fasthome = true
    end
    if umenu and psettings.showmenu then
      umenu = false
      if crset.enable then
        crmenu()
      elseif wrset.enable then
        wrmenu()
      elseif teleparr.enable then
        telemenu()
      elseif huiset then
        hookui()
      else
        domenu()
      end
    end
  else
    umenu = true
  end
   gg.sleep(100)
end

--That dead sky open source by Kel
--Do you have some good functions or codes?
--Tell me discord ExMachina#5142
