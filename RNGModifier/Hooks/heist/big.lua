_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "big"
local _bool = true
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_big_chance_to_work = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_chance_to_work")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_chance_to_work")
	end
	RNGModifier:Save()
end
_bool = tonumber(RNGModifier:SafeGetData("big", "_chance_to_work")) == 1 and true or false
MenuHelper:AddToggle({
	id = "RNGModifier_big_chance_to_work",
	title = "RNGModifier_big_chance_to_work_title",
	desc = "RNGModifier_big_chance_to_work_desc",
	callback = "RNGModifier_big_chance_to_work",
	value = _bool,
	menu_id = "RNGModifier_big_Options_Menu"
})
_bool = nil

MenuCallbackHandler.RNGModifier_big_logic_random_024 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_024")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_logic_random_024",
	title = "RNGModifier_big_logic_random_024_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_big_logic_random_024",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_logic_random_024_1",
		"RNGModifier_big_logic_random_024_2",
		"RNGModifier_big_logic_random_024_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_024"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_rand_vault_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rand_vault_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_rand_vault_door",
	title = "RNGModifier_big_rand_vault_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_big_rand_vault_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_rand_vault_door_1",
		"RNGModifier_big_rand_vault_door_2",
		"RNGModifier_big_rand_vault_door_3",
		"RNGModifier_big_rand_vault_door_4"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_rand_vault_door"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_six_cash_closest_cage = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_six_cash_closest_cage")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_six_cash_closest_cage",
	title = "RNGModifier_big_six_cash_closest_cage_title",
	desc = "RNGModifier_big_six_cash_closest_cage_desc",
	callback = "RNGModifier_big_six_cash_closest_cage",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_six_cash_closest_cage_1",
		"RNGModifier_big_six_cash_closest_cage_2",
		"RNGModifier_big_six_cash_closest_cage_3",
		"RNGModifier_big_six_cash_closest_cage_4",
		"RNGModifier_big_six_cash_closest_cage_5",
		"RNGModifier_big_six_cash_closest_cage_6",
		"RNGModifier_big_six_cash_closest_cage_7"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_six_cash_closest_cage"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_four_gold_closest_cage = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_four_gold_closest_cage")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_four_gold_closest_cage",
	title = "RNGModifier_big_four_gold_closest_cage_title",
	desc = "RNGModifier_big_six_cash_closest_cage_desc",
	callback = "RNGModifier_big_four_gold_closest_cage",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_six_cash_closest_cage_1",
		"RNGModifier_big_six_cash_closest_cage_2",
		"RNGModifier_big_six_cash_closest_cage_3",
		"RNGModifier_big_six_cash_closest_cage_4",
		"RNGModifier_big_six_cash_closest_cage_5",
		"RNGModifier_big_six_cash_closest_cage_6",
		"RNGModifier_big_six_cash_closest_cage_7"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_four_gold_closest_cage"),
	menu_id = "RNGModifier_big_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_big_six_cash_closest_cage = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_six_cash_closest_cage")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_six_cash_closest_cage")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_big_six_cash_closest_cage",
	title = "RNGModifier_big_six_cash_closest_cage_title",
	desc = "RNGModifier_big_six_cash_closest_cage_desc",
	callback = "RNGModifier_big_six_cash_closest_cage",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_six_cash_closest_cage")) == 1 and true or false,
	menu_id = "RNGModifier_big_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_double_vault_floor = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_double_vault_floor")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_double_vault_floor",
	title = "RNGModifier_big_double_vault_floor_title",
	desc = "RNGModifier_big_double_vault_floor_desc",
	callback = "RNGModifier_double_vault_floor",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_double_vault_floor_1",
		"RNGModifier_big_double_vault_floor_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_double_vault_floor"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_pick_rand_floor = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_rand_floor")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_pick_rand_floor",
	title = "RNGModifier_big_pick_rand_floor_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_big_pick_rand_floor",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_pick_rand_floor_1",
		"RNGModifier_big_pick_rand_floor_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pick_rand_floor"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_rand_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rand_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_rand_room",
	title = "RNGModifier_big_rand_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_big_rand_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_rand_room_1",
		"RNGModifier_big_rand_room_2",
		"RNGModifier_big_rand_room_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_rand_room"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_keycard",
	title = "RNGModifier_big_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_big_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_keycard_1",
		"RNGModifier_big_keycard_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_random_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_random_keycard",
	title = "RNGModifier_big_random_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_big_random_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_random_keycard_1",
		"RNGModifier_big_random_keycard_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_keycard"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_shortcut = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_shortcut")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_shortcut",
	title = "RNGModifier_big_shortcut_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_big_shortcut",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_shortcut_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_shortcut"),
	menu_id = "RNGModifier_big_Options_Menu"
})

MenuCallbackHandler.RNGModifier_big_keybox = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keybox")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_big_keybox",
	title = "RNGModifier_big_keybox_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_big_keybox",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_big_keybox_1",
		"RNGModifier_big_keybox_2",
		"RNGModifier_big_keybox_3",
		"RNGModifier_big_keybox_4",
		"RNGModifier_big_keybox_5",
		"RNGModifier_big_keybox_6",
		"RNGModifier_big_keybox_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keybox"),
	menu_id = "RNGModifier_big_Options_Menu"
})