function doAction(method) load(method .. "()")() end
function MOM0choice(cd,name) tmp={} for k,v in pairs(cd)do tmp[#tmp + 1] = {}  tmp[#tmp] = cd[k][1] end SN=gg.choice(tmp,nil,name) if SN then doAction(cd[SN][2]) end end
function addrjump(a,b) tem=gg.getValues({[1]={address=a+b,flags=32}})[1].value return tem end function doAction(method) load(method .. "()")() end
function gucichoice(cd,name) tmp={}  for k,v in pairs(cd) do tmp[#tmp + 1] = {}  tmp[#tmp] = cd[k][1]  end  SN=gg.choice(tmp,nil,name)  if SN then doAction(cd[SN][2]) end end
function search(a,b) gg.searchNumber(a,b,false,gg.SIGN_EQUAL,Start,End) end
function searchaddr(nclx,sj,lx,py1,pylx,pysj,py2,name) gg.clearResults() gg.setRanges(nclx) if nclx == 4 then gg.setRanges(4|-2080896) search(sj,lx) else gg.searchNumber(sj,lx) end local tmp = {}
for k, v in ipairs(gg.getResults(gg.getResultCount())) do tmp[k] = { address = v.address + py1, flags = pylx } end for k, v in ipairs(gg.getValues(tmp)) do  if v.value == pysj then gg.toast(name.."成功✔️") return v.address+py2 end end gg.toast(name.."️失败") end local init_tabkey={"address","flags","value","freeze"} 
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
request = function(fb, fbpya, fbpyb, fbz) local sc = {} get(sc, fbdz + 0x8, 32, fb - (fbpya or 0x58)) get(sc, fb - (fbpyb or 0x4C), 4, (fbz or 2)) gg['setValues'](sc) local sr = {} get(sr, fbdz, 4, 1) get(sr, fbdz + 0x4, 4, 0) gg['setValues'](sr) local time = os['time']() while (value(fbdz + 0x4,4) == 0) do if ((os['time']() - time) > 2) then return set(fb - (fbpyb or 0x4C), 4, (fbz or 0)) end end gg['toast']("成功")end
-- 字符串发包
utfrequest = function(utf, fb, fbpy, fbpya, fbpyb, fbz) for i = 1, #utf do local wb, wbs = {utf[i]:byte(0,-1)}, {} for v = 1, 24 do get(wbs,fb + v - (fbpy or 1),1,wb[v] or 0)end gg['setValues'](wbs) request(fb,fbpya,fbpyb,fbz) end end
-- 数值发包
namerequest = function(name, fb, fbpya, fbpyb, fbz) local sc = {} for i = 1, #name do get(sc,fb + ((i - 1) * 4),4,name[i]) end gg['setValues'](sc) request(fb,fbpya,fbpyb,fbz)end
local sz="http://timsky.top/f/bNBc4/%E6%95%B0%E7%BB%84.txt"
pcall(load(gg.makeRequest(sz).content))
local so=gg.getRangesList('libBootloader.so')[1].start
rwdz=addrjump(addrjump(so,0x17ADE78)+0x497730,0)+0x1DC--人物核心
    rwdz=addrjump(addrjump(so,0x1489260)+0x49ECB0,0)+0x1DC--人物核心
gg.addListItems({{address=rwdz ,flags = 32,name="rwdz"}})
    sddz=addrjump(so,0x1489260)+0x1C4--速度核心
    gg.addListItems({{address=sddz ,flags = 16,name="sddz"}})
    jiasuaddr=sddz
--————————————sddz————————————————
    mrrw=  sddz + 0x22904C  --原地任务  √
    LightChipAddr= sddz + 0x21C2ECC --峡谷光标  √
    dtaddr = sddz + 0x22E9DB0   --地图判断  √  
    Any_daddr = sddz  + 0x160F818   --任意门   √
    ydgypy = sddz + 0x1B4B8EC   --原地光翼  √
    xjdiaoxiang=ydgypy+0xE30    --献祭    √
    hzdz=sddz-0x1A3B84  --画质地址  √
    fbdz=sddz+0xA4C   
--————————————rwdz————————————————
    lazushuliang=rwdz + 0x9A94  --蜡烛数量  √
    nengliang=rwdz+0x5250   --无限能量  √每次更新偏移+5*
    ydxgsd=rwdz-0x21F394    --霞谷赛道  √
    zhayi = rwdz + 0x530C   --炸翼    √
    zf=  rwdz - 0x2235BC    --炸房
    





    Beginning = 1 --循环的开头
    			
    dqwzaddr = {}--地图判断
    seaio(dqwzaddr,dtaddr,4)		
    
    Lightboom = {}--炸翼
    seaio(Lightboom, zhayi, 4)	
    
    wxnladdr = {}----无限能量
    seaio(wxnladdr, nengliang, 16, 14)




--位置判断
function wzpd()
  weizhi = gg.getValues(dqwzaddr)
  for i = Beginning , #map do
    if weizhi[1].value == map[i][2] then
      X = i
      return i
    end
  end
end							
								
--加速
function jiasu(x)
  tmp={}
  seaio(tmp,jiasuaddr,16,x,true)
  gg.setValues(tmp)
  gg.addListItems(tmp)
end
    
    
    
mrrwid = {}
function finishites()
    local tmp2 = {}
    for i = 1, 309 do
        tmp2[i] = { address = mrrw + 4 + (mrrwid[i] - 1) * 8, flags = 16 }
    end
    tmp2 = gg.getValues(tmp2)
    for i = 1, 309 do
        tmp2[i].value = tmp2[i].value + 60
    end
    gg.setValues(tmp2)
    tmp2 = {}
    for v = 1, 309 do
        tmp2[v] = { address = mrrw + 0x9AC + 4 * v, flags = 4, value = mrrwid[v] }
    end
    gg.setValues(tmp2)
    local tmp3 = { { address = mrrw + 0xE88, flags = 4, value = 309 } }
    gg.setValues(tmp3)
end


function ydrw()
    ---[[原地任务]] 
    mrrwid = {}
    for i = 1, 309 do
        mrrwid[i] = i
    end
    finishites()
    gg.alert("The task has been completed, if you can't get it, click the exclamation point a few more times.")
end
ydrw()
    
    
    
