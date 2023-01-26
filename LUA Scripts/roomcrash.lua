function addrjump(a,b) tmp=gg.getValues({[1]={address=a+b,flags=32}})[1].value return tmp end 
local so=gg.getRangesList('libBootloader.so')[1].start
local init_tabkey = { "address", "flags", "value", "freeze" }
rwdz=addrjump(addrjump(so,0x1489260)+0x49ECB0,0)+0x1DC--人物核心
gg.addListItems({{address=rwdz ,flags = 32,name="rwdz"}})
sddz=addrjump(so,0x1489260)+0x1C4--速度核心
gg.addListItems({{address=sddz ,flags = 16,name="sddz"}})
zf=  rwdz - 0x22A1DC    --炸房    √

function seaio(t, a, b, c, d)
    t[#t + 1] = {}
    t[#t][init_tabkey[1]] = a
    t[#t][init_tabkey[2]] = b
    t[#t][init_tabkey[3]] = c
    t[#t][init_tabkey[4]] = d
end

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
 
function cok()
gg.alert("Click the floating window to end about 10 seconds to have an effect")
    tmp = {}
    seaio(tmp, zf, 16, 41249, true)
    gg.addListItems(tmp)
    while true do
        if gg.isVisible(true) then
            gg.setVisible(false)
            gg.clearList()
            gg.clearResults()
            gg.toast('restored')
            break
        end
    end
end
cok()
