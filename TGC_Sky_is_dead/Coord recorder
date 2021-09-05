--That dead sky coord logger by Kel
--Do you have some good functions or codes?
--Tell me discord ExMachina#5142



ddd = "a21.07.04"
pshare = ''
plist = {}
mdis = 6
mev = 0
resettick = -1
pbase = 0x00
prange = {a = 0,b = -1}
--200C
poffsets = {
  sival = -1096122630,
  wlevel = 0x22400,
  positX = 0x1C968,
  positY = 0x1C96C,
  positZ = 0x1C970,
  pwing = 0x223CC,
  pdamage = 0x2244C,
  gspeed = 0x148575C
  }

eoffsets = {
  world = 0x00,
  nworld = 0x00,
  nentity = 0x00
}

--wip
--coord, magic id, map id, props id leaked from mom0 script by Kel
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
    {"Office", 'TGCOffice'},
    {"Eden1", 'StormStart'},
    {"Eden2", 'Storm'},
    {"[Nintendo] Nintendo_CandleSpace", 'Nintendo_CandleSpace'},
    {"⛔[BAN RISK!] Planet", 'NightDesert_Planets'},
    {"⚠️Eden sacrifice⚠️", 'StormEnd'},
    {"⚠️Eden rebirt1⚠️", 'OrbitMid'},
    {"⚠️Eden rebirth2⚠️", 'OrbitEnd'},
    {"⚠️Heaven⚠️", 'CandleSpaceEnd'},
    {"⚠️Credit⚠️", 'Credit'},
 }
 
 
mlist = {}

hitarr = {
  {value = 0}
}

function indexof(a,b)
  for k,v in ipairs(a) do 
    if v == b then
      return k 
    end
  end
  return -1
end

function getadd(add,flag)
  local uu = {}
  uu[1] = {
    address = add,
    flags = flag
  }
  yy = gg.getValues(uu)
  return yy[1].value
end

function gamespeed(val)
  if poffsets.gspeed == 0x00 then
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

function fpbase()
  --methods for unexpected errors
  gg.clearResults()
  mm = {}
  nn = {}
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(poffsets.sival, gg.TYPE_DWORD,false,nil,prange.a,prange.b)
  ResultCount=gg.getResultCount()
  nn = gg.getResults(ResultCount)
  for sn4, sn5 in ipairs(nn) do
    if getadd(sn5.address - 0x4,gg.TYPE_DWORD) == 0 and getadd(sn5.address - 0x8,gg.TYPE_DWORD) == 0 and getadd(sn5.address + 0x8,gg.TYPE_DWORD) == 0 and getadd(sn5.address + 0x4,gg.TYPE_DWORD) ~= 0 then
      mm[1] = {
      address = sn5.address - poffsets.wlevel,
      flags = gg.TYPE_DWORD
      }
      if getadd(sn5.address - poffsets.wlevel,gg.TYPE_DWORD) > 0 and getadd(sn5.address - poffsets.wlevel,gg.TYPE_DWORD) < 1000 then
        pbase = sn5.address - poffsets.wlevel
        return
      end
      --break
  end
  end
  
  gg.clearResults()
  nn = {}
  mm = {}
  gg.toast('failed! trying again...')
  gg.clearResults()
  gg.searchNumber('h 00 00 A0 3F 00 00 00 00', gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  gg.refineNumber(63)
  nn = gg.getResults(gg.getResultsCount())
  for k, v in ipairs(nn) do
      spnt1 = getadd(v.address - 0x22407,gg.TYPE_DWORD)
      spnt2 = getadd(v.address + 0x41,gg.TYPE_DWORD)
      spnt3 = getadd(v.address - 0x223F7,gg.TYPE_DWORD)
      if spnt1 == spnt2 and spnt3 == 371 then
        pbase = v.address - 0x22407
        return;
      end
  end
  
  gg.toast('failed! trying again...')
  nn = {}
  mm = 0
  gg.clearResults()
  gg.searchNumber(':device_capabilities',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  nn=gg.getResults(1)
  if getadd(nn[1].address - 0x58,gg.TYPE_DWORD) > 0 and getadd(nn[1].address - 0x58,gg.TYPE_DWORD) < 1000 then
    pbase = nn[1].address - 0x58
    return
  end
  
  gg.alert('Cannot find player base!\n1. Did you select process Sky game?\n2. restart script at home\n3. restart the game')
  os.exit()
end


function startup()
  nn = 0
  gg.toast('Loading : ' .. ddd .. ' by Kel')
  gg.clearResults()
  gg.setVisible(false)
  mm = gg.getRangesList('[anon:libc_malloc]')
  for i,v in ipairs(mm) do
    nn = mm[i]['end'] - mm[i].start
      if(nn < 260998272 and nn > 251998272) then
        prange.a = mm[i].start
        prange.b = mm[i]['end']
      end
  end
  fpbase()
  nn = 'Player : ' .. tostring(itoh(pbase)) .. ' ' .. getadd(pbase,gg.TYPE_DWORD) .. 'D'
  gg.toast(nn)
  gg.clearResults()
  
mm = {}
nn = {}
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
nn[1] = {
    name = 'wing level',
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
  name = 'wing energy',
  address = pbase + poffsets.pwing,
  flags = gg.TYPE_FLOAT
}
gg.addListItems(nn)
nn = {}
nn = gg.getListItems()

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
--gg.setRanges(4)

 nn = {}
 mm = {}
 gg.clearResults()
gg.searchNumber(334569360,4)
eoffsets.nworld = gg.getResults(gg.getResultCount())[1].address + 0x364

gg.clearResults()
gg.searchNumber(17.60000038147,16,false,nil,prange.a,prange.b)
nn = 0x00
eoffsets.nentity = gg.getResults(gg.getResultCount())[1].address
--camera 2000f;2000f;1
--gg.clearResults()
--gg.searchNumber(0.16699999571,16)
--eoffsets.ncamera = gg.getResults(gg.getResultCount())[1].address + 0x18

--gg.addListItems(candles)
gg.clearResults()
gg.toast('Loaded')
setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,0,true)
end

function itoh(int)
  return string.format("%x",int)
end

function gamespeed(val)
  if poffsets.gspeed == 0x00 then
    gg.setSpeed(val)
    else
    setadd(eoffsets.nentity - poffsets.gspeed,gg.TYPE_FLOAT,val,true)
  end
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

function portal(str)
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
  for i = 0, 16 do
    mm = getadd(eoffsets.nworld + i,gg.TYPE_BYTE)
    if mm == 0 then
      break
    end
    nn = nn .. string.char(mm)
  end
  
  return nn
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
 px = getadd(pbase + poffsets.positX,gg.TYPE_FLOAT)
 py = getadd(pbase + poffsets.positY,gg.TYPE_FLOAT)
 pz = getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)
--print(px,py,pz)
gg.toast(tostring(px) .. " / " .. tostring(py) .. " / " .. tostring(pz))
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
--setstr(0x7C43439A33,13,'testing')
startup()
--gg.toast(getadd(0x12C400BC,gg.TYPE_DWORD))

gg.setVisible(false)
gg.showUiButton()

function domenu()
  m=gg.choice({
    'Add this coord'
    ,'Change map'
    ,'⬆️Breach wall'
    ,'Empty recorded data'
  },nil,'')
  if m == 1 then
    gg.setVisible(false)
    xh1 = getadd(pbase + poffsets.positX,gg.TYPE_FLOAT)
    xh2 = getadd(pbase + poffsets.positY,gg.TYPE_FLOAT)
    xh3 = getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)
    table.insert(plist,{map = getmap(),x = xh1,y = xh2, z = xh3})
    pshare = ''
    for k,v in pairs(plist) do
      pshare = pshare .. '{map=\'' .. v.map .. '\'$x=' .. v.x .. '$y=' .. v.y .. '$z=' .. v.z .. '}$\n'
    end
    gg.copyText(pshare)
  end
  if m == 2 then
    y={}
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️Manual')
         r=gg.choice(y,nil,'Choose and go home')
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
  
  if m == 3 then 
    pmove(mdis)
  end
  if m == 4 then
    gg.setVisible(false)
    pshare = ''
    plist = {}
  end
  
end

while true do
  if gg.isClickedUiButton() then
    domenu()
  end
  if gg.isVisible(true) then
    if umenu then
      domenu()
      umenu = false
    end
  else
    umenu = true
  end
   gg.sleep(100)
end
