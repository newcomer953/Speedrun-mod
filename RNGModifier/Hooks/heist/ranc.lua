_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "ranc"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_ranc_security_ammo_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_security_ammo_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_ranc_security_ammo_room",
	title = "RNGModifier_ranc_security_ammo_room_title",
	desc = "RNGModifier_ranc_security_ammo_room_desc",
	callback = "RNGModifier_ranc_security_ammo_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_ranc_security_ammo_room_1",
		"RNGModifier_ranc_security_ammo_room_2"
	},
	value = RNGModifier:SafeGetData("ranc", "_security_ammo_room"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_normal_part = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_normal_part")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.2,
	id = "RNGModifier_ranc_normal_part",
	title = "RNGModifier_ranc_normal_part_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_ranc_normal_part",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("ranc", "_normal_part"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_prep_part = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_prep_part")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.1,
	id = "RNGModifier_ranc_prep_part",
	title = "RNGModifier_ranc_prep_part_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_ranc_prep_part",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("ranc", "_prep_part"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_south_barn_weapons_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_south_barn_weapons_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.1,
	id = "RNGModifier_ranc_south_barn_weapons_1",
	title = "RNGModifier_ranc_south_barn_weapons_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_ranc_south_barn_weapons_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_ranc_south_barn_weapons_1",
		"RNGModifier_ranc_south_barn_weapons_2",
		"RNGModifier_ranc_south_barn_weapons_3",
		"RNGModifier_ranc_south_barn_weapons_4",
		"RNGModifier_ranc_south_barn_weapons_5",
		"RNGModifier_ranc_south_barn_weapons_6"
	},
	value = RNGModifier:SafeGetData("ranc", "_south_barn_weapons_1"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_south_barn_weapons_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_south_barn_weapons_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.2,
	id = "RNGModifier_ranc_south_barn_weapons_2",
	title = "RNGModifier_ranc_south_barn_weapons_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_ranc_south_barn_weapons_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_ranc_south_barn_weapons_1",
		"RNGModifier_ranc_south_barn_weapons_2",
		"RNGModifier_ranc_south_barn_weapons_3",
		"RNGModifier_ranc_south_barn_weapons_4",
		"RNGModifier_ranc_south_barn_weapons_5",
		"RNGModifier_ranc_south_barn_weapons_6"
	},
	value = RNGModifier:SafeGetData("ranc", "_south_barn_weapons_2"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_south_barn_weapons_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_south_barn_weapons_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.3,
	id = "RNGModifier_ranc_south_barn_weapons_3",
	title = "RNGModifier_ranc_south_barn_weapons_3_title",
	desc = "RNGModifier_ranc_south_barn_weapons_3_desc",
	callback = "RNGModifier_ranc_south_barn_weapons_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_ranc_south_barn_weapons_1",
		"RNGModifier_ranc_south_barn_weapons_2",
		"RNGModifier_ranc_south_barn_weapons_3",
		"RNGModifier_ranc_south_barn_weapons_4",
		"RNGModifier_ranc_south_barn_weapons_5",
		"RNGModifier_ranc_south_barn_weapons_6"
	},
	value = RNGModifier:SafeGetData("ranc", "_south_barn_weapons_3"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_west_barn_weapons_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_west_barn_weapons_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3.1,
	id = "RNGModifier_ranc_west_barn_weapons_1",
	title = "RNGModifier_ranc_west_barn_weapons_1_title",
	desc = "RNGModifier_ranc_west_barn_weapons_desc",
	callback = "RNGModifier_ranc_west_barn_weapons_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("ranc", "_west_barn_weapons_1"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_west_barn_weapons_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_west_barn_weapons_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3.2,
	id = "RNGModifier_ranc_west_barn_weapons_2",
	title = "RNGModifier_ranc_west_barn_weapons_2_title",
	desc = "RNGModifier_ranc_west_barn_weapons_desc",
	callback = "RNGModifier_ranc_west_barn_weapons_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("ranc", "_west_barn_weapons_2"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_north_barn_weapons_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_north_barn_weapons_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.1,
	id = "RNGModifier_ranc_north_barn_weapons_1",
	title = "RNGModifier_ranc_north_barn_weapons_1_title",
	desc = "RNGModifier_ranc_north_barn_weapons_1_desc",
	callback = "RNGModifier_ranc_north_barn_weapons_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("ranc", "_north_barn_weapons_1"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ranc_north_barn_weapons_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_north_barn_weapons_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.2,
	id = "RNGModifier_ranc_north_barn_weapons_2",
	title = "RNGModifier_ranc_north_barn_weapons_2_title",
	desc = "RNGModifier_ranc_north_barn_weapons_2_desc",
	callback = "RNGModifier_ranc_north_barn_weapons_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("ranc", "_north_barn_weapons_2"),
	menu_id = "RNGModifier_ranc_Options_Menu"
})