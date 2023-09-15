_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "kosugi"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_kosugi_call_blackhawk = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_call_blackhawk")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_call_blackhawk",
	title = "RNGModifier_kosugi_call_blackhawk_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_call_blackhawk",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("kosugi", "_call_blackhawk"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_loot = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_loot")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_loot",
	title = "RNGModifier_kosugi_loot_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_loot",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kosugi_loot_1",
		"RNGModifier_kosugi_loot_2",
		"RNGModifier_kosugi_loot_3",
		"RNGModifier_kosugi_loot_4"
	},
	value = RNGModifier:SafeGetData("kosugi", "_loot"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})


MenuCallbackHandler.RNGModifier_kosugi_painting_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_painting_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_painting_A",
	title = "RNGModifier_kosugi_painting_A_title",
	desc = "RNGModifier_kosugi_painting_desc",
	callback = "RNGModifier_kosugi_painting_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("kosugi", "_painting_A"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_painting_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_painting_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_painting_B",
	title = "RNGModifier_kosugi_painting_B_title",
	desc = "RNGModifier_kosugi_painting_desc",
	callback = "RNGModifier_kosugi_painting_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("kosugi", "_painting_B"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_paintingDW = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_paintingDW")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_paintingDW",
	title = "RNGModifier_kosugi_paintingDW_title",
	desc = "RNGModifier_kosugi_paintingDW_desc",
	callback = "RNGModifier_kosugi_paintingDW",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("kosugi", "_paintingDW"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_money_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_money_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_money_A",
	title = "RNGModifier_kosugi_money_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_money_A",
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
	value = RNGModifier:SafeGetData("kosugi", "_money_A"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_money_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_money_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_money_B",
	title = "RNGModifier_kosugi_money_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_money_B",
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
	value = RNGModifier:SafeGetData("kosugi", "_money_B"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_cocaine_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cocaine_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_cocaine_A",
	title = "RNGModifier_kosugi_cocaine_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_cocaine_A",
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
	value = RNGModifier:SafeGetData("kosugi", "_cocaine_A"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_cocaine_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cocaine_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_cocaine_B",
	title = "RNGModifier_kosugi_cocaine_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_cocaine_B",
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
	value = RNGModifier:SafeGetData("kosugi", "_cocaine_B"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_weapon_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_weapon_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_weapon_A",
	title = "RNGModifier_kosugi_weapon_A_title",
	desc = "RNGModifier_kosugi_weapon_desc",
	callback = "RNGModifier_kosugi_weapon_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("kosugi", "_weapon_A"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_weapon_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_weapon_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_weapon_B",
	title = "RNGModifier_kosugi_weapon_B_title",
	desc = "RNGModifier_kosugi_weapon_desc",
	callback = "RNGModifier_kosugi_weapon_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("kosugi", "_weapon_B"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_weaponDW = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_weaponDW")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_weaponDW",
	title = "RNGModifier_kosugi_weaponDW_title",
	desc = "RNGModifier_kosugi_weaponDW_desc",
	callback = "RNGModifier_kosugi_weaponDW",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("kosugi", "_weaponDW"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_server = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_server",
	title = "RNGModifier_kosugi_server_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_server",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("kosugi", "_server"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_gate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_gate",
	title = "RNGModifier_kosugi_gate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_gate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("kosugi", "_gate"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_spawn",
	title = "RNGModifier_kosugi_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kosugi_spawn_1",
		"RNGModifier_kosugi_spawn_2"
	},
	value = RNGModifier:SafeGetData("kosugi", "_spawn"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_money_container = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_money_container")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_money_container",
	title = "RNGModifier_kosugi_money_container_title",
	desc = "RNGModifier_kosugi_money_container_desc",
	callback = "RNGModifier_kosugi_money_container",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_money_container"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_crate_loc_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crate_loc_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_crate_loc_1",
	title = "RNGModifier_kosugi_crate_loc_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_crate_loc_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kosugi_crate_loc_1",
		"RNGModifier_kosugi_crate_loc_2",
		"RNGModifier_kosugi_crate_loc_3",
		"RNGModifier_kosugi_crate_loc_4",
		"RNGModifier_kosugi_crate_loc_5",
		"RNGModifier_kosugi_crate_loc_6",
		"RNGModifier_kosugi_crate_loc_7",
		"RNGModifier_kosugi_crate_loc_8",
		"RNGModifier_kosugi_crate_loc_9"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_crate_loc_1"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_crate_loc_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crate_loc_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_crate_loc_2",
	title = "RNGModifier_kosugi_crate_loc_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_crate_loc_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kosugi_crate_loc_1",
		"RNGModifier_kosugi_crate_loc_2",
		"RNGModifier_kosugi_crate_loc_3",
		"RNGModifier_kosugi_crate_loc_4",
		"RNGModifier_kosugi_crate_loc_5",
		"RNGModifier_kosugi_crate_loc_6",
		"RNGModifier_kosugi_crate_loc_7",
		"RNGModifier_kosugi_crate_loc_8",
		"RNGModifier_kosugi_crate_loc_9"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_crate_loc_2"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})


MenuCallbackHandler.RNGModifier_kosugi_crate_loc_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crate_loc_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_crate_loc_3",
	title = "RNGModifier_kosugi_crate_loc_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_crate_loc_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kosugi_crate_loc_1",
		"RNGModifier_kosugi_crate_loc_2",
		"RNGModifier_kosugi_crate_loc_3",
		"RNGModifier_kosugi_crate_loc_4",
		"RNGModifier_kosugi_crate_loc_5",
		"RNGModifier_kosugi_crate_loc_6",
		"RNGModifier_kosugi_crate_loc_7",
		"RNGModifier_kosugi_crate_loc_8",
		"RNGModifier_kosugi_crate_loc_9"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_crate_loc_3"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})


MenuCallbackHandler.RNGModifier_kosugi_crate_loc_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crate_loc_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_crate_loc_4",
	title = "RNGModifier_kosugi_crate_loc_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_crate_loc_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kosugi_crate_loc_1",
		"RNGModifier_kosugi_crate_loc_2",
		"RNGModifier_kosugi_crate_loc_3",
		"RNGModifier_kosugi_crate_loc_4",
		"RNGModifier_kosugi_crate_loc_5",
		"RNGModifier_kosugi_crate_loc_6",
		"RNGModifier_kosugi_crate_loc_7",
		"RNGModifier_kosugi_crate_loc_8",
		"RNGModifier_kosugi_crate_loc_9"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_crate_loc_4"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})


MenuCallbackHandler.RNGModifier_kosugi_crate_loc_5 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crate_loc_5")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_crate_loc_5",
	title = "RNGModifier_kosugi_crate_loc_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_crate_loc_5",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kosugi_crate_loc_1",
		"RNGModifier_kosugi_crate_loc_2",
		"RNGModifier_kosugi_crate_loc_3",
		"RNGModifier_kosugi_crate_loc_4",
		"RNGModifier_kosugi_crate_loc_5",
		"RNGModifier_kosugi_crate_loc_6",
		"RNGModifier_kosugi_crate_loc_7",
		"RNGModifier_kosugi_crate_loc_8",
		"RNGModifier_kosugi_crate_loc_9"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_crate_loc_5"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kosugi_crate_loc_6 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crate_loc_6")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_kosugi_crate_loc_6",
	title = "RNGModifier_kosugi_crate_loc_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kosugi_crate_loc_6",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kosugi_crate_loc_1",
		"RNGModifier_kosugi_crate_loc_2",
		"RNGModifier_kosugi_crate_loc_3",
		"RNGModifier_kosugi_crate_loc_4",
		"RNGModifier_kosugi_crate_loc_5",
		"RNGModifier_kosugi_crate_loc_6",
		"RNGModifier_kosugi_crate_loc_7",
		"RNGModifier_kosugi_crate_loc_8",
		"RNGModifier_kosugi_crate_loc_9"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_crate_loc_6"),
	menu_id = "RNGModifier_kosugi_Options_Menu"
})
