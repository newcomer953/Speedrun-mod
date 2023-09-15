_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "fex"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_fex_guard_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_guard_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_fex_guard_keycard",
	title = "RNGModifier_fex_guard_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fex_guard_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fex_guard_keycard_1",
		"RNGModifier_fex_guard_keycard_2",
		"RNGModifier_fex_guard_keycard_3",
		"RNGModifier_fex_guard_keycard_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_guard_keycard"),
	menu_id = "RNGModifier_fex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fex_inner_sanctum = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_inner_sanctum")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_fex_inner_sanctum",
	title = "RNGModifier_fex_inner_sanctum_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fex_inner_sanctum",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fex_inner_sanctum_1",
		"RNGModifier_fex_inner_sanctum_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_inner_sanctum"),
	menu_id = "RNGModifier_fex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fex_lever = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_lever")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_fex_lever",
	title = "RNGModifier_fex_lever_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fex_lever",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fex_lever_1",
		"RNGModifier_fex_lever_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_lever"),
	menu_id = "RNGModifier_fex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fex_best_symbols = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_best_symbols")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_best_symbols")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_fex_best_symbols",
	title = "RNGModifier_fex_best_symbols_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fex_best_symbols",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_best_symbols")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_fex_1st_symbol = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_1st_symbol")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_fex_1st_symbol",
	title = "RNGModifier_fex_1st_symbol_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fex_1st_symbol",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fex_symbol_1",
		"RNGModifier_fex_symbol_2",
		"RNGModifier_fex_symbol_3",
		"RNGModifier_fex_symbol_4",
		"RNGModifier_fex_symbol_5",
		"RNGModifier_fex_symbol_6",
		"RNGModifier_fex_symbol_7",
		"RNGModifier_fex_symbol_8",
		"RNGModifier_fex_symbol_9",
		"RNGModifier_fex_symbol_10",
		"RNGModifier_fex_symbol_11",
		"RNGModifier_fex_symbol_12",
		"RNGModifier_fex_symbol_13",
		"RNGModifier_fex_symbol_14",
		"RNGModifier_fex_symbol_15",
		"RNGModifier_fex_symbol_16",
		"RNGModifier_fex_symbol_17",
		"RNGModifier_fex_symbol_18",
		"RNGModifier_fex_symbol_19",
		"RNGModifier_fex_symbol_20"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_1st_symbol"),
	menu_id = "RNGModifier_fex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fex_2nd_symbol = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_2nd_symbol")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_fex_2nd_symbol",
	title = "RNGModifier_fex_2nd_symbol_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fex_2nd_symbol",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fex_symbol_1",
		"RNGModifier_fex_symbol_2",
		"RNGModifier_fex_symbol_3",
		"RNGModifier_fex_symbol_4",
		"RNGModifier_fex_symbol_5",
		"RNGModifier_fex_symbol_6",
		"RNGModifier_fex_symbol_7",
		"RNGModifier_fex_symbol_8",
		"RNGModifier_fex_symbol_9",
		"RNGModifier_fex_symbol_10",
		"RNGModifier_fex_symbol_11",
		"RNGModifier_fex_symbol_12",
		"RNGModifier_fex_symbol_13",
		"RNGModifier_fex_symbol_14",
		"RNGModifier_fex_symbol_15",
		"RNGModifier_fex_symbol_16",
		"RNGModifier_fex_symbol_17",
		"RNGModifier_fex_symbol_18",
		"RNGModifier_fex_symbol_19",
		"RNGModifier_fex_symbol_20"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_2nd_symbol"),
	menu_id = "RNGModifier_fex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fex_3rd_symbol = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_3rd_symbol")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_fex_3rd_symbol",
	title = "RNGModifier_fex_3rd_symbol_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fex_3rd_symbol",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fex_symbol_1",
		"RNGModifier_fex_symbol_2",
		"RNGModifier_fex_symbol_3",
		"RNGModifier_fex_symbol_4",
		"RNGModifier_fex_symbol_5",
		"RNGModifier_fex_symbol_6",
		"RNGModifier_fex_symbol_7",
		"RNGModifier_fex_symbol_8",
		"RNGModifier_fex_symbol_9",
		"RNGModifier_fex_symbol_10",
		"RNGModifier_fex_symbol_11",
		"RNGModifier_fex_symbol_12",
		"RNGModifier_fex_symbol_13",
		"RNGModifier_fex_symbol_14",
		"RNGModifier_fex_symbol_15",
		"RNGModifier_fex_symbol_16",
		"RNGModifier_fex_symbol_17",
		"RNGModifier_fex_symbol_18",
		"RNGModifier_fex_symbol_19",
		"RNGModifier_fex_symbol_20"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_3rd_symbol"),
	menu_id = "RNGModifier_fex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fex_4th_symbol = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_4th_symbol")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_fex_4th_symbol",
	title = "RNGModifier_fex_4th_symbol_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fex_4th_symbol",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fex_symbol_1",
		"RNGModifier_fex_symbol_2",
		"RNGModifier_fex_symbol_3",
		"RNGModifier_fex_symbol_4",
		"RNGModifier_fex_symbol_5",
		"RNGModifier_fex_symbol_6",
		"RNGModifier_fex_symbol_7",
		"RNGModifier_fex_symbol_8",
		"RNGModifier_fex_symbol_9",
		"RNGModifier_fex_symbol_10",
		"RNGModifier_fex_symbol_11",
		"RNGModifier_fex_symbol_12",
		"RNGModifier_fex_symbol_13",
		"RNGModifier_fex_symbol_14",
		"RNGModifier_fex_symbol_15",
		"RNGModifier_fex_symbol_16",
		"RNGModifier_fex_symbol_17",
		"RNGModifier_fex_symbol_18",
		"RNGModifier_fex_symbol_19",
		"RNGModifier_fex_symbol_20"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_4th_symbol"),
	menu_id = "RNGModifier_fex_Options_Menu"
})]]

