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

function ufrz(address)
local tt = {}
tt[1] = {}
tt[1].address = address
gg.removeListItems(tt)
end

function setpos(x,y,z)
local t = {}
t[1] = {}
t[1].address = px
t[1].flags = 16
t[1].value = x
t[2] = {}
t[2].address = py
t[2].flags = 16
t[2].value = y
t[3] = {}
t[3].address = pz
t[3].flags = 16
t[3].value = z
gg.setValues(t)
end

function setfps(v)
local tt = {}
tt[1] = {}
tt[1].address = fps
tt[1].flags = 16
tt[1].value = v
gg.setValues(tt)
end

function setss(x,y)
local t = {}
t[1] = {}
t[1].address = sx
t[1].flags = 16
t[1].value = x
t[2] = {}
t[2].address = sy
t[2].flags = 16
t[2].value = y
gg.setValues(t)
end

function getss()
local t = {}
t[1] = {}
t[1].address = rx
t[1].flags = 16
t[2] = {}
t[2].address = ry
t[2].flags = 16
t = gg.getValues(t)
rx_v = t[1].value
ry_v = t[2].value
sx1 = 0 + rx_v
sy1 = 0 + ry_v
sx2 = 0 + rx_v*1.5
sy2 = 0 + ry_v*1.5
sx3 = 0 + rx_v*2
sy3 = 0 + ry_v*2
sx4 = 0 + rx_v*2.5
sy4 = 0 + ry_v*2.5
sx1v = rx_v
sy1v = ry_v
sx2v = rx_v*1.5
sy2v = ry_v*1.5
sx3v = rx_v*2
sy3v = ry_v*2
sx4v = rx_v*2.5
sy4v = ry_v*2.5
end

function getmap_v()
local t = {}
t[1] = {}
t[1].address = getm
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
al = t[1].value
gg.alert(al)
gg.copyText(al)
end

function getpos_v()
local t = {}
t[1] = {}
t[1].address = px
t[1].flags = gg.TYPE_FLOAT
t[2] = {}
t[2].address = py
t[2].flags = gg.TYPE_FLOAT
t[3] = {}
t[3].address = pz
t[3].flags = gg.TYPE_FLOAT
t = gg.getValues(t)
xv = t[1].value
yv = t[2].value
zv = t[3].value
gg.alert('X : '..xv..'\nY : '..yv..'\nZ : '..zv)
gg.copyText('('..xv..";"..yv..";"..zv..')')
end

function getv(a,f)
local t = {}
t[1] = {}
t[1].address = a
t[1].flags = f
t = gg.getValues(t)
al = t[1].value
gg.alert(al)
gg.copyText(al)
end


spn1 = ' '
spn2 = ' '
spn3 = ' '

local on = '● '
local off = '○ '
local sl = '◉ '
local nsl = '○ '
local cd = 'Server connection status : Normal'
local dcd = 'Server connection status : Alone'
local ont = 'ON'
local offt = 'OFF'
sui1 = off
suiv1 = off
suiw1 = off
suiw2 = off
suiu1 = off
suiu2 = off
suiu3 = off
suiu4 = off
suiu5 = off
suic1 = off
suic2 = off
suic3 = off
suip1 = off
suip2 = off
suia1 = off
suia2 = off
suiwo1 = off
suiwo2 = off
suiwo3 = off
suio1 = off
suio2 = off
suio3 = off
suio4 = off
suio5 = off
suio6 = off
suio7 = off
suih1 = off
ic1 = off
pf = off
suiem1 = nsl
suiem2 = nsl
suiem3 = sl
suidm1 = nsl
suidm2 = nsl
suidm3 = nsl
suidm4 = sl
glow1 = nsl
glow2 = nsl
glow3 = sl

--so = gg.getRangesList('libBootloader.so')[1].start

function xa_live()
va = 4843048
va_v = 1.192416902995319E-7
--getv(so+va,16)
em = 5791224
dm = 8284852
jm = 10530856
cw1 = 0xC6376C
cw2 = cw1 + 0x298
cw3 = cw1 + 0x68
gw1 = 0xC67A7C
gw2 = gw1 + 0x58
gw2_v = 1.907392288558185E-6
--getv(so+gw2,16)
cu = 4423384
eu = 11653336
eu_v = -1.832657726481557E-4
--getv(so+eu,16)
fu1 = 9302916
fu2 = 8614336
hq = 10220592
bc = 7721784
bp = 6975592
bp_v = -1.8345301214139909E-4
--getv(so+bp,16)
--bp2 = 0x6A5C58
aw1 = 0xC518E0
aw2 = 20998692
sof = 5844836
sch = 6526064
lu = 0x55C744
lu_v = -6.555061262349375E-27
--getv(so+sf,16)
sj = 10568736
fd = 10607792
rw = 7678172
rb = 6790380
rc = 23179080
qh = 9700316
ih = 5806924
uf = 9710428
uo = 5788448
ik1 = 5794336
ik2 = 5794340
fh = 5787580
ais = 8682216
end

function xa_beta()
va = 4989136
va_v = 1.192416902995319E-7
--getv(so+va,16)
em = 5953592
dm = 8515560
jm = 10836212
cw1 = 0xCC6E70
cw2 = cw1 + 0x298
cw3 = cw1 + 0x68
gw1 = 0xCCB0E4
gw2 = gw1 + 0x58
gw2_v = 1.9076469470746815E-6
--getv(so+gw2,16)
cu = 4547496
eu = 11984780
eu_v = -1.832657726481557E-4
--getv(so+eu,16)
fu1 = 9575376
fu2 = 8877284
hq = 10508828
bc = 7932108
bp = 7140776
bp_v = -1.8345301214139909E-4
--getv(so+bp,16)
aw1 = 13322004
aw2 = 22615172
sof = 6008544
sch = 6696416
lu = 0x5832B0
lu_v = -6.556198331388541E-27
--getv(so+sf,16)
sj = 10874108
fd = 10913164
rw = 7886344
rb = 6954372
rc = 23833880
qh = 9976440
ih = 5969860
uf = 9986556
uo = 5950684
ik1 = 5956700
ik2 = ik1 + 0x4
fh = 5949888
ais = 8945876
end

function get_va()
local t = {}
t[1] = {}
t[1].address = so+va
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == -721215457 then
suiv1 = on
end
end

function get_em()
local t = {}
t[1] = {}
t[1].address = so+em
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 505794560 then
suiem1 = sl
suiem2 = nsl
suiem3 = nsl
end
if t[1].value == 506466304 then
suiem1 = nsl
suiem2 = sl
suiem3 = nsl
end
end

function get_dm()
local t = {}
t[1] = {}
t[1].address = so+dm
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 506073088 then
suidm1 = sl
suidm2 = nsl
suidm3 = nsl
suidm4 = nsl
end
if t[1].value == 505417729 then
suidm1 = nsl
suidm2 = sl
suidm3 = nsl
suidm4 = nsl
end
if t[1].value == 505794560 then
suidm1 = nsl
suidm2 = nsl
suidm3 = sl
suidm4 = nsl
end
end

function get_jm()
local t = {}
t[1] = {}
t[1].address = so+jm
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 506761216 then
suiw1 = on
end
end

function get_cu()
local t = {}
t[1] = {}
t[1].address = so+cu
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 1384120352 then
suiu1 = on
end
end

function get_eu()
local t = {}
t[1] = {}
t[1].address = so+eu
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 1384120352 then
suiu2 = on
end
end

function get_fu()
local t = {}
t[1] = {}
t[1].address = so+fu1
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 1384120352 then
suiu3 = on
end
end

function get_hq()
local t = {}
t[1] = {}
t[1].address = so+hq
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 335544341 then
suiu4 = on
end
end

function get_bc()
local t = {}
t[1] = {}
t[1].address = so+bc
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == -721215457 then
suic1 = on
end
end

function get_bp()
local t = {}
t[1] = {}
t[1].address = so+bp
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 706675691 then
suic2 = on
end
end

function get_aw()
local t = {}
t[1] = {}
t[1].address = so+aw1
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 506630144 then
suic3 = on
end
end

function get_sof()
local t = {}
t[1] = {}
t[1].address = so+sof
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 505873376 then
suip1 = on
end
end

function get_sch()
local t = {}
t[1] = {}
t[1].address = so+sch
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 1384120352 then
suip2 = on
end
end

function get_sj()
local t = {}
t[1] = {}
t[1].address = so+sj
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 505581568 then
suia1 = on
end
end

function get_fd()
local t = {}
t[1] = {}
t[1].address = so+fd
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 505712640 then
suia2 = on
end
end

function get_rw()
local t = {}
t[1] = {}
t[1].address = so+rw
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 505873376 then
suiwo1 = on
end
end

function get_rb()
local t = {}
t[1] = {}
t[1].address = so+rb
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == -721215457 then
suiwo2 = on
end
end

function get_rc()
local t = {}
t[1] = {}
t[1].address = so+rc
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 0 then
suiwo3 = on
end
end

function get_ih()
local t = {}
t[1] = {}
t[1].address = so+ih
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 505712640 then
suio1 = on
end
end

function get_uf()
local t = {}
t[1] = {}
t[1].address = so+uf
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 822084938 then
suio2 = on
end
end

function get_uo()
local t = {}
t[1] = {}
t[1].address = so+uo
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 505647104 then
suio3 = on
end
end

function get_ik()
local t = {}
t[1] = {}
t[1].address = so+ik1
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 1384120320 then
suio4 = on
end
end

function get_fh()
local t = {}
t[1] = {}
t[1].address = so+fh
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 505712640 then
suio5 = on
end
end

function get_ais()
local t = {}
t[1] = {}
t[1].address = so+ais
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == -721215457 then
sui1 = on
end
end

function get_sh()
local t = {}
t[1] = {}
t[1].address = sh
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 1148829696 then
glow1 = sl
glow2 = nsl
glow3 = nsl
end
if t[1].value == 2139081118 then
glow1 = nsl
glow2 = sl
glow3 = nsl
end
end

function get_ic()
local t = {}
t[1] = {}
t[1].address = ic
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == 0 then
ic1 = on
frzvalue(ic,16,0)
end
end


function setspf0()
--frzvalue(mfdz+sps,4,0)
--frzvalue(mfdz+0x00,4,539651423)
--frzvalue(mfdz+0x30,4,539651423)
--frzvalue(mfdz+0x60,4,539651423)
frzvalue(mfdz+0x90,4,0)
frzvalue(mfdz+0xC0,4,0)
frzvalue(mfdz+0xF0,4,0)
--su = frz
end
function setspf1()
setvalue(mfdz+0x8,4,-1600133292)
frzvalue(mfdz+0xC,4,480)
setvalue(mfdz+0x10,4,-1720562886)
setvalue(mfdz+0x14,4,-1806973714)
setvalue(mfdz+0x18,4,1020395176)
setvalue(mfdz+0x1C,4,131004170)
setvalue(mfdz+0x20,4,1)
end
function setspf2()
setvalue(mfdz+0x38,4,-1600133292)
frzvalue(mfdz+0x3C,4,480)
setvalue(mfdz+0x40,4,-1720562886)
setvalue(mfdz+0x44,4,-1806973714)
setvalue(mfdz+0x48,4,1020395176)
setvalue(mfdz+0x4C,4,131004170)
setvalue(mfdz+0x50,4,1)
end
function setspf3()
setvalue(mfdz+0x68,4,-1600133292)
frzvalue(mfdz+0x6C,4,480)
setvalue(mfdz+0x70,4,-1720562886)
setvalue(mfdz+0x74,4,-1806973714)
setvalue(mfdz+0x78,4,1020395176)
setvalue(mfdz+0x7C,4,131004170)
setvalue(mfdz+0x80,4,1)
end
function setsp1()
frzvalue(mfdz+sps,4,3)
--ufrzvalue(mfdz+0x00,4,0)
setvalue(mfdz+0x8,4,-1600133292)
frzvalue(mfdz+0xC,4,480)
setvalue(mfdz+0x10,4,-1720562886)
setvalue(mfdz+0x14,4,-1806973714)
setvalue(mfdz+0x18,4,1020395176)
setvalue(mfdz+0x1C,4,131004170)
setvalue(mfdz+0x20,4,1)
if su == frz then
ufrzvalue(mfdz+0x00,4,0)
--ufrzvalue(mfdz+0x30,4,539651423)
--ufrzvalue(mfdz+0x60,4,539651423)
su = ufrz
end
end
function setsp2()
frzvalue(mfdz+sps,4,3)
--ufrzvalue(mfdz+0x30,4,0)
setvalue(mfdz+0x38,4,-1600133292)
frzvalue(mfdz+0x3C,4,480)
setvalue(mfdz+0x40,4,-1720562886)
setvalue(mfdz+0x44,4,-1806973714)
setvalue(mfdz+0x48,4,1020395176)
setvalue(mfdz+0x4C,4,131004170)
setvalue(mfdz+0x50,4,1)
if su == frz then
--ufrzvalue(mfdz+0x00,4,539651423)
ufrzvalue(mfdz+0x30,4,0)
--ufrzvalue(mfdz+0x60,4,539651423)
su = ufrz
end
end
function setsp3()
frzvalue(mfdz+sps,4,3)
--ufrzvalue(mfdz+0x60,4,0)
setvalue(mfdz+0x68,4,-1600133292)
frzvalue(mfdz+0x6C,4,480)
setvalue(mfdz+0x70,4,-1720562886)
setvalue(mfdz+0x74,4,-1806973714)
setvalue(mfdz+0x78,4,1020395176)
setvalue(mfdz+0x7C,4,131004170)
setvalue(mfdz+0x80,4,1)
if su == frz then
--ufrzvalue(mfdz+0x00,4,539651423)
--ufrzvalue(mfdz+0x30,4,539651423)
ufrzvalue(mfdz+0x60,4,0)
su = ufrz
end
end


function spark1()
if spc == on then
setvalue(mfdz+0x1C,4,0)
end
gg.sleep(100)
setvalue(mfdz+0x1C,4,131004170)
end

function spark2()
if spc == on then
setvalue(mfdz+0x4C,4,0)
end
gg.sleep(100)
setvalue(mfdz+0x4C,4,131004170)
end

function spark3()
if spc == on then
setvalue(mfdz+0x7C,4,0)
end
gg.sleep(100)
setvalue(mfdz+0x7C,4,131004170)
end
--------------------------------------
function server()
if sui1 == cd then
sui1 = dcd
else
sui1 = cd
end
if sui1 == cd then
sui1 = cd
setvalue(so+ais,16,4.76853984e-7)
gg.toast("Switched to Normal")
setvalue(so+ais,16,4.76853984e-7)
else
sui1 = dcd
setvalue(so+ais,16,-9.01087389e12)
gg.toast("Switched to Alone")
setvalue(so+ais,16,-9.01087389e12)
end
end
--------------------------------------
function graphic()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suiv = gg.choice(
{suiv1..'Realistic Graphics',
'Dark Mode',
'Screenshot Resolution',
'↩Back'},
nil,"Graphic")
if suiv == nil then

elseif suiv == 1 then
if suiv1 == on then
suiv1 = off
else
suiv1 = on 
end
if suiv1 == on then
setvalue(so+va,16,-9.01087389e12)
gg.toast("Enabled - Realistic Graphics")
setvalue(so+va,16,-9.01087389e12)
else
setvalue(so+va,16,va_v)
gg.toast("Disabled - Realistic Graphics")
setvalue(so+va,16,va_v)
end

elseif suiv == 2 then darkmode() end
if suiv == 3 then ss() end
if suiv == 4 then suimenu() end
end

sys = -1
end
end


function energy()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suiem = gg.choice(
{suiem1..'Full',
suiem2..'Empty',
suiem3..'Normal',
'↩Back'},
nil,"Energy")
if suiem == nil then

elseif suiem == 1 then
setvalue(so+em,16,8.77804066e-21)
suiem1 = sl
suiem2 = nsl
suiem3 = nsl
gg.toast("Energy - Full")
setvalue(so+em,16,8.77804066e-21)
end

if suiem == 2 then
setvalue(so+em,16,9.32067114e-21)
suiem1 = nsl
suiem2 = sl
suiem3 = nsl
gg.toast("Energy - Empty")
setvalue(so+em,16,9.32067114e-21)
end

if suiem == 3 then
setvalue(so+em,16,8.59771529e-21)
suiem1 = nsl
suiem2 = nsl
suiem3 = sl
gg.toast("Energy - Normal")
setvalue(so+em,16,8.59771529e-21)
end

if suiem == 4 then avatar()
end
end

sys = -1
end
end


function darkmode()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suidm = gg.choice(
{suidm1..'Darkness 1',
suidm2..'Darkness 2',
suidm3..'Darkness 3',
suidm4..'Off',
'↩Back'},
nil,"Dark Mode")
if suidm == nil then

elseif suidm == 1 then
setvalue(so+dm,16,9.00303379e-21)
suidm1 = sl
suidm2 = nsl
suidm3 = nsl
suidm4 = nsl
gg.toast("Dark Mode - Darkness 1")
setvalue(so+dm,16,9.00303379e-21)
end

if suidm == 2 then
setvalue(so+dm,16,8.473639e-21)
suidm1 = nsl
suidm2 = sl
suidm3 = nsl
suidm4 = nsl
gg.toast("Dark Mode - Darkness 2")
setvalue(so+dm,16,8.473639e-21)
end

if suidm == 3 then
setvalue(so+dm,16,8.77804066e-21)
suidm1 = nsl
suidm2 = nsl
suidm3 = sl
suidm4 = nsl
gg.toast("Dark Mode - Darkness 3")
setvalue(so+dm,16,8.77804066e-21)
end

if suidm == 4 then
setvalue(so+dm,16,-0.04794156924)
suidm1 = nsl
suidm2 = nsl
suidm3 = nsl
suidm4 = sl
gg.toast("Dark Mode - Off")
setvalue(so+dm,16,-0.04794156924)
end

if suidm == 5 then graphic()
end
end

sys = -1
end
end


function cwing()
setvalue(so+cw1,16,9.45302004e-21)
setvalue(so+cw2,16,9.45302004e-21)
setvalue(so+cw3,16,-9.01087389e12)
gg.toast("Collect Winged Light")
setvalue(so+cw1,16,9.45302004e-21)
setvalue(so+cw2,16,9.45302004e-21)
setvalue(so+cw3,16,-9.01087389e12)
gg.sleep(100)
setvalue(so+cw1,16,1.24458913e28)
setvalue(so+cw2,16,1.24458913e28)
setvalue(so+cw3,16,1.9082872313447297e-6)
gg.sleep(10)
setvalue(so+cw1,16,1.24458913e28)
setvalue(so+cw2,16,1.24458913e28)
setvalue(so+cw3,16,1.9082872313447297e-6)
end


function gwing()
setvalue(so+gw1,16,9.45302004e-21)
setvalue(so+gw2,16,-9.01087389e12)
gg.toast("Give Winged Light to Statues")
setvalue(so+gw1,16,9.45302004e-21)
setvalue(so+gw2,16,-9.01087389e12)
gg.sleep(100)
setvalue(so+gw1,16,8.5629737e-21)
setvalue(so+gw2,16,gw2_v)
gg.sleep(10)
setvalue(so+gw1,16,8.5629737e-21)
setvalue(so+gw2,16,gw2_v)
end

function wingl()
end


function world()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local m = gg.choice(
{'Teleport',
'Wax',
'Winged Light',
'Remove Obstacles',
'↩Back'},
nil,"World")
if m == nil then
end
if m == 1 then teleport() end
if m == 2 then wax() end
if m == 3 then wing() end
if m == 4 then removes() end
if m == 5 then suimenu() end
end
sys = -1
end
end

function s_closet()
setvalue(cl,4,1)
setvalue(cl+0x38,4,0)
setvalue(cl+0x40,4,1)
end

function closet()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local m = gg.choice(
{'Pants',
'Mask',
'Hairstyle',
'Cape',
'Prop',
'↩Back'},
nil,"Closet")
if m == nil then
end
if m == 1 then
s_closet() setvalue(cl+0x3C,4,0) end
if m == 2 then
s_closet() setvalue(cl+0x3C,4,3) end
if m == 3 then
s_closet() setvalue(cl+0x3C,4,2) end
if m == 4 then
s_closet() setvalue(cl+0x3C,4,1) end
if m == 5 then
s_closet() setvalue(cl+0x3C,4,8) end
if m == 6 then avatar() end
end
sys = -1
end
end


function strengthen()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local m = gg.choice(
{suia1..'Strong Jump',
suia2..'Fast Dive Speed',
suiw1..'Fast Flap',
suio3..'Unlimited Oxygen',
suio4..'Immune Krill Attack',
'↩Back'},
nil,"Strengthen")
if m == nil then
end
if m == 3 then
if suiw1 == on then
suiw1 = off
else
suiw1 = on
end
if suiw1 == on then
setvalue(so+jm,16,9.55889916e-21)
gg.toast("Enabled - Fast Flap")
setvalue(so+jm,16,9.55889916e-21)
else
setvalue(so+jm,16,2.91466459e-20)
gg.toast("Disabled - Fast Flap")
setvalue(so+jm,16,2.91466459e-20)
end
end
if m == 1 then
if suia1 == on then
suia1 = off
else
suia1 = on 
end
if suia1 == on then
setvalue(so+sj,16,8.60598709e-21)
gg.toast("Enabled - Strong Jump")
setvalue(so+sj,16,8.60598709e-21)
else
setvalue(so+sj,16,8.9153793e-21)
gg.toast("Disabled - Strong Jump")
setvalue(so+sj,16,8.9153793e-21)
end
end
if m == 2 then
if suia2 == on then
suia2 = off
else
suia2 = on 
end
if suia2 == on then
setvalue(so+fd,16,8.71186621e-21)
gg.toast("Enabled - Fast Dive Speed")
setvalue(so+fd,16,8.71186621e-21)
else
setvalue(so+fd,16,-0.04694215581)
gg.toast("Disabled - Fast Dive Speed")
setvalue(so+fd,16,-0.04694215581)
end
end
if m == 4 then
if suio3 == on then
suio3 = off
else
suio3 = on 
end
if suio3 == on then
setvalue(so+uo,16,8.65892665e-21)
gg.toast("Enabled - Unlimited Oxygen")
setvalue(so+uo,16,8.65892665e-21)
else
setvalue(so+uo,16,8.84111318e-21)
gg.toast("Disabled - Unlimited Oxygen")
setvalue(so+uo,16,8.84111318e-21)
end
end
if m == 5 then
if suio4 == on then
suio4 = off
else
suio4 = on 
end
if suio4 == on then
setvalue(so+ik1,16,2.74877907e11)
setvalue(so+ik2,16,-6.13017998e13)
gg.toast("Enabled - Immune krill attack")
setvalue(so+ik1,16,2.74877907e11)
setvalue(so+ik2,16,-6.13017998e13)
else
setvalue(so+ik1,16,-1.27424102e34)
setvalue(so+ik2,16,-2.87131023e-14)
gg.toast("Disabled - Immune krill attack")
setvalue(so+ik1,16,-1.27424102e34)
setvalue(so+ik2,16,-2.87131023e-14)
end
end
if m == 6 then avatar() end
end
sys = -1
end
end


function avatar()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local m = gg.choice(
{'Wing Level',
'Energy',
'Strengthen',
'Spell',
'Closet',
ic1..'Invisible Cape',
suio1..'iOS Headphone',
'↩Back'},
nil,"Avatar")
if m == nil then
end
if m == 1 then wing_lv() end
if m == 2 then energy() end
if m == 3 then strengthen() end
if m == 4 then spells() end
if m == 5 then closet() end
if m == 6 then
if ic1 == on then
ic1 = off
else
ic1 = on 
end
if ic1 == on then
frzvalue(ic,16,0)
gg.toast("Enabled - Invisible Cape")
frzvalue(ic,16,0)
else
frzvalue(ic,16,1)
gg.toast("Disabled - Invisible Cape")
frzvalue(ic,16,1)
end
end
if m == 7 then
if suio1 == on then
suio1 = off
else
suio1 = on 
end
if suio1 == on then
setvalue(so+ih,16,8.71186621e-21)
gg.toast("Enabled - iOS Headphone")
setvalue(so+ih,16,8.71186621e-21)
else
setvalue(so+ih,16,8.84170772e-21)
gg.toast("Disabled - iOS Headphone")
setvalue(so+ih,16,8.84170772e-21)
end
end
if m == 8 then suimenu() end
end
sys = -1
end
end


function wing_lv()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
wl14 = nsl
wl13 = nsl
wl12 = nsl
wl11 = nsl
wl10 = nsl
wl9 = nsl
wl8 = nsl
wl7 = nsl
wl6 = nsl
wl5 = nsl
wl4 = nsl
wl3 = nsl
wl2 = nsl
wl1 = nsl
wl0 = nsl
local t = {}
t[1] = {}
t[1].address = wingl
t[1].flags = 4
local t = gg.getValues(t)
wl_v = t[1].value
if wl_v >= 300 then wl14 = sl else
if wl_v >= 250 then wl13 = sl else
if wl_v >= 200 then wl12 = sl else
if wl_v >= 150 then wl11 = sl else
if wl_v >= 120 then wl10 = sl else
if wl_v >= 100 then wl9 = sl else
if wl_v >= 75 then wl8 = sl else
if wl_v >= 55 then wl7 = sl else
if wl_v >= 35 then wl6 = sl else
if wl_v >= 20 then wl5 = sl else
if wl_v >= 10 then wl4 = sl else
if wl_v >= 5 then wl3 = sl else
if wl_v >= 2 then wl2 = sl else
if wl_v == 1 then wl1 = sl else
if wl_v == 0 then wl0 = sl end end end end end end end end end end end end end end end
local sp = gg.choice(
{wl14..'14',
wl13..'13',
wl12..'12',
wl11..'11',
wl10..'10',
wl9..'9',
wl8..'8',
wl7..'7',
wl6..'6',
wl5..'5',
wl4..'4',
wl3..'3',
wl2..'2',
wl1..'1',
wl0..'0',
'↩Back'},
nil,"Wing Level")
if sp == nil then
elseif sp == 1 then
setvalue(wingl,4,300)
gg.toast("Wing Level - 14")
end
if sp == 2 then
setvalue(wingl,4,250)
gg.toast("Wing Level - 13")
end
if sp == 3 then
setvalue(wingl,4,200)
gg.toast("Wing Level - 12")
end
if sp == 4 then
setvalue(wingl,4,150)
gg.toast("Wing Level - 11")
end
if sp == 5 then
setvalue(wingl,4,120)
gg.toast("Wing Level - 10")
end
if sp == 6 then
setvalue(wingl,4,100)
gg.toast("Wing Level - 9")
end
if sp == 7 then
setvalue(wingl,4,75)
gg.toast("Wing Level - 8")
end
if sp == 8 then
setvalue(wingl,4,55)
gg.toast("Wing Level - 7")
end
if sp == 9 then
setvalue(wingl,4,35)
gg.toast("Wing Level - 6")
end
if sp == 10 then
setvalue(wingl,4,20)
gg.toast("Wing Level - 5")
end
if sp == 11 then
setvalue(wingl,4,10)
gg.toast("Wing Level - 4")
end
if sp == 12 then
setvalue(wingl,4,5)
gg.toast("Wing Level - 3")
end
if sp == 13 then
setvalue(wingl,4,2)
gg.toast("Wing Level - 2")
end
if sp == 14 then
setvalue(wingl,4,1)
gg.toast("Wing Level - 1")
end
if sp == 15 then
if wl_v == 0 then
setvalue(wingl,4,0)
gg.toast("Wing Level - 0")
else
local alert = gg.alert('Want to 0 wings? (Forced to go home)','Yes','No')
if alert ~= 0 then
if alert == 1 then
setvalue(wingl,4,0)
gg.toast("Wing Level - 0")
elseif alert == 2 then
wing_lv()
end
else
end
end
end
if sp == 16 then avatar()
end
end
sys = -1
end
end


function wing()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suiw = gg.choice(
{--suiw1..'Maximum Wing Level',
--suiw1..'Jet Mode',
--'Wing Level',
'Collect Winged Light',
'Give Winged Light to Statues',
'↩Back'},
nil,"Winged Light")
if suiw == nil then

elseif suiw == 11 then
if suiw11 == on then
suiw11 = off
else
suiw11 = on 
end
if suiw11 == on then
gg.alert("Invisible to other players")
setvalue(so+mw1,4,0)
setvalue(so+mw2,4,0)
setvalue(so+mw3,4,0)
setvalue(so+mw4,4,0)
setvalue(so+mw5,4,0)
setvalue(so+mw6,4,0)
setvalue(so+mw7,4,0)
setvalue(so+mw8,4,0)
setvalue(so+mw9,4,0)
setvalue(so+mw10,4,0)
setvalue(so+mw11,4,0)
setvalue(so+mw12,4,0)
setvalue(so+mw13,4,0)
setvalue(so+mw14,4,0)
gg.toast("Enabled - Maximum Wing Level")
setvalue(so+mw1,4,0)
setvalue(so+mw2,4,0)
setvalue(so+mw3,4,0)
setvalue(so+mw4,4,0)
setvalue(so+mw5,4,0)
setvalue(so+mw6,4,0)
setvalue(so+mw7,4,0)
setvalue(so+mw8,4,0)
setvalue(so+mw9,4,0)
setvalue(so+mw10,4,0)
setvalue(so+mw11,4,0)
setvalue(so+mw12,4,0)
setvalue(so+mw13,4,0)
setvalue(so+mw14,4,0)
else
setvalue(so+mw1,4,1)
setvalue(so+mw2,4,2)
setvalue(so+mw3,4,5)
setvalue(so+mw4,4,10)
setvalue(so+mw5,4,20)
setvalue(so+mw6,4,35)
setvalue(so+mw7,4,55)
setvalue(so+mw8,4,75)
setvalue(so+mw9,4,100)
setvalue(so+mw10,4,120)
setvalue(so+mw11,4,150)
setvalue(so+mw12,4,200)
setvalue(so+mw13,4,250)
setvalue(so+mw14,4,300)
gg.toast("Disabled - Maximum Wing Level")
setvalue(so+mw1,4,1)
setvalue(so+mw2,4,2)
setvalue(so+mw3,4,5)
setvalue(so+mw4,4,10)
setvalue(so+mw5,4,20)
setvalue(so+mw6,4,35)
setvalue(so+mw7,4,55)
setvalue(so+mw8,4,75)
setvalue(so+mw9,4,100)
setvalue(so+mw10,4,120)
setvalue(so+mw11,4,150)
setvalue(so+mw12,4,200)
setvalue(so+mw13,4,250)
setvalue(so+mw14,4,300)
end

elseif suiw == 12 then
if suiw1 == on then
suiw1 = off
else
suiw1 = on
end
if suiw1 == on then
setvalue(so+jm,16,9.55889916e-21)
gg.toast("Enabled - Jet Mode")
setvalue(so+jm,16,9.55889916e-21)
else
setvalue(so+jm,16,2.91466459e-20)
gg.toast("Disabled - Jet Mode")
setvalue(so+jm,16,2.91466459e-20)
end

elseif suiw == 13 then
local sp = gg.choice(
{'14',
'13',
'12',
'11',
'10',
'9',
'8',
'7',
'6',
'5',
'4',
'3',
'2',
'1',
'0',
'↩Back'},
nil,"Wing Level")
if sp == nil then
elseif sp == 1 then
setvalue(wingl,4,300)
gg.toast("Wing Level - 14")
end
if sp == 2 then
setvalue(wingl,4,250)
gg.toast("Wing Level - 13")
end
if sp == 3 then
setvalue(wingl,4,200)
gg.toast("Wing Level - 12")
end
if sp == 4 then
setvalue(wingl,4,150)
gg.toast("Wing Level - 11")
end
if sp == 5 then
setvalue(wingl,4,120)
gg.toast("Wing Level - 10")
end
if sp == 6 then
setvalue(wingl,4,100)
gg.toast("Wing Level - 9")
end
if sp == 7 then
setvalue(wingl,4,75)
gg.toast("Wing Level - 8")
end
if sp == 8 then
setvalue(wingl,4,55)
gg.toast("Wing Level - 7")
end
if sp == 9 then
setvalue(wingl,4,35)
gg.toast("Wing Level - 6")
end
if sp == 10 then
setvalue(wingl,4,20)
gg.toast("Wing Level - 5")
end
if sp == 11 then
setvalue(wingl,4,10)
gg.toast("Wing Level - 4")
end
if sp == 12 then
setvalue(wingl,4,5)
gg.toast("Wing Level - 3")
end
if sp == 13 then
setvalue(wingl,4,2)
gg.toast("Wing Level - 2")
end
if sp == 14 then
setvalue(wingl,4,1)
gg.toast("Wing Level - 1")
end
elseif sp == 15 then
local alert = gg.alert('Collect all winged light in the current area?','Yes','No')
if alert ~= 0 then
if alert == 1 then
setvalue(wingl,4,0)
gg.toast("Wing Level - 0")
elseif alert == 2 then
wing()
end
else
end
if sp == 16 then suimenuw()
end

elseif suiw == 1 then
local alert = gg.alert('Collect all winged light in the current area?','Yes','No')
if alert ~= 0 then
if alert == 1 then
cwing()
elseif alert == 2 then
wing()
end
else
end

elseif suiw == 2 then
alert = gg.alert('Only works in the Eye of Eden\n\nGive winged light to statues?','Yes','No')
if alert ~= 0 then
if alert == 1 then
gwing()
elseif alert == 2 then
wing()
end
else
end
end

if suiw == 3 then world()
end
end

sys = -1
end
end


function unlock()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suiu = gg.choice(
{suiu1..'Unlock Clothes',
suiu2..'Unlock Emote Level',
suiu3..'Unlock Friendship',
suiu4..'Hack Season Quests',
'↩Back'},
nil,"Unlock")
if suiu == nil then

elseif suiu == 1 then
if suiu1 == on then
suiu1 = off
else
suiu1 = on 
end
if suiu1 == on then
gg.alert("Invisible to other players")
setvalue(so+cu,16,2.74878956e11)
gg.toast("Enabled - Unlock Clothes")
setvalue(so+cu,16,2.74878956e11)
else
setvalue(so+cu,16,6.57735814e-23)
gg.toast("Disabled - Unlock Clothes")
setvalue(so+cu,16,6.57735814e-23)
end

elseif suiu == 2 then
if suiu2 == on then
suiu2 = off
else
suiu2 = on 
end
if suiu2 == on then
gg.alert("Unlock Clothes must be enabled")
setvalue(so+eu,16,2.74878956e11)
gg.toast("Enabled - Unlock Emote Level")
setvalue(so+eu,16,2.74878956e11)
else
setvalue(so+eu,16,eu_v)
gg.toast("Disabled - Unlock Emote Level")
setvalue(so+eu,16,eu_v)
end

elseif suiu == 3 then
if suiu3 == on then
suiu3 = off
else
suiu3 = on 
end
if suiu3 == on then
gg.alert("Unlock only from yourself\n\nCan see chat and use warp only works for friends")
setvalue(so+fu1,16,2.74878956e11)
setvalue(so+fu2,16,-2.74878956e11)
gg.toast("Enabled - Unlock Friendship")
setvalue(so+fu1,16,2.74878956e11)
setvalue(so+fu2,16,-2.74878956e11)
else
setvalue(so+fu1,16,1.19210767e-7)
setvalue(so+fu2,16,1.41233813e-13)
gg.toast("Disabled - Unlock Friendship")
setvalue(so+fu1,16,1.19210767e-7)
setvalue(so+fu2,16,1.41233813e-13)
end

elseif suiu == 4 then
if suiu4 == on then
suiu4 = off
else
suiu4 = on 
end
if suiu4 == on then
gg.alert("Automatically cleared when accepting season quest")
setvalue(so+hq,16,6.46236471e-27)
gg.toast("Enabled - Hack Season Quests")
setvalue(so+hq,16,6.46236471e-27)
else
setvalue(so+hq,16,4.76875357e-7)
gg.toast("Disabled - Hack Season Quests")
setvalue(so+hq,16,4.76875357e-7)
end
end

if suiu == 5 then suimenu()
end
end

sys = -1
end
end


function wax()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suic = gg.choice(
{suic1..'Burn Candle',
suic2..'Burn Plant',
suic3..'Absord Wax',
'↩Back'},
nil,"Wax")
if suic == nil then

elseif suic == 1 then
if suic1 == on then
suic1 = off
else
suic1 = on 
end
if suic1 == on then
setvalue(so+bc,16,-9.01087389e12)
gg.toast("Enabled - Burn Candle")
setvalue(so+bc,16,-9.01087389e12)
else
setvalue(so+bc,16,1.19212586e-7)
gg.toast("Disabled - Burn Candle")
setvalue(so+bc,16,1.19212586e-7)
end

elseif suic == 2 then
if suic2 == on then
suic2 = off
else
suic2 = on 
end
if suic2 == on then
gg.alert("If there are other players, it is difficult to burn due to the server")
setvalue(so+bp,16,1.41233962e-13)
gg.toast("Enabled - Burn Plant")
setvalue(so+bp,16,1.41233962e-13)
else
setvalue(so+bp,16,bp_v)
gg.toast("Disabled - Burn Plant")
setvalue(so+bp,16,bp_v)
end

elseif suic == 5 then
if suic5 == on then
suic5 = off
else
suic5 = on 
end
if suic5 == on then
gg.alert("Burns even if there are other players\n\nIf there are other players, not reflected to other players\n\nIf there are no other players, it will be reflected in players too who came later")
setvalue(so+bp2,16,8.8417158e-21)
gg.toast("Enabled - Burn Plants 2")
setvalue(so+bp2,16,8.8417158e-21)
else
setvalue(so+bp2,16,9.21479929e-21)
gg.toast("Disabled - Burn Plants 2")
setvalue(so+bp2,16,9.21479929e-21)
end

elseif suic == 3 then
if suic3 == on then
suic3 = off
else
suic3 = on 
end
if suic3 == on then
setvalue(so+aw1,16,9.45302004e-21)
setvalue(so+aw2,16,9999.9)
gg.toast("Enabled - Absord Wax")
setvalue(so+aw1,16,9.45302004e-21)
setvalue(so+aw2,16,9999.9)
else
setvalue(so+aw1,16,1.25233015e28)
setvalue(so+aw2,16,3.5)
gg.toast("Disabled - Absord Wax")
setvalue(so+aw1,16,1.25233015e28)
setvalue(so+aw2,16,3.5)
end
end

if suic == 4 then world()
end
end

sys = -1
end
end


function lightf()
setvalue(so+lu,16,-9.01087389e12)
gg.toast("Light Up to Players")
setvalue(so+lu,16,-9.01087389e12)
gg.sleep(100)
setvalue(so+lu,16,lu_v)
gg.sleep(10)
setvalue(so+lu,16,lu_v)
end


function players()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suip = gg.choice(
{suip1..'See Outfit',
suip2..'See Chat',
'Light Up to Players',
'↩Back'},
nil,"Player")
if suip == nil then

elseif suip == 1 then
if suip1 == on then
suip1 = off
else
suip1 = on 
end
if suip1 == on then
setvalue(so+sof,16,8.84170772e-21)
gg.toast("Enabled - See Outfit")
setvalue(so+sof,16,8.84170772e-21)
else
setvalue(so+sof,16,8.71186783e-21)
gg.toast("Disabled - See Outfit")
setvalue(so+sof,16,8.71186783e-21)
end

elseif suip == 2 then
if suip2 == on then
suip2 = off
else
suip2 = on 
end
if suip2 == on then
setvalue(so+sch,16,2.74878956e11)
gg.toast("Enabled - See Chat")
setvalue(so+sch,16,2.74878956e11)
else
setvalue(so+sch,16,1.19210767e-7)
gg.toast("Disabled - See Chat")
setvalue(so+sch,16,1.19210767e-7)
end

elseif suip == 3 then
alert = gg.alert('Light up to all players?','Yes','No')
if alert ~= 0 then
if alert == 1 then
lightf()
elseif alert == 2 then
players()
end
else
end
end

if suip == 4 then suimenu()
end
end

sys = -1
end
end
--------------------------------------
function removes()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suiwo = gg.choice(
{suiwo1..'Remove Wind Wall',
suiwo2..'Remove Barrier',
suiwo3..'Remove Cloud',
'↩Back'},
nil,"Remove Obstacles (Not reflected to other players)")
if suiwo == nil then

elseif suiwo == 1 then
if suiwo1 == on then
suiwo1 = off
else
suiwo1 = on 
end
if suiwo1 == on then
setvalue(so+rw,16,8.84170772e-21)
gg.toast("Enabled - Remove Wind Wall")
setvalue(so+rw,16,8.84170772e-21)
else
setvalue(so+rw,16,1.26007106e28)
gg.toast("Disabled - Remove Wind Wall")
setvalue(so+rw,16,1.26007106e28)
end

elseif suiwo == 2 then
if suiwo2 == on then
suiwo2 = off
else
suiwo2 = on 
end
if suiwo2 == on then
setvalue(so+rb,16,-9.01087389e12)
gg.toast("Enabled - Remove Barrier")
setvalue(so+rb,16,-9.01087389e12)
else
setvalue(so+rb,16,1.19211677e-7)
gg.toast("Disabled - Remove Barrier")
setvalue(so+rb,16,1.19211677e-7)
end

elseif suiwo == 3 then
if suiwo3 == on then
suiwo3 = off
else
suiwo3 = on 
end
if suiwo3 == on then
setvalue(so+rc,4,0)
gg.toast("Enabled - Remove Cloud")
setvalue(so+rc,4,0)
else
setvalue(so+rc,4,1)
gg.toast("Disabled - Remove Cloud")
setvalue(so+rc,4,1)
end
end

if  suiwo == 4 then world()
end
end

sys = -1
end
end
--------------------------------------
function suimenuo()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suio = gg.choice(
{--suio1..'Go Home In Seconds',
suio1..'iOS Headphone',
suio2..'Unlimited Fireworks',
suio3..'Unlimited Oxygen',
suio4..'Immune Krill Attack',
suio5..'Flashing Heart',
--suio6..'Fake Sleeping',
--suio7..'Alone In Server',
'Glowing Body',
'↩Back'},
nil,"Others")
if suio == nil then

elseif  suio == 11 then
if suio11 == on then
suio11 = off
else
suio11 = on
end
if suio11 == on then
setvalue(so+qh,16,8.89715548e-21)
gg.toast("Enabled - Quick Home")
else
setvalue(so+qh,16,8.61260535e-21)
gg.toast("Disabled - Quick Home")
end

elseif  suio == 1 then
if suio1 == on then
suio1 = off
else
suio1 = on 
end
if suio1 == on then
setvalue(so+ih,16,8.71186621e-21)
gg.toast("Enabled - iOS Headphone")
setvalue(so+ih,16,8.71186621e-21)
else
setvalue(so+ih,16,8.84170772e-21)
gg.toast("Disabled - iOS Headphone")
setvalue(so+ih,16,8.84170772e-21)
end

elseif  suio == 2 then
if suio2 == on then
suio2 = off
else
suio2 = on 
end
if suio2 == on then
setvalue(so+uf,16,1.8629458e-9)
gg.toast("Enabled - Unlimited Fireworks")
setvalue(so+uf,16,1.8629458e-9)
else
setvalue(so+uf,16,6.33927605e29)
gg.toast("Disabled - Unlimited Fireworks")
setvalue(so+uf,16,6.33927605e29)
end

elseif  suio == 3 then
if suio3 == on then
suio3 = off
else
suio3 = on 
end
if suio3 == on then
setvalue(so+uo,16,8.65892665e-21)
gg.toast("Enabled - Unlimited Oxygen")
setvalue(so+uo,16,8.65892665e-21)
else
setvalue(so+uo,16,8.84111318e-21)
gg.toast("Disabled - Unlimited Oxygen")
setvalue(so+uo,16,8.84111318e-21)
end

elseif  suio == 4 then
if suio4 == on then
suio4 = off
else
suio4 = on 
end
if suio4 == on then
setvalue(so+ik1,16,2.74877907e11)
setvalue(so+ik2,16,-6.13017998e13)
gg.toast("Enabled - Immune krill attack")
setvalue(so+ik1,16,2.74877907e11)
setvalue(so+ik2,16,-6.13017998e13)
else
setvalue(so+ik1,16,-1.27424102e34)
setvalue(so+ik2,16,-2.87131023e-14)
gg.toast("Disabled - Immune krill attack")
setvalue(so+ik1,16,-1.27424102e34)
setvalue(so+ik2,16,-2.87131023e-14)
end

elseif  suio == 5 then
if suio5 == on then
suio5 = off
else
suio5 = on 
end
if suio5 == on then
setvalue(so+fh,16,8.71186621e-21)
gg.toast("Enabled - Flashing Heart")
setvalue(so+fh,16,8.71186621e-21)
else
setvalue(so+fh,16,8.49522244e-21)
gg.toast("Disabled - Flashing Heart")
setvalue(so+fh,16,8.49522244e-21)
end

elseif  suio == 71 then
if suio71 == on then
suio71 = off
else
suio71 = on
end
if suio71 == on then
setvalue(so+ais,16,-9.01087389e12)
gg.toast("Enabled - Alone In Server")
else
setvalue(so+ais,16,4.76853984e-7)
gg.toast("Disabled - Alone In Server")
end
end

if suio == 6 then glow()
end

if suio == 7 then suimenu()
end
end

sys = -1
end
end


function glow()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suiem = gg.choice(
{glow1..'Glow',
glow2..'Glow Black',
glow3..'Off',
'↩Back'},
nil,"Glowing Body")
if suiem == nil then

elseif suiem == 1 then
frzvalue(sh,16,999)
frzvalue(sh2,16,999)
glow1 = sl
glow2 = nsl
glow3 = nsl
gg.toast("Glowing Body - Glow")
frzvalue(sh,16,999)
frzvalue(sh2,16,999)
end

if suiem == 2 then
frzvalue(sh,16,3.4e38)
frzvalue(sh2,16,3.4e38)
glow1 = nsl
glow2 = sl
glow3 = nsl
gg.toast("Glowing Body - Glow Black")
frzvalue(sh,16,3.4e38)
frzvalue(sh2,16,3.4e38)
end

if suiem == 3 then
frzvalue(sh,16,0)
frzvalue(sh2,16,0)
glow1 = nsl
glow2 = nsl
glow3 = sl
frzvalue(sh,16,0)
frzvalue(sh2,16,0)
gg.toast("Glowing Body - Off")
ufrzvalue(sh,16,0)
ufrzvalue(sh2,16,0)
setvalue(sh,16,0)
setvalue(sh2,16,0)
end

if suiem == 4 then suimenuo()
end
end

sys = -1
end
end
--------------------------------------
function suimenuh()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suih = gg.choice(
{suih1..'Secret',
'↩Back'},
nil,"Honk (Replace the default honk in Sky)")
if suih == nil then

elseif  suih == 1 then
if suih1 == on then
suih1 = off
else
suih1 = on 
end
if suih1 == on then
gg.alert("Inaudible to other players")
so=gg.getRangesList('libBootloader.so')[1].start
py=0x142F614
setvalue(so+py,16,1.80620507e28)
so=gg.getRangesList('libBootloader.so')[1].start
py=0x142F618
setvalue(so+py,16,3.63707016e-41)
so=gg.getRangesList('libBootloader.so')[1].start
py=0x142F620
setvalue(so+py,16,1.83087486e25)
so=gg.getRangesList('libBootloader.so')[1].start
py=0x142F624
setvalue(so+py,16,9.31105376e-39)
gg.toast("Honk - Secret")
else
so=gg.getRangesList('libBootloader.so')[1].start
py=0x142F614
setvalue(so+py,16,2.65628006e20)
so=gg.getRangesList('libBootloader.so')[1].start
py=0x142F618
setvalue(so+py,16,1.06918246e-38)
so=gg.getRangesList('libBootloader.so')[1].start
py=0x142F620
setvalue(so+py,16,2.70671165e23)
so=gg.getRangesList('libBootloader.so')[1].start
py=0x142F624
setvalue(so+py,16,7.49366935e31)
gg.toast("Honk - Default")
end
end

if suih == 2 then suimenu()
end
end

sys = -1
end
end
--------------------------------------
function spell1()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local sp = gg.choice(
{'Cape',
'Pants',
'Hairstyle',
'Mask',
'Accessory',
'Prop',
'Others',
'↻Reset',
'↩Back'},
nil,"Slot1")
if sp == nil then

elseif sp == 1 then
local sp = gg.choice(
{'Yeti Cape',
'Wings of AURORA',
'Cat Cape',
'Platinum Cape',
'Fish Cape',
'TGC Cape',
'Ghostbat Cape',
'Spider Cape',
'Christmas Cape',
'Snowflake Cape',
'Old Winter Feast Cape',
'White Bird Cape',
'Petal Cape',
'Fortune Cape',
'Sakura Cape',
'Wisteria Cape',
'Ocean Cape',
'Dream Season Cape',
'Rainbow Cape',
'Little Prince Scarf Cape',
'Little Prince Asteroid Jacket',
'Bloom Cape 2023',
'Alchemist Cape',
'Earth Cape',
'Light Scholar Cape',
'Giving In Cape',
'Postman Cape',
'Turtle Cape',
'Dead Leaves Cape',
'↩Back'},
nil,"Slot1 Cape")
if sp == nil then
elseif sp == 1 then
setsp1()
setvalue(mfdz+0x00,4,-940505450)
spn1 = 'Yeti cloak'
spark1()
end
if sp == 2 then
setsp1()
setvalue(mfdz+0x00,4,1326646141)
spn1 = 'Aurora concert cloak'
spark1()
end
if sp == 3 then
setsp1()
setvalue(mfdz+0x00,4,583315364)
spn1 = 'Cat cloak'
spark1()
end
if sp == 4 then
setsp1()
setvalue(mfdz+0x00,4,330655056)
spn1 = 'Platinum cloak'
spark1()
end
if sp == 5 then
setsp1()
setvalue(mfdz+0x00,4,573237039)
spn1 = 'Fish cloak'
spark1()
end
if sp == 6 then
setsp1()
setvalue(mfdz+0x00,4,540856305)
spn1 = 'TGC cloak'
spark1()
end
if sp == 7 then
setsp1()
setvalue(mfdz+0x00,4,625581156)
spn1 = 'Ghostbat cloak'
spark1()
end
if sp == 8 then
setsp1()
setvalue(mfdz+0x00,4,930203946)
spn1 = 'Spider cloak'
spark1()
end
if sp == 9 then
setsp1()
setvalue(mfdz+0x00,4,1306675982)
spn1 = 'Christmas cloak'
spark1()
end
if sp == 10 then
setsp1()
setvalue(mfdz+0x00,4,-784831205)
spn1 = 'Snowflake cloak'
spark1()
end
if sp == 11 then
setsp1()
setvalue(mfdz+0x00,4,1762827508)
spn1 = 'Old winter feast cloak'
spark1()
end
if sp == 12 then
setsp1()
setvalue(mfdz+0x00,4,-1623262339)
spn1 = 'White bird cloak'
spark1()
end
if sp == 13 then
setsp1()
setvalue(mfdz+0x00,4,-6043825)
spn1 = 'Petal cloak'
spark1()
end
if sp == 14 then
setsp1()
setvalue(mfdz+0x00,4,-445538750)
spn1 = 'Fortune cloak'
spark1()
end
if sp == 15 then
setsp1()
setvalue(mfdz+0x00,4,162066154)
spn1 = 'Sakura cloak'
spark1()
end
if sp == 16 then
setsp1()
setvalue(mfdz+0x00,4,-1244390069)
spn1 = 'Wisteria cloak'
spark1()
end
if sp == 17 then
setsp1()
setvalue(mfdz+0x00,4,329684861)
spn1 = 'Ocean cloak'
spark1()
end
if sp == 18 then
setsp1()
setvalue(mfdz+0x00,4,-1822337532)
spn1 = 'Dream season cloak'
spark1()
end
if sp == 19 then
setsp1()
setvalue(mfdz+0x00,4,-195929339)
spn1 = 'Rainbow cloak'
spark1()
end
if sp == 20 then
setsp1()
setvalue(mfdz+0x00,4,-2087661926)
spn1 = 'Little Prince Scarf Cape'
spark1()
end
if sp == 21 then
setsp1()
setvalue(mfdz+0x00,4,1402240423)
spn1 = 'Little Prince Asteroid Jacket'
spark1()
end
if sp == 22 then
setsp1()
setvalue(mfdz+0x00,4,549258087)
spn1 = 'Dob cloak'
spark1()
end
if sp == 23 then
setsp1()
setvalue(mfdz+0x00,4,-383842131)
spark1()
end
if sp == 24 then
setsp1()
setvalue(mfdz+0x00,4,2079599063)
spark1()
end
if sp == 25 then
setsp1()
setvalue(mfdz+0x00,4,1375571404)
spark1()
end
if sp == 26 then
setsp1()
setvalue(mfdz+0x00,4,939730131)
spark1()
end
if sp == 27 then
setsp1()
setvalue(mfdz+0x00,4,-308941587)
spark1()
end
if sp == 28 then
setsp1()
setvalue(mfdz+0x00,4,-700035318)
spark1()
end
if sp == 29 then
setsp1()
setvalue(mfdz+0x00,4,769892976)
spark1()
end
if sp == 30 then spell1()
end
end

if sp == 2 then
local sp = gg.choice(
{'Fortune Pants',
'Runaway Outfit',
'Prince Sword Suit',
'Halloween Pants',
'Rainbow Pants',
'Bloom Pants',
'To The Love Outfit',
'Snowman Body',
'↩Back'},
nil,"Slot1 Pants")
if sp == nil then
elseif sp == 1 then
setsp1()
setvalue(mfdz+0x00,4,483128979)
spn1 = 'Fortune pants'
spark1()
end
if sp == 2 then
setsp1()
setvalue(mfdz+0x00,4,3160138703)
spn1 = 'Aurora pants'
spark1()
end
if sp == 3 then
setsp1()
setvalue(mfdz+0x00,4,-495233219)
spn1 = 'Prince Sword Suit'
spark1()
end
if sp == 4 then
setsp1()
setvalue(mfdz+0x00,4,969946279)
spn1 = 'Halloween pants'
spark1()
end
if sp == 5 then
setsp1()
setvalue(mfdz+0x00,4,1482655023)
spn1 = 'Rainbow pants'
spark1()
end
if sp == 6 then
setsp1()
setvalue(mfdz+0x00,4,-105193858)
spn1 = 'Dob pants'
spark1()
end
if sp == 7 then
setsp1()
setvalue(mfdz+0x00,4,782433094)
spn1 = 'to love the outfit'
spark1()
end
if sp == 8 then
setsp1()
setvalue(mfdz+0x00,4,-1535254839)
spn1 = 'Snowman Body'
spark1()
end
if sp == 9 then spell1()
end
end

if sp == 3 then
local sp = gg.choice(
{'Runaway Hairstyle',
'Fish Head',
'Pumpkin Head',
'Wizard Hat',
'Sakura Hairstyle',
'Cat Hairstyle',
'Halloween Spider Hairstyle',
'Halloween Longhair',
'Christmas Hat',
'Dream Season Hairstyle',
'Bun Hairstyle',
'Snowman Head',
'Lion Head',
'Rainbow Hat',
'Knitted Hat',
'Fortune Hat',
'↩Back'},
nil,"Slot1 Hairstyle")
if sp == nil then
elseif sp == 1 then
setsp1()
setvalue(mfdz+0x00,4,239584271)
spn1 = 'Runaway Hairstyle'
spark1()
end
if sp == 2 then
setsp1()
setvalue(mfdz+0x00,4,-1543558130)
spn1 = 'Fish head'
spark1()
end
if sp == 3 then
setsp1()
setvalue(mfdz+0x00,4,1046521292)
spn1 = 'Pumpkin head'
spark1()
end
if sp == 4 then
setsp1()
setvalue(mfdz+0x00,4,1983755432)
spn1 = 'Wizard hat'
spark1()
end
if sp == 5 then
setsp1()
setvalue(mfdz+0x00,4,373243257)
spn1 = 'Sakura hairstyle'
spark1()
end
if sp == 6 then
setsp1()
setvalue(mfdz+0x00,4,4269954660)
spn1 = 'Cat hairstyle'
spark1()
end
if sp == 7 then
setsp1()
setvalue(mfdz+0x00,4,-1760741911)
spn1 = 'Halloween spider hairstyle'
spark1()
end
if sp == 8 then
setsp1()
setvalue(mfdz+0x00,4,116679863)
spn1 = 'Halloween longhair'
spark1()
end
if sp == 9 then
setsp1()
setvalue(mfdz+0x00,4,2885283383)
spn1 = 'Christmas hat'
spark1()
end
if sp == 10 then
setsp1()
setvalue(mfdz+0x00,4,1059767859)
spn1 = 'Dream Season Hairstyle'
spark1()
end
if sp == 11 then
setsp1()
setvalue(mfdz+0x00,4,-2099997114)
spn1 = 'Bun Hairstyle'
spark1()
end
if sp == 12 then
setsp1()
setvalue(mfdz+0x00,4,419537417)
spn1 = 'Snowman Head'
spark1()
end
if sp == 13 then
setsp1()
setvalue(mfdz+0x00,4,2093744529)
spark1()
end
if sp == 14 then
setsp1()
setvalue(mfdz+0x00,4,-521490982)
spark1()
end
if sp == 15 then
setsp1()
setvalue(mfdz+0x00,4,-2092825638)
spark1()
end
if sp == 16 then
setsp1()
setvalue(mfdz+0x00,4,-823266018)
spark1()
end
if sp == 17 then spell1()
end
end

if sp == 4 then
local sp = gg.choice(
{'Rhythm Season Mask',
'Cat Mask',
'Rabbit Mask',
'Red Fox Mask',
'Ox Mask', 
'Dream Season Mask',
'Fortune Mask',
'Rose Mask',
'Winter Feast Goggle',
'Whirling Mask',
'Tiger Mask',
'Weasel Mask',
'↩Back'},
nil,"Slot1 Mask")
if sp == nil then
elseif sp == 1 then
setsp1()
setvalue(mfdz+0x00,4,-218615327)
spark1()
end
if sp == 2 then
setsp1()
setvalue(mfdz+0x00,4,-901640940)
spark1()
end
if sp == 3 then
setsp1()
setvalue(mfdz+0x00,4,371568737)
spark1()
end
if sp == 4 then
setsp1()
setvalue(mfdz+0x00,4,964659005)
spark1()
end
if sp == 5 then
setsp1()
setvalue(mfdz+0x00,4,-849020465)
spark1()
end
if sp == 6 then
setsp1()
setvalue(mfdz+0x00,4,144876107)
spark1()
end
if sp == 7 then
setsp1()
setvalue(mfdz+0x00,4,-1636163586)
spark1()
end
if sp == 8 then
setsp1()
setvalue(mfdz+0x00,4,-938578505)
spark1()
end
if sp == 9 then
setsp1()
setvalue(mfdz+0x00,4,858950093)
spark1()
end
if sp == 10 then
setsp1()
setvalue(mfdz+0x00,4,771982951)
spark1()
end
if sp == 11 then
setsp1()
setvalue(mfdz+0x00,4,475055967)
spark1()
end
if sp == 12 then
setsp1()
setvalue(mfdz+0x00,4,784922793)
spark1()
end
if sp == 13 then spell1()
end
end

if sp == 5 then
local sp = gg.choice(
{'Rainbow Earring',
'Rainbow Headphone',
'Summer Hat',
'Halloween Horn',
'Antler',
'Flower Crown',
'Tiara We Can Touch',
'Fish Headdress',
'Rabbit Headdress',
'Orange Headdress',
'Kizuna AI Headband',
'Ribbon Necklace',
'Jellyfish Shouldress',
'Turtle Shouldress',
'Ocean Necklace',
'Holly Necklace',
'Coral Headdress',
'Snowflake Headdress',
'Flower Headdress',
'Double Flower Headdress',
'Rainbow Headdress',
'Shell Headdress',
'Single Wizard Hat',
--'Transparent Muffler',
'Winter Feast Muffler',
'↩Back'},
nil,"Slot1 Accessory")
if sp == nil then
elseif sp == 1 then
setsp1()
setvalue(mfdz+0x00,4,-1590289609)
spn1 = 'Rainbow earring'
spark1()
end
if sp == 2 then
setsp1()
setvalue(mfdz+0x00,4,2525758368)
spn1 = 'Rainbow Headphone'
spark1()
end
if sp == 3 then
setsp1()
setvalue(mfdz+0x00,4,2052387583)
spn1 = 'Summer hat'
spark1()
end
if sp == 4 then
setsp1()
setvalue(mfdz+0x00,4,1123843208)
spn1 = 'Halloween horn'
spark1()
end
if sp == 5 then
setsp1()
setvalue(mfdz+0x00,4,1909998088)
spn1 = 'Antler'
spark1()
end
if sp == 6 then
setsp1()
setvalue(mfdz+0x00,4,942365523)
spn1 = 'Flower crown'
spark1()
end
if sp == 7 then
setsp1()
setvalue(mfdz+0x00,4,-1989753674)
spn1 = 'Tiara We Can Touch'
spark1()
end
if sp == 8 then
setsp1()
setvalue(mfdz+0x00,4,551055685)
spn1 = 'Fish headdress'
spark1()
end
if sp == 9 then
setsp1()
setvalue(mfdz+0x00,4,-848739711)
spn1 = 'Rabbit headdress'
spark1()
end
if sp == 10 then
setsp1()
setvalue(mfdz+0x00,4,-1616733323)
spn1 = 'Orange headdress'
spark1()
end
if sp == 11 then
setsp1()
setvalue(mfdz+0x00,4,2050094531)
spn1 = 'Kizuna AI headband'
spark1()
end
if sp == 12 then
setsp1()
setvalue(mfdz+0x00,4,43899279)
spn1 = 'Ribbon Necklace'
spark1()
end
if sp == 13 then
setsp1()
setvalue(mfdz+0x00,4,329235560)
spn1 = 'Jellyfish shouldress'
spark1()
end
if sp == 14 then
setsp1()
setvalue(mfdz+0x00,4,1943995802)
spn1 = 'Turtle on shouldress'
spark1()
end
if sp == 15 then
setsp1()
setvalue(mfdz+0x00,4,-1938239955)
spn1 = 'Ocean Necklace'
spark1()
end
if sp == 16 then
setsp1()
setvalue(mfdz+0x00,4,8361886)
spn1 = 'Holly Necklace'
spark1()
end
if sp == 17 then
setsp1()
setvalue(mfdz+0x00,4,-347711956)
spn1 = 'Coral Headdress'
spark1()
end
if sp == 18 then
setsp1()
setvalue(mfdz+0x00,4,1372838509)
spn1 = 'Snowflake Headdress'
spark1()
end
if sp == 19 then
setsp1()
setvalue(mfdz+0x00,4,2141511649)
spark1()
end
if sp == 20 then
setsp1()
setvalue(mfdz+0x00,4,-1014212311)
spark1()
end
if sp == 21 then
setsp1()
setvalue(mfdz+0x00,4,-290700605)
spark1()
end
if sp == 22 then
setsp1()
setvalue(mfdz+0x00,4,-171149928)
spark1()
end
if sp == 23 then
setsp1()
setvalue(mfdz+0x00,4,-75786201)
spark1()
end
if sp == 240 then
setsp1()
setvalue(mfdz+0x00,4,1021908644)
spark1()
end
if sp == 24 then
setsp1()
setvalue(mfdz+0x00,4,70832281)
spark1()
end
if sp == 25 then spell1()
end
end

if sp == 6 then
local sp = gg.choice(
{'Fireworks',
'Love Fireworks',
'Voice of AURORA',
'Christmas Table',
'Halloween Table',
'Bloom Pink Teaset',
'Bloom Purple Teaset',
'Picnic',
'Gondola',
'Seesaw',
'Swing',
'Pumpkin',
'Summer Tent',
'Marshmallow',
'Fox',
'Cat',
'Pioneer Umbrella',
'Summer Umbrella',
'Transparent Umbrella',
'Fortune Umbrella',
'Snow Globe',
'Ball Game',
'Snowman',
'Wedding',
'Lantern',
'White Piano',
'Glectric Guitar',
'Triumph Guiter',
'Triumph Harp',
'Triumph Handpan',
'Double Chair',
'Double Wood Chair',
'Beach Bed',
'Butterfly Fountain',
'Pipe',
'↩Back'},
nil,"Slot1 Prop")
if sp == nil then
elseif sp == 1 then
setsp1()
setvalue(mfdz+0x00,4,227018419)
spn1 = 'Fireworks'
spark1()
end
if sp == 2 then
setsp1()
setvalue(mfdz+0x00,4,1403584133)
spn1 = 'Love fireworks'
spark1()
end
if sp == 3 then
setsp1()
setvalue(mfdz+0x00,4,137268536)
spn1 = 'Voice of AURORA'
spark1()
end
if sp == 4 then
setsp1()
setvalue(mfdz+0x00,4,256924066)
spn1 = 'Christmas table'
spark1()
end
if sp == 5 then
setsp1()
setvalue(mfdz+0x00,4,-797688127)
spn1 = 'Halloween table'
spark1()
end
if sp == 6 then
setsp1()
setvalue(mfdz+0x00,4,10058409)
spn1 = 'Bloom Pink Teaset'
spark1()
end
if sp == 7 then
setsp1()
setvalue(mfdz+0x00,4,1598845731)
spn1 = 'Bloom Purple Teaset'
spark1()
end
if sp == 8 then
setsp1()
setvalue(mfdz+0x00,4,185406188)
spn1 = 'Picnic'
spark1()
end
if sp == 9 then
setsp1()
setvalue(mfdz+0x00,4,303877523)
spn1 = 'Gondola'
spark1()
end
if sp == 10 then
setsp1()
setvalue(mfdz+0x00,4,-2095749161)
spn1 = 'Seesaw'
spark1()
end
if sp == 11 then
setsp1()
setvalue(mfdz+0x00,4,1064080243)
spn1 = 'Swing'
spark1()
end
if sp == 12 then
setsp1()
setvalue(mfdz+0x00,4,125584301)
spn1 = 'Pumpkin'
spark1()
end
if sp == 13 then
setsp1()
setvalue(mfdz+0x00,4,1414743743)
spn1 = 'Summer tent'
spark1()
end
if sp == 14 then
setsp1()
setvalue(mfdz+0x00,4,3165352994)
spn1 = 'Marshmallow'
spark1()
end
if sp == 15 then
setsp1()
setvalue(mfdz+0x00,4,-2057431024)
spn1 = 'Fox'
spark1()
end
if sp == 16 then
setsp1()
setvalue(mfdz+0x00,4,1436679857)
spn1 = 'Cat'
spark1()
end
if sp == 17 then
setsp1()
setvalue(mfdz+0x00,4,-992017029)
spn1 = 'Pioneer umbrella'
spark1()
end
if sp == 18 then
setsp1()
setvalue(mfdz+0x00,4,2878211958)
spn1 = 'Summer umbrella'
spark1()
end
if sp == 19 then
setsp1()
setvalue(mfdz+0x00,4,1167393926)
spn1 = 'Transparent umbrella'
spark1()
end
if sp == 20 then
setsp1()
setvalue(mfdz+0x00,4,1621987452)
spn1 = 'Fortune umbrella'
spark1()
end
if sp == 21 then
setsp1()
setvalue(mfdz+0x00,4,1440439821)
spn1 = 'Snow globe'
spark1()
end
if sp == 22 then
setsp1()
setvalue(mfdz+0x00,4,-913145276)
spn1 = 'Ball game'
spark1()
end
if sp == 23 then
setsp1()
setvalue(mfdz+0x00,4,1080405300)
spn1 = 'Snowman'
spark1()
end
if sp == 24 then
setsp1()
setvalue(mfdz+0x00,4,-1333564540)
spn1 = 'Wedding'
spark1()
end
if sp == 25 then
setsp1()
setvalue(mfdz+0x00,4,1319710173)
spn1 = 'Lantern'
spark1()
end
if sp == 26 then
setsp1()
setvalue(mfdz+0x00,4,-1202427550)
spn1 = 'White piano'
spark1()
end
if sp == 27 then
setsp1()
setvalue(mfdz+0x00,4,332997197)
spn1 = 'TGC anniversary guiter'
spark1()
end
if sp == 28 then
setsp1()
setvalue(mfdz+0x00,4,970364197)
spn1 = 'Triumph guiter'
spark1()
end
if sp == 29 then
setsp1()
setvalue(mfdz+0x00,4,1275481440)
spn1 = 'Triumph harp'
spark1()
end
if sp == 30 then
setsp1()
setvalue(mfdz+0x00,4,454864430)
spn1 = 'Triumph Handpan'
spark1()
end
if sp == 31 then
setsp1()
setvalue(mfdz+0x00,4,-1866832203)
spark1()
end
if sp == 32 then
setsp1()
setvalue(mfdz+0x00,4,472595010)
spark1()
end
if sp == 33 then
setsp1()
setvalue(mfdz+0x00,4,-1158710924)
spark1()
end
if sp == 34 then
setsp1()
setvalue(mfdz+0x00,4,-1096484674)
spark1()
end
if sp == 35 then
setsp1()
setvalue(mfdz+0x00,4,-1419483218)
spark1()
end
if sp == 36 then spell1()
end
end

if sp == 7 then
local sp = gg.choice(
{'Height Small',
'Size Small',
'Height Big',
'Size Big',
'Kizuna AI Call',
'Glow',
'Fast Charge',
'Anti Gravity',
'Anti Rain',
'Anti Krill',
'Krill Cat',
'Crab Trick',
'Candle Trick',
'Friendship Back',
'Friendship Bear Hug',
'Friendship Warp',
'Friendship Fight',
'Turquoise Trail',
'Black Trail',
'Blue Trail',
'Cyan Trail',
'Green Trail',
'Purple Pink Trail',
'Orange Trail',
'Pink Trail',
'Purple Trail',
'Red Trail',
'Yellow Trail',
'Rainbow Trail',
'↩Back'},
nil,"Slot1 Others")
if sp == nil then
elseif sp == 1 then
setsp1()
setvalue(mfdz+0x00,4,1692428656)
spn1 = 'Height small'
spark1()
end
if sp == 2 then
setsp1()
setvalue(mfdz+0x00,4,2142718166)
spn1 = 'Size small'
spark1()
end
if sp == 3 then
setsp1()
setvalue(mfdz+0x00,4,891098028)
spn1 = 'Height big'
spark1()
end
if sp == 4 then
setsp1()
setvalue(mfdz+0x00,4,-1879316162)
spn1 = 'Size big'
spark1()
end
if sp == 5 then
setsp1()
setvalue(mfdz+0x00,4,-1881863468)
spn1 = 'Kizuna AI call'
spark1()
end
if sp == 6 then
setsp1()
setvalue(mfdz+0x00,4,1097748727)
spn1 = 'Glow'
spark1()
end
if sp == 7 then
setsp1()
setvalue(mfdz+0x00,4,1750685908)
spn1 = 'Fast charge'
spark1()
end
if sp == 8 then
setsp1()
setvalue(mfdz+0x00,4,1860519737)
spn1 = 'Anti gravity'
spark1()
end
if sp == 9 then
setsp1()
setvalue(mfdz+0x00,4,-1463943689)
spn1 = 'Anti rain'
spark1()
end
if sp == 10 then
setsp1()
setvalue(mfdz+0x00,4,-932650381)
spn1 = 'Anti krill'
spark1()
end
if sp == 11 then
setsp1()
setvalue(mfdz+0x00,4,847145578)
spn1 = 'Krill cat'
spark1()
end
if sp == 12 then
setsp1()
setvalue(mfdz+0x00,4,901504997)
spn1 = 'Crab trick'
spark1()
end
if sp == 13 then
setsp1()
setvalue(mfdz+0x00,4,1441565188)
spn1 = 'Candle trick'
spark1()
end
if sp == 14 then
setsp1()
setvalue(mfdz+0x00,4,1405645877)
spn1 = 'Friendship piggyback'
spark1()
end
if sp == 15 then
setsp1()
setvalue(mfdz+0x00,4,1677246236)
spn1 = 'Friendship bear hug'
spark1()
end
if sp == 16 then
setsp1()
setvalue(mfdz+0x00,4,998754260)
spn1 = 'Friendship warp'
spark1()
end
if sp == 17 then
setsp1()
setvalue(mfdz+0x00,4,2137753158)
spn1 = 'Friendship fight'
spark1()
end
if sp == 18 then
setsp1()
setvalue(mfdz+0x00,4,1318288330)
spark1()
end
if sp == 19 then
setsp1()
setvalue(mfdz+0x00,4,-176902809)
spark1()
end
if sp == 20 then
setsp1()
setvalue(mfdz+0x00,4,-1951801352)
spark1()
end
if sp == 21 then
setsp1()
setvalue(mfdz+0x00,4,1918290563)
spark1()
end
if sp == 22 then
setsp1()
setvalue(mfdz+0x00,4,637646527)
spark1()
end
if sp == 23 then
setsp1()
setvalue(mfdz+0x00,4,-1527316661)
spark1()
end
if sp == 24 then
setsp1()
setvalue(mfdz+0x00,4,1237283438)
spark1()
end
if sp == 25 then
setsp1()
setvalue(mfdz+0x00,4,470393304)
spark1()
end
if sp == 26 then
setsp1()
setvalue(mfdz+0x00,4,-1071076330)
spark1()
end
if sp == 27 then
setsp1()
setvalue(mfdz+0x00,4,-1304862813)
spark1()
end
if sp == 28 then
setsp1()
setvalue(mfdz+0x00,4,-1354381164)
spark1()
end
if sp == 29 then
setsp1()
setvalue(mfdz+0x00,4,147016038)
spark1()
end
if sp == 30 then spell1()
end
end

if sp == 8 then
ufrzvalue(mfdz+0x00,4,0)
setvalue(mfdz+0x0,4,0)
--setvalue(mfdz+0x8,4,0)
--setvalue(mfdz+0xC,4,0)
spn1 = ' '
end
if sp == 9 then spells()
end
end
sys = -1
end
end
------------------------------------------
function spell2()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local sp = gg.choice(
{'Cape',
'Pants',
'Hairstyle',
'Mask',
'Accessory',
'Prop',
'Others',
'↻Reset',
'↩Back'},
nil,"Slot2")
if sp == nil then

elseif sp == 1 then
local sp = gg.choice(
{'Yeti Cape',
'Wings of AURORA',
'Cat Cape',
'Platinum Cape',
'Fish Cape',
'TGC Cape',
'Ghostbat Cape',
'Spider Cape',
'Christmas Cape',
'Snowflake Cape',
'Old Winter Feast Cape',
'White Bird Cape',
'Petal Cape',
'Fortune Cape',
'Sakura Cape',
'Wisteria Cape',
'Ocean Cape',
'Dream Season Cape',
'Rainbow Cape',
'Little Prince Scarf Cape',
'Little Prince Asteroid Jacket',
'Bloom Cape 2023',
'Alchemist Cape',
'Earth Cape',
'Light Scholar Cape',
'Giving In Cape',
'Postman Cape',
'Turtle Cape',
'Dead Leaves Cape',
'↩Back'},
nil,"Slot2 Cape")
if sp == nil then
elseif sp == 1 then
setsp2()
setvalue(mfdz+0x30,4,-940505450)
spn2 = 'Yeti cloak'
spark2()
end
if sp == 2 then
setsp2()
setvalue(mfdz+0x30,4,1326646141)
spn2 = 'Aurora concert cloak'
spark2()
end
if sp == 3 then
setsp2()
setvalue(mfdz+0x30,4,583315364)
spn2 = 'Cat cloak'
spark2()
end
if sp == 4 then
setsp2()
setvalue(mfdz+0x30,4,330655056)
spn2 = 'Platinum cloak'
spark2()
end
if sp == 5 then
setsp2()
setvalue(mfdz+0x30,4,573237039)
spn2 = 'Fish cloak'
spark2()
end
if sp == 6 then
setsp2()
setvalue(mfdz+0x30,4,540856305)
spn2 = 'TGC cloak'
spark2()
end
if sp == 7 then
setsp2()
setvalue(mfdz+0x30,4,625581156)
spn2 = 'Ghostbat cloak'
spark2()
end
if sp == 8 then
setsp2()
setvalue(mfdz+0x30,4,930203946)
spn2 = 'Spider cloak'
spark2()
end
if sp == 9 then
setsp2()
setvalue(mfdz+0x30,4,1306675982)
spn2 = 'Christmas cloak'
spark2()
end
if sp == 10 then
setsp2()
setvalue(mfdz+0x30,4,-784831205)
spn2 = 'Snowflake cloak'
spark2()
end
if sp == 11 then
setsp2()
setvalue(mfdz+0x30,4,1762827508)
spn2 = 'Old winter feast cloak'
spark2()
end
if sp == 12 then
setsp2()
setvalue(mfdz+0x30,4,-1623262339)
spn2 = 'White bird cloak'
spark2()
end
if sp == 13 then
setsp2()
setvalue(mfdz+0x30,4,-6043825)
spn2 = 'Petal cloak'
spark2()
end
if sp == 14 then
setsp2()
setvalue(mfdz+0x30,4,-445538750)
spn2 = 'Fortune cloak'
spark2()
end
if sp == 15 then
setsp2()
setvalue(mfdz+0x30,4,162066154)
spn2 = 'Sakura cloak'
spark2()
end
if sp == 16 then
setsp2()
setvalue(mfdz+0x30,4,-1244390069)
spn2 = 'Wisteria cloak'
spark2()
end
if sp == 17 then
setsp2()
setvalue(mfdz+0x30,4,329684861)
spn2 = 'Ocean cloak'
spark2()
end
if sp == 18 then
setsp2()
setvalue(mfdz+0x30,4,-1822337532)
spn2 = 'Dream season cloak'
spark2()
end
if sp == 19 then
setsp2()
setvalue(mfdz+0x30,4,-195929339)
spn2 = 'Rainbow cloak'
spark2()
end
if sp == 20 then
setsp2()
setvalue(mfdz+0x30,4,-2087661926)
spn2 = 'Little Prince Scarf Cape'
spark2()
end
if sp == 21 then
setsp2()
setvalue(mfdz+0x30,4,1402240423)
spn2 = 'Little Prince Asteroid Jacket'
spark2()
end
if sp == 22 then
setsp2()
setvalue(mfdz+0x30,4,549258087)
spn2 = 'Dob cloak'
spark2()
end
if sp == 23 then
setsp2()
setvalue(mfdz+0x30,4,-383842131)
spark2()
end
if sp == 24 then
setsp2()
setvalue(mfdz+0x30,4,2079599063)
spark2()
end
if sp == 25 then
setsp2()
setvalue(mfdz+0x30,4,1375571404)
spark2()
end
if sp == 26 then
setsp2()
setvalue(mfdz+0x30,4,939730131)
spark2()
end
if sp == 27 then
setsp2()
setvalue(mfdz+0x30,4,-308941587)
spark2()
end
if sp == 28 then
setsp2()
setvalue(mfdz+0x30,4,-700035318)
spark2()
end
if sp == 29 then
setsp2()
setvalue(mfdz+0x30,4,769892976)
spark2()
end
if sp == 30 then spell2()
end
end

if sp == 2 then
local sp = gg.choice(
{'Fortune Pants',
'Runaway Outfit',
'Prince Sword Suit',
'Halloween Pants',
'Rainbow Pants',
'Bloom Pants',
'To The Love Outfit',
'Snowman Body',
'↩Back'},
nil,"Slot2 Pants")
if sp == nil then
elseif sp == 1 then
setsp2()
setvalue(mfdz+0x30,4,483128979)
spn2 = 'Fortune pants'
spark2()
end
if sp == 2 then
setsp2()
setvalue(mfdz+0x30,4,3160138703)
spn2 = 'Aurora pants'
spark2()
end
if sp == 3 then
setsp2()
setvalue(mfdz+0x30,4,-495233219)
spn2  = 'Prince Sword Suit'
spark2()
end
if sp == 4 then
setsp2()
setvalue(mfdz+0x30,4,969946279)
spn2 = 'Halloween pants'
spark2()
end
if sp == 5 then
setsp2()
setvalue(mfdz+0x30,4,1482655023)
spn2 = 'Rainbow pants'
spark2()
end
if sp == 6 then
setsp2()
setvalue(mfdz+0x30,4,-105193858)
spn2 = 'Dob pants'
spark2()
end
if sp == 7 then
setsp2()
setvalue(mfdz+0x30,4,782433094)
spn2 = 'to love the outfit'
spark2()
end
if sp == 8 then
setsp2()
setvalue(mfdz+0x30,4,-1535254839)
spn2 = 'Snowman Body'
spark2()
end
if sp == 9 then spell2()
end
end

if sp == 3 then
local sp = gg.choice(
{'Runaway Hairstyle',
'Fish Head',
'Pumpkin Head',
'Wizard Hat',
'Sakura Hairstyle',
'Cat Hairstyle',
'Halloween Spider Hairstyle',
'Halloween Longhair',
'Christmas Hat',
'Dream Season Hairstyle',
'Bun Hairstyle',
'Snowman Head',
'Lion Head',
'Rainbow Hat',
'Knitted Hat',
'Fortune Hat',
'↩Back'},
nil,"Slot2 Hairstyle")
if sp == nil then
elseif sp == 1 then
setsp2()
setvalue(mfdz+0x30,4,239584271)
spn2 = 'Runaway Hairstyle'
spark2()
end
if sp == 2 then
setsp2()
setvalue(mfdz+0x30,4,-1543558130)
spn2 = 'Fish head'
spark2()
end
if sp == 3 then
setsp2()
setvalue(mfdz+0x30,4,1046521292)
spn2 = 'Pumpkin head'
spark2()
end
if sp == 4 then
setsp2()
setvalue(mfdz+0x30,4,1983755432)
spn2 = 'Wizard hat'
spark2()
end
if sp == 5 then
setsp2()
setvalue(mfdz+0x30,4,373243257)
spn2 = 'Sakura hairstyle'
spark2()
end
if sp == 6 then
setsp2()
setvalue(mfdz+0x30,4,4269954660)
spn2 = 'Cat hairstyle'
spark2()
end
if sp == 7 then
setsp2()
setvalue(mfdz+0x30,4,-1760741911)
spn2 = 'Halloween spider hairstyle'
spark2()
end
if sp == 8 then
setsp2()
setvalue(mfdz+0x30,4,116679863)
spn2 = 'Halloween longhair'
spark2()
end
if sp == 9 then
setsp2()
setvalue(mfdz+0x30,4,2885283383)
spn2 = 'Christmas hat'
spark2()
end
if sp == 10 then
setsp2()
setvalue(mfdz+0x30,4,1059767859)
spn2 = 'Dream Season Hairstyle'
spark2()
end
if sp == 11 then
setsp2()
setvalue(mfdz+0x30,4,-2099997114)
spn2 = 'Bun Hairstyle'
spark2()
end
if sp == 12 then
setsp2()
setvalue(mfdz+0x30,4,419537417)
spn2 = 'Snowman Head'
spark2()
end
if sp == 13 then
setsp2()
setvalue(mfdz+0x30,4,2093744529)
spark2()
end
if sp == 14 then
setsp2()
setvalue(mfdz+0x30,4,-521490982)
spark2()
end
if sp == 15 then
setsp2()
setvalue(mfdz+0x30,4,-2092825638)
spark2()
end
if sp == 16 then
setsp2()
setvalue(mfdz+0x30,4,-823266018)
spark2()
end
if sp == 17 then spell2()
end
end

if sp == 4 then
local sp = gg.choice(
{'Rhythm Season Mask',
'Cat Mask',
'Rabbit Mask',
'Red Fox Mask',
'Ox Mask', 
'Dream Season Mask',
'Fortune Mask',
'Rose Mask',
'Winter Feast Goggle',
'Whirling Mask',
'Tiger Mask',
'Weasel Mask',
'↩Back'},
nil,"Slot2 Mask")
if sp == nil then
elseif sp == 1 then
setsp2()
setvalue(mfdz+0x30,4,-218615327)
spark2()
end
if sp == 2 then
setsp2()
setvalue(mfdz+0x30,4,-901640940)
spark2()
end
if sp == 3 then
setsp2()
setvalue(mfdz+0x30,4,371568737)
spark2()
end
if sp == 4 then
setsp2()
setvalue(mfdz+0x30,4,964659005)
spark2()
end
if sp == 5 then
setsp2()
setvalue(mfdz+0x30,4,-849020465)
spark2()
end
if sp == 6 then
setsp2()
setvalue(mfdz+0x30,4,144876107)
spark2()
end
if sp == 7 then
setsp2()
setvalue(mfdz+0x30,4,-1636163586)
spark2()
end
if sp == 8 then
setsp2()
setvalue(mfdz+0x30,4,-938578505)
spark2()
end
if sp == 9 then
setsp2()
setvalue(mfdz+0x30,4,858950093)
spark2()
end
if sp == 10 then
setsp2()
setvalue(mfdz+0x30,4,771982951)
spark2()
end
if sp == 11 then
setsp2()
setvalue(mfdz+0x30,4,475055967)
spark2()
end
if sp == 12 then
setsp2()
setvalue(mfdz+0x30,4,784922793)
spark2()
end
if sp == 13 then spell2()
end
end

if sp == 5 then
local sp = gg.choice(
{'Rainbow Earring',
'Rainbow Headphone',
'Summer Hat',
'Halloween Horn',
'Antler',
'Flower Crown',
'Tiara We Can Touch',
'Fish Headdress',
'Rabbit Headdress',
'Orange Headdress',
'Kizuna AI Headband',
'Ribbon Necklace',
'Jellyfish Shouldress',
'Turtle Shouldress',
'Ocean Necklace',
'Holly Necklace',
'Coral Headdress',
'Snowflake Headdress',
'Flower Headdress',
'Double Flower Headdress',
'Rainbow Headdress',
'Shell Headdress',
'Single Wizard Hat',
--'Transparent Muffler',
'Winter Feast Muffler',
'↩Back'},
nil,"Slot2 Accessory")
if sp == nil then
elseif sp == 1 then
setsp2()
setvalue(mfdz+0x30,4,-1590289609)
spn2 = 'Rainbow earring'
spark2()
end
if sp == 2 then
setsp2()
setvalue(mfdz+0x30,4,2525758368)
spn2 = 'Rainbow Headphone'
spark2()
end
if sp == 3 then
setsp2()
setvalue(mfdz+0x30,4,2052387583)
spn2 = 'Summer hat'
spark2()
end
if sp == 4 then
setsp2()
setvalue(mfdz+0x30,4,1123843208)
spn2 = 'Halloween horn'
spark2()
end
if sp == 5 then
setsp2()
setvalue(mfdz+0x30,4,1909998088)
spn2 = 'Antler'
spark2()
end
if sp == 6 then
setsp2()
setvalue(mfdz+0x30,4,942365523)
spn2 = 'Flower crown'
spark2()
end
if sp == 7 then
setsp2()
setvalue(mfdz+0x30,4,-1989753674)
spn2 = 'Tiara We Can Touch'
spark2()
end
if sp == 8 then
setsp2()
setvalue(mfdz+0x30,4,551055685)
spn2 = 'Fish headdress'
spark2()
end
if sp == 9 then
setsp2()
setvalue(mfdz+0x30,4,-848739711)
spn2 = 'Rabbit headdress'
spark2()
end
if sp == 10 then
setsp2()
setvalue(mfdz+0x30,4,-1616733323)
spn2 = 'Orange headdress'
spark2()
end
if sp == 11 then
setsp2()
setvalue(mfdz+0x30,4,2050094531)
spn2 = 'Kizuna AI headband'
spark2()
end
if sp == 12 then
setsp2()
setvalue(mfdz+0x30,4,43899279)
spn2 = 'Ribbon Necklace'
spark2()
end
if sp == 13 then
setsp2()
setvalue(mfdz+0x30,4,329235560)
spn2 = 'Jellyfish shouldress'
spark2()
end
if sp == 14 then
setsp2()
setvalue(mfdz+0x30,4,1943995802)
spn2 = 'Turtle on shouldress'
spark2()
end
if sp == 15 then
setsp2()
setvalue(mfdz+0x30,4,-1938239955)
spn2 = 'Ocean Necklace'
spark2()
end
if sp == 16 then
setsp2()
setvalue(mfdz+0x30,4,8361886)
spn2 = 'Holly Necklace'
spark2()
end
if sp == 17 then
setsp2()
setvalue(mfdz+0x30,4,-347711956)
spn2 = 'Coral Headdress'
spark2()
end
if sp == 18 then
setsp2()
setvalue(mfdz+0x30,4,1372838509)
spn2 = 'Snowflake Headdress'
spark2()
end
if sp == 19 then
setsp2()
setvalue(mfdz+0x30,4,2141511649)
spark2()
end
if sp == 20 then
setsp2()
setvalue(mfdz+0x30,4,-1014212311)
spark2()
end
if sp == 21 then
setsp2()
setvalue(mfdz+0x30,4,-290700605)
spark2()
end
if sp == 22 then
setsp2()
setvalue(mfdz+0x30,4,-171149928)
spark2()
end
if sp == 23 then
setsp2()
setvalue(mfdz+0x30,4,-75786201)
spark2()
end
if sp == 240 then
setsp2()
setvalue(mfdz+0x30,4,1021908644)
spark2()
end
if sp == 24 then
setsp2()
setvalue(mfdz+0x30,4,70832281)
spark2()
end
if sp == 25 then spell2()
end
end

if sp == 6 then
local sp = gg.choice(
{'Fireworks',
'Love Fireworks',
'Voice of AURORA',
'Christmas Table',
'Halloween Table',
'Bloom Pink Teaset',
'Bloom Purple Teaset',
'Picnic',
'Gondola',
'Seesaw',
'Swing',
'Pumpkin',
'Summer Tent',
'Marshmallow',
'Fox',
'Cat',
'Pioneer Umbrella',
'Summer Umbrella',
'Transparent Umbrella',
'Fortune Umbrella',
'Snow Globe',
'Ball Game',
'Snowman',
'Wedding',
'Lantern',
'White Piano',
'Glectric Guitar',
'Triumph Guiter',
'Triumph Harp',
'Triumph Handpan',
'Double Chair',
'Double Wood Chair',
'Beach Bed',
'Butterfly Fountain',
'Pipe',
'↩Back'},
nil,"Slot2 Prop")
if sp == nil then
elseif sp == 1 then
setsp2()
setvalue(mfdz+0x30,4,227018419)
spn2 = 'Fireworks'
spark2()
end
if sp == 2 then
setsp2()
setvalue(mfdz+0x30,4,1403584133)
spn2 = 'Love fireworks'
spark2()
end
if sp == 3 then
setsp2()
setvalue(mfdz+0x30,4,137268536)
spn2 = 'Voice of AURORA'
spark2()
end
if sp == 4 then
setsp2()
setvalue(mfdz+0x30,4,256924066)
spn2 = 'Christmas table'
spark2()
end
if sp == 5 then
setsp2()
setvalue(mfdz+0x30,4,-797688127)
spn2 = 'Halloween table'
spark2()
end
if sp == 6 then
setsp2()
setvalue(mfdz+0x30,4,10058409)
spn2 = 'Bloom Pink Teaset'
spark2()
end
if sp == 7 then
setsp2()
setvalue(mfdz+0x30,4,1598845731)
spn2 = 'Bloom Purple Teaset'
spark2()
end
if sp == 8 then
setsp2()
setvalue(mfdz+0x30,4,185406188)
spn2 = 'Picnic'
spark2()
end
if sp == 9 then
setsp2()
setvalue(mfdz+0x30,4,303877523)
spn2 = 'Gondola'
spark2()
end
if sp == 10 then
setsp2()
setvalue(mfdz+0x30,4,-2095749161)
spn2 = 'Seesaw'
spark2()
end
if sp == 11 then
setsp2()
setvalue(mfdz+0x30,4,1064080243)
spn2 = 'Swing'
spark2()
end
if sp == 12 then
setsp2()
setvalue(mfdz+0x30,4,125584301)
spn2 = 'Pumpkin'
spark2()
end
if sp == 13 then
setsp2()
setvalue(mfdz+0x30,4,1414743743)
spn2 = 'Summer tent'
spark2()
end
if sp == 14 then
setsp2()
setvalue(mfdz+0x30,4,3165352994)
spn2 = 'Marshmallow'
spark2()
end
if sp == 15 then
setsp2()
setvalue(mfdz+0x30,4,-2057431024)
spn2 = 'Fox'
spark2()
end
if sp == 16 then
setsp2()
setvalue(mfdz+0x30,4,1436679857)
spn2 = 'Cat'
spark2()
end
if sp == 17 then
setsp2()
setvalue(mfdz+0x30,4,-992017029)
spn2 = 'Pioneer umbrella'
spark2()
end
if sp == 18 then
setsp2()
setvalue(mfdz+0x30,4,2878211958)
spn2 = 'Summer umbrella'
spark2()
end
if sp == 19 then
setsp2()
setvalue(mfdz+0x30,4,1167393926)
spn2 = 'Transparent umbrella'
spark2()
end
if sp == 20 then
setsp2()
setvalue(mfdz+0x30,4,1621987452)
spn2 = 'Fortune umbrella'
spark2()
end
if sp == 21 then
setsp2()
setvalue(mfdz+0x30,4,1440439821)
spn2 = 'Snow globe'
spark2()
end
if sp == 22 then
setsp2()
setvalue(mfdz+0x30,4,-913145276)
spn2 = 'Ball game'
spark2()
end
if sp == 23 then
setsp2()
setvalue(mfdz+0x30,4,1080405300)
spn2 = 'Snowman'
spark2()
end
if sp == 24 then
setsp2()
setvalue(mfdz+0x30,4,-1333564540)
spn2 = 'Wedding'
spark2()
end
if sp == 25 then
setsp2()
setvalue(mfdz+0x30,4,1319710173)
spn2 = 'Lantern'
spark2()
end
if sp == 26 then
setsp2()
setvalue(mfdz+0x30,4,-1202427550)
spn2 = 'White piano'
spark2()
end
if sp == 27 then
setsp2()
setvalue(mfdz+0x30,4,332997197)
spn2 = 'TGC anniversary guiter'
spark2()
end
if sp == 28 then
setsp2()
setvalue(mfdz+0x30,4,970364197)
spn2 = 'Triumph guiter'
spark2()
end
if sp == 29 then
setsp2()
setvalue(mfdz+0x30,4,1275481440)
spn2 = 'Triumph harp'
spark2()
end
if sp == 30 then
setsp2()
setvalue(mfdz+0x30,4,454864430)
spn2 = 'Triumph Handpan'
spark2()
end
if sp == 31 then
setsp2()
setvalue(mfdz+0x30,4,-1866832203)
spark2()
end
if sp == 32 then
setsp2()
setvalue(mfdz+0x30,4,472595010)
spark2()
end
if sp == 33 then
setsp2()
setvalue(mfdz+0x30,4,-1158710924)
spark2()
end
if sp == 34 then
setsp2()
setvalue(mfdz+0x30,4,-1096484674)
spark2()
end
if sp == 35 then
setsp2()
setvalue(mfdz+0x30,4,-1419483218)
spark2()
end
if sp == 36 then spell2()
end
end

if sp == 7 then
local sp = gg.choice(
{'Height Small',
'Size Small',
'Height Big',
'Size Big',
'Kizuna AI Call',
'Glow',
'Fast Charge',
'Anti Gravity',
'Anti Rain',
'Anti Krill',
'Krill Cat',
'Crab Trick',
'Candle Trick',
'Friendship Back',
'Friendship Bear Hug',
'Friendship Warp',
'Friendship Fight',
'Turquoise Trail',
'Black Trail',
'Blue Trail',
'Cyan Trail',
'Green Trail',
'Purple Pink Trail',
'Orange Trail',
'Pink Trail',
'Purple Trail',
'Red Trail',
'Yellow Trail',
'Rainbow Trail',
'↩Back'},
nil,"Slot2 Others")
if sp == nil then
elseif sp == 1 then
setsp2()
setvalue(mfdz+0x30,4,1692428656)
spn2 = 'Height small'
spark2()
end
if sp == 2 then
setsp2()
setvalue(mfdz+0x30,4,2142718166)
spn2 = 'Size small'
spark2()
end
if sp == 3 then
setsp2()
setvalue(mfdz+0x30,4,891098028)
spn2 = 'Height big'
spark2()
end
if sp == 4 then
setsp2()
setvalue(mfdz+0x30,4,-1879316162)
spn2 = 'Size big'
spark2()
end
if sp == 5 then
setsp2()
setvalue(mfdz+0x30,4,-1881863468)
spn2 = 'Kizuna AI call'
spark2()
end
if sp == 6 then
setsp2()
setvalue(mfdz+0x30,4,1097748727)
spn2 = 'Glow'
spark2()
end
if sp == 7 then
setsp2()
setvalue(mfdz+0x30,4,1750685908)
spn2  = 'Fast charge'
spark2()
end
if sp == 8 then
setsp2()
setvalue(mfdz+0x30,4,1860519737)
spn2 = 'Anti gravity'
spark2()
end
if sp == 9 then
setsp2()
setvalue(mfdz+0x30,4,-1463943689)
spn2 = 'Anti rain'
spark2()
end
if sp == 10 then
setsp2()
setvalue(mfdz+0x30,4,-932650381)
spn2 = 'Anti krill'
spark2()
end
if sp == 11 then
setsp2()
setvalue(mfdz+0x30,4,847145578)
spn2 = 'Krill cat'
spark2()
end
if sp == 12 then
setsp2()
setvalue(mfdz+0x30,4,901504997)
spn2 = 'Crab trick'
spark2()
end
if sp == 13 then
setsp2()
setvalue(mfdz+0x30,4,1441565188)
spn2 = 'Candle trick'
spark2()
end
if sp == 14 then
setsp2()
setvalue(mfdz+0x30,4,1405645877)
spn2 = 'Friendship piggyback'
spark2()
end
if sp == 15 then
setsp2()
setvalue(mfdz+0x30,4,1677246236)
spn2 = 'Friendship bear hug'
spark2()
end
if sp == 16 then
setsp2()
setvalue(mfdz+0x30,4,998754260)
spn2 = 'Friendship warp'
spark2()
end
if sp == 17 then
setsp2()
setvalue(mfdz+0x30,4,2137753158)
spn2 = 'Friendship fight'
spark2()
end
if sp == 18 then
setsp2()
setvalue(mfdz+0x30,4,1318288330)
spark2()
end
if sp == 19 then
setsp2()
setvalue(mfdz+0x30,4,-176902809)
spark2()
end
if sp == 20 then
setsp2()
setvalue(mfdz+0x30,4,-1951801352)
spark2()
end
if sp == 21 then
setsp2()
setvalue(mfdz+0x30,4,1918290563)
spark2()
end
if sp == 22 then
setsp2()
setvalue(mfdz+0x30,4,637646527)
spark2()
end
if sp == 23 then
setsp2()
setvalue(mfdz+0x30,4,-1527316661)
spark2()
end
if sp == 24 then
setsp2()
setvalue(mfdz+0x30,4,1237283438)
spark2()
end
if sp == 25 then
setsp2()
setvalue(mfdz+0x30,4,470393304)
spark2()
end
if sp == 26 then
setsp2()
setvalue(mfdz+0x30,4,-1071076330)
spark2()
end
if sp == 27 then
setsp2()
setvalue(mfdz+0x30,4,-1304862813)
spark2()
end
if sp == 28 then
setsp2()
setvalue(mfdz+0x30,4,-1354381164)
spark2()
end
if sp == 29 then
setsp2()
setvalue(mfdz+0x30,4,147016038)
spark2()
end
if sp == 30 then spell2()
end
end

if sp == 8 then
ufrzvalue(mfdz+0x30,4,0)
setvalue(mfdz+0x30,4,0)
--setvalue(mfdz+0x38,4,0)
--setvalue(mfdz+0x3C,4,0)
spn2 = ' '
end
if sp == 9 then spells()
end
end
sys = -1
end
end
------------------------------------------
function spell3()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local sp = gg.choice(
{'Cape',
'Pants',
'Hairstyle',
'Mask',
'Accessory',
'Prop',
'Others',
'↻Reset',
'↩Back'},
nil,"Slot3")
if sp == nil then

elseif sp == 1 then
local sp = gg.choice(
{'Yeti Cape',
'Wings of AURORA',
'Cat Cape',
'Platinum Cape',
'Fish Cape',
'TGC Cape',
'Ghostbat Cape',
'Spider Cape',
'Christmas Cape',
'Snowflake Cape',
'Old Winter Feast Cape',
'White Bird Cape',
'Petal Cape',
'Fortune Cape',
'Sakura Cape',
'Wisteria Cape',
'Ocean Cape',
'Dream Season Cape',
'Rainbow Cape',
'Little Prince Scarf Cape',
'Little Prince Asteroid Jacket',
'Bloom Cape 2023',
'Alchemist Cape',
'Earth Cape',
'Light Scholar Cape',
'Giving In Cape',
'Postman Cape',
'Turtle Cape',
'Dead Leaves Cape',
'↩Back'},
nil,"Slot3 Cape")
if sp == nil then
elseif sp == 1 then
setsp3()
setvalue(mfdz+0x60,4,-940505450)
spn3 = 'Yeti cloak'
spark3()
end
if sp == 2 then
setsp3()
setvalue(mfdz+0x60,4,1326646141)
spn3 = 'Aurora concert cloak'
spark3()
end
if sp == 3 then
setsp3()
setvalue(mfdz+0x60,4,583315364)
spn3 = 'Cat cloak'
spark3()
end
if sp == 4 then
setsp3()
setvalue(mfdz+0x60,4,330655056)
spn3 = 'Platinum cloak'
spark3()
end
if sp == 5 then
setsp3()
setvalue(mfdz+0x60,4,573237039)
spn3 = 'Fish cloak'
spark3()
end
if sp == 6 then
setsp3()
setvalue(mfdz+0x60,4,540856305)
spn3 = 'TGC cloak'
spark3()
end
if sp == 7 then
setsp3()
setvalue(mfdz+0x60,4,625581156)
spn3 = 'Ghostbat cloak'
spark3()
end
if sp == 8 then
setsp3()
setvalue(mfdz+0x60,4,930203946)
spn3 = 'Spider cloak'
spark3()
end
if sp == 9 then
setsp3()
setvalue(mfdz+0x60,4,1306675982)
spn3 = 'Christmas cloak'
spark3()
end
if sp == 10 then
setsp3()
setvalue(mfdz+0x60,4,-784831205)
spn3 = 'Snowflake cloak'
spark3()
end
if sp == 11 then
setsp3()
setvalue(mfdz+0x60,4,1762827508)
spn3 = 'Old winter feast cloak'
spark3()
end
if sp == 12 then
setsp3()
setvalue(mfdz+0x60,4,-1623262339)
spn3 = 'White bird cloak'
spark3()
end
if sp == 13 then
setsp3()
setvalue(mfdz+0x60,4,-6043825)
spn3 = 'Petal cloak'
spark3()
end
if sp == 14 then
setsp3()
setvalue(mfdz+0x60,4,-445538750)
spn3 = 'Fortune cloak'
spark3()
end
if sp == 15 then
setsp3()
setvalue(mfdz+0x60,4,162066154)
spn3 = 'Sakura cloak'
spark3()
end
if sp == 16 then
setsp3()
setvalue(mfdz+0x60,4,-1244390069)
spn3 = 'Wisteria cloak'
spark3()
end
if sp == 17 then
setsp3()
setvalue(mfdz+0x60,4,329684861)
spn3 = 'Ocean cloak'
spark3()
end
if sp == 18 then
setsp3()
setvalue(mfdz+0x60,4,-1822337532)
spn3 = 'Dream season cloak'
spark3()
end
if sp == 19 then
setsp3()
setvalue(mfdz+0x60,4,-195929339)
spn3 = 'Rainbow cloak'
spark3()
end
if sp == 20 then
setsp3()
setvalue(mfdz+0x60,4,-2087661926)
spn3 = 'Little Prince Scarf Cape'
spark3()
end
if sp == 21 then
setsp3()
setvalue(mfdz+0x60,4,1402240423)
spn3 = 'Little Prince Asteroid Jacket'
spark3()
end
if sp == 22 then
setsp3()
setvalue(mfdz+0x60,4,549258087)
spn3 = 'Dob cloak'
spark3()
end
if sp == 23 then
setsp3()
setvalue(mfdz+0x60,4,-383842131)
spark3()
end
if sp == 24 then
setsp3()
setvalue(mfdz+0x60,4,2079599063)
spark3()
end
if sp == 25 then
setsp3()
setvalue(mfdz+0x60,4,1375571404)
spark3()
end
if sp == 26 then
setsp3()
setvalue(mfdz+0x60,4,939730131)
spark3()
end
if sp == 27 then
setsp3()
setvalue(mfdz+0x60,4,-308941587)
spark3()
end
if sp == 28 then
setsp3()
setvalue(mfdz+0x60,4,-700035318)
spark3()
end
if sp == 29 then
setsp3()
setvalue(mfdz+0x60,4,769892976)
spark3()
end
if sp == 30 then spell3()
end
end

if sp == 2 then
local sp = gg.choice(
{'Fortune Pants',
'Runaway Outfit',
'Prince Sword Suit',
'Halloween Pants',
'Rainbow Pants',
'Bloom Pants',
'To The Love Outfit',
'Snowman Body',
'↩Back'},
nil,"Slot3 Pants")
if sp == nil then
elseif sp == 1 then
setsp3()
setvalue(mfdz+0x60,4,483128979)
spn3 = 'Fortune pants'
spark3()
end
if sp == 2 then
setsp3()
setvalue(mfdz+0x60,4,3160138703)
spn3 = 'Aurora pants'
spark3()
end
if sp == 3 then
setsp3()
setvalue(mfdz+0x60,4,-495233219)
spn3 = 'Prince Sword Suit'
spark3()
end
if sp == 4 then
setsp3()
setvalue(mfdz+0x60,4,969946279)
spn3 = 'Halloween pants'
spark3()
end
if sp == 5 then
setsp3()
setvalue(mfdz+0x60,4,1482655023)
spn3 = 'Rainbow pants'
spark3()
end
if sp == 6 then
setsp3()
setvalue(mfdz+0x60,4,-105193858)
spn3 = 'Dob pants'
spark3()
end
if sp == 7 then
setsp3()
setvalue(mfdz+0x60,4,782433094)
spn3 = 'to love the outfit'
spark3()
end
if sp == 8 then
setsp3()
setvalue(mfdz+0x60,4,-1535254839)
spn3 = 'Snowman Body'
spark3()
end
if sp == 9 then spell3()
end
end

if sp == 3 then
local sp = gg.choice(
{'Runaway Hairstyle',
'Fish Head',
'Pumpkin Head',
'Wizard Hat',
'Sakura Hairstyle',
'Cat Hairstyle',
'Halloween Spider Hairstyle',
'Halloween Longhair',
'Christmas Hat',
'Dream Season Hairstyle',
'Bun Hairstyle',
'Snowman Head',
'Lion Head',
'Rainbow Hat',
'Knitted Hat',
'Fortune Hat',
'↩Back'},
nil,"Slot3 Hairstyle")
if sp == nil then
elseif sp == 1 then
setsp3()
setvalue(mfdz+0x60,4,239584271)
spn3 = 'Runaway Hairstyle'
spark3()
end
if sp == 2 then
setsp3()
setvalue(mfdz+0x60,4,-1543558130)
spn3 = 'Fish head'
spark3()
end
if sp == 3 then
setsp3()
setvalue(mfdz+0x60,4,1046521292)
spn3 = 'Pumpkin head'
spark3()
end
if sp == 4 then
setsp3()
setvalue(mfdz+0x60,4,1983755432)
spn3 = 'Wizard hat'
spark3()
end
if sp == 5 then
setsp3()
setvalue(mfdz+0x60,4,373243257)
spn3 = 'Sakura hairstyle'
spark3()
end
if sp == 6 then
setsp3()
setvalue(mfdz+0x60,4,4269954660)
spn3 = 'Cat hairstyle'
spark3()
end
if sp == 7 then
setsp3()
setvalue(mfdz+0x60,4,-1760741911)
spn3 = 'Halloween spider hairstyle'
spark3()
end
if sp == 8 then
setsp3()
setvalue(mfdz+0x60,4,116679863)
spn3 = 'Halloween longhair'
spark3()
end
if sp == 9 then
setsp3()
setvalue(mfdz+0x60,4,2885283383)
spn3 = 'Christmas hat'
spark3()
end
if sp == 10 then
setsp3()
setvalue(mfdz+0x60,4,1059767859)
spn3 = 'Dream Season Hairstyle'
spark3()
end
if sp == 11 then
setsp3()
setvalue(mfdz+0x60,4,-2099997114)
spn3 = 'Bun Hairstyle'
spark3()
end
if sp == 12 then
setsp3()
setvalue(mfdz+0x60,4,419537417)
spn3 = 'Snowman Head'
spark3()
end
if sp == 13 then
setsp3()
setvalue(mfdz+0x60,4,2093744529)
spark3()
end
if sp == 14 then
setsp3()
setvalue(mfdz+0x60,4,-521490982)
spark3()
end
if sp == 15 then
setsp3()
setvalue(mfdz+0x60,4,-2092825638)
spark3()
end
if sp == 16 then
setsp3()
setvalue(mfdz+0x60,4,-823266018)
spark3()
end
if sp == 17 then spell3()
end
end

if sp == 4 then
local sp = gg.choice(
{'Rhythm Season Mask',
'Cat Mask',
'Rabbit Mask',
'Red Fox Mask',
'Ox Mask', 
'Dream Season Mask',
'Fortune Mask',
'Rose Mask',
'Winter Feast Goggle',
'Whirling Mask',
'Tiger Mask',
'Weasel Mask',
'↩Back'},
nil,"Slot3 Mask")
if sp == nil then
elseif sp == 1 then
setsp3()
setvalue(mfdz+0x60,4,-218615327)
spark3()
end
if sp == 2 then
setsp3()
setvalue(mfdz+0x60,4,-901640940)
spark3()
end
if sp == 3 then
setsp3()
setvalue(mfdz+0x60,4,371568737)
spark3()
end
if sp == 4 then
setsp3()
setvalue(mfdz+0x60,4,964659005)
spark3()
end
if sp == 5 then
setsp3()
setvalue(mfdz+0x60,4,-849020465)
spark3()
end
if sp == 6 then
setsp3()
setvalue(mfdz+0x60,4,144876107)
spark3()
end
if sp == 7 then
setsp3()
setvalue(mfdz+0x60,4,-1636163586)
spark3()
end
if sp == 8 then
setsp3()
setvalue(mfdz+0x60,4,-938578505)
spark3()
end
if sp == 9 then
setsp3()
setvalue(mfdz+0x60,4,858950093)
spark3()
end
if sp == 10 then
setsp3()
setvalue(mfdz+0x60,4,771982951)
spark3()
end
if sp == 11 then
setsp3()
setvalue(mfdz+0x60,4,475055967)
spark3()
end
if sp == 12 then
setsp3()
setvalue(mfdz+0x60,4,784922793)
spark3()
end
if sp == 13 then spell3()
end
end

if sp == 5 then
local sp = gg.choice(
{'Rainbow Earring',
'Rainbow Headphone',
'Summer Hat',
'Halloween Horn',
'Antler',
'Flower Crown',
'Tiara We Can Touch',
'Fish Headdress',
'Rabbit Headdress',
'Orange Headdress',
'Kizuna AI Headband',
'Ribbon Necklace',
'Jellyfish Shouldress',
'Turtle Shouldress',
'Ocean Necklace',
'Holly Necklace',
'Coral Headdress',
'Snowflake Headdress',
'Flower Headdress',
'Double Flower Headdress',
'Rainbow Headdress',
'Shell Headdress',
'Single Wizard Hat',
--'Transparent Muffler',
'Winter Feast Muffler',
'↩Back'},
nil,"Slot3 Accessory")
if sp == nil then
elseif sp == 1 then
setsp3()
setvalue(mfdz+0x60,4,-1590289609)
spn3 = 'Rainbow earring'
spark3()
end
if sp == 2 then
setsp3()
setvalue(mfdz+0x60,4,2525758368)
spn3 = 'Rainbow Headphone'
spark3()
end
if sp == 3 then
setsp3()
setvalue(mfdz+0x60,4,2052387583)
spn3 = 'Summer hat'
spark3()
end
if sp == 4 then
setsp3()
setvalue(mfdz+0x60,4,1123843208)
spn3 = 'Halloween horn'
spark3()
end
if sp == 5 then
setsp3()
setvalue(mfdz+0x60,4,1909998088)
spn3 = 'Antler'
spark3()
end
if sp == 6 then
setsp3()
setvalue(mfdz+0x60,4,942365523)
spn3 = 'Flower crown'
spark3()
end
if sp == 7 then
setsp3()
setvalue(mfdz+0x60,4,-1989753674)
spn3 = 'Tiara We Can Touch'
spark3()
end
if sp == 8 then
setsp3()
setvalue(mfdz+0x60,4,551055685)
spn3 = 'Fish headdress'
spark3()
end
if sp == 9 then
setsp3()
setvalue(mfdz+0x60,4,-848739711)
spn3 = 'Rabbit headdress'
spark3()
end
if sp == 10 then
setsp3()
setvalue(mfdz+0x60,4,-1616733323)
spn3 = 'Orange headdress'
spark3()
end
if sp == 11 then
setsp3()
setvalue(mfdz+0x60,4,2050094531)
spn3 = 'Kizuna AI headband'
spark3()
end
if sp == 12 then
setsp3()
setvalue(mfdz+0x60,4,43899279)
spn3 = 'Ribbon Necklace'
spark3()
end
if sp == 13 then
setsp3()
setvalue(mfdz+0x60,4,329235560)
spn3 = 'Jellyfish shouldress'
spark3()
end
if sp == 14 then
setsp3()
setvalue(mfdz+0x60,4,1943995802)
spn3 = 'Turtle on shouldress'
spark3()
end
if sp == 15 then
setsp3()
setvalue(mfdz+0x60,4,-1938239955)
spn3 = 'Ocean Necklace'
spark3()
end
if sp == 16 then
setsp3()
setvalue(mfdz+0x60,4,8361886)
spn3 = 'Holly Necklace'
spark3()
end
if sp == 17 then
setsp3()
setvalue(mfdz+0x60,4,-347711956)
spn3 = 'Coral Headdress'
spark3()
end
if sp == 18 then
setsp3()
setvalue(mfdz+0x60,4,1372838509)
spn3 = 'Snowflake Headdress'
spark3()
end
if sp == 19 then
setsp3()
setvalue(mfdz+0x60,4,2141511649)
spark3()
end
if sp == 20 then
setsp3()
setvalue(mfdz+0x60,4,-1014212311)
spark3()
end
if sp == 21 then
setsp3()
setvalue(mfdz+0x60,4,-290700605)
spark3()
end
if sp == 22 then
setsp3()
setvalue(mfdz+0x60,4,-171149928)
spark3()
end
if sp == 23 then
setsp3()
setvalue(mfdz+0x60,4,-75786201)
spark3()
end
if sp == 240 then
setsp3()
setvalue(mfdz+0x60,4,1021908644)
spark3()
end
if sp == 24 then
setsp3()
setvalue(mfdz+0x60,4,70832281)
spark3()
end
if sp == 25 then spell3()
end
end

if sp == 6 then
local sp = gg.choice(
{'Fireworks',
'Love fireworks',
'Voice of AURORA',
'Christmas table',
'Halloween table',
'Bloom Pink Teaset',
'Bloom Purple Teaset',
'Picnic',
'Gondola',
'Seesaw',
'Swing',
'Pumpkin',
'Summer tent',
'Marshmallow',
'Fox',
'Cat',
'Pioneer umbrella',
'Summer umbrella',
'Transparent umbrella',
'Fortune umbrella',
'Snow globe',
'Ball game',
'Snowman',
'Wedding',
'Lantern',
'White piano',
'Glectric guitar',
'Triumph guiter',
'Triumph Harp',
'Triumph Handpan',
'Double Chair',
'Double Wood Chair',
'Beach Bed',
'Butterfly Fountain',
'Pipe',
'↩Back'},
nil,"Slot3 Prop")
if sp == nil then
elseif sp == 1 then
setsp3()
setvalue(mfdz+0x60,4,227018419)
spn3 = 'Fireworks'
spark3()
end
if sp == 2 then
setsp3()
setvalue(mfdz+0x60,4,1403584133)
spn3 = 'Love fireworks'
spark3()
end
if sp == 3 then
setsp3()
setvalue(mfdz+0x60,4,137268536)
spn3 = 'Voice of AURORA'
spark3()
end
if sp == 4 then
setsp3()
setvalue(mfdz+0x60,4,256924066)
spn3 = 'Christmas table'
spark3()
end
if sp == 5 then
setsp3()
setvalue(mfdz+0x60,4,-797688127)
spn3 = 'Halloween table'
spark3()
end
if sp == 6 then
setsp3()
setvalue(mfdz+0x60,4,10058409)
spn3 = 'Bloom Pink Teaset'
spark3()
end
if sp == 7 then
setsp3()
setvalue(mfdz+0x60,4,1598845731)
spn3 = 'Bloom Purple Teaset'
spark3()
end
if sp == 8 then
setsp3()
setvalue(mfdz+0x60,4,185406188)
spn3 = 'Picnic'
spark3()
end
if sp == 9 then
setsp3()
setvalue(mfdz+0x60,4,303877523)
spn3 = 'Gondola'
spark3()
end
if sp == 10 then
setsp3()
setvalue(mfdz+0x60,4,-2095749161)
spn3 = 'Seesaw'
spark3()
end
if sp == 11 then
setsp3()
setvalue(mfdz+0x60,4,1064080243)
spn3 = 'Swing'
spark3()
end
if sp == 12 then
setsp3()
setvalue(mfdz+0x60,4,125584301)
spn3 = 'Pumpkin'
spark3()
end
if sp == 13 then
setsp3()
setvalue(mfdz+0x60,4,1414743743)
spn3 = 'Summer tent'
spark3()
end
if sp == 14 then
setsp3()
setvalue(mfdz+0x60,4,3165352994)
spn3 = 'Marshmallow'
spark3()
end
if sp == 15 then
setsp3()
setvalue(mfdz+0x60,4,-2057431024)
spn3 = 'Fox'
spark3()
end
if sp == 16 then
setsp3()
setvalue(mfdz+0x60,4,1436679857)
spn3 = 'Cat'
spark3()
end
if sp == 17 then
setsp3()
setvalue(mfdz+0x60,4,-992017029)
spn3 = 'Pioneer umbrella'
spark3()
end
if sp == 18 then
setsp3()
setvalue(mfdz+0x60,4,2878211958)
spn3 = 'Summer umbrella'
spark3()
end
if sp == 19 then
setsp3()
setvalue(mfdz+0x60,4,1167393926)
spn3 = 'Transparent umbrella'
spark3()
end
if sp == 20 then
setsp3()
setvalue(mfdz+0x60,4,1621987452)
spn3 = 'Fortune umbrella'
spark3()
end
if sp == 21 then
setsp3()
setvalue(mfdz+0x60,4,1440439821)
spn3 = 'Snow globe'
spark3()
end
if sp == 22 then
setsp3()
setvalue(mfdz+0x60,4,-913145276)
spn3 = 'Ball game'
spark3()
end
if sp == 23 then
setsp3()
setvalue(mfdz+0x60,4,1080405300)
spn3 = 'Snowman'
spark3()
end
if sp == 24 then
setsp3()
setvalue(mfdz+0x60,4,-1333564540)
spn3 = 'Wedding'
spark3()
end
if sp == 25 then
setsp3()
setvalue(mfdz+0x60,4,1319710173)
spn3 = 'Lantern'
spark3()
end
if sp == 26 then
setsp3()
setvalue(mfdz+0x60,4,-1202427550)
spn3 = 'White piano'
spark3()
end
if sp == 27 then
setsp3()
setvalue(mfdz+0x60,4,332997197)
spn3 = 'TGC anniversary guiter'
spark3()
end
if sp == 28 then
setsp3()
setvalue(mfdz+0x60,4,970364197)
spn3 = 'Triumph guiter'
spark3()
end
if sp == 29 then
setsp3()
setvalue(mfdz+0x60,4,1275481440)
spn3 = 'Triumph harp'
spark3()
end
if sp == 30 then
setsp3()
setvalue(mfdz+0x60,4,454864430)
spn3 = 'Triumph Handpan'
spark3()
end
if sp == 31 then
setsp3()
setvalue(mfdz+0x60,4,-1866832203)
spark3()
end
if sp == 32 then
setsp3()
setvalue(mfdz+0x60,4,472595010)
spark3()
end
if sp == 33 then
setsp3()
setvalue(mfdz+0x60,4,-1158710924)
spark3()
end
if sp == 34 then
setsp3()
setvalue(mfdz+0x60,4,-1096484674)
spark3()
end
if sp == 35 then
setsp3()
setvalue(mfdz+0x60,4,-1419483218)
spark3()
end
if sp == 36 then spell3()
end
end

if sp == 7 then
local sp = gg.choice(
{'Height Small',
'Size Small',
'Height Big',
'Size Big',
'Kizuna AI Call',
'Glow',
'Fast Charge',
'Anti Gravity',
'Anti Rain',
'Anti Krill',
'Krill Cat',
'Crab Trick',
'Candle Trick',
'Friendship Back',
'Friendship Bear Hug',
'Friendship Warp',
'Friendship Fight',
'Turquoise Trail',
'Black Trail',
'Blue Trail',
'Cyan Trail',
'Green Trail',
'Purple Pink Trail',
'Orange Trail',
'Pink Trail',
'Purple Trail',
'Red Trail',
'Yellow Trail',
'Rainbow Trail',
'↩Back'},
nil,"Slot3 Others")
if sp == nil then
elseif sp == 1 then
setsp3()
setvalue(mfdz+0x60,4,1692428656)
spn3 = 'Height small'
spark3()
end
if sp == 2 then
setsp3()
setvalue(mfdz+0x60,4,2142718166)
spn3 = 'Size small'
spark3()
end
if sp == 3 then
setsp3()
setvalue(mfdz+0x60,4,891098028)
spn3 = 'Height big'
spark3()
end
if sp == 4 then
setsp3()
setvalue(mfdz+0x60,4,-1879316162)
spn3 = 'Size big'
spark3()
end
if sp == 5 then
setsp3()
setvalue(mfdz+0x60,4,-1881863468)
spn3 = 'Kizuna AI call'
spark3()
end
if sp == 6 then
setsp3()
setvalue(mfdz+0x60,4,1097748727)
spn3 = 'Glow'
spark3()
end
if sp == 7 then
setsp3()
setvalue(mfdz+0x60,4,1750685908)
spn3 = 'Fast charge'
spark3()
end
if sp == 8 then
setsp3()
setvalue(mfdz+0x60,4,1860519737)
spn3 = 'Anti gravity'
spark3()
end
if sp == 9 then
setsp3()
setvalue(mfdz+0x60,4,-1463943689)
spn3 = 'Anti rain'
spark3()
end
if sp == 10 then
setsp3()
setvalue(mfdz+0x60,4,-932650381)
spn3 = 'Anti krill'
spark3()
end
if sp == 11 then
setsp3()
setvalue(mfdz+0x60,4,847145578)
spn3 = 'Krill cat'
spark3()
end
if sp == 12 then
setsp3()
setvalue(mfdz+0x60,4,901504997)
spn3 = 'Crab trick'
spark3()
end
if sp == 13 then
setsp3()
setvalue(mfdz+0x60,4,1441565188)
spn3 = 'Candle trick'
spark3()
end
if sp == 14 then
setsp3()
setvalue(mfdz+0x60,4,1405645877)
spn3 = 'Friendship piggyback'
spark3()
end
if sp == 15 then
setsp3()
setvalue(mfdz+0x60,4,1677246236)
spn3 = 'Friendship bear hug'
spark3()
end
if sp == 16 then
setsp3()
setvalue(mfdz+0x60,4,998754260)
spn3 = 'Friendship warp'
spark3()
end
if sp == 17 then
setsp3()
setvalue(mfdz+0x60,4,2137753158)
spn3 = 'Friendship fight'
spark3()
end
if sp == 18 then
setsp3()
setvalue(mfdz+0x60,4,1318288330)
spark3()
end
if sp == 19 then
setsp3()
setvalue(mfdz+0x60,4,-176902809)
spark3()
end
if sp == 20 then
setsp3()
setvalue(mfdz+0x60,4,-1951801352)
spark3()
end
if sp == 21 then
setsp3()
setvalue(mfdz+0x60,4,1918290563)
spark3()
end
if sp == 22 then
setsp3()
setvalue(mfdz+0x60,4,637646527)
spark3()
end
if sp == 23 then
setsp3()
setvalue(mfdz+0x60,4,-1527316661)
spark3()
end
if sp == 24 then
setsp3()
setvalue(mfdz+0x60,4,1237283438)
spark3()
end
if sp == 25 then
setsp3()
setvalue(mfdz+0x60,4,470393304)
spark3()
end
if sp == 26 then
setsp3()
setvalue(mfdz+0x60,4,-1071076330)
spark3()
end
if sp == 27 then
setsp3()
setvalue(mfdz+0x60,4,-1304862813)
spark3()
end
if sp == 28 then
setsp3()
setvalue(mfdz+0x60,4,-1354381164)
spark3()
end
if sp == 29 then
setsp3()
setvalue(mfdz+0x60,4,147016038)
spark3()
end
if sp == 30 then spell3()
end
end

if sp == 8 then
ufrzvalue(mfdz+0x60,4,0)
setvalue(mfdz+0x60,4,0)
--setvalue(mfdz+0x68,4,0)
--setvalue(mfdz+0x6C,4,0)
spn3 = ' '
end
if sp == 9 then spells()
end
end
sys = -1
end
end
--------------------------------------------------
spc = on
sn1 = ''
sn2 = ''
sn3 = ''

function getsp123()
if sky == 0 then
getsp1()
getsp2()
getsp3()
end
if sky == 1 then
getsp1b()
getsp2b()
getsp3b()
end
end



function spells()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
getsp123()
getsp0()
local sp = gg.choice(
{'Slot1 : '..sn1,
'Slot2 : '..sn2,
'Slot3 : '..sn3,
spc..'Sparkle',
--'Quick Change',
'↩Back'},
nil,"Spell (Invisible to other players)")
if sp == nil then
elseif sp == 1 then
spell1()
end
if sp == 2 then
spell2()
end
if sp == 3 then
spell3()
end

if sp == 4 then
if spc == on then
spc = off
else
spc = on
end
spells()
end

--if sp == 5 then quick()
--end
if sp == 5 then avatar()
end
end
sys = -1
end
end
-----------------------SPELL-----------------------
function getsp1()
local t = {}
t[1] = {}
t[1].address = mfdz + 0x0
t[1].flags = gg.TYPE_DWORD
t[2] = {}
t[2].address = mfdz + 0x8
t[2].flags = gg.TYPE_DWORD
t = gg.getValues(t)

if t[1].value == 0 then
sn1 = 'Empty'
else
sn1 = 'Unknown'
end

if t[1].value == -940505450 then
sn1 = 'Yeti Cape'
end
if t[1].value == 1360796960 then
sn1 = 'Wings of AURORA'
end
if t[1].value == 1326646141 then
sn1 = 'Wings of AURORA'
end
if t[1].value == 583315364 then
sn1 = 'Cat Cape'
end
if t[1].value == 330655056 then
sn1 = 'Platinum Cape'
end
if t[1].value == 573237039 then
sn1 = 'Fish Cape'
end
if t[1].value == 540856305 then
sn1 = 'TGC Cape'
end
if t[1].value == 625581156 then
sn1 = 'Ghostbat Cape'
end
if t[1].value == 930203946 then
sn1 = 'Spider Cape'
end
if t[1].value == 1306675982 then
sn1 = 'Christmas Cape'
end
if t[1].value == -784831205 then
sn1 = 'Snowflake Cape'
end
if t[1].value == 1762827508 then
sn1 = 'Old Winter Feast Cape'
end
if t[1].value == -1623262339 then
sn1 = 'White Bird Cape'
end
if t[1].value == -6043825 then
sn1 = 'Petal Cape'
end
if t[1].value == -445538750 then
sn1 = 'Fortune Cape'
end
if t[1].value == 162066154 then
sn1 = 'Sakura Cape'
end
if t[1].value == -1244390069 then
sn1 = 'Wisteria Cape'
end
if t[1].value == 329684861 then
sn1 = 'Ocean Cape'
end
if t[1].value == -1822337532 then
sn1 = 'Dream Season Cape'
end
if t[1].value == -195929339 then
sn1 = 'Rainbow Cape'
end
if t[1].value == -2087661926 then
sn1 = 'Little Prince Scarf Cape'
end
if t[1].value == 1402240423 then
sn1 = 'Little Prince Asteroid Jacket'
end
if t[1].value == 549258087 then
sn1 = 'Bloom Cape 2023'
end

if t[1].value == 483128979 then
sn1 = 'Fortune Pants'
end
if t[1].value == -1134828593 then
sn1 = 'Runaway Outfit'
end
if t[1].value == -495233219 then
sn1 = 'Prince Sword Suit'
end
if t[1].value == 969946279 then
sn1 = 'Halloween Pants'
end
if t[1].value == 1482655023 then
sn1 = 'Rainbow Pants'
end
if t[1].value == -105193858 then
sn1 = 'Bloom Pants'
end
if t[1].value == 782433094 then
sn1 = 'To The Love Outfit'
end
if t[1].value == -1535254839 then
sn1 = 'Snowman Body'
end

if t[1].value == 239584271 then
sn1 = 'Runaway Hairstyle'
end
if t[1].value == -1543558130 then
sn1 = 'Fish Head'
end
if t[1].value == 1046521292 then
sn1 = 'Pumpkin Head'
end
if t[1].value == 1983755432 then
sn1 = 'Wizard Hat'
end
if t[1].value == 373243257 then
sn1 = 'Sakura Hairstyle'
end
if t[1].value == -25012636 then
sn1 = 'Cat Hairstyle'
end
if t[1].value == -1760741911 then
sn1 = 'Halloween Spider Hairstyle'
end
if t[1].value == 116679863 then
sn1 = 'Halloween Longhair'
end
if t[1].value == -1409683913 then
sn1 = 'Christmas Hat'
end
if t[1].value == 1059767859 then
sn1 = 'Dream Season Hairstyle'
end
if t[1].value == -2099997114 then
sn1 = 'Bun Hairstyle'
end
if t[1].value == 419537417 then
sn1 = 'Snowman Head'
end

if t[1].value == -1590289609 then
sn1 = 'Rainbow Earring'
end
if t[1].value == -1769208928 then
sn1 = 'Rainbow Headphone'
end
if t[1].value == 2052387583 then
sn1 = 'Summer Hat'
end
if t[1].value == 1123843208 then
sn1 = 'Halloween Horn'
end
if t[1].value == 1909998088 then
sn1 = 'Antler'
end
if t[1].value == 942365523 then
sn1 = 'Flower Crown'
end
if t[1].value == -1989753674 then
sn1 = 'Tiara We Can Touch'
end
if t[1].value == 551055685 then
sn1 = 'Fish Headdress'
end
if t[1].value == -848739711 then
sn1 = 'Rabbit Headdress'
end
if t[1].value == -1616733323 then
sn1 = 'Orange Headdress'
end
if t[1].value == 2050094531 then
sn1 = 'Kizuna AI Headband'
end
if t[1].value == 43899279 then
sn1 = 'Ribbon Necklace'
end
if t[1].value == 329235560 then
sn1 = 'Jellyfish Shouldress'
end
if t[1].value == 1943995802 then
sn1 = 'Turtle Shouldress'
end
if t[1].value == -1938239955 then
sn1 = 'Ocean Necklace'
end
if t[1].value == 8361886 then
sn1 = 'Holly Necklace'
end
if t[1].value == -347711956 then
sn1 = 'Coral Headdress'
end
if t[1].value == 1372838509 then
sn1 = 'Snowflake Headdress'
end

if t[1].value == 227018419 then
sn1 = 'Fireworks'
end
if t[1].value == 1403584133 then
sn1 = 'Love Fireworks'
end
if t[1].value == 137268536 then
sn1 = 'Voice of AURORA'
end
if t[1].value == 256924066 then
sn1 = 'Christmas Table'
end
if t[1].value == -797688127 then
sn1 = 'Halloween Table'
end
if t[1].value == 10058409 then
sn1 = 'Bloom Teaset'
end
if t[1].value == 1598845731 then
sn1 = 'Purple Bloom Teaset'
end
if t[1].value == 185406188 then
sn1 = 'Picnic'
end
if t[1].value == 303877523 then
sn1 = 'Gondola'
end
if t[1].value == -2095749161 then
sn1 = 'Seesaw'
end
if t[1].value == 1064080243 then
sn1 = 'Swing'
end
if t[1].value == 125584301 then
sn1 = 'Pumpkin'
end
if t[1].value == 1414743743 then
sn1 = 'Summer Tent'
end
if t[1].value == -1129614302 then
sn1 = 'Marshmallow'
end
if t[1].value == -2057431024 then
sn1 = 'Fox'
end
if t[1].value == 1436679857 then
sn1 = 'Cat'
end
if t[1].value == -992017029 then
sn1 = 'Pioneer Umbrella'
end
if t[1].value == -1416755338 then
sn1 = 'Summer Umbrella'
end
if t[1].value == 1167393926 then
sn1 = 'Transparent Umbrella'
end
if t[1].value == 1621987452 then
sn1 = 'Fortune Umbrella'
end
if t[1].value == 1440439821 then
sn1 = 'Snow Globe'
end
if t[1].value == -913145276 then
sn1 = 'Ball Game'
end
if t[1].value == 1080405300 then
sn1 = 'Snowman'
end
if t[1].value == -1333564540 then
sn1 = 'Wedding'
end
if t[1].value == 1319710173 then
sn1 = 'Lantern'
end
if t[1].value == -1202427550 then
sn1 = 'White Piano'
end
if t[1].value == 332997197 then
sn1 = 'Glectric Guitar'
end
if t[1].value == 970364197 then
sn1 = 'Triumph Guiter'
end
if t[1].value == 1275481440 then
sn1 = 'Triumph Harp'
end
if t[1].value == 454864430 then
sn1 = 'Triumph Handpan'
end

if t[1].value == 1692428656 then
sn1 = 'Height Small'
end
if t[1].value == 2142718166 then
sn1 = 'Size Small'
end
if t[1].value == 891098028 then
sn1 = 'Height Big'
end
if t[1].value == -1879316162 then
sn1 = 'Size Big'
end
if t[1].value == -1881863468 then
sn1 = 'Kizuna AI Call'
end
if t[1].value == 1097748727 then
sn1 = 'Glow'
end
if t[1].value == 1750685908 then
sn1 = 'Fast Charge'
end
if t[1].value == 1860519737 then
sn1 = 'Anti Gravity'
end
if t[1].value == -1463943689 then
sn1 = 'Anti Rain'
end
if t[1].value == -932650381 then
sn1 = 'Anti Krill'
end
if t[1].value == 847145578 then
sn1 = 'Krill Cat'
end
if t[1].value == 901504997 then
sn1 = 'Crab Trick'
end
if t[1].value == 1441565188 then
sn1 = 'Candle Trick'
end
if t[1].value == 1405645877 then
sn1 = 'Friendship Back'
end
if t[1].value == 1677246236 then
sn1 = 'Friendship Bear Hug'
end
if t[1].value == 998754260 then
sn1 = 'Friendship Warp'
end
if t[1].value == 2137753158 then
sn1 = 'Friendship Fight'
end
if t[1].value == 1725047129 then
sn1 = 'Crab Call'
end
if t[1].value == -957441587 then
sn1 = 'Jellyfish Call'
end
if t[1].value == 1814753890 then
sn1 = 'Manta Call'
end
if t[1].value == -705906186 then
sn1 = 'Buff Effect Birthday Hat'
end
if t[1].value == 383062578 then
sn1 = 'Amulet Clothing'
end
if t[1].value == -305102667 then
sn1 = 'Height Small'
end
if t[1].value == 953841005 then
sn1 = 'Proof Of Soulmate'
end
if t[1].value == 568438392 then
sn1 = 'Proof Of Soulmate'
end
if t[1].value == -392849190 then
sn1 = 'Teleport Aurora Concert'
end
if t[1].value == 428008620 then
sn1 = 'Teleport Birthday Crab'
end
if t[1].value == -1766441122 then
sn1 = 'Teleport Sky Child'
end
if t[1].value == 224110574 then
sn1 = 'Teleport Rainforest Cave'
end
if t[1].value == -1256468339 then
sn1 = 'Teleport Rainforest Elder'
end
if t[1].value == -210323960 then
sn1 = 'Teleport Forgotten Ark'
end
if t[1].value == 1660914074 then
sn1 = 'Teleport Hermit Valley'
end
if t[1].value == 248080515 then
sn1 = 'Teleport Valley Elder'
end
if t[1].value == 103122035 then
sn1 = 'Teleport Isle Elder'
end
if t[1].value == 282325575 then
sn1 = 'Teleport Turtle'
end
if t[1].value == -529345906 then
sn1 = 'Teleport Oreo'
end
if t[1].value == 598305233 then
sn1 = 'Teleport Sanctuary Islands'
end
if t[1].value == -1633629698 then
sn1 = 'Teleport Prairie Elder'
end
if t[1].value == -1172691679 then
sn1 = 'Wasteland Elder'
end
if t[1].value == 1153544860 then
sn1 = 'Teleport You & Me'
end
if t[1].value == 809787442 then
sn1 = 'Secret Aurora'
end
if t[1].value == 539651423 then
sn1 = 'Day & Night'
end
if t[1].value == -284883787 then
sn1 = 'Secret Fireworks'
end
if t[1].value == 898079755 then
sn1 = 'Secret Fireworks'
end

if t[1].value == -823266018 then
sn1 = 'Fortune Hat'
end
if t[1].value == -2092825638 then
sn1 = 'Knitted Hat'
end
if t[1].value == -521490982 then
sn1 = 'Rainbow Hat'
end
if t[1].value == 2093744529 then
sn1 = 'Lion Head'
end
if t[1].value == 2141511649 then
sn1 = 'Flower Headdress'
end
if t[1].value == -1014212311 then
sn1 = 'Double Flower Headdress'
end
if t[1].value == -290700605 then
sn1 = 'Rainbow Headdress'
end
if t[1].value == -171149928 then
sn1 = 'Shell Headdress'
end
if t[1].value == -75786201 then
sn1 = 'Single Wizard Hat'
end
if t[1].value == 1021908644 then
sn1 = 'Transparent Muffler'
end
if t[1].value == 70832281 then
sn1 = 'Winter Feast Muffler'
end
if t[1].value == -1866832203 then
sn1 = 'Double Chair'
end
if t[1].value == 472595010 then
sn1 = 'Double Wood Chair'
end
if t[1].value == -1158710924 then
sn1 = 'Beach Bed'
end
if t[1].value == -1096484674 then
sn1 = 'Butterfly Fountain'
end
if t[1].value == -1001892262 then
sn1 = 'Harp'
end
if t[1].value == -359346310 then
sn1 = 'Wind Instruments'
end
if t[1].value == -420852981 then
sn1 = 'Seesaw'
end
if t[1].value == -2095749161 then
sn1 = 'Seesaw'
end
if t[1].value == -834438493 then
sn1 = 'Voice of AURORA'
end
if t[1].value == 137268536 then
sn1 = 'Voice of AURORA'
end
if t[1].value == -1419483218 then
sn1 = 'Pipe'
end
if t[1].value == -383842131 then
sn1 = 'Alchemist Cape'
end
if t[1].value == 2079599063 then
sn1 = 'Earth Cape'
end
if t[1].value == 747642100 then
sn1 = 'Earth Cape'
end
if t[1].value == 1375571404 then
sn1 = 'Light Scholar Cape'
end
if t[1].value == 939730131 then
sn1 = 'Giving In Cape'
end
if t[1].value == -308941587 then
sn1 = 'Postman Cape'
end
if t[1].value == 1031127004 then
sn1 = 'Postman Cape'
end
if t[1].value == -700035318 then
sn1 = 'Turtle Cape'
end
if t[1].value == 769892976 then
sn1 = 'Dead Leaves Cape'
end
if t[1].value == -218615327 then
sn1 = 'Rhythm Season Mask'
end
if t[1].value == 964659005 then
sn1 = 'Red Fox Mask'
end
if t[1].value == 371568737 then
sn1 = 'Rabbit Mask'
end
if t[1].value == -901640940 then
sn1 = 'Cat Mask'
end
if t[1].value == -1636163586 then
sn1 = 'Fortune Mask'
end
if t[1].value == 144876107 then
sn1 = 'Dream Season Mask'
end
if t[1].value == -849020465 then
sn1 = 'Ox Mask'
end
if t[1].value == -938578505 then
sn1 = 'Rose Mask'
end
if t[1].value == 858950093 then
sn1 = 'Winter Feast Goggle'
end
if t[1].value == 771982951 then
sn1 = 'Whirling Mask'
end
if t[1].value == 475055967 then
sn1 = 'Tiger Mask'
end
if t[1].value == 784922793 then
sn1 = 'Weasel Mask'
end
if t[1].value == 147016038 then
sn1 = 'Rainbow Trail'
end
if t[1].value == -1951801352 then
sn1 = 'Blue Trail'
end
if t[1].value == 1918290563 then
sn1 = 'Cyan Trail'
end
if t[1].value == -176902809 then
sn1 = 'Black Trail'
end
if t[1].value == 1318288330 then
sn1 = 'Turquoise Trail'
end
if t[1].value == 470393304 then
sn1 = 'Pink Trail'
end
if t[1].value == 1237283438 then
sn1 = 'Orange Trail'
end
if t[1].value == -1527316661 then
sn1 = 'Purple Pink Trail'
end
if t[1].value == 637646527 then
sn1 = 'Green Trail'
end
if t[1].value == -1354381164 then
sn1 = 'Yellow Trail'
end
if t[1].value == -1304862813 then
sn1 = 'Red Trail'
end
if t[1].value == -1071076330 then
sn1 = 'Purple Trail'
end
if t[1].value == -1727483534 then
sn1 = 'Light'
end
if t[1].value == -1362469224 then
sn1 = 'Wing'
end

end

function getsp2()
local t = {}
t[1] = {}
t[1].address = mfdz + 0x30
t[1].flags = gg.TYPE_DWORD
t[2] = {}
t[2].address = mfdz + 0x38
t[2].flags = gg.TYPE_DWORD
t = gg.getValues(t)

if t[1].value == 0 then
sn2 = 'Empty'
else
sn2 = 'Unknown'
end

if t[1].value == -940505450 then
sn2 = 'Yeti Cape'
end
if t[1].value == 1360796960 then
sn2 = 'Wings of AURORA'
end
if t[1].value == 1326646141 then
sn2 = 'Wings of AURORA'
end
if t[1].value == 583315364 then
sn2 = 'Cat Cape'
end
if t[1].value == 330655056 then
sn2 = 'Platinum Cape'
end
if t[1].value == 573237039 then
sn2 = 'Fish Cape'
end
if t[1].value == 540856305 then
sn2 = 'TGC Cape'
end
if t[1].value == 625581156 then
sn2 = 'Ghostbat Cape'
end
if t[1].value == 930203946 then
sn2 = 'Spider Cape'
end
if t[1].value == 1306675982 then
sn2 = 'Christmas Cape'
end
if t[1].value == -784831205 then
sn2 = 'Snowflake Cape'
end
if t[1].value == 1762827508 then
sn2 = 'Old Winter Feast Cape'
end
if t[1].value == -1623262339 then
sn2 = 'White Bird Cape'
end
if t[1].value == -6043825 then
sn2 = 'Petal Cape'
end
if t[1].value == -445538750 then
sn2 = 'Fortune Cape'
end
if t[1].value == 162066154 then
sn2 = 'Sakura Cape'
end
if t[1].value == -1244390069 then
sn2 = 'Wisteria Cape'
end
if t[1].value == 329684861 then
sn2 = 'Ocean Cape'
end
if t[1].value == -1822337532 then
sn2 = 'Dream Season Cape'
end
if t[1].value == -195929339 then
sn2 = 'Rainbow Cape'
end
if t[1].value == -2087661926 then
sn2 = 'Little Prince Scarf Cape'
end
if t[1].value == 1402240423 then
sn2 = 'Little Prince Asteroid Jacket'
end
if t[1].value == 549258087 then
sn2 = 'Bloom Cape 2023'
end

if t[1].value == 483128979 then
sn2 = 'Fortune Pants'
end
if t[1].value == -1134828593 then
sn2 = 'Runaway Outfit'
end
if t[1].value == -495233219 then
sn2 = 'Prince Sword Suit'
end
if t[1].value == 969946279 then
sn2 = 'Halloween Pants'
end
if t[1].value == 1482655023 then
sn2 = 'Rainbow Pants'
end
if t[1].value == -105193858 then
sn2 = 'Bloom Pants'
end
if t[1].value == 782433094 then
sn2 = 'To The Love Outfit'
end
if t[1].value == -1535254839 then
sn2 = 'Snowman Body'
end

if t[1].value == 239584271 then
sn2 = 'Runaway Hairstyle'
end
if t[1].value == -1543558130 then
sn2 = 'Fish Head'
end
if t[1].value == 1046521292 then
sn2 = 'Pumpkin Head'
end
if t[1].value == 1983755432 then
sn2 = 'Wizard Hat'
end
if t[1].value == 373243257 then
sn2 = 'Sakura Hairstyle'
end
if t[1].value == -25012636 then
sn2 = 'Cat Hairstyle'
end
if t[1].value == -1760741911 then
sn2 = 'Halloween Spider Hairstyle'
end
if t[1].value == 116679863 then
sn2 = 'Halloween Longhair'
end
if t[1].value == -1409683913 then
sn2 = 'Christmas Hat'
end
if t[1].value == 1059767859 then
sn2 = 'Dream Season Hairstyle'
end
if t[1].value == -2099997114 then
sn2 = 'Bun Hairstyle'
end
if t[1].value == 419537417 then
sn2 = 'Snowman Head'
end

if t[1].value == -1590289609 then
sn2 = 'Rainbow Earring'
end
if t[1].value == -1769208928 then
sn2 = 'Rainbow Headphone'
end
if t[1].value == 2052387583 then
sn2 = 'Summer Hat'
end
if t[1].value == 1123843208 then
sn2 = 'Halloween Horn'
end
if t[1].value == 1909998088 then
sn2 = 'Antler'
end
if t[1].value == 942365523 then
sn2 = 'Flower Crown'
end
if t[1].value == -1989753674 then
sn2 = 'Tiara We Can Touch'
end
if t[1].value == 551055685 then
sn2 = 'Fish Headdress'
end
if t[1].value == -848739711 then
sn2 = 'Rabbit Headdress'
end
if t[1].value == -1616733323 then
sn2 = 'Orange Headdress'
end
if t[1].value == 2050094531 then
sn2 = 'Kizuna AI Headband'
end
if t[1].value == 43899279 then
sn2 = 'Ribbon Necklace'
end
if t[1].value == 329235560 then
sn2 = 'Jellyfish Shouldress'
end
if t[1].value == 1943995802 then
sn2 = 'Turtle Shouldress'
end
if t[1].value == -1938239955 then
sn2 = 'Ocean Necklace'
end
if t[1].value == 8361886 then
sn2 = 'Holly Necklace'
end
if t[1].value == -347711956 then
sn2 = 'Coral Headdress'
end
if t[1].value == 1372838509 then
sn2 = 'Snowflake Headdress'
end

if t[1].value == 227018419 then
sn2 = 'Fireworks'
end
if t[1].value == 1403584133 then
sn2 = 'Love Fireworks'
end
if t[1].value == 137268536 then
sn2 = 'Voice of AURORA'
end
if t[1].value == 256924066 then
sn2 = 'Christmas Table'
end
if t[1].value == -797688127 then
sn2 = 'Halloween Table'
end
if t[1].value == 10058409 then
sn2 = 'Bloom Teaset'
end
if t[1].value == 1598845731 then
sn2 = 'Purple Bloom Teaset'
end
if t[1].value == 185406188 then
sn2 = 'Picnic'
end
if t[1].value == 303877523 then
sn2 = 'Gondola'
end
if t[1].value == -2095749161 then
sn2 = 'Seesaw'
end
if t[1].value == 1064080243 then
sn2 = 'Swing'
end
if t[1].value == 125584301 then
sn2 = 'Pumpkin'
end
if t[1].value == 1414743743 then
sn2 = 'Summer Tent'
end
if t[1].value == -1129614302 then
sn2 = 'Marshmallow'
end
if t[1].value == -2057431024 then
sn2 = 'Fox'
end
if t[1].value == 1436679857 then
sn2 = 'Cat'
end
if t[1].value == -992017029 then
sn2 = 'Pioneer Umbrella'
end
if t[1].value == -1416755338 then
sn2 = 'Summer Umbrella'
end
if t[1].value == 1167393926 then
sn2 = 'Transparent Umbrella'
end
if t[1].value == 1621987452 then
sn2 = 'Fortune Umbrella'
end
if t[1].value == 1440439821 then
sn2 = 'Snow Globe'
end
if t[1].value == -913145276 then
sn2 = 'Ball Game'
end
if t[1].value == 1080405300 then
sn2 = 'Snowman'
end
if t[1].value == -1333564540 then
sn2 = 'Wedding'
end
if t[1].value == 1319710173 then
sn2 = 'Lantern'
end
if t[1].value == -1202427550 then
sn2 = 'White Piano'
end
if t[1].value == 332997197 then
sn2 = 'Glectric Guitar'
end
if t[1].value == 970364197 then
sn2 = 'Triumph Guiter'
end
if t[1].value == 1275481440 then
sn2 = 'Triumph Harp'
end
if t[1].value == 454864430 then
sn2 = 'Triumph Handpan'
end

if t[1].value == 1692428656 then
sn2 = 'Height Small'
end
if t[1].value == 2142718166 then
sn2 = 'Size Small'
end
if t[1].value == 891098028 then
sn2 = 'Height Big'
end
if t[1].value == -1879316162 then
sn2 = 'Size Big'
end
if t[1].value == -1881863468 then
sn2 = 'Kizuna AI Call'
end
if t[1].value == 1097748727 then
sn2 = 'Glow'
end
if t[1].value == 1750685908 then
sn2 = 'Fast Charge'
end
if t[1].value == 1860519737 then
sn2 = 'Anti Gravity'
end
if t[1].value == -1463943689 then
sn2 = 'Anti Rain'
end
if t[1].value == -932650381 then
sn2 = 'Anti Krill'
end
if t[1].value == 847145578 then
sn2 = 'Krill Cat'
end
if t[1].value == 901504997 then
sn2 = 'Crab Trick'
end
if t[1].value == 1441565188 then
sn2 = 'Candle Trick'
end
if t[1].value == 1405645877 then
sn2 = 'Friendship Back'
end
if t[1].value == 1677246236 then
sn2 = 'Friendship Bear Hug'
end
if t[1].value == 998754260 then
sn2 = 'Friendship Warp'
end
if t[1].value == 2137753158 then
sn2 = 'Friendship Fight'
end
if t[1].value == 1725047129 then
sn2 = 'Crab Call'
end
if t[1].value == -957441587 then
sn2 = 'Jellyfish Call'
end
if t[1].value == 1814753890 then
sn2 = 'Manta Call'
end
if t[1].value == -705906186 then
sn2 = 'Buff Effect Birthday Hat'
end
if t[1].value == 383062578 then
sn2 = 'Amulet Clothing'
end
if t[1].value == -305102667 then
sn2 = 'Height Small'
end
if t[1].value == 953841005 then
sn2 = 'Proof Of Soulmate'
end
if t[1].value == 568438392 then
sn2 = 'Proof Of Soulmate'
end
if t[1].value == -392849190 then
sn2 = 'Teleport Aurora Concert'
end
if t[1].value == 428008620 then
sn2 = 'Teleport Birthday Crab'
end
if t[1].value == -1766441122 then
sn2 = 'Teleport Sky Child'
end
if t[1].value == 224110574 then
sn2 = 'Teleport Rainforest Cave'
end
if t[1].value == -1256468339 then
sn2 = 'Teleport Rainforest Elder'
end
if t[1].value == -210323960 then
sn2 = 'Teleport Forgotten Ark'
end
if t[1].value == 1660914074 then
sn2 = 'Teleport Hermit Valley'
end
if t[1].value == 248080515 then
sn2 = 'Teleport Valley Elder'
end
if t[1].value == 103122035 then
sn2 = 'Teleport Isle Elder'
end
if t[1].value == 282325575 then
sn2 = 'Teleport Turtle'
end
if t[1].value == -529345906 then
sn2 = 'Teleport Oreo'
end
if t[1].value == 598305233 then
sn2 = 'Teleport Sanctuary Islands'
end
if t[1].value == -1633629698 then
sn2 = 'Teleport Prairie Elder'
end
if t[1].value == -1172691679 then
sn2 = 'Wasteland Elder'
end
if t[1].value == 1153544860 then
sn2 = 'Teleport You & Me'
end
if t[1].value == 809787442 then
sn2 = 'Secret Aurora'
end
if t[1].value == 539651423 then
sn2 = 'Day & Night'
end
if t[1].value == -284883787 then
sn2 = 'Secret Fireworks'
end
if t[1].value == 898079755 then
sn2 = 'Secret Fireworks'
end

if t[1].value == -823266018 then
sn2 = 'Fortune Hat'
end
if t[1].value == -2092825638 then
sn2 = 'Knitted Hat'
end
if t[1].value == -521490982 then
sn2 = 'Rainbow Hat'
end
if t[1].value == 2093744529 then
sn2 = 'Lion Head'
end
if t[1].value == 2141511649 then
sn2 = 'Flower Headdress'
end
if t[1].value == -1014212311 then
sn2 = 'Double Flower Headdress'
end
if t[1].value == -290700605 then
sn2 = 'Rainbow Headdress'
end
if t[1].value == -171149928 then
sn2 = 'Shell Headdress'
end
if t[1].value == -75786201 then
sn2 = 'Single Wizard Hat'
end
if t[1].value == 1021908644 then
sn2 = 'Transparent Muffler'
end
if t[1].value == 70832281 then
sn2 = 'Winter Feast Muffler'
end
if t[1].value == -1866832203 then
sn2 = 'Double Chair'
end
if t[1].value == 472595010 then
sn2 = 'Double Wood Chair'
end
if t[1].value == -1158710924 then
sn2 = 'Beach Bed'
end
if t[1].value == -1096484674 then
sn2 = 'Butterfly Fountain'
end
if t[1].value == -1001892262 then
sn2 = 'Harp'
end
if t[1].value == -359346310 then
sn2 = 'Wind Instruments'
end
if t[1].value == -420852981 then
sn2 = 'Seesaw'
end
if t[1].value == -2095749161 then
sn2 = 'Seesaw'
end
if t[1].value == -834438493 then
sn2 = 'Voice of AURORA'
end
if t[1].value == 137268536 then
sn2 = 'Voice of AURORA'
end
if t[1].value == -1419483218 then
sn2 = 'Pipe'
end
if t[1].value == -383842131 then
sn2 = 'Alchemist Cape'
end
if t[1].value == 2079599063 then
sn2 = 'Earth Cape'
end
if t[1].value == 747642100 then
sn2 = 'Earth Cape'
end
if t[1].value == 1375571404 then
sn2 = 'Light Scholar Cape'
end
if t[1].value == 939730131 then
sn2 = 'Giving In Cape'
end
if t[1].value == -308941587 then
sn2 = 'Postman Cape'
end
if t[1].value == 1031127004 then
sn2 = 'Postman Cape'
end
if t[1].value == -700035318 then
sn2 = 'Turtle Cape'
end
if t[1].value == 769892976 then
sn2 = 'Dead Leaves Cape'
end
if t[1].value == -218615327 then
sn2 = 'Rhythm Season Mask'
end
if t[1].value == 964659005 then
sn2 = 'Red Fox Mask'
end
if t[1].value == 371568737 then
sn2 = 'Rabbit Mask'
end
if t[1].value == -901640940 then
sn2 = 'Cat Mask'
end
if t[1].value == -1636163586 then
sn2 = 'Fortune Mask'
end
if t[1].value == 144876107 then
sn2 = 'Dream Season Mask'
end
if t[1].value == -849020465 then
sn2 = 'Ox Mask'
end
if t[1].value == -938578505 then
sn2 = 'Rose Mask'
end
if t[1].value == 858950093 then
sn2 = 'Winter Feast Goggle'
end
if t[1].value == 771982951 then
sn2 = 'Whirling Mask'
end
if t[1].value == 475055967 then
sn2 = 'Tiger Mask'
end
if t[1].value == 784922793 then
sn2 = 'Weasel Mask'
end
if t[1].value == 147016038 then
sn2 = 'Rainbow Trail'
end
if t[1].value == -1951801352 then
sn2 = 'Blue Trail'
end
if t[1].value == 1918290563 then
sn2 = 'Cyan Trail'
end
if t[1].value == -176902809 then
sn2 = 'Black Trail'
end
if t[1].value == 1318288330 then
sn2 = 'Turquoise Trail'
end
if t[1].value == 470393304 then
sn2 = 'Pink Trail'
end
if t[1].value == 1237283438 then
sn2 = 'Orange Trail'
end
if t[1].value == -1527316661 then
sn2 = 'Purple Pink Trail'
end
if t[1].value == 637646527 then
sn2 = 'Green Trail'
end
if t[1].value == -1354381164 then
sn2 = 'Yellow Trail'
end
if t[1].value == -1304862813 then
sn2 = 'Red Trail'
end
if t[1].value == -1071076330 then
sn2 = 'Purple Trail'
end
if t[1].value == -1727483534 then
sn2 = 'Light'
end
if t[1].value == -1362469224 then
sn2 = 'Wing'
end

end

function getsp3()
local t = {}
t[1] = {}
t[1].address = mfdz + 0x60
t[1].flags = gg.TYPE_DWORD
t[2] = {}
t[2].address = mfdz + 0x68
t[2].flags = gg.TYPE_DWORD
t = gg.getValues(t)

if t[1].value == 0 then
sn3 = 'Empty'
else
sn3 = 'Unknown'
end

if t[1].value == -940505450 then
sn3 = 'Yeti Cape'
end
if t[1].value == 1360796960 then
sn3 = 'Wings of AURORA'
end
if t[1].value == 1326646141 then
sn3 = 'Wings of AURORA'
end
if t[1].value == 583315364 then
sn3 = 'Cat Cape'
end
if t[1].value == 330655056 then
sn3 = 'Platinum Cape'
end
if t[1].value == 573237039 then
sn3 = 'Fish Cape'
end
if t[1].value == 540856305 then
sn3 = 'TGC Cape'
end
if t[1].value == 625581156 then
sn3 = 'Ghostbat Cape'
end
if t[1].value == 930203946 then
sn3 = 'Spider Cape'
end
if t[1].value == 1306675982 then
sn3 = 'Christmas Cape'
end
if t[1].value == -784831205 then
sn3 = 'Snowflake Cape'
end
if t[1].value == 1762827508 then
sn3 = 'Old Winter Feast Cape'
end
if t[1].value == -1623262339 then
sn3 = 'White Bird Cape'
end
if t[1].value == -6043825 then
sn3 = 'Petal Cape'
end
if t[1].value == -445538750 then
sn3 = 'Fortune Cape'
end
if t[1].value == 162066154 then
sn3 = 'Sakura Cape'
end
if t[1].value == -1244390069 then
sn3 = 'Wisteria Cape'
end
if t[1].value == 329684861 then
sn3 = 'Ocean Cape'
end
if t[1].value == -1822337532 then
sn3 = 'Dream Season Cape'
end
if t[1].value == -195929339 then
sn3 = 'Rainbow Cape'
end
if t[1].value == -2087661926 then
sn3 = 'Little Prince Scarf Cape'
end
if t[1].value == 1402240423 then
sn3 = 'Little Prince Asteroid Jacket'
end
if t[1].value == 549258087 then
sn3 = 'Bloom Cape 2023'
end

if t[1].value == 483128979 then
sn3 = 'Fortune Pants'
end
if t[1].value == -1134828593 then
sn3 = 'Runaway Outfit'
end
if t[1].value == -495233219 then
sn3 = 'Prince Sword Suit'
end
if t[1].value == 969946279 then
sn3 = 'Halloween Pants'
end
if t[1].value == 1482655023 then
sn3 = 'Rainbow Pants'
end
if t[1].value == -105193858 then
sn3 = 'Bloom Pants'
end
if t[1].value == 782433094 then
sn3 = 'To The Love Outfit'
end
if t[1].value == -1535254839 then
sn3 = 'Snowman Body'
end

if t[1].value == 239584271 then
sn3 = 'Runaway Hairstyle'
end
if t[1].value == -1543558130 then
sn3 = 'Fish Head'
end
if t[1].value == 1046521292 then
sn3 = 'Pumpkin Head'
end
if t[1].value == 1983755432 then
sn3 = 'Wizard Hat'
end
if t[1].value == 373243257 then
sn3 = 'Sakura Hairstyle'
end
if t[1].value == -25012636 then
sn3 = 'Cat Hairstyle'
end
if t[1].value == -1760741911 then
sn3 = 'Halloween Spider Hairstyle'
end
if t[1].value == 116679863 then
sn3 = 'Halloween Longhair'
end
if t[1].value == -1409683913 then
sn3 = 'Christmas Hat'
end
if t[1].value == 1059767859 then
sn3 = 'Dream Season Hairstyle'
end
if t[1].value == -2099997114 then
sn3 = 'Bun Hairstyle'
end
if t[1].value == 419537417 then
sn3 = 'Snowman Head'
end

if t[1].value == -1590289609 then
sn3 = 'Rainbow Earring'
end
if t[1].value == -1769208928 then
sn3 = 'Rainbow Headphone'
end
if t[1].value == 2052387583 then
sn3 = 'Summer Hat'
end
if t[1].value == 1123843208 then
sn3 = 'Halloween Horn'
end
if t[1].value == 1909998088 then
sn3 = 'Antler'
end
if t[1].value == 942365523 then
sn3 = 'Flower Crown'
end
if t[1].value == -1989753674 then
sn3 = 'Tiara We Can Touch'
end
if t[1].value == 551055685 then
sn3 = 'Fish Headdress'
end
if t[1].value == -848739711 then
sn3 = 'Rabbit Headdress'
end
if t[1].value == -1616733323 then
sn3 = 'Orange Headdress'
end
if t[1].value == 2050094531 then
sn3 = 'Kizuna AI Headband'
end
if t[1].value == 43899279 then
sn3 = 'Ribbon Necklace'
end
if t[1].value == 329235560 then
sn3 = 'Jellyfish Shouldress'
end
if t[1].value == 1943995802 then
sn3 = 'Turtle Shouldress'
end
if t[1].value == -1938239955 then
sn3 = 'Ocean Necklace'
end
if t[1].value == 8361886 then
sn3 = 'Holly Necklace'
end
if t[1].value == -347711956 then
sn3 = 'Coral Headdress'
end
if t[1].value == 1372838509 then
sn3 = 'Snowflake Headdress'
end

if t[1].value == 227018419 then
sn3 = 'Fireworks'
end
if t[1].value == 1403584133 then
sn3 = 'Love Fireworks'
end
if t[1].value == 137268536 then
sn3 = 'Voice of AURORA'
end
if t[1].value == 256924066 then
sn3 = 'Christmas Table'
end
if t[1].value == -797688127 then
sn3 = 'Halloween Table'
end
if t[1].value == 10058409 then
sn3 = 'Bloom Teaset'
end
if t[1].value == 1598845731 then
sn3 = 'Purple Bloom Teaset'
end
if t[1].value == 185406188 then
sn3 = 'Picnic'
end
if t[1].value == 303877523 then
sn3 = 'Gondola'
end
if t[1].value == -2095749161 then
sn3 = 'Seesaw'
end
if t[1].value == 1064080243 then
sn3 = 'Swing'
end
if t[1].value == 125584301 then
sn3 = 'Pumpkin'
end
if t[1].value == 1414743743 then
sn3 = 'Summer Tent'
end
if t[1].value == -1129614302 then
sn3 = 'Marshmallow'
end
if t[1].value == -2057431024 then
sn3 = 'Fox'
end
if t[1].value == 1436679857 then
sn3 = 'Cat'
end
if t[1].value == -992017029 then
sn3 = 'Pioneer Umbrella'
end
if t[1].value == -1416755338 then
sn3 = 'Summer Umbrella'
end
if t[1].value == 1167393926 then
sn3 = 'Transparent Umbrella'
end
if t[1].value == 1621987452 then
sn3 = 'Fortune Umbrella'
end
if t[1].value == 1440439821 then
sn3 = 'Snow Globe'
end
if t[1].value == -913145276 then
sn3 = 'Ball Game'
end
if t[1].value == 1080405300 then
sn3 = 'Snowman'
end
if t[1].value == -1333564540 then
sn3 = 'Wedding'
end
if t[1].value == 1319710173 then
sn3 = 'Lantern'
end
if t[1].value == -1202427550 then
sn3 = 'White Piano'
end
if t[1].value == 332997197 then
sn3 = 'Glectric Guitar'
end
if t[1].value == 970364197 then
sn3 = 'Triumph Guiter'
end
if t[1].value == 1275481440 then
sn3 = 'Triumph Harp'
end
if t[1].value == 454864430 then
sn3 = 'Triumph Handpan'
end

if t[1].value == 1692428656 then
sn3 = 'Height Small'
end
if t[1].value == 2142718166 then
sn3 = 'Size Small'
end
if t[1].value == 891098028 then
sn3 = 'Height Big'
end
if t[1].value == -1879316162 then
sn3 = 'Size Big'
end
if t[1].value == -1881863468 then
sn3 = 'Kizuna AI Call'
end
if t[1].value == 1097748727 then
sn3 = 'Glow'
end
if t[1].value == 1750685908 then
sn3 = 'Fast Charge'
end
if t[1].value == 1860519737 then
sn3 = 'Anti Gravity'
end
if t[1].value == -1463943689 then
sn3 = 'Anti Rain'
end
if t[1].value == -932650381 then
sn3 = 'Anti Krill'
end
if t[1].value == 847145578 then
sn3 = 'Krill Cat'
end
if t[1].value == 901504997 then
sn3 = 'Crab Trick'
end
if t[1].value == 1441565188 then
sn3 = 'Candle Trick'
end
if t[1].value == 1405645877 then
sn3 = 'Friendship Back'
end
if t[1].value == 1677246236 then
sn3 = 'Friendship Bear Hug'
end
if t[1].value == 998754260 then
sn3 = 'Friendship Warp'
end
if t[1].value == 2137753158 then
sn3 = 'Friendship Fight'
end
if t[1].value == 1725047129 then
sn3 = 'Crab Call'
end
if t[1].value == -957441587 then
sn3 = 'Jellyfish Call'
end
if t[1].value == 1814753890 then
sn3 = 'Manta Call'
end
if t[1].value == -705906186 then
sn3 = 'Buff Effect Birthday Hat'
end
if t[1].value == 383062578 then
sn3 = 'Amulet Clothing'
end
if t[1].value == -305102667 then
sn3 = 'Height Small'
end
if t[1].value == 953841005 then
sn3 = 'Proof Of Soulmate'
end
if t[1].value == 568438392 then
sn3 = 'Proof Of Soulmate'
end
if t[1].value == -392849190 then
sn3 = 'Teleport Aurora Concert'
end
if t[1].value == 428008620 then
sn3 = 'Teleport Birthday Crab'
end
if t[1].value == -1766441122 then
sn3 = 'Teleport Sky Child'
end
if t[1].value == 224110574 then
sn3 = 'Teleport Rainforest Cave'
end
if t[1].value == -1256468339 then
sn3 = 'Teleport Rainforest Elder'
end
if t[1].value == -210323960 then
sn3 = 'Teleport Forgotten Ark'
end
if t[1].value == 1660914074 then
sn3 = 'Teleport Hermit Valley'
end
if t[1].value == 248080515 then
sn3 = 'Teleport Valley Elder'
end
if t[1].value == 103122035 then
sn3 = 'Teleport Isle Elder'
end
if t[1].value == 282325575 then
sn3 = 'Teleport Turtle'
end
if t[1].value == -529345906 then
sn3 = 'Teleport Oreo'
end
if t[1].value == 598305233 then
sn3 = 'Teleport Sanctuary Islands'
end
if t[1].value == -1633629698 then
sn3 = 'Teleport Prairie Elder'
end
if t[1].value == -1172691679 then
sn3 = 'Wasteland Elder'
end
if t[1].value == 1153544860 then
sn3 = 'Teleport You & Me'
end
if t[1].value == 809787442 then
sn3 = 'Secret Aurora'
end
if t[1].value == 539651423 then
sn3 = 'Day & Night'
end
if t[1].value == -284883787 then
sn3 = 'Secret Fireworks'
end
if t[1].value == 898079755 then
sn3 = 'Secret Fireworks'
end

if t[1].value == -823266018 then
sn3 = 'Fortune Hat'
end
if t[1].value == -2092825638 then
sn3 = 'Knitted Hat'
end
if t[1].value == -521490982 then
sn3 = 'Rainbow Hat'
end
if t[1].value == 2093744529 then
sn3 = 'Lion Head'
end
if t[1].value == 2141511649 then
sn3 = 'Flower Headdress'
end
if t[1].value == -1014212311 then
sn3 = 'Double Flower Headdress'
end
if t[1].value == -290700605 then
sn3 = 'Rainbow Headdress'
end
if t[1].value == -171149928 then
sn3 = 'Shell Headdress'
end
if t[1].value == -75786201 then
sn3 = 'Single Wizard Hat'
end
if t[1].value == 1021908644 then
sn3 = 'Transparent Muffler'
end
if t[1].value == 70832281 then
sn3 = 'Winter Feast Muffler'
end
if t[1].value == -1866832203 then
sn3 = 'Double Chair'
end
if t[1].value == 472595010 then
sn3 = 'Double Wood Chair'
end
if t[1].value == -1158710924 then
sn3 = 'Beach Bed'
end
if t[1].value == -1096484674 then
sn3 = 'Butterfly Fountain'
end
if t[1].value == -1001892262 then
sn3 = 'Harp'
end
if t[1].value == -359346310 then
sn3 = 'Wind Instruments'
end
if t[1].value == -420852981 then
sn3 = 'Seesaw'
end
if t[1].value == -2095749161 then
sn3 = 'Seesaw'
end
if t[1].value == -834438493 then
sn3 = 'Voice of AURORA'
end
if t[1].value == 137268536 then
sn3 = 'Voice of AURORA'
end
if t[1].value == -1419483218 then
sn3 = 'Pipe'
end
if t[1].value == -383842131 then
sn3 = 'Alchemist Cape'
end
if t[1].value == 2079599063 then
sn3 = 'Earth Cape'
end
if t[1].value == 747642100 then
sn3 = 'Earth Cape'
end
if t[1].value == 1375571404 then
sn3 = 'Light Scholar Cape'
end
if t[1].value == 939730131 then
sn3 = 'Giving In Cape'
end
if t[1].value == -308941587 then
sn3 = 'Postman Cape'
end
if t[1].value == 1031127004 then
sn3 = 'Postman Cape'
end
if t[1].value == -700035318 then
sn3 = 'Turtle Cape'
end
if t[1].value == 769892976 then
sn3 = 'Dead Leaves Cape'
end
if t[1].value == -218615327 then
sn3 = 'Rhythm Season Mask'
end
if t[1].value == 964659005 then
sn3 = 'Red Fox Mask'
end
if t[1].value == 371568737 then
sn3 = 'Rabbit Mask'
end
if t[1].value == -901640940 then
sn3 = 'Cat Mask'
end
if t[1].value == -1636163586 then
sn3 = 'Fortune Mask'
end
if t[1].value == 144876107 then
sn3 = 'Dream Season Mask'
end
if t[1].value == -849020465 then
sn3 = 'Ox Mask'
end
if t[1].value == -938578505 then
sn3 = 'Rose Mask'
end
if t[1].value == 858950093 then
sn3 = 'Winter Feast Goggle'
end
if t[1].value == 771982951 then
sn3 = 'Whirling Mask'
end
if t[1].value == 475055967 then
sn3 = 'Tiger Mask'
end
if t[1].value == 784922793 then
sn3 = 'Weasel Mask'
end
if t[1].value == 147016038 then
sn3 = 'Rainbow Trail'
end
if t[1].value == -1951801352 then
sn3 = 'Blue Trail'
end
if t[1].value == 1918290563 then
sn3 = 'Cyan Trail'
end
if t[1].value == -176902809 then
sn3 = 'Black Trail'
end
if t[1].value == 1318288330 then
sn3 = 'Turquoise Trail'
end
if t[1].value == 470393304 then
sn3 = 'Pink Trail'
end
if t[1].value == 1237283438 then
sn3 = 'Orange Trail'
end
if t[1].value == -1527316661 then
sn3 = 'Purple Pink Trail'
end
if t[1].value == 637646527 then
sn3 = 'Green Trail'
end
if t[1].value == -1354381164 then
sn3 = 'Yellow Trail'
end
if t[1].value == -1304862813 then
sn3 = 'Red Trail'
end
if t[1].value == -1071076330 then
sn3 = 'Purple Trail'
end
if t[1].value == -1727483534 then
sn3 = 'Light'
end
if t[1].value == -1362469224 then
sn3 = 'Wing'
end

end


function getsp1b()
local t = {}
t[1] = {}
t[1].address = mfdz + 0x0
t[1].flags = gg.TYPE_DWORD
t[2] = {}
t[2].address = mfdz + 0x8
t[2].flags = gg.TYPE_DWORD
t = gg.getValues(t)

if t[1].value == 0 then
sn1 = 'Empty'
else
sn1 = 'Unknown'
end

if t[1].value == -940505450 then
sn1 = 'Yeti Cape'
end
if t[1].value == 1360796960 then
sn1 = 'Wings of AURORA'
end
if t[1].value == 1326646141 then
sn1 = 'Wings of AURORA'
end
if t[1].value == 583315364 then
sn1 = 'Cat Cape'
end
if t[1].value == 330655056 then
sn1 = 'Platinum Cape'
end
if t[1].value == 573237039 then
sn1 = 'Fish Cape'
end
if t[1].value == 540856305 then
sn1 = 'TGC Cape'
end
if t[1].value == 625581156 then
sn1 = 'Ghostbat Cape'
end
if t[1].value == 930203946 then
sn1 = 'Spider Cape'
end
if t[1].value == 1306675982 then
sn1 = 'Christmas Cape'
end
if t[1].value == -784831205 then
sn1 = 'Snowflake Cape'
end
if t[1].value == 1762827508 then
sn1 = 'Old Winter Feast Cape'
end
if t[1].value == -1623262339 then
sn1 = 'White Bird Cape'
end
if t[1].value == -6043825 then
sn1 = 'Petal Cape'
end
if t[1].value == -445538750 then
sn1 = 'Fortune Cape'
end
if t[1].value == 162066154 then
sn1 = 'Sakura Cape'
end
if t[1].value == -1244390069 then
sn1 = 'Wisteria Cape'
end
if t[1].value == 329684861 then
sn1 = 'Ocean Cape'
end
if t[1].value == -1822337532 then
sn1 = 'Dream Season Cape'
end
if t[1].value == -195929339 then
sn1 = 'Rainbow Cape'
end
if t[1].value == -2087661926 then
sn1 = 'Little Prince Scarf Cape'
end
if t[1].value == 1402240423 then
sn1 = 'Little Prince Asteroid Jacket'
end
if t[1].value == 549258087 then
sn1 = 'Bloom Cape 2023'
end

if t[1].value == 483128979 then
sn1 = 'Fortune Pants'
end
if t[1].value == -1134828593 then
sn1 = 'Runaway Outfit'
end
if t[1].value == -495233219 then
sn1 = 'Prince Sword Suit'
end
if t[1].value == 969946279 then
sn1 = 'Halloween Pants'
end
if t[1].value == 1482655023 then
sn1 = 'Rainbow Pants'
end
if t[1].value == -105193858 then
sn1 = 'Bloom Pants'
end
if t[1].value == 782433094 then
--sn1 = 'To The Love Outfit'
sn1 = 'Empty'
end
if t[1].value == -1535254839 then
sn1 = 'Snowman Body'
end

if t[1].value == 239584271 then
sn1 = 'Runaway Hairstyle'
end
if t[1].value == -1543558130 then
sn1 = 'Fish Head'
end
if t[1].value == 1046521292 then
sn1 = 'Pumpkin Head'
end
if t[1].value == 1983755432 then
sn1 = 'Wizard Hat'
end
if t[1].value == 373243257 then
sn1 = 'Sakura Hairstyle'
end
if t[1].value == -25012636 then
sn1 = 'Cat Hairstyle'
end
if t[1].value == -1760741911 then
sn1 = 'Halloween Spider Hairstyle'
end
if t[1].value == 116679863 then
sn1 = 'Halloween Longhair'
end
if t[1].value == -1409683913 then
sn1 = 'Christmas Hat'
end
if t[1].value == 1059767859 then
sn1 = 'Dream Season Hairstyle'
end
if t[1].value == -2099997114 then
sn1 = 'Bun Hairstyle'
end
if t[1].value == 419537417 then
sn1 = 'Snowman Head'
end

if t[1].value == -1590289609 then
sn1 = 'Rainbow Earring'
end
if t[1].value == -1769208928 then
sn1 = 'Rainbow Headphone'
end
if t[1].value == 2052387583 then
sn1 = 'Summer Hat'
end
if t[1].value == 1123843208 then
sn1 = 'Halloween Horn'
end
if t[1].value == 1909998088 then
sn1 = 'Antler'
end
if t[1].value == 942365523 then
sn1 = 'Flower Crown'
end
if t[1].value == -1989753674 then
sn1 = 'Tiara We Can Touch'
end
if t[1].value == 551055685 then
sn1 = 'Fish Headdress'
end
if t[1].value == -848739711 then
sn1 = 'Rabbit Headdress'
end
if t[1].value == -1616733323 then
sn1 = 'Orange Headdress'
end
if t[1].value == 2050094531 then
--sn1 = 'Kizuna AI Headband'
sn1 = 'Empty'
end
if t[1].value == 43899279 then
sn1 = 'Ribbon Necklace'
end
if t[1].value == 329235560 then
sn1 = 'Jellyfish Shouldress'
end
if t[1].value == 1943995802 then
sn1 = 'Turtle Shouldress'
end
if t[1].value == -1938239955 then
sn1 = 'Ocean Necklace'
end
if t[1].value == 8361886 then
sn1 = 'Holly Necklace'
end
if t[1].value == -347711956 then
sn1 = 'Coral Headdress'
end
if t[1].value == 1372838509 then
sn1 = 'Snowflake Headdress'
end

if t[1].value == 227018419 then
sn1 = 'Fireworks'
end
if t[1].value == 1403584133 then
sn1 = 'Love Fireworks'
end
if t[1].value == 137268536 then
sn1 = 'Voice of AURORA'
end
if t[1].value == 256924066 then
sn1 = 'Christmas Table'
end
if t[1].value == -797688127 then
sn1 = 'Halloween Table'
end
if t[1].value == 10058409 then
sn1 = 'Bloom Teaset'
end
if t[1].value == 1598845731 then
sn1 = 'Purple Bloom Teaset'
end
if t[1].value == 185406188 then
sn1 = 'Picnic'
end
if t[1].value == 303877523 then
sn1 = 'Gondola'
end
if t[1].value == -2095749161 then
sn1 = 'Seesaw'
end
if t[1].value == 1064080243 then
sn1 = 'Swing'
end
if t[1].value == 125584301 then
sn1 = 'Pumpkin'
end
if t[1].value == 1414743743 then
sn1 = 'Summer Tent'
end
if t[1].value == -1129614302 then
sn1 = 'Marshmallow'
end
if t[1].value == -2057431024 then
sn1 = 'Fox'
end
if t[1].value == 1436679857 then
sn1 = 'Cat'
end
if t[1].value == -992017029 then
sn1 = 'Pioneer Umbrella'
end
if t[1].value == -1416755338 then
sn1 = 'Summer Umbrella'
end
if t[1].value == 1167393926 then
sn1 = 'Transparent Umbrella'
end
if t[1].value == 1621987452 then
sn1 = 'Fortune Umbrella'
end
if t[1].value == 1440439821 then
sn1 = 'Snow Globe'
end
if t[1].value == -913145276 then
sn1 = 'Ball Game'
end
if t[1].value == 1080405300 then
sn1 = 'Snowman'
end
if t[1].value == -1333564540 then
sn1 = 'Wedding'
end
if t[1].value == 1319710173 then
sn1 = 'Lantern'
end
if t[1].value == -1202427550 then
sn1 = 'White Piano'
end
if t[1].value == 332997197 then
sn1 = 'Glectric Guitar'
end
if t[1].value == 970364197 then
sn1 = 'Triumph Guiter'
end
if t[1].value == 1275481440 then
sn1 = 'Triumph Harp'
end
if t[1].value == 454864430 then
sn1 = 'Triumph Handpan'
end

if t[1].value == 1692428656 then
sn1 = 'Height Small'
end
if t[1].value == 2142718166 then
sn1 = 'Size Small'
end
if t[1].value == 891098028 then
sn1 = 'Height Big'
end
if t[1].value == -1879316162 then
sn1 = 'Size Big'
end
if t[1].value == -1881863468 then
sn1 = 'Kizuna AI Call'
end
if t[1].value == 1097748727 then
sn1 = 'Glow'
end
if t[1].value == 1750685908 then
sn1 = 'Fast Charge'
end
if t[1].value == 1860519737 then
sn1 = 'Anti Gravity'
end
if t[1].value == -1463943689 then
sn1 = 'Anti Rain'
end
if t[1].value == -932650381 then
sn1 = 'Anti Krill'
end
if t[1].value == 847145578 then
sn1 = 'Krill Cat'
end
if t[1].value == 901504997 then
sn1 = 'Crab Trick'
end
if t[1].value == 1441565188 then
sn1 = 'Candle Trick'
end
if t[1].value == 1405645877 then
sn1 = 'Friendship Back'
end
if t[1].value == 1677246236 then
sn1 = 'Friendship Bear Hug'
end
if t[1].value == 998754260 then
sn1 = 'Friendship Warp'
end
if t[1].value == 2137753158 then
sn1 = 'Friendship Fight'
end
if t[1].value == 1725047129 then
sn1 = 'Crab Call'
end
if t[1].value == -957441587 then
sn1 = 'Jellyfish Call'
end
if t[1].value == 1814753890 then
sn1 = 'Manta Call'
end
if t[1].value == -705906186 then
sn1 = 'Buff Effect Birthday Hat'
end
if t[1].value == 383062578 then
sn1 = 'Amulet Clothing'
end
if t[1].value == -305102667 then
sn1 = 'Height Small'
end
if t[1].value == 953841005 then
sn1 = 'Proof Of Soulmate'
end
if t[1].value == 568438392 then
sn1 = 'Proof Of Soulmate'
end
if t[1].value == -392849190 then
sn1 = 'Teleport Aurora Concert'
end
if t[1].value == 428008620 then
sn1 = 'Teleport Birthday Crab'
end
if t[1].value == -1766441122 then
sn1 = 'Teleport Sky Child'
end
if t[1].value == 224110574 then
sn1 = 'Teleport Rainforest Cave'
end
if t[1].value == -1256468339 then
sn1 = 'Teleport Rainforest Elder'
end
if t[1].value == -210323960 then
sn1 = 'Teleport Forgotten Ark'
end
if t[1].value == 1660914074 then
sn1 = 'Teleport Hermit Valley'
end
if t[1].value == 248080515 then
sn1 = 'Teleport Valley Elder'
end
if t[1].value == 103122035 then
sn1 = 'Teleport Isle Elder'
end
if t[1].value == 282325575 then
sn1 = 'Teleport Turtle'
end
if t[1].value == -529345906 then
sn1 = 'Teleport Oreo'
end
if t[1].value == 598305233 then
sn1 = 'Teleport Sanctuary Islands'
end
if t[1].value == -1633629698 then
sn1 = 'Teleport Prairie Elder'
end
if t[1].value == -1172691679 then
sn1 = 'Wasteland Elder'
end
if t[1].value == 1153544860 then
sn1 = 'Teleport You & Me'
end
if t[1].value == 809787442 then
sn1 = 'Secret Aurora'
end
if t[1].value == 539651423 then
sn1 = 'Day & Night'
end
if t[1].value == -284883787 then
sn1 = 'Secret Fireworks'
end
if t[1].value == 898079755 then
sn1 = 'Secret Fireworks'
end

if t[1].value == -823270018 then
sn1 = 'Fortune Hat'
end
if t[1].value == -2092825638 then
sn1 = 'Knitted Hat'
end
if t[1].value == -521490982 then
sn1 = 'Rainbow Hat'
end
if t[1].value == 2093744529 then
sn1 = 'Lion Head'
end
if t[1].value == 2141511649 then
sn1 = 'Flower Headdress'
end
if t[1].value == -1014212311 then
sn1 = 'Double Flower Headdress'
end
if t[1].value == -290700605 then
sn1 = 'Rainbow Headdress'
end
if t[1].value == -171149928 then
sn1 = 'Shell Headdress'
end
if t[1].value == -75786201 then
sn1 = 'Single Wizard Hat'
end
if t[1].value == 1021908644 then
sn1 = 'Transparent Muffler'
end
if t[1].value == 70832281 then
sn1 = 'Winter Feast Muffler'
end
if t[1].value == -1866832203 then
sn1 = 'Double Chair'
end
if t[1].value == 472595010 then
sn1 = 'Double Wood Chair'
end
if t[1].value == -1158710924 then
sn1 = 'Beach Bed'
end
if t[1].value == -1096484674 then
sn1 = 'Butterfly Fountain'
end
if t[1].value == -1001892262 then
sn1 = 'Harp'
end
if t[1].value == -359346310 then
sn1 = 'Wind Instruments'
end
if t[1].value == -420852981 then
sn1 = 'Seesaw'
end
if t[1].value == -2095749161 then
sn1 = 'Seesaw'
end
if t[1].value == -834438493 then
sn1 = 'Voice of AURORA'
end
if t[1].value == 137268536 then
sn1 = 'Voice of AURORA'
end
if t[1].value == -1419483218 then
sn1 = 'Pipe'
end
if t[1].value == -383842131 then
sn1 = 'Alchemist Cape'
end
if t[1].value == 2079599063 then
sn1 = 'Earth Cape'
end
if t[1].value == 747642100 then
sn1 = 'Earth Cape'
end
if t[1].value == 1375571404 then
sn1 = 'Light Scholar Cape'
end
if t[1].value == 939730131 then
--sn1 = 'Giving In Cape'
sn1 = 'Empty'
end
if t[1].value == -308941587 then
sn1 = 'Postman Cape'
end
if t[1].value == 1031127004 then
sn1 = 'Postman Cape'
end
if t[1].value == -700035318 then
sn1 = 'Turtle Cape'
end
if t[1].value == 769892976 then
sn1 = 'Dead Leaves Cape'
end
if t[1].value == -218615327 then
sn1 = 'Rhythm Season Mask'
end
if t[1].value == 964659005 then
sn1 = 'Red Fox Mask'
end
if t[1].value == 371568737 then
sn1 = 'Rabbit Mask'
end
if t[1].value == -901640940 then
sn1 = 'Cat Mask'
end
if t[1].value == -1636163586 then
sn1 = 'Fortune Mask'
end
if t[1].value == 144876107 then
sn1 = 'Dream Season Mask'
end
if t[1].value == -849020465 then
sn1 = 'Ox Mask'
end
if t[1].value == -938578505 then
sn1 = 'Rose Mask'
end
if t[1].value == 858950093 then
sn1 = 'Winter Feast Goggle'
end
if t[1].value == 771982951 then
sn1 = 'Whirling Mask'
end
if t[1].value == 475055967 then
sn1 = 'Tiger Mask'
end
if t[1].value == 784922793 then
sn1 = 'Weasel Mask'
end
if t[1].value == 147016038 then
sn1 = 'Rainbow Trail'
end
if t[1].value == -1951801352 then
sn1 = 'Blue Trail'
end
if t[1].value == 1918290563 then
sn1 = 'Cyan Trail'
end
if t[1].value == -176902809 then
sn1 = 'Black Trail'
end
if t[1].value == 1318288330 then
sn1 = 'Turquoise Trail'
end
if t[1].value == 470393304 then
sn1 = 'Pink Trail'
end
if t[1].value == 1237283438 then
sn1 = 'Orange Trail'
end
if t[1].value == -1527316661 then
sn1 = 'Purple Pink Trail'
end
if t[1].value == 637646527 then
sn1 = 'Green Trail'
end
if t[1].value == -1354381164 then
sn1 = 'Yellow Trail'
end
if t[1].value == -1304862813 then
sn1 = 'Red Trail'
end
if t[1].value == -1071076330 then
sn1 = 'Purple Trail'
end
if t[1].value == -1727483534 then
sn1 = 'Light'
end
if t[1].value == -1362469224 then
sn1 = 'Wing'
end

end

function getsp2b()
local t = {}
t[1] = {}
t[1].address = mfdz + 0x30
t[1].flags = gg.TYPE_DWORD
t[2] = {}
t[2].address = mfdz + 0x38
t[2].flags = gg.TYPE_DWORD
t = gg.getValues(t)

if t[1].value == 0 then
sn2 = 'Empty'
else
sn2 = 'Unknown'
end

if t[1].value == -940505450 then
sn2 = 'Yeti Cape'
end
if t[1].value == 1360796960 then
sn2 = 'Wings of AURORA'
end
if t[1].value == 1326646141 then
sn2 = 'Wings of AURORA'
end
if t[1].value == 583315364 then
sn2 = 'Cat Cape'
end
if t[1].value == 330655056 then
sn2 = 'Platinum Cape'
end
if t[1].value == 573237039 then
sn2 = 'Fish Cape'
end
if t[1].value == 540856305 then
sn2 = 'TGC Cape'
end
if t[1].value == 625581156 then
sn2 = 'Ghostbat Cape'
end
if t[1].value == 930203946 then
sn2 = 'Spider Cape'
end
if t[1].value == 1306675982 then
sn2 = 'Christmas Cape'
end
if t[1].value == -784831205 then
sn2 = 'Snowflake Cape'
end
if t[1].value == 1762827508 then
sn2 = 'Old Winter Feast Cape'
end
if t[1].value == -1623262339 then
sn2 = 'White Bird Cape'
end
if t[1].value == -6043825 then
sn2 = 'Petal Cape'
end
if t[1].value == -445538750 then
sn2 = 'Fortune Cape'
end
if t[1].value == 162066154 then
sn2 = 'Sakura Cape'
end
if t[1].value == -1244390069 then
sn2 = 'Wisteria Cape'
end
if t[1].value == 329684861 then
sn2 = 'Ocean Cape'
end
if t[1].value == -1822337532 then
sn2 = 'Dream Season Cape'
end
if t[1].value == -195929339 then
sn2 = 'Rainbow Cape'
end
if t[1].value == -2087661926 then
sn2 = 'Little Prince Scarf Cape'
end
if t[1].value == 1402240423 then
sn2 = 'Little Prince Asteroid Jacket'
end
if t[1].value == 549258087 then
sn2 = 'Bloom Cape 2023'
end

if t[1].value == 483128979 then
sn2 = 'Fortune Pants'
end
if t[1].value == -1134828593 then
sn2 = 'Runaway Outfit'
end
if t[1].value == -495233219 then
sn2 = 'Prince Sword Suit'
end
if t[1].value == 969946279 then
sn2 = 'Halloween Pants'
end
if t[1].value == 1482655023 then
sn2 = 'Rainbow Pants'
end
if t[1].value == -105193858 then
sn2 = 'Bloom Pants'
end
if t[1].value == 782433094 then
--sn2 = 'To The Love Outfit'
sn2 = 'Empty'
end
if t[1].value == -1535254839 then
sn2 = 'Snowman Body'
end

if t[1].value == 239584271 then
sn2 = 'Runaway Hairstyle'
end
if t[1].value == -1543558130 then
sn2 = 'Fish Head'
end
if t[1].value == 1046521292 then
sn2 = 'Pumpkin Head'
end
if t[1].value == 1983755432 then
sn2 = 'Wizard Hat'
end
if t[1].value == 373243257 then
sn2 = 'Sakura Hairstyle'
end
if t[1].value == -25012636 then
sn2 = 'Cat Hairstyle'
end
if t[1].value == -1760741911 then
sn2 = 'Halloween Spider Hairstyle'
end
if t[1].value == 116679863 then
sn2 = 'Halloween Longhair'
end
if t[1].value == -1409683913 then
sn2 = 'Christmas Hat'
end
if t[1].value == 1059767859 then
sn2 = 'Dream Season Hairstyle'
end
if t[1].value == -2099997114 then
sn2 = 'Bun Hairstyle'
end
if t[1].value == 419537417 then
sn2 = 'Snowman Head'
end

if t[1].value == -1590289609 then
sn2 = 'Rainbow Earring'
end
if t[1].value == -1769208928 then
sn2 = 'Rainbow Headphone'
end
if t[1].value == 2052387583 then
sn2 = 'Summer Hat'
end
if t[1].value == 1123843208 then
sn2 = 'Halloween Horn'
end
if t[1].value == 1909998088 then
sn2 = 'Antler'
end
if t[1].value == 942365523 then
sn2 = 'Flower Crown'
end
if t[1].value == -1989753674 then
sn2 = 'Tiara We Can Touch'
end
if t[1].value == 551055685 then
sn2 = 'Fish Headdress'
end
if t[1].value == -848739711 then
sn2 = 'Rabbit Headdress'
end
if t[1].value == -1616733323 then
sn2 = 'Orange Headdress'
end
if t[1].value == 2050094531 then
--sn2 = 'Kizuna AI Headband'
sn2 = 'Empty'
end
if t[1].value == 43899279 then
sn2 = 'Ribbon Necklace'
end
if t[1].value == 329235560 then
sn2 = 'Jellyfish Shouldress'
end
if t[1].value == 1943995802 then
sn2 = 'Turtle Shouldress'
end
if t[1].value == -1938239955 then
sn2 = 'Ocean Necklace'
end
if t[1].value == 8361886 then
sn2 = 'Holly Necklace'
end
if t[1].value == -347711956 then
sn2 = 'Coral Headdress'
end
if t[1].value == 1372838509 then
sn2 = 'Snowflake Headdress'
end

if t[1].value == 227018419 then
sn2 = 'Fireworks'
end
if t[1].value == 1403584133 then
sn2 = 'Love Fireworks'
end
if t[1].value == 137268536 then
sn2 = 'Voice of AURORA'
end
if t[1].value == 256924066 then
sn2 = 'Christmas Table'
end
if t[1].value == -797688127 then
sn2 = 'Halloween Table'
end
if t[1].value == 10058409 then
sn2 = 'Bloom Teaset'
end
if t[1].value == 1598845731 then
sn2 = 'Purple Bloom Teaset'
end
if t[1].value == 185406188 then
sn2 = 'Picnic'
end
if t[1].value == 303877523 then
sn2 = 'Gondola'
end
if t[1].value == -2095749161 then
sn2 = 'Seesaw'
end
if t[1].value == 1064080243 then
sn2 = 'Swing'
end
if t[1].value == 125584301 then
sn2 = 'Pumpkin'
end
if t[1].value == 1414743743 then
sn2 = 'Summer Tent'
end
if t[1].value == -1129614302 then
sn2 = 'Marshmallow'
end
if t[1].value == -2057431024 then
sn2 = 'Fox'
end
if t[1].value == 1436679857 then
sn2 = 'Cat'
end
if t[1].value == -992017029 then
sn2 = 'Pioneer Umbrella'
end
if t[1].value == -1416755338 then
sn2 = 'Summer Umbrella'
end
if t[1].value == 1167393926 then
sn2 = 'Transparent Umbrella'
end
if t[1].value == 1621987452 then
sn2 = 'Fortune Umbrella'
end
if t[1].value == 1440439821 then
sn2 = 'Snow Globe'
end
if t[1].value == -913145276 then
sn2 = 'Ball Game'
end
if t[1].value == 1080405300 then
sn2 = 'Snowman'
end
if t[1].value == -1333564540 then
sn2 = 'Wedding'
end
if t[1].value == 1319710173 then
sn2 = 'Lantern'
end
if t[1].value == -1202427550 then
sn2 = 'White Piano'
end
if t[1].value == 332997197 then
sn2 = 'Glectric Guitar'
end
if t[1].value == 970364197 then
sn2 = 'Triumph Guiter'
end
if t[1].value == 1275481440 then
sn2 = 'Triumph Harp'
end
if t[1].value == 454864430 then
sn2 = 'Triumph Handpan'
end

if t[1].value == 1692428656 then
sn2 = 'Height Small'
end
if t[1].value == 2142718166 then
sn2 = 'Size Small'
end
if t[1].value == 891098028 then
sn2 = 'Height Big'
end
if t[1].value == -1879316162 then
sn2 = 'Size Big'
end
if t[1].value == -1881863468 then
sn2 = 'Kizuna AI Call'
end
if t[1].value == 1097748727 then
sn2 = 'Glow'
end
if t[1].value == 1750685908 then
sn2 = 'Fast Charge'
end
if t[1].value == 1860519737 then
sn2 = 'Anti Gravity'
end
if t[1].value == -1463943689 then
sn2 = 'Anti Rain'
end
if t[1].value == -932650381 then
sn2 = 'Anti Krill'
end
if t[1].value == 847145578 then
sn2 = 'Krill Cat'
end
if t[1].value == 901504997 then
sn2 = 'Crab Trick'
end
if t[1].value == 1441565188 then
sn2 = 'Candle Trick'
end
if t[1].value == 1405645877 then
sn2 = 'Friendship Back'
end
if t[1].value == 1677246236 then
sn2 = 'Friendship Bear Hug'
end
if t[1].value == 998754260 then
sn2 = 'Friendship Warp'
end
if t[1].value == 2137753158 then
sn2 = 'Friendship Fight'
end
if t[1].value == 1725047129 then
sn2 = 'Crab Call'
end
if t[1].value == -957441587 then
sn2 = 'Jellyfish Call'
end
if t[1].value == 1814753890 then
sn2 = 'Manta Call'
end
if t[1].value == -705906186 then
sn2 = 'Buff Effect Birthday Hat'
end
if t[1].value == 383062578 then
sn2 = 'Amulet Clothing'
end
if t[1].value == -305102667 then
sn2 = 'Height Small'
end
if t[1].value == 953841005 then
sn2 = 'Proof Of Soulmate'
end
if t[1].value == 568438392 then
sn2 = 'Proof Of Soulmate'
end
if t[1].value == -392849190 then
sn2 = 'Teleport Aurora Concert'
end
if t[1].value == 428008620 then
sn2 = 'Teleport Birthday Crab'
end
if t[1].value == -1766441122 then
sn2 = 'Teleport Sky Child'
end
if t[1].value == 224110574 then
sn2 = 'Teleport Rainforest Cave'
end
if t[1].value == -1256468339 then
sn2 = 'Teleport Rainforest Elder'
end
if t[1].value == -210323960 then
sn2 = 'Teleport Forgotten Ark'
end
if t[1].value == 1660914074 then
sn2 = 'Teleport Hermit Valley'
end
if t[1].value == 248080515 then
sn2 = 'Teleport Valley Elder'
end
if t[1].value == 103122035 then
sn2 = 'Teleport Isle Elder'
end
if t[1].value == 282325575 then
sn2 = 'Teleport Turtle'
end
if t[1].value == -529345906 then
sn2 = 'Teleport Oreo'
end
if t[1].value == 598305233 then
sn2 = 'Teleport Sanctuary Islands'
end
if t[1].value == -1633629698 then
sn2 = 'Teleport Prairie Elder'
end
if t[1].value == -1172691679 then
sn2 = 'Wasteland Elder'
end
if t[1].value == 1153544860 then
sn2 = 'Teleport You & Me'
end
if t[1].value == 809787442 then
sn2 = 'Secret Aurora'
end
if t[1].value == 539651423 then
sn2 = 'Day & Night'
end
if t[1].value == -284883787 then
sn2 = 'Secret Fireworks'
end
if t[1].value == 898079755 then
sn2 = 'Secret Fireworks'
end

if t[1].value == -823270018 then
sn2 = 'Fortune Hat'
end
if t[1].value == -2092825638 then
sn2 = 'Knitted Hat'
end
if t[1].value == -521490982 then
sn2 = 'Rainbow Hat'
end
if t[1].value == 2093744529 then
sn2 = 'Lion Head'
end
if t[1].value == 2141511649 then
sn2 = 'Flower Headdress'
end
if t[1].value == -1014212311 then
sn2 = 'Double Flower Headdress'
end
if t[1].value == -290700605 then
sn2 = 'Rainbow Headdress'
end
if t[1].value == -171149928 then
sn2 = 'Shell Headdress'
end
if t[1].value == -75786201 then
sn2 = 'Single Wizard Hat'
end
if t[1].value == 1021908644 then
sn2 = 'Transparent Muffler'
end
if t[1].value == 70832281 then
sn2 = 'Winter Feast Muffler'
end
if t[1].value == -1866832203 then
sn2 = 'Double Chair'
end
if t[1].value == 472595010 then
sn2 = 'Double Wood Chair'
end
if t[1].value == -1158710924 then
sn2 = 'Beach Bed'
end
if t[1].value == -1096484674 then
sn2 = 'Butterfly Fountain'
end
if t[1].value == -1001892262 then
sn2 = 'Harp'
end
if t[1].value == -359346310 then
sn2 = 'Wind Instruments'
end
if t[1].value == -420852981 then
sn2 = 'Seesaw'
end
if t[1].value == -2095749161 then
sn2 = 'Seesaw'
end
if t[1].value == -834438493 then
sn2 = 'Voice of AURORA'
end
if t[1].value == 137268536 then
sn2 = 'Voice of AURORA'
end
if t[1].value == -1419483218 then
sn2 = 'Pipe'
end
if t[1].value == -383842131 then
sn2 = 'Alchemist Cape'
end
if t[1].value == 2079599063 then
sn2 = 'Earth Cape'
end
if t[1].value == 747642100 then
sn2 = 'Earth Cape'
end
if t[1].value == 1375571404 then
sn2 = 'Light Scholar Cape'
end
if t[1].value == 939730131 then
--sn2 = 'Giving In Cape'
sn2 = 'Empty'
end
if t[1].value == -308941587 then
sn2 = 'Postman Cape'
end
if t[1].value == 1031127004 then
sn2 = 'Postman Cape'
end
if t[1].value == -700035318 then
sn2 = 'Turtle Cape'
end
if t[1].value == 769892976 then
sn2 = 'Dead Leaves Cape'
end
if t[1].value == -218615327 then
sn2 = 'Rhythm Season Mask'
end
if t[1].value == 964659005 then
sn2 = 'Red Fox Mask'
end
if t[1].value == 371568737 then
sn2 = 'Rabbit Mask'
end
if t[1].value == -901640940 then
sn2 = 'Cat Mask'
end
if t[1].value == -1636163586 then
sn2 = 'Fortune Mask'
end
if t[1].value == 144876107 then
sn2 = 'Dream Season Mask'
end
if t[1].value == -849020465 then
sn2 = 'Ox Mask'
end
if t[1].value == -938578505 then
sn2 = 'Rose Mask'
end
if t[1].value == 858950093 then
sn2 = 'Winter Feast Goggle'
end
if t[1].value == 771982951 then
sn2 = 'Whirling Mask'
end
if t[1].value == 475055967 then
sn2 = 'Tiger Mask'
end
if t[1].value == 784922793 then
sn2 = 'Weasel Mask'
end
if t[1].value == 147016038 then
sn2 = 'Rainbow Trail'
end
if t[1].value == -1951801352 then
sn2 = 'Blue Trail'
end
if t[1].value == 1918290563 then
sn2 = 'Cyan Trail'
end
if t[1].value == -176902809 then
sn2 = 'Black Trail'
end
if t[1].value == 1318288330 then
sn2 = 'Turquoise Trail'
end
if t[1].value == 470393304 then
sn2 = 'Pink Trail'
end
if t[1].value == 1237283438 then
sn2 = 'Orange Trail'
end
if t[1].value == -1527316661 then
sn2 = 'Purple Pink Trail'
end
if t[1].value == 637646527 then
sn2 = 'Green Trail'
end
if t[1].value == -1354381164 then
sn2 = 'Yellow Trail'
end
if t[1].value == -1304862813 then
sn2 = 'Red Trail'
end
if t[1].value == -1071076330 then
sn2 = 'Purple Trail'
end
if t[1].value == -1727483534 then
sn2 = 'Light'
end
if t[1].value == -1362469224 then
sn2 = 'Wing'
end

end

function getsp3b()
local t = {}
t[1] = {}
t[1].address = mfdz + 0x60
t[1].flags = gg.TYPE_DWORD
t[2] = {}
t[2].address = mfdz + 0x68
t[2].flags = gg.TYPE_DWORD
t = gg.getValues(t)

if t[1].value == 0 then
sn3 = 'Empty'
else
sn3 = 'Unknown'
end

if t[1].value == -940505450 then
sn3 = 'Yeti Cape'
end
if t[1].value == 1360796960 then
sn3 = 'Wings of AURORA'
end
if t[1].value == 1326646141 then
sn3 = 'Wings of AURORA'
end
if t[1].value == 583315364 then
sn3 = 'Cat Cape'
end
if t[1].value == 330655056 then
sn3 = 'Platinum Cape'
end
if t[1].value == 573237039 then
sn3 = 'Fish Cape'
end
if t[1].value == 540856305 then
sn3 = 'TGC Cape'
end
if t[1].value == 625581156 then
sn3 = 'Ghostbat Cape'
end
if t[1].value == 930203946 then
sn3 = 'Spider Cape'
end
if t[1].value == 1306675982 then
sn3 = 'Christmas Cape'
end
if t[1].value == -784831205 then
sn3 = 'Snowflake Cape'
end
if t[1].value == 1762827508 then
sn3 = 'Old Winter Feast Cape'
end
if t[1].value == -1623262339 then
sn3 = 'White Bird Cape'
end
if t[1].value == -6043825 then
sn3 = 'Petal Cape'
end
if t[1].value == -445538750 then
sn3 = 'Fortune Cape'
end
if t[1].value == 162066154 then
sn3 = 'Sakura Cape'
end
if t[1].value == -1244390069 then
sn3 = 'Wisteria Cape'
end
if t[1].value == 329684861 then
sn3 = 'Ocean Cape'
end
if t[1].value == -1822337532 then
sn3 = 'Dream Season Cape'
end
if t[1].value == -195929339 then
sn3 = 'Rainbow Cape'
end
if t[1].value == -2087661926 then
sn3 = 'Little Prince Scarf Cape'
end
if t[1].value == 1402240423 then
sn3 = 'Little Prince Asteroid Jacket'
end
if t[1].value == 549258087 then
sn3 = 'Bloom Cape 2023'
end

if t[1].value == 483128979 then
sn3 = 'Fortune Pants'
end
if t[1].value == -1134828593 then
sn3 = 'Runaway Outfit'
end
if t[1].value == -495233219 then
sn3 = 'Prince Sword Suit'
end
if t[1].value == 969946279 then
sn3 = 'Halloween Pants'
end
if t[1].value == 1482655023 then
sn3 = 'Rainbow Pants'
end
if t[1].value == -105193858 then
sn3 = 'Bloom Pants'
end
if t[1].value == 782433094 then
--sn3 = 'To The Love Outfit'
sn3 = 'Empty'
end
if t[1].value == -1535254839 then
sn3 = 'Snowman Body'
end

if t[1].value == 239584271 then
sn3 = 'Runaway Hairstyle'
end
if t[1].value == -1543558130 then
sn3 = 'Fish Head'
end
if t[1].value == 1046521292 then
sn3 = 'Pumpkin Head'
end
if t[1].value == 1983755432 then
sn3 = 'Wizard Hat'
end
if t[1].value == 373243257 then
sn3 = 'Sakura Hairstyle'
end
if t[1].value == -25012636 then
sn3 = 'Cat Hairstyle'
end
if t[1].value == -1760741911 then
sn3 = 'Halloween Spider Hairstyle'
end
if t[1].value == 116679863 then
sn3 = 'Halloween Longhair'
end
if t[1].value == -1409683913 then
sn3 = 'Christmas Hat'
end
if t[1].value == 1059767859 then
sn3 = 'Dream Season Hairstyle'
end
if t[1].value == -2099997114 then
sn3 = 'Bun Hairstyle'
end
if t[1].value == 419537417 then
sn3 = 'Snowman Head'
end

if t[1].value == -1590289609 then
sn3 = 'Rainbow Earring'
end
if t[1].value == -1769208928 then
sn3 = 'Rainbow Headphone'
end
if t[1].value == 2052387583 then
sn3 = 'Summer Hat'
end
if t[1].value == 1123843208 then
sn3 = 'Halloween Horn'
end
if t[1].value == 1909998088 then
sn3 = 'Antler'
end
if t[1].value == 942365523 then
sn3 = 'Flower Crown'
end
if t[1].value == -1989753674 then
sn3 = 'Tiara We Can Touch'
end
if t[1].value == 551055685 then
sn3 = 'Fish Headdress'
end
if t[1].value == -848739711 then
sn3 = 'Rabbit Headdress'
end
if t[1].value == -1616733323 then
sn3 = 'Orange Headdress'
end
if t[1].value == 2050094531 then
--sn3 = 'Kizuna AI Headband'
sn3 = 'Empty'
end
if t[1].value == 43899279 then
sn3 = 'Ribbon Necklace'
end
if t[1].value == 329235560 then
sn3 = 'Jellyfish Shouldress'
end
if t[1].value == 1943995802 then
sn3 = 'Turtle Shouldress'
end
if t[1].value == -1938239955 then
sn3 = 'Ocean Necklace'
end
if t[1].value == 8361886 then
sn3 = 'Holly Necklace'
end
if t[1].value == -347711956 then
sn3 = 'Coral Headdress'
end
if t[1].value == 1372838509 then
sn3 = 'Snowflake Headdress'
end

if t[1].value == 227018419 then
sn3 = 'Fireworks'
end
if t[1].value == 1403584133 then
sn3 = 'Love Fireworks'
end
if t[1].value == 137268536 then
sn3 = 'Voice of AURORA'
end
if t[1].value == 256924066 then
sn3 = 'Christmas Table'
end
if t[1].value == -797688127 then
sn3 = 'Halloween Table'
end
if t[1].value == 10058409 then
sn3 = 'Bloom Teaset'
end
if t[1].value == 1598845731 then
sn3 = 'Purple Bloom Teaset'
end
if t[1].value == 185406188 then
sn3 = 'Picnic'
end
if t[1].value == 303877523 then
sn3 = 'Gondola'
end
if t[1].value == -2095749161 then
sn3 = 'Seesaw'
end
if t[1].value == 1064080243 then
sn3 = 'Swing'
end
if t[1].value == 125584301 then
sn3 = 'Pumpkin'
end
if t[1].value == 1414743743 then
sn3 = 'Summer Tent'
end
if t[1].value == -1129614302 then
sn3 = 'Marshmallow'
end
if t[1].value == -2057431024 then
sn3 = 'Fox'
end
if t[1].value == 1436679857 then
sn3 = 'Cat'
end
if t[1].value == -992017029 then
sn3 = 'Pioneer Umbrella'
end
if t[1].value == -1416755338 then
sn3 = 'Summer Umbrella'
end
if t[1].value == 1167393926 then
sn3 = 'Transparent Umbrella'
end
if t[1].value == 1621987452 then
sn3 = 'Fortune Umbrella'
end
if t[1].value == 1440439821 then
sn3 = 'Snow Globe'
end
if t[1].value == -913145276 then
sn3 = 'Ball Game'
end
if t[1].value == 1080405300 then
sn3 = 'Snowman'
end
if t[1].value == -1333564540 then
sn3 = 'Wedding'
end
if t[1].value == 1319710173 then
sn3 = 'Lantern'
end
if t[1].value == -1202427550 then
sn3 = 'White Piano'
end
if t[1].value == 332997197 then
sn3 = 'Glectric Guitar'
end
if t[1].value == 970364197 then
sn3 = 'Triumph Guiter'
end
if t[1].value == 1275481440 then
sn3 = 'Triumph Harp'
end
if t[1].value == 454864430 then
sn3 = 'Triumph Handpan'
end

if t[1].value == 1692428656 then
sn3 = 'Height Small'
end
if t[1].value == 2142718166 then
sn3 = 'Size Small'
end
if t[1].value == 891098028 then
sn3 = 'Height Big'
end
if t[1].value == -1879316162 then
sn3 = 'Size Big'
end
if t[1].value == -1881863468 then
sn3 = 'Kizuna AI Call'
end
if t[1].value == 1097748727 then
sn3 = 'Glow'
end
if t[1].value == 1750685908 then
sn3 = 'Fast Charge'
end
if t[1].value == 1860519737 then
sn3 = 'Anti Gravity'
end
if t[1].value == -1463943689 then
sn3 = 'Anti Rain'
end
if t[1].value == -932650381 then
sn3 = 'Anti Krill'
end
if t[1].value == 847145578 then
sn3 = 'Krill Cat'
end
if t[1].value == 901504997 then
sn3 = 'Crab Trick'
end
if t[1].value == 1441565188 then
sn3 = 'Candle Trick'
end
if t[1].value == 1405645877 then
sn3 = 'Friendship Back'
end
if t[1].value == 1677246236 then
sn3 = 'Friendship Bear Hug'
end
if t[1].value == 998754260 then
sn3 = 'Friendship Warp'
end
if t[1].value == 2137753158 then
sn3 = 'Friendship Fight'
end
if t[1].value == 1725047129 then
sn3 = 'Crab Call'
end
if t[1].value == -957441587 then
sn3 = 'Jellyfish Call'
end
if t[1].value == 1814753890 then
sn3 = 'Manta Call'
end
if t[1].value == -705906186 then
sn3 = 'Buff Effect Birthday Hat'
end
if t[1].value == 383062578 then
sn3 = 'Amulet Clothing'
end
if t[1].value == -305102667 then
sn3 = 'Height Small'
end
if t[1].value == 953841005 then
sn3 = 'Proof Of Soulmate'
end
if t[1].value == 568438392 then
sn3 = 'Proof Of Soulmate'
end
if t[1].value == -392849190 then
sn3 = 'Teleport Aurora Concert'
end
if t[1].value == 428008620 then
sn3 = 'Teleport Birthday Crab'
end
if t[1].value == -1766441122 then
sn3 = 'Teleport Sky Child'
end
if t[1].value == 224110574 then
sn3 = 'Teleport Rainforest Cave'
end
if t[1].value == -1256468339 then
sn3 = 'Teleport Rainforest Elder'
end
if t[1].value == -210323960 then
sn3 = 'Teleport Forgotten Ark'
end
if t[1].value == 1660914074 then
sn3 = 'Teleport Hermit Valley'
end
if t[1].value == 248080515 then
sn3 = 'Teleport Valley Elder'
end
if t[1].value == 103122035 then
sn3 = 'Teleport Isle Elder'
end
if t[1].value == 282325575 then
sn3 = 'Teleport Turtle'
end
if t[1].value == -529345906 then
sn3 = 'Teleport Oreo'
end
if t[1].value == 598305233 then
sn3 = 'Teleport Sanctuary Islands'
end
if t[1].value == -1633629698 then
sn3 = 'Teleport Prairie Elder'
end
if t[1].value == -1172691679 then
sn3 = 'Wasteland Elder'
end
if t[1].value == 1153544860 then
sn3 = 'Teleport You & Me'
end
if t[1].value == 809787442 then
sn3 = 'Secret Aurora'
end
if t[1].value == 539651423 then
sn3 = 'Day & Night'
end
if t[1].value == -284883787 then
sn3 = 'Secret Fireworks'
end
if t[1].value == 898079755 then
sn3 = 'Secret Fireworks'
end

if t[1].value == -823270018 then
sn3 = 'Fortune Hat'
end
if t[1].value == -2092825638 then
sn3 = 'Knitted Hat'
end
if t[1].value == -521490982 then
sn3 = 'Rainbow Hat'
end
if t[1].value == 2093744529 then
sn3 = 'Lion Head'
end
if t[1].value == 2141511649 then
sn3 = 'Flower Headdress'
end
if t[1].value == -1014212311 then
sn3 = 'Double Flower Headdress'
end
if t[1].value == -290700605 then
sn3 = 'Rainbow Headdress'
end
if t[1].value == -171149928 then
sn3 = 'Shell Headdress'
end
if t[1].value == -75786201 then
sn3 = 'Single Wizard Hat'
end
if t[1].value == 1021908644 then
sn3 = 'Transparent Muffler'
end
if t[1].value == 70832281 then
sn3 = 'Winter Feast Muffler'
end
if t[1].value == -1866832203 then
sn3 = 'Double Chair'
end
if t[1].value == 472595010 then
sn3 = 'Double Wood Chair'
end
if t[1].value == -1158710924 then
sn3 = 'Beach Bed'
end
if t[1].value == -1096484674 then
sn3 = 'Butterfly Fountain'
end
if t[1].value == -1001892262 then
sn3 = 'Harp'
end
if t[1].value == -359346310 then
sn3 = 'Wind Instruments'
end
if t[1].value == -420852981 then
sn3 = 'Seesaw'
end
if t[1].value == -2095749161 then
sn3 = 'Seesaw'
end
if t[1].value == -834438493 then
sn3 = 'Voice of AURORA'
end
if t[1].value == 137268536 then
sn3 = 'Voice of AURORA'
end
if t[1].value == -1419483218 then
sn3 = 'Pipe'
end
if t[1].value == -383842131 then
sn3 = 'Alchemist Cape'
end
if t[1].value == 2079599063 then
sn3 = 'Earth Cape'
end
if t[1].value == 747642100 then
sn3 = 'Earth Cape'
end
if t[1].value == 1375571404 then
sn3 = 'Light Scholar Cape'
end
if t[1].value == 939730131 then
--sn3 = 'Giving In Cape'
sn3 = 'Empty'
end
if t[1].value == -308941587 then
sn3 = 'Postman Cape'
end
if t[1].value == 1031127004 then
sn3 = 'Postman Cape'
end
if t[1].value == -700035318 then
sn3 = 'Turtle Cape'
end
if t[1].value == 769892976 then
sn3 = 'Dead Leaves Cape'
end
if t[1].value == -218615327 then
sn3 = 'Rhythm Season Mask'
end
if t[1].value == 964659005 then
sn3 = 'Red Fox Mask'
end
if t[1].value == 371568737 then
sn3 = 'Rabbit Mask'
end
if t[1].value == -901640940 then
sn3 = 'Cat Mask'
end
if t[1].value == -1636163586 then
sn3 = 'Fortune Mask'
end
if t[1].value == 144876107 then
sn3 = 'Dream Season Mask'
end
if t[1].value == -849020465 then
sn3 = 'Ox Mask'
end
if t[1].value == -938578505 then
sn3 = 'Rose Mask'
end
if t[1].value == 858950093 then
sn3 = 'Winter Feast Goggle'
end
if t[1].value == 771982951 then
sn3 = 'Whirling Mask'
end
if t[1].value == 475055967 then
sn3 = 'Tiger Mask'
end
if t[1].value == 784922793 then
sn3 = 'Weasel Mask'
end
if t[1].value == 147016038 then
sn3 = 'Rainbow Trail'
end
if t[1].value == -1951801352 then
sn3 = 'Blue Trail'
end
if t[1].value == 1918290563 then
sn3 = 'Cyan Trail'
end
if t[1].value == -176902809 then
sn3 = 'Black Trail'
end
if t[1].value == 1318288330 then
sn3 = 'Turquoise Trail'
end
if t[1].value == 470393304 then
sn3 = 'Pink Trail'
end
if t[1].value == 1237283438 then
sn3 = 'Orange Trail'
end
if t[1].value == -1527316661 then
sn3 = 'Purple Pink Trail'
end
if t[1].value == 637646527 then
sn3 = 'Green Trail'
end
if t[1].value == -1354381164 then
sn3 = 'Yellow Trail'
end
if t[1].value == -1304862813 then
sn3 = 'Red Trail'
end
if t[1].value == -1071076330 then
sn3 = 'Purple Trail'
end
if t[1].value == -1727483534 then
sn3 = 'Light'
end
if t[1].value == -1362469224 then
sn3 = 'Wing'
end

end


function getsp0()
local t = {}
t[1] = {}
t[1].address = mfdz + sps
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)

if t[1].value == 0 then
setvalue(mfdz+0x00,4,0)
setvalue(mfdz+0x30,4,0)
setvalue(mfdz+0x60,4,0)
end
if t[1].value == 1 then
setvalue(mfdz+0x30,4,0)
setvalue(mfdz+0x60,4,0)
frzvalue(mfdz+sps,4,3)
end
if t[1].value == 2 then
setvalue(mfdz+0x60,4,0)
frzvalue(mfdz+sps,4,3)
end

end
--------------------------------------
function gt1()
local sp = gg.choice(
{'Start',
'Blackout',
'↩Back'},
nil,'Teleport (Home)')
if sp == nil then
elseif sp == 1 then
setpos(1.1,1.2,-1.3) end
if sp == 2 then
setpos(800,0.6,0) end
if sp == 3 then world() end
end

function gt2()
local sp = gg.choice(
{'Start',
'Floating Island',
'Temple',
'Elder Room',
'⇀Cave of Prophecies',
'⇀Daylight Prairie',
'↩Back'},
nil,'Teleport (Isle of Down)')
if sp == nil then
elseif sp == 1 then
setpos(68,1,456.5) end
if sp == 2 then
setpos(406.02,118.274,-17.29) end
if sp == 3 then
setpos(155.76,103.62,-291.89) end
if sp == 4 then
setpos(117.68,1.06,-1733.87) end
if sp == 5 then
setpos(207.16,4.19,-74.5) end
if sp == 6 then
setpos(477.5,210,-1030) end 
if sp == 7 then world() end
end

function gt3()
local sp = gg.choice(
{'Prophecy Guide',
'Trial of Water',
'Trial of Earth',
'Trial of Air',
'Trial of Fire',
'⇀Wind Paths',
'⇀Main Area',
'↩Back'},
nil,'Teleport (Isle of Down)')
if sp == nil then
elseif sp == 1 then
setpos(-12.611,236.256,-295.77) end
if sp == 2 then
setpos(-89.33,244.89,-304.37) end
if sp == 3 then
setpos(-28.23,253.79,-372.06) end
if sp == 4 then
setpos(21.275,259.06,-346.79) end
if sp == 5 then
setpos(56.99,251.6,-326.02) end
if sp == 6 then
setpos(-168.26,348.24,-372.7) end
if sp == 7 then
setpos(-26.8,190.7,-20.5) end
if sp == 8 then world() end
end

function gt4()
local sp = gg.choice(
{'Start',
'Trial Meditation',
'End',
'↩Back'},
nil,'Teleport (Trial of Water)')
if sp == nil then
elseif sp == 1 then
setpos(-0.081,66.56,13.17) end
if sp == 2 then
setpos(44.31,67.8,-272.72) end
if sp == 3 then
setpos(-0.07,78.8,-411.75) end
if sp == 4 then world() end
end

function gt5()
local sp = gg.choice(
{'Start',
'Trial Meditation',
'End',
'↩Back'},
nil,'Teleport (Trial of Earth)')
if sp == nil then
elseif sp == 1 then
setpos(93.974,127.23,11.29) end
if sp == 2 then
setpos(1.65,128.15,15.73) end
if sp == 3 then
setpos(-13.815,133.842,3.255) end
if sp == 4 then world() end
end

function gt6()
local sp = gg.choice(
{'Start',
'Trial Meditation',
'End',
'↩Back'},
nil,'Teleport (Trial of Air)')
if sp == nil then
elseif sp == 1 then
setpos(-0.496,30.37,-36.89) end
if sp == 2 then
setpos(-29.246,90.34,-130.89) end
if sp == 3 then
setpos(-11.5,106.2,-130.5) end
if sp == 4 then world() end
end

function gt7()
local sp = gg.choice(
{'Start',
'Trial Meditation',
'End',
'↩Back'},
nil,'Teleport (Trial of Fire)')
if sp == nil then
elseif sp == 1 then
setpos(-41.55,47.01,-23.06) end
if sp == 2 then
setpos(-12.33,50.21,-257.3) end
if sp == 3 then
setpos(-11.19,50.26,-306.9) end
if sp == 4 then world() end
end

function gt8()
local sp = gg.choice(
{'Social Area',
'Butterfly Fields',
'⇀Village Islands',
'⇀Cave',
"⇀Bird's Nest",
'⇀Isle of Down',
'↩Back'},
nil,'Teleport (Daylight Prairie)')
if sp == nil then
elseif sp == 1 then
setpos(117.675,201.5,-446.7) end
if sp == 2 then
setpos(84.874,157.34,-78.6) end
if sp == 3 then
setpos(77.1,160.48,66) end
if sp == 4 then
setpos(206.8,171.5,18.65) end
if sp == 5 then
setpos(-12.6,165.81,-4.37) end
if sp == 6 then
setpos(119.3,201.28,-458) end
if sp == 7 then world() end
end

function gt9()
local sp = gg.choice(
{--'Hidden Vase',
--'Invisible Boat',
'⇀Temple',
'⇀8 Player Puzzle',
'⇀Butterfly Fields',
"⇀Bird's Nest",
'⇀Cave',
'↩Back'},
nil,'Teleport (Daylight Prairie)')
if sp == nil then
--elseif sp == 1 then
--setpos(95.174,189.998,272.452) end
--if sp == 2 then
--setpos(96.7334,175.79,265.9974) end
elseif sp == 1 then
setpos(129.83,255.05,487.3) end
if sp == 2 then
setpos(-52.1,180.33,324.69) end
if sp == 3 then
setpos(30.44,192.16,183.23) end
if sp == 4 then
setpos(-65.97,202.09,204.86) end
if sp == 5 then
setpos(164.44,199.31,221.63) end 
if sp == 6 then world() end
end

function gt10()
local sp = gg.choice(
{'Campfire',
'Green OOB',
'⇀Village Islands',
'⇀Butterfly Fields',
'↩Back'},
nil,'Teleport (Daylight Prairie)')
if sp == nil then
elseif sp == 1 then
setpos(225.84,202,148.85) end
if sp == 2 then
setpos(314.183,235.105,162.516) end
if sp == 3 then
setpos(242.11,199.03,226.815) end
if sp == 4 then
setpos(190.8,171.58,10.96) end
if sp == 5 then world() end
end

function gt11()
local sp = gg.choice(
{'⇀Butterfly Fields',
'⇀Village Islands',
'⇀Sanctuary Islands',
'↩Back'},
nil,'Teleport (Daylight Prairie)')
if sp == nil then
elseif sp == 1 then
setpos(-46.8,168.6,39.6) end
if sp == 2 then
setpos(-103.02,185.11,176.61) end
if sp == 3 then
setpos(-357.08,125.49,105.98) end
if sp == 4 then world() end
end

function gt12()
local sp = gg.choice(
{'Sanctuary Guide',
'Polluted Geyser',
"⇀Bird's Nest",
'⇀Wind Paths',
'↩Back'},
nil,'Teleport (Daylight Prairie)')
if sp == nil then
elseif sp == 1 then
setpos(9.915,52.34,333.518) end
if sp == 2 then
setpos(143.66,2.61,417.38) end
if sp == 3 then
setpos(268.4,181.17,-28.28) end
if sp == 4 then
setpos(433.145,270.468,549.355) end
if sp == 5 then world() end
end

function gt13()
local sp = gg.choice(
{'Start',
'Elder Room',
'⇀Village Islands',
'⇀Hidden Forest',
'↩Back'},
nil,'Teleport (Daylight Prairie)')
if sp == nil then
elseif sp == 1 then
setpos(-66.56,85.1,42.31) end
if sp == 2 then
setpos(-528.06,8.59,-213.8) end
if sp == 3 then
setpos(-61.756,85.05,42.376) end
if sp == 4 then
setpos(-134.482,109.77,41.84) end
if sp == 5 then world() end
end

function gt14()
local sp = gg.choice(
{'Start',
'Exit',
'⇀Village Islands',
'↩Back'},
nil,'Teleport (Daylight Prairie)')
if sp == nil then
elseif sp == 1 then
setpos(-27.41,19.51,-0.22) end
if sp == 2 then
setpos(30.76,42.26,0.36) end
if sp == 3 then
setpos(-36.4,21.12,-0.72) end
if sp == 4 then world() end
end

function gt15()
local sp = gg.choice(
{'Social Area',
'Forest Clearing',
'Rainy Forest',
'⇀Forest Brook',
'⇀Assembly Treehouse',
'⇀Wind Paths',
'↩Back'},
nil,'Teleport (Hiddne Forest)')
if sp == nil then
elseif sp == 1 then
setpos(150.33,220.35,-638.23) end
if sp == 2 then
setpos(28.03,98.22,-279.6) end
if sp == 3 then
setpos(17,97.11,-198.79) end
if sp == 4 then
setpos(29.8,98.81,-108.8) end
if sp == 5 then
setpos(61.9,96.2,-166) end
if sp == 6 then
setpos(-49.31,274.33,-655.83) end
if sp == 7 then world() end
end

function gt16()
local sp = gg.choice(
{'Campfire',
'⇀Broken Bridge',
'⇀Elevated Clearing',
'⇀Assembly Treehouse',
'⇀Rainy Forest',
'↩Back'},
nil,'Teleport (Hiddne Forest)')
if sp == nil then
elseif sp == 1 then
setpos(16.83,118.16,-42) end
if sp == 2 then
setpos(65.3,101.57,58.3) end
if sp == 3 then
setpos(-3.278,110.57,-51.48) end
if sp == 4 then
setpos(54.92,114.44,-113.37) end
if sp == 5 then
setpos(21.54,98.89,-134.43) end
if sp == 6 then world() end
end

function gt17()
local sp = gg.choice(
{'Ancestor Table',
'Golden Bell OOB',
'Forest Pit OOB',
'⇀Underground Cavern',
'⇀Broken Bridge',
'⇀Forest Brook',
'↩Back'},
nil,'Teleport (Hiddne Forest)')
if sp == nil then
elseif sp == 1 then
setpos(-27.97,88.67,-3.16) end
if sp == 2 then
setpos(-31.43,75.8,-15.4) end
if sp == 3 then
setpos(-32.02,206.99,0.215) end
if sp == 4 then
setpos(54.62,56.19,43.93) end
if sp == 5 then
setpos(16.12041,88.18136,124.07444) end
if sp == 6 then
setpos(32.38,82.5,-68.15) end
if sp == 7 then world() end
end

function gt18()
local sp = gg.choice(
{'Top',
'Birds OOB',
'Little Prince OOB',
'Whale OOB',
'⇀Elevated Clearing',
'⇀Wind Paths',
'↩Back'},
nil,'Teleport (Hiddne Forest)')
if sp == nil then
elseif sp == 1 then
setpos(-108.93,204.1,-293.5) end
if sp == 2 then
setpos(161.141,-0.091,149.281) end
if sp == 3 then
setpos(-344.859,-0.11,-197.424) end 
if sp == 4 then
setpos(-45.224,19.469,-336.806) end
if sp == 5 then
setpos(-59.19,210.47,-283.2) end
if sp == 6 then
setpos(143.66,24.57,-135.39) end
if sp == 7 then world() end
end

function gt19()
local sp = gg.choice(
{'⇀Temple',
'⇀Assembly Treehouse',
'⇀Elevated Clearing',
'⇀Forest Brook',
'↩Back'},
nil,'Teleport (Hiddne Forest)')
if sp == nil then
elseif sp == 1 then
setpos(-17.46,182.78,403.517) end
if sp == 2 then
setpos(-15.16,156.37,-36.08) end
if sp == 3 then
setpos(-87.2568,154.1,110.3075) end
if sp == 4 then
setpos(33.73,140.5,-24.409) end
if sp == 5 then world() end
end

function gt20()
local sp = gg.choice(
{'Start',
'Temple Garden',
'Elder Room',
'⇀Valley of Triumph',
'↩Back'},
nil,'Teleport (Hiddne Forest)')
if sp == nil then
elseif sp == 1 then
setpos(-0.13,104.6,-39.54) end
if sp == 2 then
setpos(-1.58,108.15,59.62) end
if sp == 3 then
setpos(4.75,8.74,502.13) end
if sp == 4 then
setpos(-0.0111,197.761,201.192) end
if sp == 5 then world() end
end

function gt21()
local sp = gg.choice(
{'⇀Rainy Forest',
'⇀Forest Brook',
'⇀Broken Bridge',
'↩Back'},
nil,'Teleport (Hiddne Forest)')
if sp == nil then
elseif sp == 1 then
setpos(-14.22,143.68,80.35) end
if sp == 2 then
setpos(-19.43,136.47,65) end
if sp == 3 then
setpos(-38.3155,148.3013,57.9523) end
if sp == 4 then world() end
end

function gt22()
local sp = gg.choice(
{'Flight Guide',
'⇀Isle of Down - Cave of Prophecies',
'⇀Daylight Prairie - Sanctuary Islands',
'⇀Hiddne Forest - Underground Cavern',
'⇀Valley of Triumph - Hermit Valley',
'⇀Golden Wasteland - Forgotten Ark',
'⇀Vault of Knowledge - Starlight Desert',
'↩Back'},
nil,'Teleport (Wind Paths)')
if sp == nil then
elseif sp == 1 then
setpos(-124.78,318.54,258.494) end
if sp == 2 then
setpos(320.656,299.243,496.071) end
if sp == 3 then
setpos(539.88,280.53,501.96) end
if sp == 4 then
setpos(204.684,274.077,27.366) end
if sp == 5 then
setpos(431.524,309.45,23.1235) end
if sp == 6 then
setpos(727.4,290,91.7) end
if sp == 7 then
setpos(783.266,296.618,354.623) end
if sp == 8 then world() end
end

function gt23()
local sp = gg.choice(
{'Social Area',
'Ice Rink',
'⇀Sliding Race',
'⇀Citadel',
'⇀Village of Dreams',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(-34.736,305.59,28.224) end
if sp == 2 then
setpos(179.19,49.24,-512) end
if sp == 3 then
setpos(288.7,38.9,-527.1) end
if sp == 4 then
setpos(220.49,64.42,-626.346) end
if sp == 5 then
setpos(27.6,303.5,8.222) end
if sp == 6 then world() end
end

function gt24()
local sp = gg.choice(
{'⇀Flying Race',
'⇀Ice Rink',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(205.985,491.59,-203.736) end
if sp == 2 then
setpos(68.267,400.916,417.037) end
if sp == 3 then world() end
end

function gt25()
local sp = gg.choice(
{'⇀Join Course',
'⇀Citadel',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(148.86,1021.86,-105.35) end
if sp == 2 then
setpos(197.86,1187.18,401.6) end
if sp == 3 then world() end
end

function gt26()
local sp = gg.choice(
{'⇀Join Course',
'⇀Ice Rink',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(257.32,584.97,-566.21) end
if sp == 2 then
setpos(159.7,935.2,692.916) end
if sp == 3 then world() end
end

function gt27()
local sp = gg.choice(
{'⇀Colosseum',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(48.652,166,0.38) end
if sp == 2 then world() end
end

function gt28()
local sp = gg.choice(
{'Yeti Race',
'Sunset',
'⇀Wind Paths',
'⇀Village of Dreams',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(-182.108,279.67,672.089) end
if sp == 2 then
setpos(-359.14,257.05,202.837) end
if sp == 3 then
setpos(-420.844,315.236,652.231) end
if sp == 4 then
setpos(125.02,33.92,29.05) end
if sp == 5 then world() end
end

function gt29()
local sp = gg.choice(
{'Dreams Guide',
'Hotspring',
'⇀Hermit Valley',
'⇀Colosseum',
'⇀Village Theater',
'⇀Harmony Hall',
'⇀Social Area',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(164.725,37.38,87.925) end
if sp == 2 then
setpos(259.4,76.08,65.45) end
if sp == 3 then
setpos(-111.331,206.8,496.2114) end
if sp == 4 then
setpos(-38.866,90.697,8.511) end
if sp == 5 then
setpos(229.036,44.02,125.03) end
if sp == 6 then
setpos(117.5459,42.1135,33.8334) end
if sp == 7 then
setpos(89.912,82.519,371.86) end
if sp == 8  then world() end
end 

function gt30()
local sp = gg.choice(
{'Performance Guide',
'Pengin OOB',
'⇀Village of Dreams',
'⇀Harmony Hall',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(0.35,49.25,11.58) end
if sp == 2 then
setpos(-18.89,105.41,-121.426) end
if sp == 3 then
setpos(24.18,55.57,30.06) end
if sp == 4 then
setpos(11.88,57.89,51.42) end
if sp == 5 then world() end
end

function gt31()
local sp = gg.choice(
{'⇀Village of Dreams',
'⇀Village Theater',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(335.87,60,-88.18) end
if sp == 2 then
setpos(357.34,57.137,-93.468) end
end

function gt32()
local sp = gg.choice(
{'Aurora',
'⇀Temple',
'⇀Village of Dreams',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(9.76,150.54,-193.54) end
if sp == 2 then
setpos(61.351,138.2,-293.5) end
if sp == 3 then
setpos(136.965,150.63,-168.35) end
if sp == 4 then world() end
end

function gt33()
local sp = gg.choice(
{'Start',
'Bonfire',
'Elders Room',
'⇀Colosseum',
'⇀Golden Wasteland',
'↩Back'},
nil,'Teleport (Valley of Triumph)')
if sp == nil then
elseif sp == 1 then
setpos(9.345,137.92,-139.4) end
if sp == 2 then
setpos(-29.66,140.98,-143.61) end
if sp == 3 then
setpos(315.05,51.62,-710.348) end
if sp == 4 then
setpos(9.05,137.88,-112.7) end
if sp == 5 then
setpos(9.48,141.64,-198.07) end
if sp == 6 then world() end
end

function gt34()
local sp = gg.choice(
{'Social Area',
'Boat to Treasure Reef',
'Ice Castle OOB',
'⇀Broken Temple',
'⇀Valley of Triumph - Temple',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(-69.89,63.9,-766.759) end
if sp == 2 then
setpos(-51.28,63.4,-821.04) end
if sp == 3 then
setpos(-7,4869,-785) end
if sp == 4 then
setpos(-139.5,50.14,-798) end
if sp == 5 then
setpos(9.3,141.37,-195.549) end
if sp == 6 then world() end
end

function gt35()
local sp = gg.choice(
{'Boat to Forgotten Ark',
'⇀First Krill Area',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(151,0.92,46.77) end
if sp == 2 then
setpos(-93.6,11.89,156.57) end
if sp == 3 then world() end
end

function gt36()
local sp = gg.choice(
{'First krill Area',
'Graveyard',
'Bonfire',
'⇀Crab Fields',
'⇀Battlefield',
'⇀Broken Temple',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(63.9,92.97,268.3) end
if sp == 2 then
setpos(68.96,69.34,8.55) end
if sp == 3 then
setpos(118.185,67.419,-43.994) end
if sp == 4 then
setpos(192.6,68.2,-72) end
if sp == 5 then
setpos(34.44,82.9,-257.28) end
if sp == 6 then
setpos(55.36,92.4,363.17) end
if sp == 7 then world() end
end

function gt37()
local sp = gg.choice(
{'⇀Battlefield',
'⇀Graveyard',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(-347.9,34.68,383.8) end
if sp == 2 then
setpos(-185.96,5.09,502.8) end
if sp == 3 then world() end
end

function gt38()
local sp = gg.choice(
{'⇀Temple',
'⇀Graveyard',
'⇀Crab Fields',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(-288.58,93.2,-404.67) end
if sp == 2 then
setpos(41.82,93,-39.9) end
if sp == 3 then
setpos(58.57,112.54,-263.24) end
if sp == 4 then world() end
end

function gt39()
local sp = gg.choice(
{'Start',
'Elder Room',
'⇀Vault of Knowledge',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(0.02,202.57,80.27) end
if sp == 2 then
setpos(-421.82,11.966,409.744) end
if sp == 3 then
setpos(0.63,207.6,-67.81) end
if sp == 4 then world() end
end

function gt40()
local sp = gg.choice(
{'Enchantment Guide',
'Boat to Broken Temple',
'⇀Wind Paths',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(119.96,113.82,323.53) end
if sp == 2 then
setpos(-54.23,142.8,166.63) end
if sp == 3 then
setpos(-88.67,141.59,428.58) end
if sp == 4 then world() end
end

function gt41()
local sp = gg.choice(
{'Abyss Guide',
'Boat to Social Area',
'⇀Deep Sea',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(86.23,2.19,43.56) end
if sp == 2 then
setpos(209.11,0.84,-6.65) end
if sp == 3 then
setpos(-7.69,-185.9,-9.06) end
if sp == 4 then world() end
end

function gt42()
local sp = gg.choice(
{'Deep Sea',
'Darkness Manta OOB',
'⇀Treasure Reef',
'↩Back'},
nil,'Teleport (Golden Wasteland)')
if sp == nil then
elseif sp == 1 then
setpos(0,-370,0) end
if sp == 2 then
setpos(801.7,0.56,4) end
if sp == 3 then
setpos(0,-150,0) end
if sp == 4 then world() end
end

function gt43()
local sp = gg.choice(
{'Entrance',
'First Level',
'Second Level',
'Third Level',
'⇀Fourth Level',
'⇀Archives',
'⇀Starlight Desert',
'⇀Repository of Refuge',
'↩Back'},
nil,'Teleport (Vault of Knowledge)')
if sp == nil then
elseif sp == 1 then
setpos(0.08,32.32,-93.08) end
if sp == 2 then
setpos(-0.04,40.35,-11.16) end
if sp == 3 then
setpos(11.88,80.64,15.61) end
if sp == 4 then
setpos(-3.7,147.05,-32.2) end
if sp == 5 then
setpos(25,220,-25) end
if sp == 6 then
setpos(-42.93,39,-97.88) end
if sp == 7 then
setpos(48.86,36.42,-80.38) end
if sp == 8 then
setpos(36.48,36,-2.05) end
if sp == 9 then world() end
end

function gt44()
local sp = gg.choice(
{'Fourth Level',
'Fifth Level',
'Summit',
'↩Back'},
nil,'Teleport (Vault of Knowledge)')
if sp == nil then
elseif sp == 1 then
setpos(0,130.2,0) end
if sp == 2 then
setpos(0,223.5,0) end
if sp == 3 then
setpos(0,294.45,0) end
if sp == 4 then world() end
end

function gt45()
local sp = gg.choice(
{'⇀Entrance',
'↩Back'},
nil,'Teleport (Vault of Knowledge)')
if sp == nil then
elseif sp == 1 then
setpos(30.13,541.84,27.51) end
if sp == 2 then world() end
end

function gt46()
local sp = gg.choice(
{'The Rose',
'⇀Starlight Beach',
'⇀Jar Cave',
'⇀Wind Paths',
'⇀Entrance',
'↩Back'},
nil,'Teleport (Vault of Knowledge)')
if sp == nil then
elseif sp == 1 then
setpos(133.23,12,346.86) end
if sp == 2 then
setpos(403.36,4.62,544.05) end
if sp == 3 then
setpos(-79.74,30.18,378.59) end
if sp == 4 then
setpos(240,16.21,932.53) end
if sp == 5 then
setpos(25.15,18,169.44) end
if sp == 6 then world() end
end

function gt47()
local sp = gg.choice(
{'⇀Starlight Desert',
'↩Back'},
nil,'Teleport (Vault of Knowledge)')
if sp == nil then
elseif sp == 1 then
setpos(461.59,8,552.63) end
if sp == 2 then world() end
end

function gt48()
local sp = gg.choice(
{'⇀Starlight Desert',
'↩Back'},
nil,'Teleport (Vault of Knowledge)')
if sp == nil then
elseif sp == 1 then
setpos(-76.48,31.32,380.94) end
if sp == 2 then world() end
end

function gt49()
local sp = gg.choice(
{'Remembrance Guide',
'⇀First Level',
'↩Back'},
nil,'Teleport (Vault of Knowledge)')
if sp == nil then
elseif sp == 1 then
setpos(-0.275,24.3,4.2683) end
if sp == 2 then
setpos(-1.28,28.38,50.07) end
if sp == 3 then world() end
end

function gt50()
local sp = gg.choice(
{'⇀Starlight Desert',
'↩Back'},
nil,'Teleport (Vault of Knowledge)')
if sp == nil then
elseif sp == 1 then
setpos(600.54,54.2,-88.446) end
if sp == 2 then world() end
end

function gt51()
local sp = gg.choice(
{'↩Back'},
nil,'Teleport (Dreams of A Little Friend)')
if sp == nil then
elseif sp == 1 then world() end
end

function gt52()
local sp = gg.choice(
{'Entrance',
'The International Space Station',
'↩Back'},
nil,'Teleport (Office)')
if sp == nil then
elseif sp == 1 then
setpos(4.3,63.3,-14.1) end
if sp == 2 then
setpos(7009.42,6921.2,9078.24) end
if sp == 3 then world() end
end

function gt53()
local sp = gg.choice(
{'↩Back'},
nil,'Teleport (The Cackling Crab)')
if sp == nil then
elseif sp == 1 then world() end
end

function gt54()
local sp = gg.choice(
{'Entrance',
'First Area',
'Winged Light',
'⇀Second Area',
'↩Back'},
nil,'Teleport (Eden)')
if sp == nil then
elseif sp == 1 then
setpos(58.44,136.75,106.04) end
if sp == 2 then
setpos(27.86,141.34,66.94) end
if sp == 3 then
setpos(-3.1,197.15,-21.68) end
if sp == 4 then
setpos(-6.23,198.77,-24.62) end
if sp == 5 then world() end
end

function gt55()
local sp = gg.choice(
{'Second Area',
'Winged Light',
'⇀Eye of Eden',
'⇀First Area',
'↩Back'},
nil,'Teleport (Eden)')
if sp == nil then
elseif sp == 1 then
setpos(-11.46,154.12,36.66) end
if sp == 2 then
setpos(7.58,266.15,-243.92) end
if sp == 3 then
setpos(62.2,273.25,-334.56) end
if sp == 4 then
setpos(-16.13,136.75,80.213) end
if sp == 5 then world() end
end

function gt56()
local sp = gg.choice(
{'↩Back'},
nil,'Teleport (Eden)')
if sp == nil then
elseif sp == 1 then world() end
end

function gt57()
local sp = gg.choice(
{'⇀Second Area',
'↩Back'},
nil,'Teleport (Ascent)')
if sp == nil then
elseif sp == 1 then
setpos(1000,2865,173) end
if sp == 2 then world() end
end

function gt58()
local sp = gg.choice(
{'⇀Orbit',
'↩Back'},
nil,'Teleport (Ascent)')
if sp == nil then
elseif sp == 1 then
setpos(-50,2500,2333) end
if sp == 2 then world() end
end

function gt59()
local sp = gg.choice(
{'↩Back'},
nil,'Teleport (Orbit)')
if sp == nil then
elseif sp == 1 then world() end
end

function gt60()
local sp = gg.choice(
{'↩Back'},
nil,'Teleport (Ending)')
if sp == nil then
elseif sp == 1 then world() end
end

function gt61()
local sp = gg.choice(
{'↩Back'},
nil,'Teleport (The Void of Shattering)')
if sp == nil then
elseif sp == 1 then world() end
end

function gt62()
local sp = gg.choice(
{'↩Back'},
nil,'Teleport (Aurora Concert)')
if sp == nil then
elseif sp == 1 then world() end
end



function teleport()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local t = {}
t[1] = {}
t[1].address = getm
t[1].flags = gg.TYPE_DWORD
t = gg.getValues(t)
if t[1].value == -768833570 then
gt1() end --gg.toast("Home")
if t[1].value == 1649439303 then
gt2() end --gg.toast("Isle of Down")
if t[1].value == 748712866 then
gt3() end --gg.toast("Cave of Prophecies")
if t[1].value == -410824576 then
gt4() end --gg.toast("Trial of Water")
if t[1].value == 1887730855 then
gt5() end --gg.toast("Trial of Earth")
if t[1].value == 2050064391 then
gt6() end --gg.toast("Trial of Air")
if t[1].value == 1241316521 then
gt7() end --gg.toast("Trial of Fire")
if t[1].value == -1817621630 then
gt8() end --gg.toast("Prairie Butterfly Fields")
if t[1].value == -1944435120 then
gt9() end --gg.toast("Prairie Village")
if t[1].value == -1050035699 then
gt10() end --gg.toast("Prairie Cave")
if t[1].value == 312004957 then
gt11() end --gg.toast("Prairie Bird's Nest")
if t[1].value == -1237641587 then
gt12() end --gg.toast("Prairie Sanctuary Islands")
if t[1].value == 1190972738 then
gt13() end --gg.toast("Prairie Temple")
if t[1].value == -1900248111 then
gt14() end --gg.toast("Prairie 8 Player Puzzle")
if t[1].value == 164626931 then
gt15() end --gg.toast("Hidden Forest")
if t[1].value == -1455381650 then
gt16() end --gg.toast("Forest's Brook")
if t[1].value == -1574275404 then
gt17() end --gg.toast("Elevated Clearing")
if t[1].value == -161371567 then
gt18() end --gg.toast("RainForest Cave")
if t[1].value == -2135324521 then
gt19() end --gg.toast("RainForest Boneyard")
if t[1].value == 128844448 then
gt20() end --gg.toast("RainForest Temple")
if t[1].value == -977706424 then
gt21() end --gg.toast("RainForest Treehouse")
if t[1].value == 2081768701 then
gt22() end --gg.toast("Wind Paths")
if t[1].value == 1638008359 then
gt23() end --gg.toast("Velley of Triumph")
if t[1].value == -2115418256 then
gt24() end --gg.toast("Velley Citadel")
if t[1].value == 1844499196 then
gt25() end --gg.toast("Fly Race")
if t[1].value == 571720490 then
gt26() end --gg.toast("Race")
if t[1].value == -1934656620 then
gt27() end --gg.toast("Race End")
if t[1].value == 649101397 then
gt28() end --gg.toast("Hermit Valley")
if t[1].value == 1759178769 then
gt29() end --gg.toast("Dream")
if t[1].value == 1612139937 then
gt30() end --gg.toast("Dream Theater")
if t[1].value == 1323747701 then
gt31() end --gg.toast("Music Shop")
if t[1].value == 263580627 then
gt32() end --gg.toast("Colosseum")
if t[1].value == 507487826 then
gt33() end --gg.toast("Valley Temple")
if t[1].value == 817373972 then
gt34() end --gg.toast("Wasteland Social Area")
if t[1].value == 1147491976 then
gt35() end --gg.toast("Wasteland Broken Temple")
if t[1].value == 864432821 then
gt36() end --gg.toast("Wasteland Graveyard")
if t[1].value == -1644045427 then
gt37() end --gg.toast("Wasteland Crab Fields")
if t[1].value == 1597085778 then
gt38() end --gg.toast("Wasteland Battlefield")
if t[1].value == -136010643 then
gt39() end --gg.toast("Wasteland Temple")
if t[1].value == 170656205 then
gt40() end --gg.toast("Wasteland Forgotten Ark")
if t[1].value == -224855659 then
gt41() end --gg.toast("Wasteland Treasure Reef")
if t[1].value == -778919174 then
gt42() end --gg.toast("Wasteland Deep Sea")
if t[1].value == -1936060159 then
gt43() end --gg.toast("Vault 1F")
if t[1].value == -1987505335 then
gt44() end --gg.toast("Vault 2F")
if t[1].value == 2518601 then
gt45() end --gg.toast("Vault Archives")
if t[1].value == 2060214456 then
gt46() end --gg.toast("Vault Desert")
if t[1].value == -1243448568 then
gt47() end --gg.toast("Vault Beach")
if t[1].value == -1036005362 then
gt48() end --gg.toast("Vault cave")
if t[1].value == -1395176541 then
gt49() end --gg.toast("Vault shelter")
if t[1].value == 214074919 then
gt50() end --gg.toast("Infinite Desert")
if t[1].value == -1470196160 then
gt51() end --gg.toast("Dreams of A Little Friend")
if t[1].value == 295816905 then
gt52() end --gg.toast("office")
if t[1].value == -1212213378 then
gt53() end --gg.toast("The Cackling Crab")
if t[1].value == -1184245578 then
gt54() end --gg.toast("Eden1")
if t[1].value == 1705189686 then
gt55() end --gg.toast("Eden2")
if t[1].value == -815180717 then
gt56() end --gg.toast("Eye of Eden")
if t[1].value == -857831781 then
gt57() end --gg.toast("Ascent1")
if t[1].value == 567986524 then
gt58() end --gg.toast("Ascent2")
if t[1].value == -2043682661 then
gt59() end --gg.toast("Orbit")
if t[1].value == 261807733 then
gt60() end --gg.toast("Ending")
if t[1].value == -366570631 then
gt61() end --gg.toast("The Void of Shattering")
if t[1].value == 47024056 then
gt62() end --gg.toast("Concert") end
if t[1].value == -283581985 then
gt62() end --gg.toast("") end
if t[1].value == 1661095040 then
gt62() end --gg.toast("") end
if t[1].value == 2093785354 then
gt62() end --gg.toast("") end
if t[1].value == -1515235910 then
gt62() end --gg.toast("") end
if t[1].value == -764938834 then
gt62() end --gg.toast("") end
if t[1].value == 0 then
gg.toast("") end
if t[1].value == 0 then
gg.toast("") end
end
sys = -1
end
end
--------------------------------------
function fps_c()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
f1 = nsl
f2 = nsl
f3 = nsl
f4 = nsl
f5 = nsl
f6 = nsl
f7 = nsl
f8 = nsl
f9 = nsl
local t = {}
t[1] = {}
t[1].address = fps
t[1].flags = 16
t = gg.getValues(t)
local v = t[1].value
if v == 144.0 then f1 = sl end
if v == 120.0 then f2 = sl end
if v == 90.0 then f3 = sl end
if v == 60.0 then f4 = sl end
if v == 50.0 then f5 = sl end
if v == 40.0 then f6 = sl end
if v == 30.0 then f7 = sl end
if v == 20.0 then f8 = sl end
if v == 10.0 then f9 = sl end
local sp = gg.choice(
{f1..'144',
f2..'120',
f3..'90',
f4..'60',
f5..'50',
f6..'40',
f7..'30',
f8..'20',
f9..'10',
'↩Back'},
nil,'FPS')
if sp == nil then
elseif sp == 1 then setfps(144) end
if sp == 2 then setfps(120) end
if sp == 3 then setfps(90) end
if sp == 4 then setfps(60) end
if sp == 5 then setfps(50) end
if sp == 6 then setfps(40) end
if sp == 7 then setfps(30) end
if sp == 8 then setfps(20) end
if sp == 9 then setfps(10) end
if sp == 10 then dev_m() end
end
sys = -1
end
end


function ss()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
s1 = nsl
s2 = nsl
s3 = nsl
s4 = nsl
local t = {}
t[1] = {}
t[1].address = sx
t[1].flags = 16
t = gg.getValues(t)
if t[1].value == sx1v then s1 = sl end
if t[1].value == sx2v then s2 = sl end
if t[1].value == sx3v then s3 = sl end
if t[1].value == sx4v then s4 = sl end
local sp = gg.choice(
{s1..sx1..'x'..sy1,
s2..sx2..'x'..sy2,
s3..sx3..'x'..sy3,
s4..sx4..'x'..sy4,
'↩Back'},
nil,'Screenshot Resolution')
if sp == nil then
elseif sp == 1 then setss(sx1,sy1) end
if sp == 2 then setss(sx2,sy2) end
if sp == 3 then setss(sx3,sy3) end
if sp == 4 then setss(sx4,sy4) end
if sp == 5 then graphic() end
end
sys = -1
end
end

function dev_m()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local sp = gg.choice(
{'FPS',
pf..'pose freeze',
'getmap',
'getpos',
'↩Back'},
nil,'Dev')
if sp == nil then
elseif sp == 1 then fps_c() end
if sp == 2 then
if pf == off then
local t = {}
t[1] = {}
t[1].address = pose
t[1].flags = 4
t = gg.getValues(t)
p_v = t[1].value
frzvalue(pose,4,p_v)
pf = on
else
ufrz(pose)
pf = off
end
end
if sp == 3 then getmap_v() end
if sp == 4 then getpos_v() end
if sp == 5 then setting() end
end
sys = -1
end
end

function dev_s()
if dev == 1 then dev_m() end
if dev == 0 then
local i = gg.prompt({'Password'})
if i ~= nil then
local v = i[1]
if v == '6X9' then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('808,727,840',gg.TYPE_QWORD)
if gg.getResultsCount() == 0 then
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber('808,727,840',gg.TYPE_QWORD)
end
pl = gg.getResults(2)
addr3 = pl[2].address
fps = addr3 + 0x10C --Fps
gg.clearResults()
dev = 1
dev_m()
else
gg.toast("Password is wrong")
end
end
end
end

function setting()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local sp = gg.choice(
{--'FPS',
--'Screenshot Quality',
'Dev',
'↩Back'},
nil,'Setting')
if sp == nil then
elseif sp == 1 then dev_s() end
if sp == 2 then suimenu() end
end
sys = -1
end
end
--------------------------------------
function winglv()
local d = gg.prompt({"Winged lights"},{0},{"number"})
if d == nil then suimenutf()
end
setvalue(wingl,4,d[1])
end
--------------------------------------
function suimenutf()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suitf = gg.choice(
{'Props',
'Custom Wing Level',
'↩Back'},
nil,"Test Function")
if suitf == nil then

elseif suitf == 1 then suimenupc()
end

if suitf == 2 then winglv()
end

if suitf == 3 then suimenu()
end
end

sys = -1
end
end

--------------------------------------
function alert1()
gg.copyText("t.me/skysui")
gg.alert("t.me/skysui\n\nIf they are uploaded outside this channel, they are all unauthorized uploads")
about()
end
--------------------------------------
function changelog()
if sky == 0 then
gg.alert("Update 3.1.7\n・Change menu structure\n・Enhanced Unlock Friendship (Can see chat and use warp only works for friends)\n・Removed Glowing Body and Flashing Heart\n・Unlimited Fireworks enabled by default\n + Closet\n + Invisible Cape\n + Collect Winged Light\n + Give Winged Light to Statues\n + Light Up to Players\n\nUpdate 3.1.6\n + Teleport\n + Setting\n + Screenshot Quality\n\nUpdate 3.1.5\n 0.21.1 (217644)\n\nUpdate 3.1.4\n 0.21.0 (215710)\n\nUpdate 3.1.3\n・Fixed alert text for package name and version check function\n\nUpdate 3.1.2\n・Optimize load\n・Added function to check package name and version\n\nUpdate 3.1.1\n・Adjust spell\n\nUpdate 3.1.0\n・Improved so that the mod state is reacquired when the script is restarted, and the on/off and selection are not reset\n・Added almost all spels\n・Improved to be able to check the spell in use\n\nUpdate 3.0.9\n・Adjust spell\n・Improved loading speed on android11+ devices\n\nUpdate 3.0.8\n・Add sparkle when using spell (selectable)\n\nUpdate 3.0.7\n・Fixed an issue where the Aurora Feather function could not be used in certain conditions\n\nUpdate 3.0.6\n・Fixed issues with exit\n\nUpdate 3.0.5\n + Spell\n + Wing Level (Removed Maximum Wing Level)\n + Glowing body\n\nUpdate 3.0.4\n・Optimized loading (improved speed)\n\nUpdate 3.0.3\n・Fixed loading issues on android11+ devices\n\nUpdate 3.0.2\n + Test Function\n\nUpdate 3.0.1\n + Changelog\n\nUpdate 3.0.0\n・Improved stability\n\nUpdate 1.9.9\n・Solved the problem that even if disable Burn Plant, it will not return to the original value and will be burned.\n\nUpdate 1.9.8\n・Change loop processing (Show previous menu)\n・Quick Home enabled by default\n + Jet Mode\n\nUpdate 1.9.7\n・Selection menu visualization\n\nUpdate 1.9.6\n + Hack Season Quests\n + See Chat\n + Quick Home\n + iOS Headphone\n + Unlimited Oxygen\n + Flashing Heart\n + About script\n\nUpdate 1.9.3\n 0.20.5 (212649)")
about()
end

if sky == 1 then
gg.alert("Update 1.2.4\n・Change menu structure\n・Fixed Unlock Friendship\n・Enhanced Unlock Friendship (Can see chat and use warp only works for friends)\n・Removed Glowing Body and Flashing Heart\n・Unlimited Fireworks enabled by default\n + Closet\n + Invisible Cape\n + Collect Winged Light\n + Give Winged Light to Statues\n + Light Up to Players\n\nUpdate 1.2.3\n 0.21.5 (219320)\n\nUpdate 1.2.2\n 0.21.5 (218965)\n\nUpdate 1.2.1\n 0.21.5 (218732)\n\nUpdate 1.2.0\n 0.21.5 (218295)\n\nUpdate 1.1.9\n 0.21.5 (218015)\n\nUpdate 1.1.8\n 0.21.5 (217740)\n + Teleport\n + Setting\n + Screenshot Quality\n\nUpdate 1.1.7\n・Fixed alert text for package name and version check function\n\nUpdate 1.1.6\n・Optimize load\n・Added function to check package name and version\n\nUpdate 1.1.5\n 0.21.0 (215709)\n\nUpdate 1.1.4\n・Adjust spell\n\nUpdate 1.1.3\n 0.21.0 (215499)\n・Improved so that the mod state is reacquired when the script is restarted, and the on/off and selection are not reset\n・Added almost all spels\n・Improved to be able to check the spell in use\n\nUpdate 1.1.2\n・Adjust spell\n・Improved loading speed on android11+ devices\n\nUpdate 1.1.1\n・Adjust spell\n\nUpdate 1.1.0\n 0.21.0 (214988)\n + Spell\n + Prop\n + Wing Level (Removed Maximum Wing Level)\n + Glowing body\n\nUpdate 1.0.4\n 0.21.0 (214367)\n\nUpdate 1.0.3\n 0.21.0 (214151)\n\nUpdate 1.0.2\n 0.21.0 (213921)\n\nUpdate 1.0.1\n + Changelog\n\nUpdate 1.0\n 0.21.0 (213670)")
about()
end
end
--------------------------------------
function about()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local suiab = gg.choice(
{'Information',
'Changelog',
'Telegram',
'↩Back'},
nil,"ⓘ About Script")
if suiab == nil then

elseif suiab == 1 then
if sky == 0 then gg.alert(live_alert) end
if sky == 1 then gg.alert(beta_alert) end
about()
end

if suiab == 2 then changelog()
end

if suiab == 3 then
alert = gg.alert('t.me/skysui\n\nIf they are uploaded outside this channel, they are all unauthorized uploads','OK','Copy link')
if alert ~= 0 then
if alert == 1 then
about()
elseif alert == 2 then
gg.copyText("t.me/skysui")
end
else
end
end

if suiab == 4 then suimenu()
end
end

sys = -1
end
end
--------------------------------------
gg.setVisible(false)

live_alert = "SkyCOTL Sui Script 3.1.7\n\ncom.tgc.sky.android 0.21.1 (217644)"
beta_alert = "SkyCOTL beta Sui Script 1.2.4\n\ncom.tgc.sky.android.test.gold 0.21.5 (219320)"

local p = gg.getTargetInfo()
if p == nil then
gg.alert("Package name mismatch. The script exits.\nPlease select the process again.")
os.exit()
else
if p.packageName == 'com.tgc.sky.android' then
sky = 0
gg.alert(live_alert)
xa_live()
else
if p.packageName == 'com.tgc.sky.android.test.gold' then
sky = 1
gg.alert(beta_alert)
xa_beta()
else
gg.alert("Package name mismatch. The script exits.\nPlease select the process again.")
os.exit()
end
end
end

if sky == 0 then
local v = gg.getTargetInfo()
if v.versionCode == 217644 then
else
gg.alert("Version mismatch. The script exits.")
os.exit()
end
end

if sky == 1 then
local v = gg.getTargetInfo()
if v.versionCode == 219320 then
else
gg.alert("Version mismatch. The script exits.")
os.exit()
end
end




so = gg.getRangesList('libBootloader.so')[1].start

gg.clearList()
gg.clearResults()

setvalue(so+qh,16,8.89715548e-21)
setvalue(so+uf,16,1.8629458e-9)
setvalue(so+qh,16,8.89715548e-21)
setvalue(so+uf,16,1.8629458e-9)
--suio1 = on
--gg.setVisible(false)
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('32,481,138,503,150,965',gg.TYPE_QWORD)
if gg.getResultsCount() == 0 then
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber('32,481,138,503,150,965',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,1)
end
pl = gg.getResults(1)
addr = pl[1].address
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('7,020,670,180,468,457,475',gg.TYPE_QWORD)
if gg.getResultsCount() == 0 then
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber('7,020,670,180,468,457,475',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,1)
end
pl = gg.getResults(1)
addr2 = pl[1].address
gg.clearResults()

function ca_live()
sh = addr + 0x63600 --人物発光
sh2 = sh + 0x4 --人物発光
pants = addr + 0x645BC --clothes
hair = addr + 0x645B4 --clothes
mask = addr + 0x645B8 --clothes
neck = addr + 0x645BC --clothes
prop = addr + 0x645CC --clothes
wingl = addr + 0x3A8E0 --winged light
mfdz = addr + 0x6E7E8 --spell
sps = 0x2660 --spell trigger
getm = addr + 0x62500 --getmap
px = addr + 0x5D248 --pos x
py = addr + 0x5D24C --pos y
pz = addr + 0x5D250 --pos z
pose = addr + 0x606A0
ic = addr + 0x6260C --Invisible Cape
cl = addr + 0x1269E00 --Open Closet
gs = addr2 - 0x18C
rx = addr2 - 0x298FC
ry = addr2 - 0x298F8
sx = addr2 - 0x1B31E0
sy = addr2 - 0x1B31DC
qm = addr2 - 0x214
device = addr2 - 0x1B31BC
end

function ca_beta()
sh = addr + 0x659D0 --人物発光
sh2 = sh + 0x4 --人物発光
--slp = addr - 0xB7B1B78 --fake sleep
--slp2 = addr - 0xB7B1B84 --fake sleep
--pants = addr + 0x6441C --clothes
--hair = addr + 0x64424 --clothes
--mask = addr + 0x64428 --clothes
--neck = addr + 0x6442C --clothes
prop = addr + 0x669CC --clothes
wingl = addr + 0x3C900 --winged light
mfdz = addr + 0x70A58 --spell
sps = 0x2700 --spell trigger
px = addr + 0x5F5A8 --pos
py = px + 0x4
pz = px + 0x8
getm = addr + 0x64880
ic = addr + 0x6499C --Invisible Cape
cl = addr + 0x5D1B50 --Open Closet
gs = addr2 - 0x18C
rx = addr2 - 0x2998C
ry = addr2 - 0x29988
sx = addr2 - 0x1FF420
sy = addr2 - 0x1FF41C
end

if sky == 0 then ca_live() end
if sky == 1 then ca_beta() end

dev = 0

--gg.setVisible(false)
setspf0()
getsp0()
setspf1()
setspf2()
setspf3()

getss()

get_va()
get_em()
get_dm()
get_jm()
get_cu()
get_eu()
get_fu()
get_hq()
get_bc()
get_bp()
get_aw()
get_sof()
get_sch()
get_sj()
get_fd()
get_rw()
get_rb()
get_rc()
get_ih()
get_uf()
get_uo()
get_ik()
get_fh()
get_ais()
get_sh()
get_ic()

gg.toast("Loaded")

function suimenu()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local sui = gg.choice(
{sui1..'Alone Connect to Server',
'Unlock',
'World',
'Avatar',
'Player',
'Graphic',
'Setting',
'ⓘ About Script',
'↼Exit'},
nil,"SkySui")
if sui == nil then
elseif sui == 1 then
if sui1 == on then
sui1 = off
else
sui1 = on 
end
if sui1 == on then
setvalue(so+ais,16,-9.01087389e12)
gg.toast("Enabled - Alone Connect to Server")
setvalue(so+ais,16,-9.01087389e12)
else
setvalue(so+ais,16,4.76853984e-7)
gg.toast("Disabled - Alone Connect to Server")
setvalue(so+ais,16,4.76853984e-7)
end
elseif sui == 2 then unlock() end
if sui == 3 then world() end
if sui == 4 then avatar() end
if sui == 5 then players() end
if sui == 6 then graphic() end
if sui == 7 then setting() end
if sui == 8 then about() end
if sui == 9 then
setvalue(so+qh,16,8.61260535e-21)
setvalue(so+uf,16,6.33927605e29)
setvalue(so+qh,16,8.61260535e-21)
setvalue(so+uf,16,6.33927605e29)
gg.toast("Exit")
gg.clearList()
gg.clearResults()
os.exit()
end
end
sys = -1
end
end

function suimenu0()
while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
local sui = gg.choice(
{sui1..'Alone Connect to Server',
'Unlock',
'Wing',
'Energy',
'Teleport',
'Wax',
'Power',
'Player',
'World',
'Graphic',
'Prop',
'Spell',
'Others',
'Setting',
'ⓘ About Script',
'↼Exit'},
nil,"by Sui")
if sui == nil then

elseif sui == 1 then
if sui1 == on then
sui1 = off
else
sui1 = on 
end
if sui1 == on then
setvalue(so+ais,16,-9.01087389e12)
gg.toast("Enabled - Alone Connect to Server")
setvalue(so+ais,16,-9.01087389e12)
else
setvalue(so+ais,16,4.76853984e-7)
gg.toast("Disabled - Alone Connect to Server")
setvalue(so+ais,16,4.76853984e-7)
end
elseif  sui == 2 then suimenuu()
end
if sui == 3 then suimenuw()
end
if sui == 4 then suimenuem()
end
if sui == 5 then teleport()
end
if sui == 6 then suimenuc()
end
if sui == 7 then suimenua()
end
if sui == 8 then suimenup()
end
if sui == 9 then suimenuwo()
end
if sui == 10 then suimenuv()
end
if sui == 99 then suimenuh()
end
if sui == 11 then suimenupc()
end
if sui == 12 then spells()
end
if sui == 13 then suimenuo()
end
if sui == 14 then setting()
end
if sui == 15 then about()
end
if sui == 16 then
setvalue(so+qh,16,8.61260535e-21)
setvalue(so+uf,16,6.33927605e29)
setvalue(so+qh,16,8.61260535e-21)
setvalue(so+uf,16,6.33927605e29)
gg.clearList()
gg.clearResults()
os.exit()
end
end
sys = -1
end
end

while true do
if gg.isVisible(true) then
sys = 1
gg.setVisible(false)
end
if sys == 1 then
suimenu()
end
end

