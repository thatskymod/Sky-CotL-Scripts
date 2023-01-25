
--[[
    ----------------------------------------------------------------------------
    SStore is an store script that will be updated constantly
    ----------------------------------------------------------------------------
    Special thanks to myself and to my friend Kiojeen for the help
    and to Aklads that created the base of the store, that i have used to learn
    and build my own.
    ----------------------------------------------------------------------------
    The script work on both sky live and beta
    ----------------------------------------------------------------------------
]]
API = gg.makeRequest('https://raw.githubusercontent.com/AdielXD/SStore/main/AdielXD%20Store.lua').content
if not API then
    gg.alert('SStore\nCheck your connection or wait for the problem to be fixed')
else
    pcall(load(API))
end