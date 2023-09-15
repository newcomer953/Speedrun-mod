_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "crojob2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_crojob2_radio = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_radio")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_radio",
	title = "RNGModifier_crojob2_radio_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_radio",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8"
	},
	value = RNGModifier:SafeGetData("crojob2", "_radio"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})
MenuCallbackHandler.RNGModifier_crojob2_computer_side = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_computer_side")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_computer_side",
	title = "RNGModifier_crojob2_computer_side_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_computer_side",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_computer_side_1",
		"RNGModifier_crojob2_computer_side_2"
	},
	value = RNGModifier:SafeGetData("crojob2", "_computer_side"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})
MenuCallbackHandler.RNGModifier_crojob2_keycard1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_keycard1",
	title = "RNGModifier_crojob2_keycard1_title",
	desc = "RNGModifier_crojob2_keycard_desc",
	callback = "RNGModifier_crojob2_keycard1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_keycard_1",
		"RNGModifier_crojob2_keycard_2",
		"RNGModifier_crojob2_keycard_3",
		"RNGModifier_crojob2_keycard_4",
		"RNGModifier_crojob2_keycard_5",
		"RNGModifier_crojob2_keycard_6",
		"RNGModifier_crojob2_keycard_7",
		"RNGModifier_crojob2_keycard_8",
		"RNGModifier_crojob2_keycard_9",
		"RNGModifier_crojob2_keycard_10",
		"RNGModifier_crojob2_keycard_11",
		"RNGModifier_crojob2_keycard_12",
		"RNGModifier_crojob2_keycard_13",
		"RNGModifier_crojob2_keycard_14",
		"RNGModifier_crojob2_keycard_15",
		"RNGModifier_crojob2_keycard_16"
	},
	value = RNGModifier:SafeGetData("crojob2", "_keycard1"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})
MenuCallbackHandler.RNGModifier_crojob2_keycard2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_keycard2",
	title = "RNGModifier_crojob2_keycard2_title",
	desc = "RNGModifier_crojob2_keycard_desc",
	callback = "RNGModifier_crojob2_keycard2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_keycard_1",
		"RNGModifier_crojob2_keycard_2",
		"RNGModifier_crojob2_keycard_3",
		"RNGModifier_crojob2_keycard_4",
		"RNGModifier_crojob2_keycard_5",
		"RNGModifier_crojob2_keycard_6",
		"RNGModifier_crojob2_keycard_7",
		"RNGModifier_crojob2_keycard_8",
		"RNGModifier_crojob2_keycard_9",
		"RNGModifier_crojob2_keycard_10",
		"RNGModifier_crojob2_keycard_11",
		"RNGModifier_crojob2_keycard_12",
		"RNGModifier_crojob2_keycard_13",
		"RNGModifier_crojob2_keycard_14",
		"RNGModifier_crojob2_keycard_15",
		"RNGModifier_crojob2_keycard_16"
	},
	value = RNGModifier:SafeGetData("crojob2", "_keycard2"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})
MenuCallbackHandler.RNGModifier_crojob2_keycard3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_keycard3",
	title = "RNGModifier_crojob2_keycard3_title",
	desc = "RNGModifier_crojob2_keycard_desc",
	callback = "RNGModifier_crojob2_keycard3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_keycard_1",
		"RNGModifier_crojob2_keycard_2",
		"RNGModifier_crojob2_keycard_3",
		"RNGModifier_crojob2_keycard_4",
		"RNGModifier_crojob2_keycard_5",
		"RNGModifier_crojob2_keycard_6",
		"RNGModifier_crojob2_keycard_7",
		"RNGModifier_crojob2_keycard_8",
		"RNGModifier_crojob2_keycard_9",
		"RNGModifier_crojob2_keycard_10",
		"RNGModifier_crojob2_keycard_11",
		"RNGModifier_crojob2_keycard_12",
		"RNGModifier_crojob2_keycard_13",
		"RNGModifier_crojob2_keycard_14",
		"RNGModifier_crojob2_keycard_15",
		"RNGModifier_crojob2_keycard_16"
	},
	value = RNGModifier:SafeGetData("crojob2", "_keycard3"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})
MenuCallbackHandler.RNGModifier_crojob2_captain_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_captain_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_captain_number",
	title = "RNGModifier_crojob2_captain_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_captain_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8"
	},
	value = RNGModifier:SafeGetData("crojob2", "_captain_number"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})
MenuCallbackHandler.RNGModifier_crojob2_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_spawn",
	title = "RNGModifier_crojob2_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_spawn_1",
		"RNGModifier_crojob2_spawn_2",
		"RNGModifier_crojob2_spawn_3"
	},
	value = RNGModifier:SafeGetData("crojob2", "_spawn"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob2_bomb = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bomb")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_bomb",
	title = "RNGModifier_crojob2_bomb_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_bomb",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_pickbomb_1",
		"RNGModifier_crojob2_pickbomb_2",
		"RNGModifier_crojob2_pickbomb_3",
		"RNGModifier_crojob2_pickbomb_4"
	},
	value = RNGModifier:SafeGetData("crojob2", "_bomb"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob2_door_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_door_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_door_1",
	title = "RNGModifier_crojob2_door_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_door_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_door_1",
		"RNGModifier_crojob2_door_2",
		"RNGModifier_crojob2_door_3",
		"RNGModifier_crojob2_door_4"
	},
	value = RNGModifier:SafeGetData("crojob2", "_door_1"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob2_door_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_door_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_door_2",
	title = "RNGModifier_crojob2_door_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_door_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_door_1",
		"RNGModifier_crojob2_door_2",
		"RNGModifier_crojob2_door_3",
		"RNGModifier_crojob2_door_4"
	},
	value = RNGModifier:SafeGetData("crojob2", "_door_2"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob2_open_doors = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_open_doors")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_open_doors")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_crojob2_open_doors",
	title = "RNGModifier_crojob2_open_doors_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_open_doors",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_open_doors")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})


MenuCallbackHandler.RNGModifier_crojob2_bomb_case_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bomb_case_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_bomb_case_A",
	title = "RNGModifier_crojob2_bomb_case_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_bomb_case_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_bomb_1",
		"RNGModifier_crojob2_bomb_2",
		"RNGModifier_crojob2_bomb_3",
		"RNGModifier_crojob2_bomb_4",
		"RNGModifier_crojob2_bomb_5",
		"RNGModifier_crojob2_bomb_6",
		"RNGModifier_crojob2_bomb_7",
		"RNGModifier_crojob2_bomb_9",
		"RNGModifier_crojob2_bomb_10",
		"RNGModifier_crojob2_bomb_11",
		"RNGModifier_crojob2_bomb_12",
		"RNGModifier_crojob2_bomb_13"								
		
	},
	value = RNGModifier:SafeGetData("crojob2", "_bomb_case_A"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob2_bomb_case_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bomb_case_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_bomb_case_B",
	title = "RNGModifier_crojob2_bomb_case_B_title",
	desc = "RNGModifier_crojob2_bomb_cases_desc",
	callback = "RNGModifier_crojob2_bomb_case_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_bomb_2",
		"RNGModifier_crojob2_bomb_3",
		"RNGModifier_crojob2_bomb_4",
		"RNGModifier_crojob2_bomb_5",
		"RNGModifier_crojob2_bomb_6",
		"RNGModifier_crojob2_bomb_7",
		"RNGModifier_crojob2_bomb_9",
		"RNGModifier_crojob2_bomb_10",
		"RNGModifier_crojob2_bomb_11",
		"RNGModifier_crojob2_bomb_12",
		"RNGModifier_crojob2_bomb_13"								
		
	},
	value = RNGModifier:SafeGetData("crojob2", "_bomb_case_B"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob2_bomb_case_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bomb_case_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_bomb_case_C",
	title = "RNGModifier_crojob2_bomb_case_C_title",
	desc = "RNGModifier_crojob2_bomb_cases_desc",
	callback = "RNGModifier_crojob2_bomb_case_C",
	items = {
		"RNGModifier_Default_One_Item",		
		"RNGModifier_crojob2_bomb_3",
		"RNGModifier_crojob2_bomb_4",
		"RNGModifier_crojob2_bomb_5",
		"RNGModifier_crojob2_bomb_6",
		"RNGModifier_crojob2_bomb_7",
		"RNGModifier_crojob2_bomb_9",
		"RNGModifier_crojob2_bomb_10",
		"RNGModifier_crojob2_bomb_11",
		"RNGModifier_crojob2_bomb_12",
		"RNGModifier_crojob2_bomb_13"								
		
	},
	value = RNGModifier:SafeGetData("crojob2", "_bomb_case_C"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob2_bomb_case_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bomb_case_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_bomb_case_D",
	title = "RNGModifier_crojob2_bomb_case_D_title",
	desc = "RNGModifier_crojob2_bomb_cases_desc",
	callback = "RNGModifier_crojob2_bomb_case_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_bomb_4",
		"RNGModifier_crojob2_bomb_5",
		"RNGModifier_crojob2_bomb_6",
		"RNGModifier_crojob2_bomb_7",
		"RNGModifier_crojob2_bomb_9",
		"RNGModifier_crojob2_bomb_10",
		"RNGModifier_crojob2_bomb_11",
		"RNGModifier_crojob2_bomb_12",
		"RNGModifier_crojob2_bomb_13"								
		
	},
	value = RNGModifier:SafeGetData("crojob2", "_bomb_case_D"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob2_meth = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_meth")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_meth",
	title = "RNGModifier_crojob2_meth_title",
	desc = "RNGModifier_crojob2_meth_container_desc",
	callback = "RNGModifier_crojob2_meth",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob2_bomb_1",
		"RNGModifier_crojob2_bomb_2",
		"RNGModifier_crojob2_bomb_3",
		"RNGModifier_crojob2_bomb_4",
		"RNGModifier_crojob2_bomb_5",
		"RNGModifier_crojob2_bomb_6",
		"RNGModifier_crojob2_bomb_7",
		"RNGModifier_crojob2_bomb_9",
		"RNGModifier_crojob2_bomb_10",
		"RNGModifier_crojob2_bomb_11",
		"RNGModifier_crojob2_bomb_12",
		"RNGModifier_crojob2_bomb_13"								
		
	},
	value = RNGModifier:SafeGetData("crojob2", "_meth"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_crojob2_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob2_test",
	title = "RNGModifier_crojob2_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob2_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"								
		
	},
	value = RNGModifier:SafeGetData("crojob2", "_test"),
	menu_id = "RNGModifier_crojob2_Options_Menu"
})]]