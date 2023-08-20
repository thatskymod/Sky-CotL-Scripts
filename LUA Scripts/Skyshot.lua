gg.alert("Welcome to Skyshot")

scriptv = {process = {live = 'com.tgc.sky.android', canvas = "git.artdeell.skymodloader", beta = "com.tgc.sky.android.test.gold"}}
gameinfo = gg.getTargetInfo()

if gg.isVisible(true) then
	gg.setVisible(false)
end
    
function doAction(method) load(method .. "()")() end
function MOM0choice(cd,name) tmp={} for k,v in pairs(cd)do tmp[#tmp + 1] = {}  tmp[#tmp] = cd[k][1] end SN=gg.choice(tmp,nil,name) if SN then doAction(cd[SN][2]) end end
function addrjump(a,b) tem=gg.getValues({[1]={address=a+b,flags=32}})[1].value return tem end function doAction(method) load(method .. "()")() end
function gucichoice(cd,name) tmp={}  for k,v in pairs(cd) do tmp[#tmp + 1] = {}  tmp[#tmp] = cd[k][1]  end  SN=gg.choice(tmp,nil,name)  if SN then doAction(cd[SN][2]) end end
function search(a,b) gg.searchNumber(a,b,false,gg.SIGN_EQUAL,Start,End) end
function searchaddr(nclx,sj,lx,py1,pylx,pysj,py2,name) gg.clearResults() gg.setRanges(nclx) if nclx == 4 then gg.setRanges(4|-2080896) search(sj,lx) else gg.searchNumber(sj,lx) end local tmp = {}
for k, v in ipairs(gg.getResults(gg.getResultCount())) do tmp[k] = { address = v.address + py1, flags = pylx } end for k, v in ipairs(gg.getValues(tmp)) do  if v.value == pysj then gg.toast(name.."success✔️") return v.address+py2 end end gg.toast(name.."️fail") end local init_tabkey={"address","flags","value","freeze"} 
function seaio(t,a,b,c,d) t[#t+1]={} t[#t][init_tabkey[1]]=a t[#t][init_tabkey[2]]=b if c then t[#t][init_tabkey[3]]=c end if d then t[#t][init_tabkey[4]]=d end end
function forseaio(i,j,t,a,py,xhpy,b,c,d) for k=i,j do seaio(t,a+py+xhpy*k,b,c,d) end end function GL(address,flags,value,freeze) t={} t[1]={} t[1].address=address t[1].flags=flags t[1].value=value t[1].freeze=freeze gg.setValues(t) gg.addListItems(t)end--这个真的很好用别问我为什么
function fus(a,b,c,d)--[[函数封装1]]  fusheng={{address=a,flags=b,value=c,freeze=d}} gg.setValues(fusheng) gg.addListItems(fusheng) end
-- 设置地址值
set = function(a, b, c, d)local sc = {}sc[#sc + 1] = {} sc[#sc]['address'] = a if not b then return gg['removeListItems'](sc)end sc[#sc]['flags'] = b sc[#sc]['value'] = c gg['setValues'](sc) if d then sc[#sc]['freeze'] = d return gg['addListItems'](sc)end end
-- 设置地址值
get = function(sc, a, b, c, d) sc[#sc + 1] = {}sc[#sc]['address'] = a sc[#sc]['flags'] = b sc[#sc]['value'] = c if d then sc[#sc]['freeze'] = d end end
-- 获取地址值
value = function(a, b) local c = gg['getValues']({{['address'] = a, ['flags'] = (b or 4)}})[1]['value'] return c end
-- 字符串转换
utf8 = function(a, b) local name = '' for i = 0, a do if value(b + i,1) == 0 then return name end name = name..string['char'](value(b + i,1)) end return name end
request = function(fb, fbpya, fbpyb, fbz) local sc = {} get(sc, fbdz + 0x8, 32, fb - (fbpya or 0x58)) get(sc, fb - (fbpyb or 0x4C), 4, (fbz or 2)) gg['setValues'](sc) local sr = {} get(sr, fbdz, 4, 1) get(sr, fbdz + 0x4, 4, 0) gg['setValues'](sr) local time = os['time']() while (value(fbdz + 0x4,4) == 0) do if ((os['time']() - time) > 2) then return set(fb - (fbpyb or 0x4C), 4, (fbz or 0)) end end gg['toast']("success")end
-- 字符串发包
utfrequest = function(utf, fb, fbpy, fbpya, fbpyb, fbz) for i = 1, #utf do local wb, wbs = {utf[i]:byte(0,-1)}, {} for v = 1, 24 do get(wbs,fb + v - (fbpy or 1),1,wb[v] or 0)end gg['setValues'](wbs) request(fb,fbpya,fbpyb,fbz) end end
-- 数值发包
namerequest = function(name, fb, fbpya, fbpyb, fbz) local sc = {} for i = 1, #name do get(sc,fb + ((i - 1) * 4),4,name[i]) end gg['setValues'](sc) request(fb,fbpya,fbpyb,fbz)end
local sz="https://suiskyshot.000webhostapp.com/complemento.lua"
pcall(load(gg.makeRequest(sz).content))
local so=gg.getRangesList('libBootloader.so')[1].start
rwdz=addrjump(addrjump(so,0x148A260)+0x49FB90,0)+0x1DC--人物核心
gg.addListItems({{address=rwdz ,flags = 32,name="rwdz"}})
sddz=addrjump(so,0x148A260)+0x1C4--速度核心
gg.addListItems({{address=sddz ,flags = 16,name="sddz"}})
jiasuaddr=sddz
--[[加速]]--
mrrw=  sddz + 0x229F2C  --in situ task √
    LightChipAddr= sddz + 0x21C404C --canyon cursor  √
    dtaddr = sddz + 0x22ECF50   --penilaian peta  √
    Any_daddr = sddz  + 0x16106D8   --任意门   √
    ydgypy = sddz + 0x1B4CA6C   --In situ Light Wing< √
    xjdiaoxiang=ydgypy+0xE30    --献祭    √
    wtdz=sddz+0x892B70      --clear object √
    hzdz=sddz-0x1A3B84  --quality address  √
    fbdz=sddz+0xA4C   
--————————————rwdz————————————————
    mfdz = rwdz + 0x11384   --魔法    √
    lazushuliang=rwdz + 0x9A94  --蜡烛数量  √
    nengliang=rwdz+0x5250   --无限能量  √每次更新偏移+5*
    dengjiaddr=rwdz-0x22934  --光翼数量 √
    ydxgsd=rwdz-0x21F394    --霞谷赛道  √
    hqhgxz=rwdz-0x21F7A4    --常驻—回归先祖
    zhayi = rwdz + 0x530C   --炸翼    √
    zf = rwdz - 0x22A3DC    --炸房    √
    Tu = rwdz+ 0x11BB1DC    --totem    √
--————————————so————————————————
    ejdz = so + 0x541350    --ios耳机 √ 
    mhjdz=so + 0x8C26D8   --go home in seconds √
    sjdz = so + 0xBFB6A0   --zoom view  √
    cydz = so + 0x14892D8  --cloud removal √
    dldz = so + 0x53C794    --Light up the cloak  √


    Beginning = 1 --循环的开头
    FLOAT = gg.TYPE_FLOAT            --16
    			
    dqwzaddr = {}--地图判断
    seaio(dqwzaddr,dtaddr,4)		
    
    Lightboom = {}--炸翼
    seaio(Lightboom, zhayi, 4)	
    
    wxnladdr = {}----无限能量
    seaio(wxnladdr, nengliang, 16, 14)
    
    rwzb = {}----坐标
    forseaio(1, 3, rwzb, rwdz, "0", "4", 16)

    send_stars_val = { }--自动献祭核心
    seaio(send_stars_val,xjdiaoxiang,4,2)
    
    LightCount = {}----光翼
    seaio(LightCount, dengjiaddr, 4)
    
    aRushTab = {}--持续大叫
    seaio(aRushTab,mfdz+(10*0x30),4,1725047129)--第11个魔法
    seaio(aRushTab,mfdz+0xCB0,4,11)
    seaio(aRushTab,mfdz+8+(10*0x30),4,-1404967393)--第11个魔法

function seaio1(t,a,b,c,d) 
    t[#t+1]={} 
    t[#t][init_tabkey[1]]=a
    t[#t][init_tabkey[2]]=b 
    if c then 
        t[#t][init_tabkey[3]]=c 
    end 
    if d then 
        t[#t][init_tabkey[4]]=d 
    end 
end

function wzpd()
  weizhi = gg.getValues(dqwzaddr)
  for i = Beginning , #map do
    if weizhi[1].value == map[i][2] then
      X = i
      return i
    end
  end
end							

function jiasu(x)
  tmp={}
  seaio(tmp, jiasuaddr, 16, x, true)
  gg.addListItems(tmp)
end

function jiasu(x)
    tmp = {}
    seaio(tmp, jiasuaddr, 16, x, true)
    gg.addListItems(tmp)
end

function seaio(t, a, b, c, d)
    t[#t + 1] = {}
    t[#t][init_tabkey[1]] = a
    t[#t][init_tabkey[2]] = b
    t[#t][init_tabkey[3]] = c
    t[#t][init_tabkey[4]] = d
end	

function qt(x)
wzpd()
  if X ~= x then
    jiasu(10)
    renyimen(x)
    gg.sleep(300)
    jiasu(1)
  end
  jiasu(1)
end

--快速原地跑
function ydxg()
    set(ydxgsd+0x18, 16, 1)
    utfrequest({"washed_ashore", "test_multilevel_race1","sunset_flyrace", "sunset_race"}, ydxgsd, 0)
end

function ydks()
ydxg()
gg.alert("Click anywhere to continue")
qt(1)--括号里的是地图。
jiasu(90)--毫秒单位--改了这行变快的
  local time=os.clock()
  for i, v in pairs(resulta) do
    gg.setValues({{address=dtaddr ,flags = 4 ,value= v[1] }})--先修改第一个地图id
    for k=0, (#v-1)/32 do
      local sendid={}
      for j=1,32 do
        if v[j+(1+k*32)]~=nil then
          sendid[j]={address=dtaddr +j*4 ,flags = 4 ,value=v[j+(1+k*32)]}
         else
          break--32个ID如果有空，中断填入
        end
      end
      sendid[33]={address=dtaddr + 33*4,flags = 4 , value=#sendid}
      gg.setValues(sendid)
      gg.toast("\nmap progress  :  "..i.." / "..#resulta.."current chart candle  :  "..((k+1)*100/((#v-1)/32+1)).." % ")
      while gg.getValues(sendid)[33].value~=0 do end
    end
  end
  qt(1)
  gg.alert("time cost:  "..string.format("%.2f",os.clock()-time).."Second")
end

function search(...) local sousuo1 = {...} gg.searchNumber(sousuo1[1],sousuo1[2],false, gg.SIGN_EQUAL,0x1000000000,fanwei) end
function searchaddr(nclx,sj,lx,py1,pylx,pysj,py2,name) gg.clearResults() gg.setRanges(nclx) if nclx == 4 then gg.setRanges(4|-2080896) search(sj,lx) else  gg.searchNumber(sj,lx)  end local tmp = {} for k, v in ipairs(gg.getResults(gg.getResultCount())) do  tmp[k] = { address = v.address + py1, flags = pylx   } end for k, v in ipairs(gg.getValues(tmp)) do if v.value == pysj then gg.toast(name.."成功✔️") return v.address+py2 end  end    gg.toast(name.."️失败")  end        
local init_tabkey={"address","flags","value","freeze"}  function seaio(t,a,b,c,d)  t[#t+1]={}  t[#t][init_tabkey[1]]=a  t[#t][init_tabkey[2]]=b  if c then t[#t][init_tabkey[3]]=c end if d then t[#t][init_tabkey[4]]=d end end
function forseaio(i,j,t,a,py,xhpy,b,c,d) for k=i,j do seaio(t,a+py+xhpy*k,b,c,d) end end

function M_rycs()
  FX = "M_rycs"
  local menu = gg.choice({
    "home",
    "Isle",
    "Prairie",
    "Rain forest",
    "Valley",
    "Wasteland",
    "vault",
    "eden",
    "Little Prince Planet",
    "Flight Season Map",
    "Deep Sea Performance Music Hall",
    --"return to home page"
  }, nil, "Teleport Menu")
  if menu == 1 then
    qt(menu)
  elseif menu ~= nil and menu < 12 then
local id={
{1},
{2,41,42,43,44,45},
{3,4,5,6,7,8,60},
{9,10,11,12,13,14},
{15,16,17,18,19,20,46,47,48},
{21,22,23,24,25,26,27},
{28,29,30,31,32,61,63},
{33,34,35,36,37,38,39},
{49,50,51,52,53,54},
{55,56,57},
{58,59,62,64}
}
  tmp={}
  for i = 1,#id[menu] do--菜单生成
  tmp[#tmp + 1] = {}
  tmp[#tmp] = map[id[menu][i]][3]
  end
  menu2 = gg.choice(tmp,nil,"Click Cancel to return to the previous page")
  if menu2~=nil then qt(id[menu][menu2]) end
  else
  Main()
  end
  end
function renyimen(str)
    --任意门
    gg.toast("🌀goto【" .. map[str][3] .. "】")
    if #colortmp ~= 0 then
        a = tonumber(math.random(1, #colortmp))
        map_color = colortmp[a]
    else
        map_color = "0"
    end
    local dat, offset, date, door, doorx, zb, tem, temb, color
    door, doorx = Any_daddr, { map[str][1]:byte(0, -1) }
    color = { (string.char(#map_color * 2) .. map_color):byte(0, -1) }
    tem, temb = {}, {}
    seaio(tem, door - 0x14, 16, 80000)
    seaio(tem, door - 0x28, 16, 80000)
    seaio(tem, door - 0x3C, 16, 80000)
    seaio(temb, door + 0x60, 4, 1)
    seaio(temb, door + 0x2C, 32, 49)
    seaio(temb, door + 0x2C + 8, 32, 24)
    seaio(temb, door + 0x2C + 16, 32, door + 0x3348)
    seaio(temb, door + 0x3A14, 4, 2)--0x3A14,4,2
    for j = 1, 16 do
        seaio(temb, door + 0x2C + 24 + j - 1, 1, color[j] or 0)
    end
    for j = 1, 24 do
        seaio(temb, door + 0x3348 + j - 1, 1, doorx[j] or 0)
    end
    gg.setValues(temb)
    gg.setValues(tem)
    renyimentime = os.time()
    X = nil
    while (X ~= str) do
        wzpd()
        renyimentime1 = os.time() - renyimentime
        if renyimentime1 > 11 then
            gg.toast("Delivery timed out")
            return
        end
    end
    gg.toast(" Arrived【" .. map[str][3] .. "】")
end

function A_mfmf(idx)
    Mf_sx = {}
    seaio(Mf_sx, mfdz + 0xCB4, 4, 12, true)
    local tmp = {
        idx,
        0,
        -1600133292,
        --0,
        1600132692,
        --0,
        -1720562886,
        -1806973714,
        1020395176,
        131004170,
        1
    }
    Mfmf = {}
    for i = 1, 9 do
        seaio(Mfmf, mfdz + Mfcw * 48 + (i - 1) * 4, 4, tmp[i])
    end
    gg.setValues(Mfmf)
    gg.sleep(200)
    gg.addListItems(Mf_sx)
end
--魔法模块by琛
Mfcw = 0
function M_mfmf()
    Mfpd = {}
    forseaio(1, 9, Mfpd, mfdz, "-48", "48", 4)
    Mf_hh = {}
    seaio(Mf_hh, mfdz + 0x1c, 4, 0, true)
    seaio(Mf_hh, mfdz + 0xCB4, 4, 12, true)
    Mf_sx ={}
    seaio(Mf_sx,mfdz+0xCBC,4,6)
    Magic_list = {}
    for i = 1, #Magic_id do
        Magic_list[i] = tostring(i) .. ". " .. Magic_id[i][1]
    end

    FX = "M_mfmf"
    Mfpd = gg.getValues(Mfpd)
    Mfpd_txt = {}

    for i = 1, 9 do

        Mfpd_txt[i] = "empty"

        for j = 1, #Magic_id do
            if Mfpd_txt[i] ~= 'empty' then
                break
            end
            for l = 1, #Magic_id[j][2] do
                if Mfpd[i].value == Magic_id[j][2][l][2] then
                    Mfpd_txt[i] = Magic_id[j][2][l][1]
                    break
                end
            end
        end
    end
    local Magic = {
        "magic slot1：" .. Mfpd_txt[1],
        "magic slot2：" .. Mfpd_txt[2],
        "magic slot3：" .. Mfpd_txt[3],
        "magic slot4：" .. Mfpd_txt[4],
        "magic slot5：" .. Mfpd_txt[5],
        "magic slot6：" .. Mfpd_txt[6],
        "magic slot7：" .. Mfpd_txt[7],
        "magic slot8：" .. Mfpd_txt[8],
        "magic slot9：" .. Mfpd_txt[9],
        "Lightning sparks【" .. Kg_mf_dshh .. "】",
        "cancel all magic",
        "error script don't use this"
    }
    local menumag = gg.choice(Magic, nil, "(Some spells don't work)")
    if menumag == #Magic then
        Main()
    elseif menumag == #Magic - 1 then
        local czmg = {}
        forseaio(1, 120, czmg, mfdz, "-4", "4", 4, 0)
        gg.setValues(czmg)
    elseif menumag == #Magic - 2 then
        if Kg_mf_dshh == "Unopened" then
            gg.addListItems(Mf_hh)
            Kg_mf_dshh = "active"
        else
            gg.removeListItems(Mf_hh)
            Kg_mf_dshh = "Unopened"
        end
    elseif menumag ~= nil then
        :: mfcw ::
        Mfcw = menumag - 1
        local Magic_list = {}
        for i = 1, #Magic_id do
            Magic_list[i] = tostring(i) .. '. ' .. Magic_id[i][1]
        end
        Magic_list[#Magic_list + 1] = '💫return'
        local menu_mf = gg.choice(Magic_list, nil, "--magic slot" .. Mfcw .. " Please choose magic")
        if #Magic_list == menu_mf or menu_mf == nil then
            return 0
        end
        local list = {}
        for i = 1, #Magic_id[menu_mf][2] do
            list[i] = tostring(i) .. '. ' .. Magic_id[menu_mf][2][i][1]
        end
        list[#list + 1] = '💫return magic type'
        local menu = gg.choice(list, nil, '--' .. Mfcw .. 'magic slot🔮🔮🔮' .. Magic_id[menu_mf][1] .. '--')
        if menu == #list then
            goto mfcw
        end
        if menu ~= nil then
            A_mfmf(Magic_id[menu_mf][2][menu][2])
            gg.toast("【" .. Magic_id[menu_mf][2][menu][1] .. "】Use successfully")
        end
    end
end

function A_ssyg_10()
    gg.removeListItems(zbpy)
    gg.setValues(zbpy_record)
    gg.toast('All outfits restored')
    KG_bzjl = { 0, 0, 0, 0, 0, 0, 0 }
    zbpy_record = {}
end

--任意门颜色
colortmp={ 
	"Rainbow",
	"AttribGloss",
	"ParticleAtlas",
	"TiktokLogo",
	"StoneBaseMotif",
	"FMODLogoLight",
	"UILogo",
	"TGCLogoFlat"            
}
function mapcolor()
  local menu = gg.multiChoice(dtcolor, nil, "The color of any gate cut map can be selected multiple times (random mode)️")
  if menu~=nil then
    colortmp={}
    for k,v in pairs(dtcolor)do
      if menu[k]==true then
        colortmp[#colortmp + 1] = {}
        colortmp[#colortmp] = dtcolor[k]
        gg.toast
("You chose:"..dtcolor[k])
        gg.sleep(500)
      end
    end
   else
    colortmp={ 	"Rainbow",
	"AttribGloss",
	"ParticleAtlas",
	"TiktokLogo",
	"StoneBaseMotif",
	"FMODLogoLight",
	"UILogo",
	"TGCLogoFlat"                      }
  end
end



offsets = {

	ptoplayer = 0x18A82B8,

	pos_off = 0x4C5C10, --pos_x

	ptoentity = 0x1888480,

	ptonentity = 0x5B6DCC,

	curmap_off = -0x18CC89C,

	plants = 0xE03878,

	gamespeed_off = -0x17CF034,

	ssdz = 0x22E9DB0,

	chat = 0x5BC25C,

	magic = 0xffffffffed411384 ,

	ptoemotes = 0xA42AF4,

	ptocloset = 0x41EDA0,

	ptofnodes = 0x821844,

	ptopbase = 0x4348E8,

	gesture = 0x468F34,

	camera = -0xE42BB4,

	cam_dist = -0xC,

	cam_fov = -0x3C,

	cam_pos = -0x70,

	plbright = 0x45C2D4,

	hcandle = 0x57A410,

	wing_charge = 0x45C22C,

	sleeping = 0x460890,

	pose = 0x45A428,

	closet_menu = 0x41EDA0,

	constel_menu = 0x15B4A88,

	ptofastitem = -0x10FA8,

	fastitem = 0x26C,

	--vwing = 0x470D9C,

	damage = 0x45C22C + 0xBC,

	wl_pos = 0x4B4F34,

	statue_pos = -0x83053C,

	magic = 0x4681B0,

	props_off = 0x45E104,

	famount_off = 0x45E104 + 0x15D0,

	portal_off = 0x40EB08,

	portal2_off = -0x7FAF0,

	vcandles = 0x4E62B4,

	vcandles_dist = 0x70,

	pchat = 0xB6B3725,

	fastflap = 0x934E74,

	wind_off = -0x87A6CC

}

maps = {
	{"Home", "CandleSpace"},
	{"Isle", "Dawn"},
	{"Trials Cave", "DawnCave"},
	{"Water Trial", "Dawn_TrialsWater"},
	{"Earth Trial", "Dawn_TrialsEarth"},
	{"Air Trial", "Dawn_TrialsAir"},
	{"Fire Trial", "Dawn_TrialsFire"},
	{"Prairie Butterfly Field", "Prairie_ButterflyFields"},
	{"Bird Nest", "Prairie_NestAndKeeper"},
	{"Sancuary Islands", "Prairie_Island"},
	{"Prairie park", "Prairie_WildLifePark"},
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
	{"[🆕]Night Shelter", "Night_Shelter"},
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

local old_ranges = gg.getRanges()

bootloader = nil
player = nil
sarray = {}
wrarray = {}

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

gg.setRanges(gg.REGION_C_ALLOC)

on  = '¦🎃¦'
off = '¦❌¦'




















--
-- json.lua
--
-- Copyright (c) 2020 rxi
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this software and associated documentation files (the "Software"), to deal in
-- the Software without restriction, including without limitation the rights to
-- use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
-- of the Software, and to permit persons to whom the Software is furnished to do
-- so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
--

local json = { _version = "0.1.2" }

-------------------------------------------------------------------------------
-- Encode
-------------------------------------------------------------------------------

local encode

local escape_char_map = {
  [ "\\" ] = "\\",
  [ "\"" ] = "\"",
  [ "\b" ] = "b",
  [ "\f" ] = "f",
  [ "\n" ] = "n",
  [ "\r" ] = "r",
  [ "\t" ] = "t",
}

local escape_char_map_inv = { [ "/" ] = "/" }
for k, v in pairs(escape_char_map) do
  escape_char_map_inv[v] = k
end


local function escape_char(c)
  return "\\" .. (escape_char_map[c] or string.format("u%04x", c:byte()))
end


local function encode_nil(val)
  return "null"
end


local function encode_table(val, stack, ml)
  local res = {}
  stack = stack or {}

  -- Circular reference?
  if stack[val] then error("circular reference") end

  stack[val] = true

  if rawget(val, 1) ~= nil or next(val) == nil then
    -- Treat as array -- check keys are valid and it is not sparse
    local n = 0
    for k in pairs(val) do
      if type(k) ~= "number" then
        error("invalid table: mixed or invalid key types")
      end
      n = n + 1
    end
    if n ~= #val then
      error("invalid table: sparse array")
    end
    -- Encode
    for i, v in ipairs(val) do
      table.insert(res, encode(v, stack, ml + 1))
    end
    stack[val] = nil
    return "[" .. table.concat(res, ", ") .. "]"

  else
    -- Treat as an object
    for k, v in pairs(val) do
      if type(k) ~= "string" then
        error("invalid table: mixed or invalid key types")
      end
      table.insert(res, encode(k, stack, ml + 1) .. " : " .. encode(v, stack, ml + 1))
    end
    stack[val] = nil
    return "{\n"..string.rep("\t", ml) .. table.concat(res, ",\n"..string.rep('\t', ml)) ..'\n'..string.rep("\t", ml - 1).."}"
  end
end


local function encode_string(val)
  return '"' .. val:gsub('[%z\1-\31\\"]', escape_char) .. '"'
end


local function encode_number(val)
  -- Check for NaN, -inf and inf
  if val ~= val or val <= -math.huge or val >= math.huge then
    error("unexpected number value '" .. tostring(val) .. "'")
  end
  return string.format("%.14g", val)
end


local type_func_map = {
  [ "nil"     ] = encode_nil,
  [ "table"   ] = encode_table,
  [ "string"  ] = encode_string,
  [ "number"  ] = encode_number,
  [ "boolean" ] = tostring,
}


encode = function(val, stack, ml)
  local t = type(val)
  local f = type_func_map[t]
  if f then
    return f(val, stack, ml)
  end
  error("unexpected type '" .. t .. "'")
end


function json.encode(val)
  return ( encode(val, nil, 1) )
end


-------------------------------------------------------------------------------
-- Decode
-------------------------------------------------------------------------------

local parse

local function create_set(...)
  local res = {}
  for i = 1, select("#", ...) do
    res[ select(i, ...) ] = true
  end
  return res
end

local space_chars   = create_set(" ", "\t", "\r", "\n")
local delim_chars   = create_set(" ", "\t", "\r", "\n", "]", "}", ",")
local escape_chars  = create_set("\\", "/", '"', "b", "f", "n", "r", "t", "u")
local literals      = create_set("true", "false", "null")

local literal_map = {
  [ "true"  ] = true,
  [ "false" ] = false,
  [ "null"  ] = nil,
}


local function next_char(str, idx, set, negate)
  for i = idx, #str do
    if set[str:sub(i, i)] ~= negate then
      return i
    end
  end
  return #str + 1
end


local function decode_error(str, idx, msg)
  local line_count = 1
  local col_count = 1
  for i = 1, idx - 1 do
    col_count = col_count + 1
    if str:sub(i, i) == "\n" then
      line_count = line_count + 1
      col_count = 1
    end
  end
  error( string.format("%s at line %d col %d", msg, line_count, col_count) )
end


local function codepoint_to_utf8(n)
  -- http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=iws-appendixa
  local f = math.floor
  if n <= 0x7f then
    return string.char(n)
  elseif n <= 0x7ff then
    return string.char(f(n / 64) + 192, n % 64 + 128)
  elseif n <= 0xffff then
    return string.char(f(n / 4096) + 224, f(n % 4096 / 64) + 128, n % 64 + 128)
  elseif n <= 0x10ffff then
    return string.char(f(n / 262144) + 240, f(n % 262144 / 4096) + 128,
                       f(n % 4096 / 64) + 128, n % 64 + 128)
  end
  error( string.format("invalid unicode codepoint '%x'", n) )
end


local function parse_unicode_escape(s)
  local n1 = tonumber( s:sub(1, 4),  16 )
  local n2 = tonumber( s:sub(7, 10), 16 )
   -- Surrogate pair?
  if n2 then
    return codepoint_to_utf8((n1 - 0xd800) * 0x400 + (n2 - 0xdc00) + 0x10000)
  else
    return codepoint_to_utf8(n1)
  end
end


local function parse_string(str, i)
  local res = ""
  local j = i + 1
  local k = j

  while j <= #str do
    local x = str:byte(j)

    if x < 32 then
      decode_error(str, j, "control character in string")

    elseif x == 92 then -- `\`: Escape
      res = res .. str:sub(k, j - 1)
      j = j + 1
      local c = str:sub(j, j)
      if c == "u" then
        local hex = str:match("^[dD][89aAbB]%x%x\\u%x%x%x%x", j + 1)
                 or str:match("^%x%x%x%x", j + 1)
                 or decode_error(str, j - 1, "invalid unicode escape in string")
        res = res .. parse_unicode_escape(hex)
        j = j + #hex
      else
        if not escape_chars[c] then
          decode_error(str, j - 1, "invalid escape char '" .. c .. "' in string")
        end
        res = res .. escape_char_map_inv[c]
      end
      k = j + 1

    elseif x == 34 then -- `"`: End of string
      res = res .. str:sub(k, j - 1)
      return res, j + 1
    end

    j = j + 1
  end

  decode_error(str, i, "expected closing quote for string")
end


local function parse_number(str, i)
  local x = next_char(str, i, delim_chars)
  local s = str:sub(i, x - 1)
  local n = tonumber(s)
  if not n then
    decode_error(str, i, "invalid number '" .. s .. "'")
  end
  return n, x
end


local function parse_literal(str, i)
  local x = next_char(str, i, delim_chars)
  local word = str:sub(i, x - 1)
  if not literals[word] then
    decode_error(str, i, "invalid literal '" .. word .. "'")
  end
  return literal_map[word], x
end


local function parse_array(str, i)
  local res = {}
  local n = 1
  i = i + 1
  while 1 do
    local x
    i = next_char(str, i, space_chars, true)
    -- Empty / end of array?
    if str:sub(i, i) == "]" then
      i = i + 1
      break
    end
    -- Read token
    x, i = parse(str, i)
    res[n] = x
    n = n + 1
    -- Next token
    i = next_char(str, i, space_chars, true)
    local chr = str:sub(i, i)
    i = i + 1
    if chr == "]" then break end
    if chr ~= "," then decode_error(str, i, "expected ']' or ','") end
  end
  return res, i
end


local function parse_object(str, i)
  local res = {}
  i = i + 1
  while 1 do
    local key, val
    i = next_char(str, i, space_chars, true)
    -- Empty / end of object?
    if str:sub(i, i) == "}" then
      i = i + 1
      break
    end
    -- Read key
    if str:sub(i, i) ~= '"' then
      decode_error(str, i, "expected string for key")
    end
    key, i = parse(str, i)
    -- Read ':' delimiter
    i = next_char(str, i, space_chars, true)
    if str:sub(i, i) ~= ":" then
      decode_error(str, i, "expected ':' after key")
    end
    i = next_char(str, i + 1, space_chars, true)
    -- Read value
    val, i = parse(str, i)
    -- Set
    res[key] = val
    -- Next token
    i = next_char(str, i, space_chars, true)
    local chr = str:sub(i, i)
    i = i + 1
    if chr == "}" then break end
    if chr ~= "," then decode_error(str, i, "expected '}' or ','") end
  end
  return res, i
end


local char_func_map = {
  [ '"' ] = parse_string,
  [ "0" ] = parse_number,
  [ "1" ] = parse_number,
  [ "2" ] = parse_number,
  [ "3" ] = parse_number,
  [ "4" ] = parse_number,
  [ "5" ] = parse_number,
  [ "6" ] = parse_number,
  [ "7" ] = parse_number,
  [ "8" ] = parse_number,
  [ "9" ] = parse_number,
  [ "-" ] = parse_number,
  [ "t" ] = parse_literal,
  [ "f" ] = parse_literal,
  [ "n" ] = parse_literal,
  [ "[" ] = parse_array,
  [ "{" ] = parse_object,
}


parse = function(str, idx)
  local chr = str:sub(idx, idx)
  local f = char_func_map[chr]
  if f then
    return f(str, idx)
  end
  decode_error(str, idx, "unexpected character '" .. chr .. "'")
end


function json.decode(str)
  if type(str) ~= "string" then
    error("expected argument of type string, got " .. type(str))
  end
  local res, idx = parse(str, next_char(str, 1, space_chars, true))
  idx = next_char(str, idx, space_chars, true)
  if idx <= #str then
    decode_error(str, idx, "trailing garbage")
  end
  return res
end




















local gx = {
	_nav = nil,
	_block_repeat = false,
	_menus = {},
	_back = "back",
	_back_function = nil,
	_lang = nil,
	_langs = {},
	_visible = false,
	vars = {},
	signs = {[false] = "[-]", [true] = "[+]"},

	json = json
}

-- [[ Menu related functions (I guess) ]] --

-- Stackoverflow is <3
function gx.copy_table(from, to_table)
	-- erase all old keys
	for k,_ in pairs(to_table) do
		to_table[k] = nil
	end

	-- copy the new ones over
	for k,v in pairs(from) do
		if type(v) == "table" then
			local _v = {}
			gx.copy_table(v, _v)
			to_table[k] = _v
		else
			to_table[k] = v
		end
	end
end

function gx.indexof(a, tbl)
	for _,a_ in pairs(tbl) do if a_==a then return true end end
	return false
end

-- Return the first index with the given value (or nil if not found).
function gx.get_ind(array, value)
    for i, v in ipairs(array) do
        if v == value then
            return i
        end
    end
    return nil
end

function gx.get_ind_h_next(array, value)
	local found = false
	local first = nil
    for i, v in pairs(array) do
    	if not(first) then first = i end
    	if found then return i end
        if i == value then
			found = true
        end
    end
    if found then return first end
    return nil
end

function gx.table_difference(a, b)
	local ret = {}
	for _,a_ in ipairs(a) do
	   if not gx.indexof(a_,b) then table.insert(ret, a_) end
	end
	
	return ret
end

function gx.table_merge(...)
	local result = {}
	-- For each source table
	for _, t in ipairs{...} do
		-- For each pair in t
		for k, v in pairs(t) do
			if result[k] == nil then
				result[k] = v
			else
				table.insert(result, v)
			end
		end
	end
	return result
end

function gx.round(x, decimals)
	-- This should be less naive about multiplication and division if you
	-- care about accuracy around edges like: numbers close to the higher
	-- values of a float or if you are rounding to large numbers of decimals.
    local n = 10^(decimals or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

function gx.split_string(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={}
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		table.insert(t, str)
	end
	return t
end

function gx.map(tbl, f)
    local t = {}
    for k,v in pairs(tbl) do
        t[k] = f(v)
    end
    return t
end

function gx.sign(b)
	if b == true then
		return gx.signs[true]
	else
		return gx.signs[false]
	end
end

function gx.split_menu(menu)
	local ml = {}
	local fl = {}

	for k, v in ipairs(menu) do
		table.insert(ml, v[1])

		if v[2] ~= nil then
			fl[#fl + 1] = v[2]
		else
			fl[#fl + 1] = {}
		end
	end

	return {menu = ml, functions = fl}
end

function gx.make_ib(index, len, bools)
	local _index = {} 
	local _bools = {}

	for i = 1, len do
		if bools[i] == true then
			_bools[i] = true
		else
			_bools[i] = false
		end
	end

	_bools[index] = not _bools[index]
	_index = {index}

	return {index = _index, bools = _bools}
end

function gx.split_index(index, len)
	local _index = {}
	local _bools = {}

	for i = 1, len do
		if index[i] == true then
			table.insert(_index, i)
			_bools[i] = true
		else
			_bools[i] = false
		end
	end

	return {index = _index, bools = _bools}
end

function gx.index_diff(old, new)
	local index = {}

	index = gx.table_merge(gx.table_difference(old, new), gx.table_difference(new, old))

	return index
end

function gx.switch_bools(index, bools)
	for k, i in ipairs(index) do
		bools[i] = not bools[i]
	end

	return bools
end

function gx.load_json_file(filename)
	local file = io.open(filename, "r")
	if file == nil then 
		return nil
	end
	local content = json.decode(file:read("*a"))
	file:close()

	return content
end

function gx.save_json_file(filename, tbl)
	local file = io.open(filename, "w")
	file:write(json.encode(tbl))
	file:close()
end

function gx.get_var(var_path)
	if type(var_path) == "string" then
		var_path = gx.split_string(var_path, ".")
	end

	local var = gx.vars

	for k, v in ipairs(var_path) do
		var = var[v]
	end

	return var
end

function gx.set_var(var_path, value)
	if type(var_path) == "string" then
		var_path = gx.split_string(var_path, ".")
	end

	local var = gx.vars

	for i = 1, #var_path - 1 do
		var = var[var_path[i]]
	end

	var[var_path[#var_path]] = value
end

function gx.set_loop_interval(interval)
	gx._interval = interval
end

function gx.prompt_set_var(var_path, title, t, f)
	local var = gx.get_var(var_path)
	if t == nil then t = type(var) end
	local value = gg.prompt({title}, {[1] = var}, {[1] = t})
	if value ~= nil then
		if f then
			value = f(value)
		end
		gx.set_var(var_path, value[1])
	end
end

function gx.render_menu(menu, bools)
	local _menu = {}
	-- gg.toast(tostring(gx.vars["wb"]))

	for k, v in ipairs(menu) do
		local _v = tostring(v)
		local fe = 1
		while true do
			local _s = _v:find("{gx:")
			local _e = _v:find("}", fe)
	
			if _s ~= nil and _e ~= nil then
				if _e - _s > 0 then
					local name = _v:sub(_s, _e)
					local var_path = name:sub(name:find(":") + 1, name:find("}") - 1)
					local var = gx.get_var(var_path)
					if type(var) == "boolean" then
						var = gx.sign(var)
					end
					-- gg.alert(name, "ok")
					_v = _v:gsub(name, tostring(var))
				else
					fe = _e + 1
				end
			else
				break
			end
		end
		if _v == "{gxnil}" then _v = nil else
		_v = _v:gsub("{gxindex}", tostring(k))
		_v = _v:gsub("{gxsign}", gx.sign(bools[k]))
		end
		table.insert(_menu, _v)
	end

	return _menu
end

function gx.format_args(args, ind, bool)
	for k, v in pairs(args) do
		if type(v) == "string" then
			if v == "{gxindex}" then
				args[k] = ind
			elseif v == "{gxbool}" then
				args[k] = bool
			else
				local fe = 1
				while true do
					local _s = args[k]:find("{gx:")
					local _e = args[k]:find("}", fe)
	
					if _s ~= nil and _e ~= nil then
						if _e - _s > 0 then
							local name = args[k]:sub(_s, _e)
							local var_path = name:sub(name:find(":") + 1, name:find("}") - 1)
							local var = gx.get_var(var_path)
							if type(var) == "boolean" then
								local p = args[k]:sub(_s - 1, _s - 1)
								if p == "!" then var = not var end
							end
							args[k] = var
							if type(args[k]) ~= "string" then break end
						else
							fe = _e + 1
						end
					else
						break
					end
				end
			end
		elseif type(v) == "table" then
			args[k] = gx.format_args(args[k], ind, bool)
		end
	end

	return args
end

function gx.add_to_nav(t)
	gx._nav[#gx._nav + 1] = t
end

function gx.set_back_text(text)
	gx._back = text
end

function gx.set_signs(t)
	gx.signs = t
end

function gx.set_gg_visible(visible)
	gx._visible = visible
end

function gx.add_menu(menu)
	if gx._menus ~= 0 then
		if gx._menus["main"] ~= nil then
			if menu.name == "main" then
				gg.toast("Menu with name \"main\" was declared twice, exiting...")
				os.exit()
			end
		elseif menu.name == "main" and menu.type == "back" or menu.type == "xback" then
			gg.toast("Menu with name \"main\" cannot be \""..menu.type.."\" type, exiting...")
			os.exit()
		end
	end

	if menu.name == "main" then
		gx._nav = {}
		gx._nav[1] = {name = menu.name, allow_stay = true}
	end

	if menu.type == "choice" or menu.type == "back" or menu.type == "xback" then
		if type(menu.menu[1]) == "function" then
			if #menu.menu == 1 then
				menu["use_menu_function"] = true
				menu["use_single_function"] = true
			else
				gg.toast("Menu \""..menu.name.."\" has invalid menu property")
			end
		else
			local list = gx.split_menu(menu.menu)
			menu.menu = list.menu
			menu.functions = list.functions
		end
	elseif menu.type == "multi_choice" or menu.type == "multi_choice_s" then
		if menu.use_single_function ~= true then
			local list = gx.split_menu(menu.menu)
			menu.menu = list.menu
			menu.functions = list.functions
		end
	else
		if menu.type == nil then
			gg.alert("Menu \""..menu.name.."\" has nil type, exiting...")
		else
			gg.toast("Unrecognized type \""..menu.type.."\", exiting...")
		end
		os.exit()
	end

	if menu.f == nil then
		menu.f = {}
	end
	menu.bools = {}
	menu.old_ind = {}

	gx._menus[menu.name] = menu
end

function gx.go_back()
	table.remove(gx._nav)
	gx.continue()
end

gx._back_function = gx.go_back

function gx.set_language(l)
	gx._lang = l
end

function gx.set_fallback_language(fl)
	gx._fback_lang = fl
end

function gx.load_languages(tbl)
	gx._langs = tbl
end

function gx.get_sentence(sname, l)
	if l == nil then l = gx._lang end
	if gx._langs[l][sname] ~= nil then return gx._langs[l][sname] end
	if gx._langs[gx._fback_lang][sname] ~= nil then return gx._langs[gx._fback_lang][sname] end
	return sname
	-- return "hey"
end

function gx.switch_language()
	gx._lang = gx.get_ind_h_next(gx._langs, gx._lang)
end

function gx.set_menu_lang(menu_name)
	gx._menus[menu_name].lang = gx._lang

	if gx._menus[menu_name]._menu == nil then
		gx._menus[menu_name]._menu = {}
		gx.copy_table(gx._menus[menu_name].menu, gx._menus[menu_name]._menu)
		if type(gx._menus[menu_name].title) == "table" then
			gx._menus[menu_name]._title = {}
			gx.copy_table(gx._menus[menu_name].title, gx._menus[menu_name]._title)
		else
			gx._menus[menu_name]._title = gx._menus[menu_name].title
		end
	else
		gx._menus[menu_name].menu = {}
		gx.copy_table(gx._menus[menu_name]._menu, gx._menus[menu_name].menu)
		if type(gx._menus[menu_name]._title) == "table" then
			gx._menus[menu_name].title = {}
			gx.copy_table(gx._menus[menu_name]._title, gx._menus[menu_name].title)
		else
			gx._menus[menu_name].title = gx._menus[menu_name]._title
		end
	end

	if gx._menus[menu_name].use_menu_functon then
		gx._menus[menu_name].menu = gx.generate_menu(gx._menus[menu_name].menu)
	end

	gx._menus[menu_name].title = gx.text.translate(gx._menus[menu_name].title)
	gx._menus[menu_name].menu = gx.text.translate(gx._menus[menu_name].menu)
end

function gx.process_title(title)
	_title = ""
	if type(title) == "table" then
		for k, v in ipairs(title) do
			if type(v) == "table" then
				if #v > 0 then
					if #v == 1 then
						_title = _title..v[1]()
					else
						_title = _title..v[1](table.unpack(gx.format_args(v[2], nil, nil)))
					end
				end
			else
				_title = _title..v
			end
		end
	else
		_title = title
	end

	return _title
end

function gx.generate_menu(f)
	if #f == 1 then
		return f[1]()
	else
		return f[1](table.unpack(f[2]))
	end
end

function gx.process_a_function(f)
	if f == nil then return end
	if type(f) ~= "table" then 
		gg.toast("\"pre_f/post_f\" is not a table")
		return
	end

	if #f > 0 then
		if #f == 1 then
			f[1]()
		else
			f[1](table.unpack(gx.format_args(f[2], nil, nil)))
		end
	end
end

function gx.process_functions(functions, ind, bool)
	if type(ind) == "number" then
		ind = {ind}
	end

	if bool == nil then
		bool = {}
	end

	for k, i in ipairs(ind) do
		if #functions[i] > 0 then
			if #functions[i] == 1 then
				functions[i][1]()
			else
				functions[i][1](table.unpack(gx.format_args(functions[i][2], i, bool[i])))
			end
		end
	end
end

function gx.process_single_function(f, ind, bool)
	if bool == nil then
		bool = {}
	end

	if #f > 0 then
		if #f == 1 then
			f[1]()
		else
			f[1](table.unpack(gx.format_args(f[2], ind, bool)))
		end
	end
end

function gx.open_menu(menu_name)
	if gx._menus[menu_name] == nil then
		gg.toast("Menu \""..menu_name.."\" doesn't exist.")
		return
	elseif gx._lang ~= gx._menus[menu_name].lang or gx._menus[menu_name].use_menu_functon then
		gx.set_menu_lang(menu_name)
	end

	local the_menu = {}
	gx.copy_table(gx._menus[menu_name], the_menu)
	local allow_stay = false
	gx.process_a_function(the_menu.pre_f)
	local _title = gx.process_title(the_menu.title)

	if the_menu.type == "back" then
		allow_stay = true
	else
		allow_stay = false
	end

	if gx._nav[#gx._nav].name ~= menu_name then
		gx.add_to_nav({name = the_menu.name, allow_stay = allow_stay})
	end

	if the_menu.use_menu_function == true and type(the_menu.menu[1]) == "function" then
		the_menu.menu = gx.generate_menu(the_menu.menu)
	end

	local ind = nil
	local _ib = nil

	if the_menu.type == "choice" or the_menu.type == "back" or the_menu.type == "xback" then
		if the_menu.type ~= "choice" then
			table.insert(the_menu.menu, gx._back)
		end
		local _m = gx.render_menu(the_menu.menu, the_menu.bools)
		ind = gg.choice(_m, nil, _title)
		if ind == nil then return end
		if the_menu.type ~= "choice" then
			table.remove(_m)

			if ind == #the_menu.menu then
				gx._back_function()
				return
			end
		end
		_ib = gx.make_ib(ind, #_m, gx._menus[menu_name].bools)
	elseif the_menu.type == "multi_choice" or the_menu.type == "multi_choice_s" then
		local _m = gx.render_menu(the_menu.menu, the_menu.bools)
		local _b = nil
		if the_menu.type == "multi_choice_s" then _b = the_menu.bools end
		ind = gg.multiChoice(_m, _b, _title)
		if ind == nil then return end
		_ib = gx.split_index(ind, #_m)
		if the_menu.type == "multi_choice_s" then
			gx._menus[menu_name].old_ind = _ib.index
			_ib.index = gx.index_diff(the_menu.old_ind, _ib.index)
			if #_ib.index == 0 then return end
		elseif the_menu.type == "multi_choice" then
			_ib.bools = gx.switch_bools(_ib.index, the_menu.bools)
		end
	else
		gg.toast("Non existing menu type: "..the_menu.type..". Exiting...")
		os.exit()
	end

	ind = _ib.index
	gx._menus[menu_name].bools = _ib.bools

	if the_menu.use_single_function == true then
		gx.process_single_function(the_menu.f, ind, gx._menus[menu_name].bools)
	else
		gx.process_functions(the_menu.functions, ind, gx._menus[menu_name].bools)
	end

	gx.process_a_function(the_menu.post_f)

	if the_menu.menu_repeat == true and gx._nav[#gx._nav].name == menu_name and gx._block_repeat ~= true then
		gx.open_menu(the_menu.name)
	end

	gx._block_repeat = false
end

function gx.nav_update()
	while #gx._nav > 1 do
		if gx._nav[#gx._nav].allow_stay == false then
			table.remove(gx._nav)
		else
			break
		end
	end
end

function gx.continue()
	gx.open_menu(gx._nav[#gx._nav].name)
end

function gx.start()
	if gx._nav == nil then
		gg.toast("No menu was found, exiting...")
		os.exit()
	elseif gx._nav[1].name ~= "main" then
		gg.toast("No Main menu was found, exiting...")
		os.exit()
	end

	gx.nav_update()
	gx.continue()
end

function gx.isClicked(visible)
	if gg.isVisible() then
		gg.setVisible(visible or false)
		return true
	end
	return false
end

function gx.loop(interval, update_f, visible)
	gx._interval = interval
	gx._visible = visible
	gg.setVisible(false)

	while true do
		if update_f == nil then
			while true do
				if gx.isClicked(gx._visible) then
					gx.start()
					if gx._visible then
						while true do
							if not gg.isVisible() then
								break
							end
							gg.sleep(gx._interval)
						end
					end
				end
				gg.sleep(gx._interval)
			end
		else
			while true do
				if gx.isClicked(gx._visible) then
					gx.start()
					if gx._visible then
						while true do
							if not gg.isVisible() then
								break
							end
							update_f()
							gg.sleep(gx._interval)
						end
					end
				end
				update_f()
				if gx._interval ~= 0 then
					gg.sleep(gx._interval)
				end
			end
		end
	end
end

-- [[ Editor functions ]] --

gx.editor = {
	types = {
		D = gg.TYPE_DWORD,
		Q = gg.TYPE_QWORD,
		F = gg.TYPE_FLOAT,
		B = gg.TYPE_BYTE
	},
	types_str = {"D", "Q", "F", "B"}
}

gx.editor.set = function(data)
	if type(data) == "string" then
		data = gx.editor.parser.parse(data)
	end

	for k, v in ipairs(data) do
		if type(v.flags) == "string" then
			v.flags = gx.editor.types[v.flags]
		end

		if v.freeze == true then
			gg.addListItems({v})
		else
			gg.removeListItems({v})
		end
	end

	gg.setValues(data)
end

gx.editor.prompt_set = function(data, titles, f)
	if type(titles) ~= "table" then
		gg.toast("Argument \"titles\" is given wrong")
		return
	end

	titles = gx.text.translate(titles)

	if type(data) == "string" then
		data = gx.editor.parser.parse(data)
	end

	local _types = {}

	for k, v in ipairs(data) do
		if type(v.flags) == "string" then
			v.flags = gx.editor.types[v.flags]
		end
		table.insert(_types, "number")
	end

	local _data = gx.editor.get(data)

	for k, v in pairs(_data) do
		_data[k] = _data[k].value
	end

	local values = gg.prompt(titles, _data, _types)
	if values == nil then return end

	for k, v in ipairs(data) do
		if values[k] == "" then values[k] = _data[k] end
		v.value = values[k]
	end

	if f then
		data = f(data)
	end

	gx._block_repeat = true
	gx.editor.set(data)
end

gx.editor.get = function(data)
	if type(data) == "string" then
		data = gx.editor.parser.parse(data)
	end

	for k, v in ipairs(data) do
		if type(v.flags) == "string" then
			v.flags = gx.editor.types[v.flags]
		end
	end

	return gg.getValues(data)
end

gx.editor.set_string = function(data)
	local values = {}

	for k, v in ipairs(data) do
		local _address = v[1]
		local _bytes = gg.bytes(v[2])
		local _len = v[3]
	
		if #_bytes < _len then
			local _len2 = _len - #_bytes
			for i = 1, _len2 do
				table.insert(_bytes,0)
			end
		end
	
		for i = 1, _len do
			table.insert(values, {address = _address + (i - 1), flags = gg.TYPE_BYTE, value = _bytes[i]})
		end
	end

	gg.setValues(values)
end

gx.editor.get_string = function(data)
	local values = {}

	for k, v in ipairs(data) do
		local _string = ""
		local _address = v[1]
		local _len = v[2]

		for i = 0, _len do
			_byte = gx.editor.get({{address = _address + i, flags = 'B'}})[1].value
	
			if _byte < 1 then break end
	
			_string = _string .. string.char(_byte)
		end
		table.insert(values, _string)
	end

	return values
end

gx.editor.switch = function(data, bool)
	if type(data) == "string" then
		data = gx.editor.parser.parse(data)
		for k, v in ipairs(data) do
			v.bool = bool
		end
	end

	for k, v in ipairs(data) do
		if v.bool == true then
			if type(v.value) == "table" then
				v.value = v.value[2]
			end
			if type(v.freeze) == "table" then
				v.freeze = v.freeze[2]
			end
		else
			if type(v.value) == "table" then
				v.value = v.value[1]
			end
			if type(v.freeze) == "table" then
				v.freeze = v.freeze[1]
			end
		end
	end

	gx.editor.set(data)
end

gx.editor.parser = {
	parse = function(text) -- address = a, flags = [D, F, Q, B], freeze = f
		local adds = {}
		local texts = gx.split_string(text, ";")
	
		for k, v in ipairs(texts) do
			adds[#adds + 1] = {}
			local _v = v:gsub("%s+|", "|"):gsub("|%s+", "|")
			local results = gx.split_string(_v)
			for i, j in ipairs(results) do
				local suf = j:sub(#j, #j)
				if suf == "a" then
					adds[#adds].address = tonumber(j:sub(1, #j - 1))
				else
					if gx.indexof(suf, gx.editor.types_str) or suf == "f" then
						local t = j:find("|")
						local tx = j
						if t == nil then
							if suf == "f" then
								adds[#adds].freeze = true
								tx = tx:sub(1, #tx - 1)
							end
							adds[#adds].flags = tx:sub(#tx, #tx)
							adds[#adds].value = tonumber(tx:sub(1, #tx - 1))
						else
							local v1, v2, f1, f2
							v1, v2 = table.unpack(gx.split_string(j, "|"))
							f1 = v1:sub(#v1, #v1)
							f2 = v2:sub(#v2, #v2)
							adds[#adds].freeze = {f1 == "f", f2 == "f"}
							if adds[#adds].freeze[1] then
								v1 = v1:sub(1, #v1 - 1)
							end
							if adds[#adds].freeze[2] then
								v2 = v2:sub(1, #v2 - 1)
							end
							adds[#adds].flags = v2:sub(#v2, #v2)
							adds[#adds].value = {v1:sub(1, #v1 - 1), v2:sub(1, #v2 - 1)}
						end
					end
				end
			end
		end
		-- gg.alert(tostring(adds))
		return adds
	end
}

-- [[ Text Processing ]] --

gx.text = {
	ucase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
	lcase = "abcdefghijklmnopqrstuvwxyz",
	numbers = "0123456789",
	punc = '!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~'
}

gx.text.translate = function(data, l)
	if l == nil then l = gx._lang end
	if gx._langs[l] == nil then
		gg.toast("Language undefined: \""..tostring(l).."\". Falling back to \""..gx._fback_lang.."\"")
		l = gx._fback_lang
	end
	if gx._langs[l] == nil then
		gg.toast("Language undefined: "..tostring(l))
		return data
	end

	local is_string = false

	if type(data) == "string" then
		data = {data}
		is_string = true
	end

	for k, v in pairs(data) do
		if type(data[k]) == "string" then
			while true do
				local _s = data[k]:find("{gx@")
				local _e = data[k]:find("}", fe)
	
				if _s ~= nil and _e ~= nil then
					if _e - _s > 0 then
						local name = data[k]:sub(_s, _e)
						local sname = name:sub(name:find("@") + 1, name:find("}") - 1)
						local sentence = gx.get_sentence(sname, l)
						data[k] = data[k]:gsub(name, sentence)
					else
						fe = _e + 1
					end
				else
					break
				end
			end
		elseif type(data[k]) == "table" then
			data[k] = gx.text.translate(data[k], l)
		end
	end

	if is_string then
		data = data[1]
	end

	return data
end

-- [[ Extractors ]] --

gx.extract = {}

gx.extract.values = function(tbl)
	local _tbl = {}

	for k, v in ipairs(tbl) do
		table.insert(_tbl, v.value)
	end

	return _tbl
end

gx.extract.address = function(tbl)
	local _tbl = {}

	for k, v in ipairs(tbl) do
		table.insert(_tbl, v.address)
	end

	return _tbl
end

gx.extract.arg = function(tbl, arg)
	local _tbl = {}

	for k, v in ipairs(tbl) do
		table.insert(_tbl, v[arg])
	end

	return _tbl
end

-- [[ Packers ]] --

gx.pack = {}

gx.pack.values = function(tbl, values)
	for k, v in pairs(values) do
		tbl[k].value = v
	end

	return tbl
end

gx.pack.address = function(tbl, addresses)
	for k, v in pairs(addresses) do
		tbl[k].addresses = v
	end

	return tbl
end

gx.pack.args = function(tbl, values, arg_name)
	for k, v in pairs(values) do
		tbl[k][arg_name] = v
	end

	return tbl
end




















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
quick = off
charg = off
under = off
jump = off
flygravity = off
noequip = off
texture = off
cloudss = off
Skyshot = -1

str1 = false
str2 = false
str3 = false

line = ''
positions = {}

gg.setRanges(old_ranges)
gg.clearResults()

local old = gg.getRanges();

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

------------------------------------

function set_game_speed(speed)
	setadd(nentity + offsets.gamespeed_off, gg.TYPE_FLOAT, speed, false)
end

function noequip()
    if noequip == "on" then
        noequip = "off"
        gg.setValues(revertequipment)
        gg.toast('Equipment deactivated')
    else
        if not str2 then
            str2 = true
            gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_OTHER)
            gg.clearResults()
            gg.searchNumber('1.0F;1.0F;1.0F;1.0F;1.0F;-32D;-128D;1.0F;1.0F:41', gg.TYPE_FLOAT)
            gg.refineNumber('1', gg.TYPE_FLOAT)
            equipment = gg.getResults(5000)
            gg.clearResults()
            revertequipment = {}
            for i, v in ipairs(equipment) do
                revertequipment[i] = {address = v.address, flags = v.flags, value = v.value}
            end
        end
        noequip = "on"
        for i, v in ipairs(equipment) do
            equipment[i].value = 0
        end
        gg.setValues(equipment)
        gg.toast('Equipment activated')
    end
end


i = 0

function capespam()
   gg.setVisible(false)
   while true do
      pmagic(2, -1244390069, 1)
      gg.sleep(500)
      pmagic(2, -700035318, 1)
      gg.sleep(500)
      pmagic(2, 573237039, 1)
      gg.sleep(500)
      pmagic(2, 1762827508, 2)
      gg.sleep(500)
      pmagic(2, 769892976, 1)
      gg.sleep(500)
      pmagic(2, 330655056, 1)
      gg.sleep(500)
      pmagic(2, 1402240423, 1)
      gg.sleep(500)
      pmagic(2, 2207305370, 1)
      gg.sleep(500)
      pmagic(2, -195929339, 1)
      gg.sleep(500)
      pmagic(2, -1822337532, 1)
      gg.sleep(500)
      pmagic(2, -308941587, 1)
      gg.sleep(500)
      pmagic(2, 329684861, 1)
      gg.sleep(500)
      pmagic(2, 162066154, 1)
      gg.sleep(500)
      pmagic(2, -445538750, 1)
      gg.sleep(500)
      pmagic(2, 1375571404, 1)
      gg.sleep(500)
      pmagic(2, -6043825, 1)
      gg.sleep(500)
      pmagic(2, -1623262339, 1)
      gg.sleep(500)
      pmagic(2, 1306675982, 1)
      gg.sleep(500)
      pmagic(2, -784831205, 1)
      gg.sleep(500)
      pmagic(2, 930203946, 1)
      gg.sleep(500)
      pmagic(2, 625581156, 1)
      gg.sleep(500)
      pmagic(2, 540856305, 1)
      gg.sleep(500)
      pmagic(2, 2079599063, 1)
      gg.sleep(500)
      i = i + 1
      if i == 1 then
         break
      end
   end
end

function change_map(mp)
	-- AHHAHHAHA I like this method moree
	gg.toast(mp)
	gg.setVisible(false)
	xr1 = 0
	xr2 = 0
	xar = {}
	xtr = nentity + offsets.portal2_off
	
	setstr(xtr + 0x39D0,24,mp)
	setstr(xtr + 0x39F0,28,mp)
	
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

function pmagic(arr, id, sil, freeze)
	local values = {}
	tgt = player + (offsets.magic + (0x30 * (arr-1)))
	if sil == nil then sil = 360 end
	if freeze == false then
		id = 0
		sil = 257
	else
		table.insert(values, {address = player + offsets.magic + 0xCBC, value = 20, flags = "D"})
	end

	if freeze == nil then freeze = false end
	table.insert(values, {address = tgt, 							value = id, flags = "D"})
	table.insert(values, {address = tgt + 0xC, 						value = -1, flags = "D"})
	table.insert(values, {address = tgt + 0x28,						value = sil,flags = "D", freeze = freeze})

	gx.editor.set(values)
end

function load_spells()
	for k, v in ipairs(midslots) do
		if v[2] ~= 0 then
			pmagic(v[1], v[2], 0)
			mslot[v[1]] = v[3]
		end
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

function collect_waxes()
	show_candles(true)
	local b = false

	if autoburn == off then
		set_autoburn(true)
		b = true
	end
	
	gg.clearResults()

	gg.setRanges(gg.REGION_C_ALLOC)

	gg.searchNumber('h 00 00 60 40 00 00 00 00 00 00 80 BF 00 00 CD CD', gg.TYPE_BYTE, false, nil, nentity, player)
	gg.refineNumber(-128)

	local n = {}
	local m = gg.getResults(gg.getResultCount())
	local tmp={}

	for i,v in pairs(m) do
		table.insert(n,{address = v.address - 0xA,flags = gg.TYPE_FLOAT, value = 99999})
	end

	gg.setValues(n)
	gg.clearResults()

	gg.setRanges(old_ranges)

	if b then
		set_autoburn(false)
	end
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

function unlock_all(b)
	if b then
		cosmetics = on
		setadd(bootloader + offsets.ptoemotes, gg.TYPE_DWORD, 1384120352, false)
		setadd(bootloader + offsets.ptocloset, gg.TYPE_DWORD, 1384120352, false)
	else
		cosmetics = off
		setadd(bootloader + offsets.ptoemotes, gg.TYPE_DWORD, -1186977528, false)
		setadd(bootloader + offsets.ptocloset, gg.TYPE_DWORD, 446629856, false)
	end
end

function unlockelders()
	if get_map() ~= "CandleSpaceEnd" then
		gg.toast("You must be in the home of eden to activate this function")
		return
	end
	gg.toast("Loading...")
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
	gg.toast("Done!")
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
		"✔️| Done!"
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
			set_autoburn(false)
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
		--gg.toast(tostring(i).." / "..#points)
	
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
		set_autoburn(false)
	end

	if use_candle then
		gg.setValues({{address = candle, flags = gg.TYPE_BYTE, value = 0}})
	end

	if stopped == false then
		gotomenu()
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

function FastCR(name)
	local m = nil
	local points = fastpoints[name]

	local after = 3000
	local skip_p = false
	local skip = false

	m = get_map()

	for i, v in ipairs(points) do
		if m ~= v.map then
			change_map(v.map)
		end

		gg.sleep(3000)

		m = get_map()

		if m ~= v.map then
			gg.toast("Please, enter "..name.." or be at Home and try again.")
			return
		end
		break
	end

	for i, v in ipairs(points) do
		skip_p = false
		skip = false

		if v.type == "tp" or v.type == "tp-mv" then 
			while get_map() ~= v.map do
				gg.sleep(2000)
			end

			change_map(v.to_map)

			while get_map() ~= v.to_map do
				gg.sleep(2000)
			end 

			if v.type == "tp" then
				skip_p = true
			end

			gg.sleep(2000)
			
		elseif v.type == "mv" then
			while get_map() ~= v.map do
				gg.sleep(2000)
			end

			skip = v.skip

			if skip then
				gg.sleep(3000)
			end
		end

		if skip_p ~= true then
			gg.setValues({
				{address = coords['x'], flags = gg.TYPE_FLOAT, value = v.x},
				{address = coords['y'], flags = gg.TYPE_FLOAT, value = v.y},
				{address = coords['z'], flags = gg.TYPE_FLOAT, value = v.z}
			})
		end

		if skip ~= true then
			collect_waxes()
		end

		gg.sleep(after)
	end
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

i = 0

function UnlockSeason()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber("7037807", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
	gg.editAll("0", gg.TYPE_QWORD)
	gg.clearResults()
	gg.toast(" CLEAR QUEST ON ")
end

function rapidfarm()
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
            })

            gg.sleep(settings.delay)
        end
    else
        return gg.toast("There are no routes here at the moment")
    end
end

settings = {

	wdistance = 5.0,
	delay = 900
}

function settingsmenu()
    local delay = gg.prompt({"Enter delay time in milliseconds for RapidFarm: "..settings.delay}, {[1] = settings.delay}, {[1] = "number"})
    if delay[1] ~= nil and delay[1] ~= settings.delay then
        settings.delay = delay[1]
        gg.toast("Delay for RapidFarm: "..settings.delay)
    end
end

function slowfarm()
	local map = get_map()
	local family = get_family_by_map(map)

	if family ~= nil then
		if gg.alert("Press GG icon to move, let's go for wax in "..get_map_name().."?", "Yes", "Cancelar") == 1 then
			DoPoints(make_points_list(map))
		else
			return
		end
	else
		if map == "CandleSpace" then
			gg.toast("You are at Home. Enter the portal first!")
		else
			gg.toast("we can't look for candles in "..get_map_name())
		end
	end
end

function _goto()

	local map = get_map()

	ppoints = make_positions(map)

	if ppoints ~= nil then
		mp_names = get_names(ppoints)
		place = gg.choice(mp_names, nil, "Where we go?")

		if place == nil then
			return
		end

		pos = get_pos_by_name(ppoints, mp_names[place])
		setposit(pos.x, pos.y, pos.z)

		gg.toast(place)
	else
		gg.toast("no places to go.")
	end
end

function changemap()
	mps = {}
	for i, v in ipairs(maps) do
		table.insert(mps, v[1])
	end

	local mpchoice = gg.choice(mps, nil, "Where we go?")

	if mpchoice == nil then
		return
	else
		change_map(maps[mpchoice][2])
	end
end

function opencloset(c)
	local cconv = {
		[1] = 0,
		[2] = 3,
		[3] = 2,
		[4] = 1,
		[5] = 8
	}

	local values = {
		{address = player + offsets.closet_menu, value = 1, flags = gg.TYPE_DWORD},
		{address = player + offsets.closet_menu + 0x3C - 0x4, value = 0, flags = gg.TYPE_DWORD},
		{address = player + offsets.closet_menu + 0x3C, value = cconv[c[1]], flags = gg.TYPE_DWORD},
		{address = player + offsets.closet_menu + 0x3C + 0x4, value = 1, flags = gg.TYPE_DWORD}
	}

	gg.setValues(values)
end

function autorun()
	realms = {
		"Isle",
		"Prairie",
		"Vault"
	}
	
	mmenu = gg.choice(realms, nil, "select map: ")
	
	if mmenu ~= nil then
		FastCR(realms[mmenu])
	end
end

function absorbstatues()
	if get_map() ~= "StormEnd" then
        gg.toast("You must be in Eden sacrifice")
        return
    end

    if gg.alert("Please cover up cause the rocks will hit you", "Go", "Cancel") ~= 1 then
        return
    end
    -- setposit(803.8466796875,0.6778343915939331,-11.73253059387207)

    local _values = {}
    local pcoords = getposit()
    local offset = nentity + offsets.statue_pos

    for k, v in pairs(estatues) do
        table.insert(_values, {address = offset + v, value = pcoords.x, flags = gg.TYPE_FLOAT})
        table.insert(_values, {address = offset + v + 0x4, value = pcoords.y, flags = gg.TYPE_FLOAT})
        table.insert(_values, {address = offset + v + 0x8, value = pcoords.z, flags = gg.TYPE_FLOAT})
    end

    gg.setValues(_values)
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

function set_wings()
	local c = gg.prompt({"Default: "..w}, {[1] = ""}, {[1] = "number"})

	if c == nil then
		return
	end

	c[1] = tonumber(c[1])

	if c[1] < 1 then
		gg.toast("cannot be less than 1")
		return
	end

	local b = false
	local a = gg.alert("Do you want to block??", "YES", "NO")

	if a == nil then
		return
	end

	if a == 1 then
		b = true
	end

	setadd(pbase, gg.TYPE_DWORD, c[1], b)
end

function throw_wings()
	local c = gg.prompt({"How many wings are you going to throw?"}, {[1] = ""}, {[1] = "Number"})

	if c == nil then
		return
	end

	c[1] = tonumber(c[1])

	if c[1] < 0 then
		gg.toast("The number cannot be negative.")
		return
	elseif c[1] > gx.vars.w then
		gg.toast("The number cannot be greater than the amount of wings.")
		return
	end

	setadd(player + offsets.damage, gg.TYPE_DWORD, c[1], false)
end

function explode_wings()
	if gg.alert("this will leave only one wing, are you sure?", "Yes", "No") == 1 then
		setadd(player + offsets.damage, gg.TYPE_DWORD, clamp(gx.vars.w - 1, 0, 100), false)
	end
end

function absorb_wings()
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
        gg.toast("there are no wings here")
    else
        gg.toast("Wings collect: "..count)
    end
end

function dospell(ind, bl)
	local mlist = {}
	local mids = {}
	ind = ind[1]
	gx._block_repeat = true
	if ind == 7 then
		gx._block_repeat = false
		gx.vars.sparkle = bl
	elseif ind == 9 then
		slotmenu = gg.multiChoice(mslot, nil, "Choose slots to remove:")
		if slotmenu == nil then
			return
		end
		for i, v in pairs(slotmenu) do
			mslot[i] = magicsid[1][1]
			pmagic(i, magicsid[1][2], 0, false)
		end
	else
		if ind == 8 then
			magicmenu = 1
			mlist[1] = "-- -- Manual -- --"
			mids[1] = gg.prompt({[1] = "Write Spell ID:"}, {[1] = ""}, {[1] = "number"})
			if mids[1] == nil then return end
			mids[1] = mids[1][1]
		else
			for i, v in ipairs(magicsid) do
				if v[3] == ind then
					table.insert(mlist, v[1])
					table.insert(mids, v[2])
				end
			end
			magicmenu = gg.choice(mlist, nil, "Choose spell:")
			if magicmenu == nil then
				return
			end
		end
		slotmenu = gg.choice(mslot, nil, "Choose slot:")
		if slotmenu == nil then return end
		mslot[slotmenu] = mlist[magicmenu]
		if gx.vars.sparkle then
			pmagic(slotmenu, mids[magicmenu], 0)
		else
			pmagic(slotmenu, mids[magicmenu], 257)
		end
	end
end

function switch_public_chat(bool)
	if bool then
		gx.editor.set_string({{nentity + offsets.pchat, "public", 6}}, true)
	else
		gx.editor.set_string({{nentity + offsets.pchat, "local", 6}}, false)
	end
end

function cameradistance()
	setadd(nentity + offsets.camera + offsets.cam_dist, gg.TYPE_FLOAT, inputnum(getadd(offsets.cam_dist, gg.TYPE_FLOAT)), false)
end

function inputnum(def)
    input = gg.prompt({
      "Default : " .. def
    }, {
      [1] = def
    }, {
      [1] = "number"
    })
    if input == nil then
      return def
    else
      return input[1]
    end
end
function supershout()
	ghf = tonumber(inputnum(100))
	if ghf ~= nil and 0 < ghf then
	  gg.setVisible(false)
	  do
		for i = 0, ghf do
		  pmagic(10, 1725047129, 0)
		  gg.sleep(5)
		end
	  end
	end
	pmagic(10, 0, 0)
end

function node()
    local searchValueOn = "h 68 00 00 34 FC 03 1F 2A"
    local replaceValueOn = "h 20 00 80 52 FC 03 1F 2A"
    local searchValueOff = "h 20 00 80 52 FC 03 1F 2A"
    local replaceValueOff = "h 68 00 00 34 FC 03 1F 2A"
    local valueType = gg.TYPE_BYTE
    local searchRange = gg.REGION_CODE_APP
    
    if node == "on" then
        node = "off"
        gg.setRanges(searchRange)
        gg.searchNumber(searchValueOn)
        local resultsOn = gg.getResults(100)
        if resultsOn and #resultsOn > 0 then
            gg.editAll(replaceValueOn, valueType)
            gg.clearResults()
            gg.toast("🤼 off")
        else
            gg.toast("Value not found for 🤼 off")
        end
    else
        node = "on"
        gg.setRanges(searchRange)
        gg.searchNumber(searchValueOff)
        local resultsOff = gg.getResults(50)
        if resultsOff and #resultsOff > 0 then
            gg.editAll(replaceValueOff, valueType)
            gg.clearResults()
            gg.toast("🤼 on")
        else
            gg.toast("Value not found for 🤼 on")
        end
    end
end




function UnlockSeason()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.alert(" check tree season ")
	gg.searchNumber("7037807", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
	gg.editAll("0", gg.TYPE_QWORD)
	gg.clearResults()
	gg.toast(" ON ")
end
	
function clothes()
	if clothes == on then
	  clothes = off
	  gg.setRanges(gg.REGION_CODE_APP)
	  gg.searchNumber("h 94 1F 00 00 F1 20 00 80 52 FD 7B 41")
	  gg.getResultsCount()
	  gg.getResults(30)
	  gg.editAll("h 94 1F 00 00 F1 E0 07 9F 1A FD 7B 41", gg.TYPE_BYTE)
	  gg.clearResults()
	  gg.setRanges(gg.REGION_CODE_APP)
	  gg.searchNumber("h 7C 00 00 B4 20 00 80 52")
	  gg.getResultsCount()
	  gg.getResults(50)
	  gg.editAll("h 7C 00 00 B4 88 2B 40 B9", gg.TYPE_BYTE)
	  gg.clearResults()
	  gg.toast(" 👕 OFF ")
	else
	  clothes = on
	  -- gg.alert(" only you see it")
	  gg.setRanges(gg.REGION_CODE_APP)
	  gg.searchNumber("h 94 1F 00 00 F1 E0 07 9F 1A FD 7B 41")
	  gg.getResultsCount()
	  gg.getResults(30)
	  gg.editAll("h 94 1F 00 00 F1 20 00 80 52 FD 7B 41", gg.TYPE_BYTE)
	  gg.clearResults()
	  gg.setRanges(gg.REGION_CODE_APP)
	  gg.searchNumber("h 7C 00 00 B4 88 2B 40 B9")
	  gg.getResultsCount()
	  gg.getResults(50)
	  gg.editAll("h 7C 00 00 B4 20 00 80 52", gg.TYPE_BYTE)
	  gg.clearResults()
	  gg.toast(" 👕 ON ")
	end
end

function wingsunlimited()
	if wing == on then 
	  wing = off
	  for i, v in ipairs(wings) do
		v.value = '1'
		v.freeze = true
	  end
	  gg.addListItems(wings)
	  gg.toast('wings deactivated')
	else
	  wing = on
	  if str1 then
		for i, v in ipairs(wings) do
		  v.value = '50000'
		  v.freeze = true
		end
		gg.addListItems(wings)
		gg.toast('wings activated')
	  else
		str1 = true
		gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_OTHER)
		gg.searchNumber('30;1;1;20::13', gg.TYPE_FLOAT)
		gg.refineNumber(1, gg.TYPE_FLOAT)
		wings = gg.getResults(1000)
		for i, v in ipairs(wings) do
		  v.value = '50000'
		  v.freeze = true
		end
		gg.addListItems(wings)
		gg.clearResults()
		gg.toast('wings activated 1')
	  end
	end
end

function wingpower()
	pwr = gg.choice({
	  'OFF',
	  'soft',
	  'strong',
	  'strong extreme',
	  'explore new hights',
	  'To high? Fly down',
	  'BACK'
	  },nil,'WARNING, DONT TRAP YOUR SELF')
	if pwr == nil then
	  noselect()
	else
	   if pwr == 1 then
	 	 wingpower = off
		 gg.setValues(revertwingpwr)
	     gg.toast('Wing power deactivated')
	    else
			if pwr == 2 then
				wingpower = on
				wingpwr[3].value = '2'
				gg.setValues(wingpwr)
				gg.toast('Wing power activated')
			else
				if pwr == 3 then
					wingpower = on
					wingpwr[3].value = '5'
					gg.setValues(wingpwr)
					gg.toast('Wing power activated')
				else
					if pwr == 4 then
						wingpower = on
						wingpwr[3].value = '20'
						gg.setValues(wingpwr)
						gg.toast('Wing power activated')
					else
						if pwr == 5 then
							wingpower = on
							wingpwr[3].value = '2000'
							gg.setValues(wingpwr)
							gg.toast('Wing power activated')
						else
							if pwr == 6 then
								wingpower = on
								wingpwr[3].value = '-500'
								gg.setValues(wingpwr)
								gg.toast('Wing power activated')
							end
						end
					end
				end
			end
		end
	end
end

function quick()
	if quick == on then
	  quick = off
	  gg.setValues(revertquickstp)
	  gg.toast('Quick Steps deactivated')
	else
	  quick = on
	  quickstp[1].value = '50'
	  gg.setValues(quickstp)
	  gg.toast('Quick Steps activated')
	end
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

function maxlvl()
	if maxlvwing == on then
	   maxlvwing = off
	   gg.setValues(revertwnglv)
	   gg.toast('Wing level deactivated')
	else
	   maxlvwing = on
	   wnglv[1].value = '0'
	   wnglv[2].value = '0'
	   wnglv[3].value = '0'
	   wnglv[4].value = '0'
	   wnglv[5].value = '0'
	   wnglv[6].value = '0'
	   wnglv[7].value = '0'
	   wnglv[8].value = '0'
	   wnglv[9].value = '0'
	   wnglv[10].value = '0'
	   wnglv[11].value = '0'
	   wnglv[12].value = '0'
	   wnglv[13].value = '0'
	   wnglv[14].value = '0'
	   gg.setValues(wnglv)
	   gg.toast('Wing level activated')
	end	
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
	gg.toast("Scanning for chat offset")
	find_chat_offset()
	gg.toast("Scanning for emotes and closet offset")
	find_cometics_emotes()
	gg.toast("Scanning for plants offset")
	find_plants_offset()
	gg.toast("Scanning for portal offset")
	find_portal_offset()
	gg.toast("Scanning for game speed offset")
	find_game_speed()
	find_adds()

	show_offsets()
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
    local player = nil  -- Definir 'player' aquí
    for k, v in ipairs(values) do
        if v.value ~= 0 then
            v.address = v.address + 0x8
            player = v
            break
        end
    end

    if player then  -- Verificar si 'player' está definido
        local addsToUpdate = gx.editor.get({player})
        addsToUpdate[1].name = "player"
        gg.addListItems(addsToUpdate)

        -- Resto del código...
    else
        print("No se encontró el jugador")
    end

    -- Resto del código...
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

function find_chat_offset()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.clearResults()
	gg.searchNumber("h 3B 00 00 14 7F 02 00 F1 E8", gg.TYPE_BYTE)
	if gg.getResultsCount() == 0 then
		gg.toast("Failed")
		offsets.chat = 0
		offsets.chat_dist = 0
		return
	end
	gg.refineNumber("h 7F", gg.TYPE_BYTE)
	chat = gg.getResults(1)[1]
	offsets.chat = chat.address - bootloader
	chat.name = "chat"
	gg.clearResults()
	-- h 56 F4 1F 37 7F 02 14 6B 40 00 00 54 F6 F3 0F 36
	gg.searchNumber("h 56 F4 1F 37 7F 02 14 6B 40 00 00 54 F6 F3 0F 36", gg.TYPE_BYTE)
	if gg.getResultsCount() == 0 then
		gg.toast("Failed")
		offsets.chat = 0
		offsets.chat_dist = 0
		return
	end
	chat_dist = gg.getResults(1)[1]
	offsets.chat_dist = chat_dist.address - chat.address
	chat_dist.name = "chat_dist"
	gg.addListItems({chat, chat_dist})
	gg.clearResults()
	gg.setRanges(old_ranges)
end

function find_cometics_emotes()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.clearResults()
	gg.searchNumber("h 7C 00 00 B4 88 2B 40 B9 48", gg.TYPE_BYTE)
	if gg.getResultsCount() == 0 then
		gg.toast("Failed")
		offsets.ptocloset = 0
		offsets.ptoemotes = 0
		return
	end
	gg.refineNumber("h 88", gg.TYPE_BYTE)
	ptoemotes = gg.getResults(1)[1]
	offsets.ptoemotes = ptoemotes.address - bootloader
	ptoemotes.name = "ptoemotes"
	gg.addListItems({ptoemotes})
	gg.clearResults()
	gg.searchNumber("h 1F 00 00 F1 E0 07 9F 1A FD 7B 41 A9", gg.TYPE_BYTE)
	if gg.getResultsCount() == 0 then
		gg.toast("Failed")
		offsets.ptoemotes = 0
		offsets.ptocloset = 0
		return
	end
	gg.refineNumber("h E0", gg.TYPE_BYTE)
	closet = gg.getResults(1)[1]
	offsets.ptocloset = closet.address - bootloader
	closet.name = "closet"
	gg.addListItems({closet})
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

function show_offsets()
	check_offsets()
	local output = ""
	output = output.."Found offsets:\n"
	output = output.."ptoplayer = "..string.format("%x", offsets.ptoplayer).."\n"
	output = output.."player -> pos_x = "..string.format("%x", offsets.pos_off).."\n"
	output = output.."ptoentity = "..string.format("%x", offsets.ptoentity).."\n"
	output = output.."ptonentity = "..string.format("%x", offsets.ptonentity).."\n"
	output = output.."nentity -> curmap = -"..string.format("%x", -offsets.curmap_off).."\n"
	output = output.."nentity -> plants = "..string.format("%x", offsets.plants).."\n"
	output = output.."nentity -> gamespeed_off = -"..string.format("%x", -offsets.gamespeed_off).."\n"
	output = output.."nentity -> portal2_off = -"..string.format("%x", -offsets.portal2_off).."\n"
	output = output.."chat = "..string.format("%x", offsets.chat).."\n"
	output = output.."ptoemotes = "..string.format("%x", offsets.ptoemotes).."\n"
	output = output.."ptocloset = "..string.format("%x", offsets.ptocloset)

	gg.alert(output, "ok")
end

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

function saveoffsets()
	gx.vars.settings.version = tostring(gameinfo.versionCode)
	config = {
		offsets = offsets,
		settings = gx.vars.settings
	}
	gx.save_json_file(config_path, config)
end

function check_offsets()
	for k, v in pairs(offsets) do
		if v == nil then offsets[k] = 0 end
	end
end

function add_position()
	--local values = gx.editor.get(ppos)
	values = gg.getValues({
		{address = coords['x'], flags = gg.TYPE_FLOAT},
		{address = coords['y'], flags = gg.TYPE_FLOAT},
		{address = coords['z'], flags = gg.TYPE_FLOAT},
	})
  --table.insert(plist,{map = getmap()
	table.insert(positions, {x = values[3].value, y = values[2].value, z = values[1].value})
	gg.toast("DONE")
  end
  
  function add_position_n()
	gg.toast("Next time you open GG, the position will be written")
	while true do
		if gg.isVisible(true) then
			gg.setVisible(false)
			gg.toast("Position was written.")
			break
		end
		gg.sleep(100)
	end
	add_position()
end

function del_position(i)
	if type(i) == "table" then
		i = i[1]
	else
		i = #positions
	end
	
	table.remove(positions, i)
end

function del_all()
	positions = {}
end


function makeposmenu()
	local m = {}

		for k, v in ipairs(positions) do
		table.insert(m, "["..get_map_name(map).."]\n\tx:"..tostring(v.x).."\n\ty:"..tostring(v.y).."\n\tz:"..tostring(v.z))
        end

	return m
end

function save_to_file()
	date = os.date():gsub(" ", "_"):gsub("/", "."):gsub(":", ".").."_"..os.time()
	filename = "output_"..date..".txt"
	file = io.open(filename, "w")
	text = ""
	for k, v in ipairs(positions) do
		line = "{x = "..tostring(v.x)..", y = "..tostring(v.y)..", z = "..tostring(v.z).."},\n"
		text = text..line
	end
	file:write(text)
	file:close()
	gg.toast("Saved as: "..filename)
	del_all()
end

function uwc()
	gx.vars.w = gx.editor.get({{address = pbase, flags = "D"}})[1].value
end

function noselect()
	gg.toast('You not select anything')
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

function iap()
	gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber(':season', 1,false, gg.SIGN_EQUAL,0, -1)
	gg.getResults(1000)
	gg.editAll(':global', 1)
	gg.clearResults()
    gg.setRanges(gg.REGION_OTHER| gg.REGION_C_ALLOC)
    gg.searchNumber(':global', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll('0', 1)
	gg.toast("Open The Store")
	MTD1 = 1
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

function setvalue(address, flags, value)
	local tt = {}
	tt[1] = {}
	tt[1].address = address
	tt[1].flags = flags
	tt[1].value = value
	gg.setValues(tt)
end

local on = "¦😼¦"
local off = "¦❌¦"
suiu1 = off
suiu2 = off
suiu3 = off

suiv1 = off

suiw1 = off

suic1 = off
suic2 = off
suic3 = off

suia1 = off
suia2 = off

suip1 = off

suiwo1 = off
suiwo2 = off

suio1 = off
suio2 = off

suih1 = off

sui1 = off

so = gg.getRangesList("libBootloader.so")[1].start
--setvalue(so + qh, 16, 8.89715548E-21)
--setvalue(so + qh, 16, 8.89715548E-21)
--gg.setVisible(so + qh)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("32,481,138,503,150,965", gg.TYPE_QWORD)

function SUIenergy()
	local suiwm = gg.choice({
		"Full",
		"Empty",
		"Normal"
	}, nil, "Energy")
	if suiwm == nil then
	  elseif suiwm == 1 then
		so = gg.getRangesList("libBootloader.so")[1].start
		py = 5494096
		setvalue(so + py, 16, 8.77804066E-21)
		gg.toast("Energy Mode - Full")
	end

	if suiwm == 2 then
	  so = gg.getRangesList("libBootloader.so")[1].start
	  py = 5494096
	  setvalue(so + py, 16, 9.32067114E-21)
	  gg.toast("Energy Mode - Empty")
	end
	if suiwm == 3 then
	  so = gg.getRangesList("libBootloader.so")[1].start
	  py = 5494096
	  setvalue(so + py, 16, 8.59771529E-21)
	  gg.toast("Energy Mode - Normal")
	end
end


function Readchats()
	if suiu2 == on then
		suiu2 = off
	else
		suiu2 = on
	end
	if suiu2 == on then
		setvalue(so + sch, 16, 274878956000)
        gg.toast("Enabled - See Chat")
        setvalue(so + sch, 16, 274878956000)
	else
		setvalue(so + sch, 16, 1.19210767E-7)
        gg.toast("Disabled - See Chat")
        setvalue(so + sch, 16, 1.19210767E-7)
	end
end

sch = 0x6A2A68


function SUIamazing()
	local suiv = gg.choice({
		suiv1 .. "Amazing View",
		"Night Mode"
	}, nil, "View")
	if suiv == nil then
	elseif suiv == 1 then
		if suiv1 == on then
			suiv1 = off
		else
			suiv1 = on
		end
		if suiv1 == on then
			so = gg.getRangesList("libBootloader.so")[1].start
			py = 4586196
			setvalue(so + py, 16, -9010873890000)
			gg.toast("Enabled - Amazing View")
		else
			so = gg.getRangesList("libBootloader.so")[1].start
			py = 4586196
			setvalue(so + py, 16, 1.19238962E-7)
			gg.toast("Disable - Amazing View")
		end
	elseif suiv == 2 then
		suimenu()
	end
end

function suimenu()
	local suinm = gg.choice({
	  "Dark",
	  "More Dark",
	  "Off"
	}, nil, "Night Mode")
	if suinm == nil then
	elseif suinm == 1 then
	  so = gg.getRangesList("libBootloader.so")[1].start
	  py = 7916916
	  setvalue(so + py, 16, 9.00303379E-21)
	  gg.toast("Night Mode - Dark")
	end
	if suinm == 2 then
	  so = gg.getRangesList("libBootloader.so")[1].start
	  py = 7916916
	  setvalue(so + py, 16, 8.473639E-21)
	  gg.toast("Night Mode - More Dark")
	end
	if suinm == 3 then
	  so = gg.getRangesList("libBootloader.so")[1].start
	  py = 7916916
	  setvalue(so + py, 16, -0.04794156924)
	  gg.toast("Night Mode - Off")
	end
end

function SIUplayers()
    if suip1 == on then
      suip1 = off
    else
      suip1 = on
    end
    if suip1 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 5547544
      setvalue(so + py, 16, 8.84170772E-21)
      gg.toast("Enabled - See Outfit")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 5547544
      setvalue(so + py, 16, 8.71186783E-21)
      gg.toast("Disable - See Outfit")
    end
end

function SUIwind()
	if suiwo1 == on then
	  suiwo1 = off
	else
	   suiwo1 = on
	end
	if suiwo1 == on then
		so = gg.getRangesList("libBootloader.so")[1].start
		 py = 7340432
		setvalue(so + py, 16, 8.84170772E-21)
		gg.toast("Enabled - Remove Wind")
	else
		so = gg.getRangesList("libBootloader.so")[1].start
		py = 7340432
		setvalue(so + py, 16, 1.26007106E28)
		gg.toast("Disable - Remove Wind")
	end
end

function SUIbarrier()
    if suiwo2 == on then
      suiwo2 = off
    else
      suiwo2 = on
    end
    if suiwo2 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 6484576
      setvalue(so + py, 16, -9010873890000)
      gg.toast("Enabled - Remove Barrier")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 6484576
      setvalue(so + py, 16, 1.19211677E-7)
      gg.toast("Disable - Remove Barrier")
    end
end

function SIUfire()
    if suio1 == on then
      suio1 = off
    else
      suio1 = on
    end
    if suio1 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 9195060
      setvalue(so + py, 16, 1.8629458E-9)
      gg.toast("Enabled - Unlimited Fireworks")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 9195060
      setvalue(so + py, 16, 6.33927605E29)
      gg.toast("Disable - Unlimited Fireworks")
    end
end

function online()
    if sui1 == on then
      sui1 = off
    else
      sui1 = on
    end
    if sui1 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 8291352
      setvalue(so + py, 16, -9010873890000)
      gg.toast("Offline")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 8291352
      setvalue(so + py, 16, 4.76853984E-7)
      gg.toast("Online")
    end
end

function Absorbwax()
    if suic3 == on then
      suic3 = off
    else
      suic3 = on
    end
    if suic3 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 12509020
      setvalue(so + py, 16, 9.45302004E-21)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19494116
      setvalue(so + py, 16, 9999.9)
      gg.toast("Enabled - Wax Absord")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 12509020
      setvalue(so + py, 16, 1.25233015E28)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19494116
      setvalue(so + py, 16, 3.5)
      gg.toast("Disable - Wax Absord")
    end
end

function candleburn()
    if suic1 == on then
      suic1 = off
    else
      suic1 = on
    end
    if suic1 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 7382148
      setvalue(so + py, 16, -9010873890000)
      gg.toast("Enabled - Candle Born")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 7382148
      setvalue(so + py, 16, 1.19212586E-7)
      gg.toast("Disable - Candle Born")
    end
end 

function burningplants()
    if suic2 == on then
      suic2 = off
    else
      suic2 = on
    end
    if suic2 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 6666920
      setvalue(so + py, 16, 1.41233962E-13)
      gg.toast("Enabled - Flower Born")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 6666920
      setvalue(so + py, 16, -1.8342321E-4)
      gg.toast("Disable - Flower Born")
    end
end

function orange()

  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":SPASS", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.toast("🎉OPEN SHOP AND HAVE FUN🎉")
end

gx.vars.settings = {
	wdistance = settings.wdistance,
	w = 0
}
gx.set_signs({[false] = '¦❌¦', [true] = '¦😼¦'})
gx.set_back_text("|⬅️| Back")

gx.add_menu({

	title = "SKYSHOT#2304",
	name = "main",
	menu = {
		{"[⬆️] Break wall: {gx:settings.wdistance}", {pmove, {"{gx:settings.wdistance}"}}},
		{"[👥] Farming Mode", {gx.open_menu, {"farmmenu"}}},
		{"[🌎] Go to", {_goto}}, 
		{"[👤] Player mods", {gx.open_menu, {"Playermenu"}}},
		{"[📍]  Show location", {show_location}},
		--{"[💔] maps", {maps}},
		--{"[💫] Developer", {gx.open_menu, {"Developer"}}},
	},
	type = "choice"
})

gx.add_menu({
	title = " Position Writer: ",
	name = "coordinates",
	menu = {
		{"[📝] write coordinat", {add_position}},
		{"[🖊️] Write pos (next GG click)", {add_position_n}},
		{"[❌] Delete last pos", {del_position}},
		{"[📝] Show write Coordinat", {gx.open_menu, {"delmenu"}}},
		{"[🗑️] Clear all pos", {del_all}},
		{"[⚙️] Save to file & Clear all pos", {save_to_file}}
	},
	
	--gx._block_repeat = false,
	menu_repeat = false,
	type = "back",
})

gx.add_menu({
	title = " Developer mod: ",
	name = "Developer",
	menu = {
		{"[📜] Show Offsets", {show_offsets}},
		{"[💾] Offsets scan", {find_all_offsets}},
		{"[✏️] Write coordinate ", {gx.open_menu, {"coordinates"}}}
	},
	
	--gx._block_repeat = false,
	menu_repeat = true,
	type = "xback",
})

gx.add_menu({
	title = "Delete pos:",
	name = "delmenu",
	use_menu_function = true,
	f = {del_position, {"{gxindex}"}},
	menu = {makeposmenu},
	type = "xback",
	menu_repeat = true
})

gx.add_menu({
	title = "God Farming: ",
	name = "farmmenu",
	menu = {
		{"[⬆️] Break wall: {gx:settings.wdistance}", {pmove, {"{gx:settings.wdistance}"}}},
		{"[🚀] Rapid Farm", {rapidfarm}},
		{"[🕯️] Slow Farm", {slowfarm}},
		{"[🌎] Go to", {_goto}},
		{"[🦋] Wings run", {rapidwings}},
		{"[🕯️] Coliseum Fragments", {Frun}},
		{"[🔥] Auto-burn {gxsign}", {set_autoburn, {"{gxbool}"}}},
		{"[🔋] Floating and charge", {wing_charge}},
		{"[😍] Quick steps 2 {gxsign}", {quick}},
	},
	menu_repeat = false,
	type = "back",
})

gx.add_menu({
	title = "Player menu: ",
	name = "Playermenu",
	menu = {
		{"[🕯️] candles to beta sky", {orange}},
		--{"[📶] Online", {online}},
		--{"[👤] Player view", {SIUplayers}},
		{"[👥] Read Chats {gxsign}", {Readchats}},
		--{"[🌟] no equip ", {noequip}},
		--{"[⚡] Energy", {SUIenergy}},
		{"[🔋] Floating and charge", {wing_charge}},
		--{"[😍] Wings unlimited {gxsign}", {wingsunlimited}},
		{"[😍] Wings power", {wingpower}},
		{"[👔] Unlock clothes", {clothes}},
		{"[🎉] Finishit season", {UnlockSeason}},
		{"[⚡] Quick steps {gxsign}", {gx.editor.switch, {tostring(quick_results[1].address).."a 3.5F | 200F", "{gxbool}"}}},
		{"[😍] Quick steps 2 {gxsign}", {quick}},
		{"[💲] SStore load  ", {iap}},
		{"[⚙️]Change delay RF ", {settingsmenu}},
	},
	menu_repeat = false,
	type = "xback",
})

gx.add_menu({
	title = "Delete pos:",
	name = "delmenu",
	use_menu_function = true,
	f = {del_position, {"{gxindex}"}},
	menu = {makeposmenu},
	type = "xback",
	menu_repeat = true
})

gg.toast("Skyshot reload !!")

gx.loop(500)