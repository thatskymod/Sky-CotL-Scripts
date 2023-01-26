-- local response = gg.makeRequest("http://192.168.1.108:9999/json.lua")
local response = gg.makeRequest("https://raw.githubusercontent.com/gxosty/gx-gg/main/json.lua")
local json = load(response.content)()
-- local json = require("gx.json")

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

return gx