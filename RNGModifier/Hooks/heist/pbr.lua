_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "pbr"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_pbr_entrance = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_entrance")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 28,
	id = "RNGModifier_pbr_entrance",
	title = "RNGModifier_pbr_entrance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_entrance",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_entrance"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_tools = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_tools")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 26,
	id = "RNGModifier_pbr_tools",
	title = "RNGModifier_pbr_tools_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_tools",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bomb_crate_1",
		"RNGModifier_bomb_crate_2",
		"RNGModifier_bomb_crate_3",
		"RNGModifier_bomb_crate_4",
		"RNGModifier_bomb_crate_5",
		"RNGModifier_bomb_crate_6",
		"RNGModifier_bomb_crate_7",
		"RNGModifier_bomb_crate_8",
		"RNGModifier_bomb_crate_9",
		"RNGModifier_bomb_crate_10",
		"RNGModifier_bomb_crate_11",
		"RNGModifier_bomb_crate_12",
		"RNGModifier_bomb_crate_13",
		"RNGModifier_bomb_crate_14",
		"RNGModifier_bomb_crate_15",
		"RNGModifier_bomb_crate_16",
		"RNGModifier_bomb_crate_17",
		"RNGModifier_bomb_crate_18",
		"RNGModifier_bomb_crate_19",
		"RNGModifier_bomb_crate_20",
		"RNGModifier_bomb_crate_21",
		"RNGModifier_bomb_crate_22",
		"RNGModifier_bomb_crate_23"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_tools"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_bomb_crate_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bomb_crate_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 27.2,
	id = "RNGModifier_pbr_bomb_crate_A",
	title = "RNGModifier_pbr_bomb_crate_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_bomb_crate_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bomb_crate_1",
		"RNGModifier_bomb_crate_2",
		"RNGModifier_bomb_crate_3",
		"RNGModifier_bomb_crate_4",
		"RNGModifier_bomb_crate_5",
		"RNGModifier_bomb_crate_6",
		"RNGModifier_bomb_crate_7",
		"RNGModifier_bomb_crate_8",
		"RNGModifier_bomb_crate_9",
		"RNGModifier_bomb_crate_10",
		"RNGModifier_bomb_crate_11",
		"RNGModifier_bomb_crate_12",
		"RNGModifier_bomb_crate_13",
		"RNGModifier_bomb_crate_14",
		"RNGModifier_bomb_crate_15",
		"RNGModifier_bomb_crate_16",
		"RNGModifier_bomb_crate_17",
		"RNGModifier_bomb_crate_18",
		"RNGModifier_bomb_crate_19",
		"RNGModifier_bomb_crate_20",
		"RNGModifier_bomb_crate_21",
		"RNGModifier_bomb_crate_22",
		"RNGModifier_bomb_crate_23"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_bomb_crate_A"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_bomb_crate_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bomb_crate_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 27.1,
	id = "RNGModifier_pbr_bomb_crate_B",
	title = "RNGModifier_pbr_bomb_crate_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_bomb_crate_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bomb_crate_1",
		"RNGModifier_bomb_crate_2",
		"RNGModifier_bomb_crate_3",
		"RNGModifier_bomb_crate_4",
		"RNGModifier_bomb_crate_5",
		"RNGModifier_bomb_crate_6",
		"RNGModifier_bomb_crate_7",
		"RNGModifier_bomb_crate_8",
		"RNGModifier_bomb_crate_9",
		"RNGModifier_bomb_crate_10",
		"RNGModifier_bomb_crate_11",
		"RNGModifier_bomb_crate_12",
		"RNGModifier_bomb_crate_13",
		"RNGModifier_bomb_crate_14",
		"RNGModifier_bomb_crate_15",
		"RNGModifier_bomb_crate_16",
		"RNGModifier_bomb_crate_17",
		"RNGModifier_bomb_crate_18",
		"RNGModifier_bomb_crate_19",
		"RNGModifier_bomb_crate_20",
		"RNGModifier_bomb_crate_21",
		"RNGModifier_bomb_crate_22",
		"RNGModifier_bomb_crate_23"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_bomb_crate_B"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_helipad = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_helipad")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 3,
	id = "RNGModifier_pbr_helipad",
	title = "RNGModifier_pbr_helipad_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_helipad",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_helipad_1",
		"RNGModifier_pbr_helipad_2",
		"RNGModifier_pbr_helipad_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_helipad"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_gate1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gate1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 25.5,
	id = "RNGModifier_pbr_gate1",
	title = "RNGModifier_pbr_gate1_title",
	desc = "RNGModifier_pbr_gate1_desc",
	callback = "RNGModifier_pbr_gate1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_gate1_1",
		"RNGModifier_pbr_gate1_2",
		"RNGModifier_pbr_gate1_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gate1"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_gate2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gate2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 24,
	id = "RNGModifier_pbr_gate2",
	title = "RNGModifier_pbr_gate2_title",
	desc = "RNGModifier_pbr_gate2_desc",
	callback = "RNGModifier_pbr_gate2",
	items = {
		"RNGModifier_Default_One_Item",	
		"RNGModifier_pbr_gate2_1",
		"RNGModifier_pbr_gate2_2",
		"RNGModifier_pbr_gate2_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gate2"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_gate3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gate3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 23,
	id = "RNGModifier_pbr_gate3",
	title = "RNGModifier_pbr_gate3_title",
	desc = "RNGModifier_pbr_gate3_desc",
	callback = "RNGModifier_pbr_gate3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_gate3_1",
		"RNGModifier_pbr_gate3_2",
		"RNGModifier_pbr_gate3_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gate3"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_airlock_gate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_airlock_gate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 25.4,
	id = "RNGModifier_pbr_airlock_gate",
	title = "RNGModifier_pbr_airlock_gate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_airlock_gate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_airlock_gate_1",
		"RNGModifier_pbr_airlock_gate_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_airlock_gate"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_frontal_gate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_frontal_gate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 25.3,
	id = "RNGModifier_pbr_frontal_gate",
	title = "RNGModifier_pbr_frontal_gate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_frontal_gate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_airlock_gate_1",
		"RNGModifier_pbr_airlock_gate_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_frontal_gate"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_control_room1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_control_room1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 22,
	id = "RNGModifier_pbr_control_room1",
	title = "RNGModifier_pbr_control_room1_title",
	desc = "RNGModifier_pbr_control_room1_desc",
	callback = "RNGModifier_pbr_control_room1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_control_room1"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_control_room2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_control_room2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 21,
	id = "RNGModifier_pbr_control_room2",
	title = "RNGModifier_pbr_control_room2_title",
	desc = "RNGModifier_pbr_control_room2_desc",
	callback = "RNGModifier_pbr_control_room2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_control_room2"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})
MenuCallbackHandler.RNGModifier_pbr_control_room3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_control_room3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 20,
	id = "RNGModifier_pbr_control_room3",
	title = "RNGModifier_pbr_control_room3_title",
	desc = "RNGModifier_pbr_control_room3_desc",
	callback = "RNGModifier_pbr_control_room3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_control_room3"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_server = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 18,
	id = "RNGModifier_pbr_server",
	title = "RNGModifier_pbr_server_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_server",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_loot_zeus",
		"RNGModifier_pbr_loot_poseidon",
		"RNGModifier_pbr_loot_hades",
		"RNGModifier_pbr_loot_demeter",
		"RNGModifier_pbr_loot_chronos",
		"RNGModifier_pbr_loot_ares"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_server"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_weapon = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_weapon")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_pbr_weapon",
	title = "RNGModifier_pbr_weapon_title",
	desc = "RNGModifier_pbr_weapon_desc",
	callback = "RNGModifier_pbr_weapon",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_loot_zeus",
		"RNGModifier_pbr_loot_poseidon",
		"RNGModifier_pbr_loot_hades",
		"RNGModifier_pbr_loot_demeter",
		"RNGModifier_pbr_loot_chronos",
		"RNGModifier_pbr_loot_ares"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_weapon"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_painting = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_painting")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16,
	id = "RNGModifier_pbr_painting",
	title = "RNGModifier_pbr_painting_title",
	desc = "RNGModifier_pbr_painting_desc",
	callback = "RNGModifier_pbr_painting",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_loot_zeus",
		"RNGModifier_pbr_loot_poseidon",
		"RNGModifier_pbr_loot_hades",
		"RNGModifier_pbr_loot_demeter",
		"RNGModifier_pbr_loot_chronos",
		"RNGModifier_pbr_loot_ares"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_painting"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})


MenuCallbackHandler.RNGModifier_pbr_artifact = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_artifact")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15,
	id = "RNGModifier_pbr_artifact",
	title = "RNGModifier_pbr_artifact_title",
	desc = "RNGModifier_pbr_artifact_desc",
	callback = "RNGModifier_pbr_artifact",
	items = {
		"RNGModifier_Default_One_Item",			
		"RNGModifier_pbr_loot_ares",
		"RNGModifier_pbr_loot_chronos",
		"RNGModifier_pbr_loot_demeter",
		"RNGModifier_pbr_loot_hades",
		"RNGModifier_pbr_loot_poseidon",
		"RNGModifier_pbr_loot_zeus"
	
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_artifact"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_deny = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_deny")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 19,
	id = "RNGModifier_pbr_deny",
	title = "RNGModifier_pbr_deny_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_deny",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_deny"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})


MenuCallbackHandler.RNGModifier_pbr_area_comm_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_comm_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_pbr_area_comm_A",
	title = "RNGModifier_pbr_area_comm_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_area_comm_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_A",
		"RNGModifier_pbr_area_B",
		"RNGModifier_pbr_area_C",
		"RNGModifier_pbr_area_D",
		"RNGModifier_pbr_area_E"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_comm_A"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})


MenuCallbackHandler.RNGModifier_pbr_area_comm_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_comm_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 13,
	id = "RNGModifier_pbr_area_comm_B",
	title = "RNGModifier_pbr_area_comm_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_area_comm_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_A",
		"RNGModifier_pbr_area_B",
		"RNGModifier_pbr_area_C",
		"RNGModifier_pbr_area_D",
		"RNGModifier_pbr_area_E"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_comm_B"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_area_comms_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_comms_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11,
	id = "RNGModifier_pbr_area_comms_A",
	title = "RNGModifier_pbr_area_comms_A_title",
	desc = "RNGModifier_area_comms_desc",
	callback = "RNGModifier_pbr_area_comms_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_A",
		"RNGModifier_pbr_area_B",
		"RNGModifier_pbr_area_C",
		"RNGModifier_pbr_area_D",
		"RNGModifier_pbr_area_E"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_comms_A"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})


MenuCallbackHandler.RNGModifier_pbr_area_comms_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_comms_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10,
	id = "RNGModifier_pbr_area_comms_B",
	title = "RNGModifier_pbr_area_comms_B_title",
	desc = "RNGModifier_area_comms_desc",
	callback = "RNGModifier_pbr_area_comms_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_A",
		"RNGModifier_pbr_area_B",
		"RNGModifier_pbr_area_C",
		"RNGModifier_pbr_area_D",
		"RNGModifier_pbr_area_E"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_comms_B"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_area_comms_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_comms_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_pbr_area_comms_C",
	title = "RNGModifier_pbr_area_comms_C_title",
	desc = "RNGModifier_area_comms_desc",
	callback = "RNGModifier_pbr_area_comms_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_A",
		"RNGModifier_pbr_area_B",
		"RNGModifier_pbr_area_C",
		"RNGModifier_pbr_area_D",
		"RNGModifier_pbr_area_E"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_comms_C"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_area_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_pbr_area_A",
	title = "RNGModifier_pbr_area_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_area_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_A_1",
		"RNGModifier_pbr_area_A_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_A"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_area_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7,
	id = "RNGModifier_pbr_area_B",
	title = "RNGModifier_pbr_area_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_area_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_B_1",
		"RNGModifier_pbr_area_B_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_B"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_area_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 6,
	id = "RNGModifier_pbr_area_C",
	title = "RNGModifier_pbr_area_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_area_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_C_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_C"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_area_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 5,
	id = "RNGModifier_pbr_area_D",
	title = "RNGModifier_pbr_area_D_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_area_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_D_1",
		"RNGModifier_pbr_area_D_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_D"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_area_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_area_E")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4,
	id = "RNGModifier_pbr_area_E",
	title = "RNGModifier_pbr_area_E_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_area_E",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr_area_E_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_area_E"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr_big_satellite = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_big_satellite")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_pbr_big_satellite",
	title = "RNGModifier_pbr_big_satellite_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr_big_satellite",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_big_satellite"),
	menu_id = "RNGModifier_pbr_Options_Menu"
})

