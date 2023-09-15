_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "crojob3_night"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_crojob3_night_wagon_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wagon_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.1,
	id = "RNGModifier_crojob3_night_wagon_1",
	title = "RNGModifier_crojob3_wagon_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob3_night_wagon_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob3_wagon_choice_7",
		"RNGModifier_crojob3_wagon_choice_9",
		"RNGModifier_crojob3_wagon_choice_5",
		"RNGModifier_crojob3_wagon_choice_2",
		"RNGModifier_crojob3_wagon_choice_6",
		"RNGModifier_crojob3_wagon_choice_10",
		"RNGModifier_crojob3_wagon_choice_8",
		"RNGModifier_crojob3_wagon_choice_1",
		"RNGModifier_crojob3_wagon_choice_4",
		"RNGModifier_crojob3_wagon_choice_3"
	},
	value = RNGModifier:SafeGetData("crojob3_night", "_wagon_1"),
	menu_id = "RNGModifier_crojob3_night_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob3_night_wagon_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wagon_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.2,
	id = "RNGModifier_crojob3_night_wagon_2",
	title = "RNGModifier_crojob3_wagon_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob3_night_wagon_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob3_wagon_choice_7",
		"RNGModifier_crojob3_wagon_choice_9",
		"RNGModifier_crojob3_wagon_choice_5",
		"RNGModifier_crojob3_wagon_choice_2",
		"RNGModifier_crojob3_wagon_choice_6",
		"RNGModifier_crojob3_wagon_choice_10",
		"RNGModifier_crojob3_wagon_choice_8",
		"RNGModifier_crojob3_wagon_choice_1",
		"RNGModifier_crojob3_wagon_choice_4",
		"RNGModifier_crojob3_wagon_choice_3"
	},
	value = RNGModifier:SafeGetData("crojob3_night", "_wagon_2"),
	menu_id = "RNGModifier_crojob3_night_Options_Menu"
})


MenuCallbackHandler.RNGModifier_crojob3_night_wagon_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wagon_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.3,
	id = "RNGModifier_crojob3_night_wagon_3",
	title = "RNGModifier_crojob3_wagon_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob3_night_wagon_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob3_wagon_choice_7",
		"RNGModifier_crojob3_wagon_choice_9",
		"RNGModifier_crojob3_wagon_choice_5",
		"RNGModifier_crojob3_wagon_choice_2",
		"RNGModifier_crojob3_wagon_choice_6",
		"RNGModifier_crojob3_wagon_choice_10",
		"RNGModifier_crojob3_wagon_choice_8",
		"RNGModifier_crojob3_wagon_choice_1",
		"RNGModifier_crojob3_wagon_choice_4",
		"RNGModifier_crojob3_wagon_choice_3"
	},
	value = RNGModifier:SafeGetData("crojob3_night", "_wagon_3"),
	menu_id = "RNGModifier_crojob3_night_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob3_night_wagon_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wagon_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.4,
	id = "RNGModifier_crojob3_night_wagon_4",
	title = "RNGModifier_crojob3_wagon_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob3_night_wagon_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob3_wagon_choice_7",
		"RNGModifier_crojob3_wagon_choice_9",
		"RNGModifier_crojob3_wagon_choice_5",
		"RNGModifier_crojob3_wagon_choice_2",
		"RNGModifier_crojob3_wagon_choice_6",
		"RNGModifier_crojob3_wagon_choice_10",
		"RNGModifier_crojob3_wagon_choice_8",
		"RNGModifier_crojob3_wagon_choice_1",
		"RNGModifier_crojob3_wagon_choice_4",
		"RNGModifier_crojob3_wagon_choice_3"
	},
	value = RNGModifier:SafeGetData("crojob3_night", "_wagon_4"),
	menu_id = "RNGModifier_crojob3_night_Options_Menu"
})


MenuCallbackHandler.RNGModifier_crojob3_night_wagon_5 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wagon_5")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.5,
	id = "RNGModifier_crojob3_night_wagon_5",
	title = "RNGModifier_crojob3_wagon_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob3_night_wagon_5",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob3_wagon_choice_7",
		"RNGModifier_crojob3_wagon_choice_9",
		"RNGModifier_crojob3_wagon_choice_5",
		"RNGModifier_crojob3_wagon_choice_2",
		"RNGModifier_crojob3_wagon_choice_6",
		"RNGModifier_crojob3_wagon_choice_10",
		"RNGModifier_crojob3_wagon_choice_8",
		"RNGModifier_crojob3_wagon_choice_1",
		"RNGModifier_crojob3_wagon_choice_4",
		"RNGModifier_crojob3_wagon_choice_3"
	},
	value = RNGModifier:SafeGetData("crojob3_night", "_wagon_5"),
	menu_id = "RNGModifier_crojob3_night_Options_Menu"
})


MenuCallbackHandler.RNGModifier_crojob3_night_vault = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_crojob3_night_vault",
	title = "RNGModifier_crojob3_vault_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob3_night_vault",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob3_wagon_choice_7",
		"RNGModifier_crojob3_wagon_choice_9",
		"RNGModifier_crojob3_wagon_choice_5",
		"RNGModifier_crojob3_wagon_choice_2",
		"RNGModifier_crojob3_wagon_choice_6",
		"RNGModifier_crojob3_wagon_choice_10",
		"RNGModifier_crojob3_wagon_choice_8",
		"RNGModifier_crojob3_wagon_choice_1",
		"RNGModifier_crojob3_wagon_choice_4",
		"RNGModifier_crojob3_wagon_choice_3"
	},
	value = RNGModifier:SafeGetData("crojob3_night", "_vault"),
	menu_id = "RNGModifier_crojob3_night_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob3_night_c4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3,
	id = "RNGModifier_crojob3_night_c4",
	title = "RNGModifier_crojob3_c4_title",
	desc = "RNGModifier_crojob3_c4_desc",
	callback = "RNGModifier_crojob3_night_c4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_crojob3_c4_1A",
		"RNGModifier_crojob3_c4_1B",
		"RNGModifier_crojob3_c4_6A",
		"RNGModifier_crojob3_c4_6B",
		"RNGModifier_crojob3_c4_8A",
		"RNGModifier_crojob3_c4_8B",
		"RNGModifier_crojob3_c4_9A",
		"RNGModifier_crojob3_c4_9B",
		"RNGModifier_crojob3_c4_2A",
		"RNGModifier_crojob3_c4_2B",
		"RNGModifier_crojob3_c4_3A",
		"RNGModifier_crojob3_c4_3B",
		"RNGModifier_crojob3_c4_4A",
		"RNGModifier_crojob3_c4_4B",
		"RNGModifier_crojob3_c4_5A",
		"RNGModifier_crojob3_c4_5B",
		"RNGModifier_crojob3_c4_7A",
		"RNGModifier_crojob3_c4_7B",
		"RNGModifier_crojob3_c4_10A",
		"RNGModifier_crojob3_c4_10B"
	},
	value = RNGModifier:SafeGetData("crojob3_night", "_c4"),
	menu_id = "RNGModifier_crojob3_night_Options_Menu"
})

MenuCallbackHandler.RNGModifier_crojob3_night_bomb_case = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bomb_case")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_crojob3_night_bomb_case",
	title = "RNGModifier_crojob3_bomb_case_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_crojob3_night_bomb_case",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"				
	},
	value = RNGModifier:SafeGetData("crojob3_night", "_bomb_case"),
	menu_id = "RNGModifier_crojob3_night_Options_Menu"
})
