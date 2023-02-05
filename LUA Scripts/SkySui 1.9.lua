

function setvalue(address, flags, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = address
  tt[1].flags = flags
  tt[1].value = value
  gg.setValues(tt)
end
local on = "● "
local off = "○ "
suiu1 = off
suiu2 = off
suiu3 = off
function suimenuu()
  local suiu = gg.choice({
    suiu1 .. "Skin Unlock",
    suiu2 .. "Emote level Unlock",
    suiu3 .. "Friendship Unlock",
    "↩Back"
  }, nil, "Unlock")
  if suiu == nil then
  elseif suiu == 1 then
    if suiu1 == on then
      suiu1 = off
    else
      suiu1 = on
    end
    if suiu1 == on then
      gg.alert("Invisible to other players")
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 4173492
      setvalue(so + py, 16, 274878956000)
      gg.toast("Enabled - Skin Unlock")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 4173492
      setvalue(so + py, 16, 6.57735814E-23)
      gg.toast("Disable - Skin Unlock")
    end
  elseif suiu == 2 then
    if suiu2 == on then
      suiu2 = off
    else
      suiu2 = on
    end
    if suiu2 == on then
      gg.alert("Skin Unlock must be enabled")
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 11195264
      setvalue(so + py, 16, 274878956000)
      gg.toast("Enabled - Emote level Unlock")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 11195264
      setvalue(so + py, 16, -1.8326764E-4)
      gg.toast("Disable - Emote level Unlock")
    end
  elseif suiu == 3 then
    if suiu3 == on then
      suiu3 = off
    else
      suiu3 = on
    end
    if suiu3 == on then
      gg.alert("Use warp ×  See chat ×")
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 8865744
      setvalue(so + py, 16, 274878956000)
      gg.toast("Enabled - Friendship Unlock 1")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 8865744
      setvalue(so + py, 16, 1.19210767E-7)
      gg.toast("Disable - Friendship Unlock")
    end
  end
  if suiu == 4 then
    suimenu()
  end
end
function suimenuwm()
  local suiwm = gg.choice({
    "Full",
    "Empty",
    "Normal",
    "↩Back"
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
  if suiwm == 4 then
    suimenu()
  end
end
local on = "● "
local off = "○ "
suiv1 = off
function suimenuv()
  local suiv = gg.choice({
    suiv1 .. "Amazing View",
    "Night Mode",
    "↩Back"
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
  elseif suiv == 3 then
    suimenu()
  end
  if suiv == 2 then
    suimenunm()
  end
end
function suimenunm()
  local suinm = gg.choice({
    "Dark",
    "More Dark",
    "Off",
    "↩Back"
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
  if suinm == 4 then
    suimenuv()
  end
end
local on = "● "
local off = "○ "
suiw1 = off
function suimenuw()
  local suiw = gg.choice({
    suiw1 .. "Maximum",
    "↩Back"
  }, nil, "Wing")
  if suiw == nil then
  elseif suiw == 1 then
    if suiw1 == on then
      suiw1 = off
    else
      suiw1 = on
    end
    if suiw1 == on then
      gg.alert("Invisible to other players")
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159544
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159548
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159552
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159556
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159560
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159564
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159568
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159572
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159576
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159580
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159584
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159588
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159592
      setvalue(so + py, 4, 0)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159596
      setvalue(so + py, 4, 0)
      gg.toast("Enabled - Maximum Wing Level")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159544
      setvalue(so + py, 4, 1)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159548
      setvalue(so + py, 4, 2)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159552
      setvalue(so + py, 4, 5)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159556
      setvalue(so + py, 4, 10)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159560
      setvalue(so + py, 4, 20)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159564
      setvalue(so + py, 4, 35)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159568
      setvalue(so + py, 4, 55)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159572
      setvalue(so + py, 4, 75)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159576
      setvalue(so + py, 4, 100)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159580
      setvalue(so + py, 4, 120)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159584
      setvalue(so + py, 4, 150)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159588
      setvalue(so + py, 4, 200)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159592
      setvalue(so + py, 4, 250)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19159596
      setvalue(so + py, 4, 300)
      gg.toast("Disable - Maximum Wing Level")
    end
  end
  if suiw == 2 then
    suimenu()
  end
end
local on = "● "
local off = "○ "
suic1 = off
suic2 = off
suic3 = off
function suimenuc()
  local suic = gg.choice({
    suic1 .. "Candle Born",
    suic2 .. "Flower Born",
    suic3 .. "Wax Absord",
    "↩Back"
  }, nil, "Wax")
  if suic == nil then
  elseif suic == 1 then
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
  elseif suic == 2 then
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
  elseif suic == 3 then
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
  if suic == 4 then
    suimenu()
  end
end
local on = "● "
local off = "○ "
suia1 = off
suia2 = off
function suimenua()
  local suia = gg.choice({
    suia1 .. "Strong Jump",
    suia2 .. "Fast Dive Speed",
    "↩Back"
  }, nil, "Avatar")
  if suia == nil then
  elseif suia == 1 then
    if suia1 == on then
      suia1 = off
    else
      suia1 = on
    end
    if suia1 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 10116444
      setvalue(so + py, 16, 8.60598709E-21)
      gg.toast("Enabled - Strong Jump")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 10116444
      setvalue(so + py, 16, 8.9153793E-21)
      gg.toast("Disable - Strong Jump")
    end
  elseif suia == 2 then
    if suia2 == on then
      suia2 = off
    else
      suia2 = on
    end
    if suia2 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 10155388
      setvalue(so + py, 16, 8.71186621E-21)
      gg.toast("Enabled - Fast Dive Speed")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 10155388
      setvalue(so + py, 16, -0.04694215581)
      gg.toast("Disable - Fast Dive Speed")
    end
  end
  if suia == 3 then
    suimenu()
  end
end
local on = "● "
local off = "○ "
suip1 = off
function suimenup()
  local suip = gg.choice({
    suip1 .. "See Outfit",
    "↩Back"
  }, nil, "Player")
  if suip == nil then
  elseif suip == 1 then
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
  if suip == 2 then
    suimenu()
  end
end
local on = "● "
local off = "○ "
suiwo1 = off
suiwo2 = off
function suimenuwo()
  local suiwo = gg.choice({
    suiwo1 .. "Remove Wind Wall",
    suiwo2 .. "Remove Barrier",
    "↩Back"
  }, nil, "World")
  if suiwo == nil then
  elseif suiwo == 1 then
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
  elseif suiwo == 2 then
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
  if suiwo == 3 then
    suimenu()
  end
end
local on = "● "
local off = "○ "
suio1 = off
suio2 = off
function suimenuo()
  local suio = gg.choice({
    suio1 .. "Unlimited Fireworks",
    suio2 .. "Immune Krill Attack",
    "↩Back"
  }, nil, "Others")
  if suio == nil then
  elseif suio == 1 then
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
  elseif suio == 2 then
    if suio2 == on then
      suio2 = off
    else
      suio2 = on
    end
    if suio2 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 5497196
      setvalue(so + py, 16, 274877907000)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 5497200
      setvalue(so + py, 16, -61301799800000)
      gg.toast("Enabled - Immune krill attack")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 5497196
      setvalue(so + py, 16, -1.27424102E34)
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 5497200
      setvalue(so + py, 16, -2.87131023E-14)
      gg.toast("Disable - Immune krill attack")
    end
  end
  if suio == 3 then
    suimenu()
  end
end
local on = "● "
local off = "○ "
suih1 = off
function suimenuh()
  local suih = gg.choice({
    suih1 .. "Kizuna AI Voice",
    "↩Back"
  }, nil, "Honk")
  if suih == nil then
  elseif suih == 1 then
    if suih1 == on then
      suih1 = off
    else
      suih1 = on
    end
    if suih1 == on then
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19959532
      setvalue(so + py, 16, 9.66620725E-39)
      gg.toast("Enabled - Kizuna AI Voice")
    else
      so = gg.getRangesList("libBootloader.so")[1].start
      py = 19959532
      setvalue(so + py, 16, 2.70671165E23)
      gg.toast("Disable - Kizuna AI Voice")
    end
  end
  if suih == 2 then
    suimenu()
  end
end
gg.alert("SkyCOTL Sui Script 1.9.2")
local on = "○ Off"
local off = "● On"
sui1 = off
function suimenu()
  local sui = gg.choice({
    sui1 .. "line",
    "Unlock",
    "Wing",
    "Energy",
    "Wax",
    "Avatar",
    "Player",
    "World",
    "View",
    "Others",
    "↼Exit"
  }, nil, "by Sui")
  if sui == nil then
  elseif sui == 1 then
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
  elseif sui == 2 then
    suimenuu()
  end
  if sui == 3 then
    suimenuw()
  end
  if sui == 4 then
    suimenuwm()
  end
  if sui == 5 then
    suimenuc()
  end
  if sui == 6 then
    suimenua()
  end
  if sui == 7 then
    suimenup()
  end
  if sui == 8 then
    suimenuwo()
  end
  if sui == 9 then
    suimenuv()
  end
  if sui == 10 then
    suimenuo()
  end
  if sui == 11 then
    os.exit()
  end
end
gg.isVisible(true)
while true do
  if gg.isVisible() then
    gg.setVisible(false)
    suimenu()
  else
    gg.sleep(100)
  end
end



