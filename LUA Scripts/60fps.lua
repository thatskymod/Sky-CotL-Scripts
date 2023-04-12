function frzvalue(address, flags, value)
local tt = {}
tt[1] = {}
tt[1].address = address
tt[1].flags = flags
tt[1].value = value
tt[1].freeze = true
gg.addListItems(tt)
end
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('808,727,840',gg.TYPE_QWORD)
if gg.getResultsCount() == 0 then
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber('808,727,840',gg.TYPE_QWORD)
end
pl = gg.getResults(2)
addr = pl[2].address
frzvalue(addr+0x10C,16,60)
gg.clearResults()
