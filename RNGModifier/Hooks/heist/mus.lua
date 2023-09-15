_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "mus"
local _bool = true
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_mus_chamber_controller = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_chamber_controller")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 1,
	id = "RNGModifier_mus_chamber_controller",
	title = "RNGModifier_mus_chamber_controller_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mus_chamber_controller",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_chamber_controller_001"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_chamber_controller"),
	menu_id = "RNGModifier_mus_Options_Menu"
})
MenuCallbackHandler.RNGModifier_mus_box_at_exhibit = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_at_exhibit")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_mus_box_at_exhibit",
	title = "RNGModifier_mus_box_at_exhibit_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mus_box_at_exhibit",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_box_at_exhibit_001",
		"RNGModifier_mus_box_at_exhibit_002",
		"RNGModifier_mus_box_at_exhibit_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_box_at_exhibit"),
	menu_id = "RNGModifier_mus_Options_Menu"
})
MenuCallbackHandler.RNGModifier_mus_box_in_room_right = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_in_room_right")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10,
	id = "RNGModifier_mus_box_in_room_right",
	title = "RNGModifier_mus_box_in_room_right_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mus_box_in_room_right",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_box_in_room_right_001"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_box_in_room_right"),
	menu_id = "RNGModifier_mus_Options_Menu"
})
MenuCallbackHandler.RNGModifier_mus_box_at_courtyard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_at_courtyard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11,
	id = "RNGModifier_mus_box_at_courtyard",
	title = "RNGModifier_mus_box_at_courtyard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mus_box_at_courtyard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_box_at_courtyard_001",
		"RNGModifier_mus_box_at_courtyard_002",
		"RNGModifier_mus_box_at_courtyard_003",
		"RNGModifier_mus_box_at_courtyard_004"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_box_at_courtyard"),
	menu_id = "RNGModifier_mus_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mus_box_at_end = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_at_end")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_mus_box_at_end",
	title = "RNGModifier_mus_box_at_end_title",
	desc = "RNGModifier_mus_box_at_end_desc",
	callback = "RNGModifier_mus_box_at_end",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_box_at_end_001",
		"RNGModifier_mus_box_at_end_002"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_box_at_end"),
	menu_id = "RNGModifier_mus_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mus_security = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_security")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15,
	id = "RNGModifier_mus_security",
	title = "RNGModifier_mus_security_title",
	desc = "RNGModifier_mus_security_desc",
	callback = "RNGModifier_mus_security",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_security_001",
		"RNGModifier_mus_security_002",
		"RNGModifier_mus_security_003",
		"RNGModifier_mus_security_004",
		"RNGModifier_mus_security_005",
		"RNGModifier_mus_security_006"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_security"),
	menu_id = "RNGModifier_mus_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mus_spawnboxes_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnboxes_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 20,
	id = "RNGModifier_mus_spawnboxes_A",
	title = "RNGModifier_mus_spawnboxes_A_title",
	desc = "RNGModifier_mus_spawnboxes_desc",
	callback = "RNGModifier_mus_spawnboxes_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_spawnboxes_001",
		"RNGModifier_mus_spawnboxes_002",
		"RNGModifier_mus_spawnboxes_003",
		"RNGModifier_mus_spawnboxes_004",
		"RNGModifier_mus_spawnboxes_005",
		"RNGModifier_mus_spawnboxes_006",
		"RNGModifier_mus_spawnboxes_007"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnboxes_1"),
	menu_id = "RNGModifier_mus_Options_Menu"
})


MenuCallbackHandler.RNGModifier_mus_spawnboxes_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnboxes_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 19,
	id = "RNGModifier_mus_spawnboxes_B",
	title = "RNGModifier_mus_spawnboxes_B_title",
	desc = "RNGModifier_mus_spawnboxes_desc",
	callback = "RNGModifier_mus_spawnboxes_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_spawnboxes_001",
		"RNGModifier_mus_spawnboxes_002",
		"RNGModifier_mus_spawnboxes_003",
		"RNGModifier_mus_spawnboxes_004",
		"RNGModifier_mus_spawnboxes_005",
		"RNGModifier_mus_spawnboxes_006",
		"RNGModifier_mus_spawnboxes_007"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnboxes_2"),
	menu_id = "RNGModifier_mus_Options_Menu"
})


MenuCallbackHandler.RNGModifier_mus_spawnboxes_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnboxes_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 18,
	id = "RNGModifier_mus_spawnboxes_C",
	title = "RNGModifier_mus_spawnboxes_C_title",
	desc = "RNGModifier_mus_spawnboxes_desc",
	callback = "RNGModifier_mus_spawnboxes_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_spawnboxes_001",
		"RNGModifier_mus_spawnboxes_002",
		"RNGModifier_mus_spawnboxes_003",
		"RNGModifier_mus_spawnboxes_004",
		"RNGModifier_mus_spawnboxes_005",
		"RNGModifier_mus_spawnboxes_006",
		"RNGModifier_mus_spawnboxes_007"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnboxes_3"),
	menu_id = "RNGModifier_mus_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mus_spawnboxes_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnboxes_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_mus_spawnboxes_D",
	title = "RNGModifier_mus_spawnboxes_D_title",
	desc = "RNGModifier_mus_spawnboxes_desc",
	callback = "RNGModifier_mus_spawnboxes_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_spawnboxes_001",
		"RNGModifier_mus_spawnboxes_002",
		"RNGModifier_mus_spawnboxes_003",
		"RNGModifier_mus_spawnboxes_004",
		"RNGModifier_mus_spawnboxes_005",
		"RNGModifier_mus_spawnboxes_006",
		"RNGModifier_mus_spawnboxes_007"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnboxes_4"),
	menu_id = "RNGModifier_mus_Options_Menu"
})


MenuCallbackHandler.RNGModifier_mus_spawnboxes_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnboxes_5")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16,
	id = "RNGModifier_mus_spawnboxes_E",
	title = "RNGModifier_mus_spawnboxes_E_title",
	desc = "RNGModifier_mus_spawnboxes_desc",
	callback = "RNGModifier_mus_spawnboxes_E",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_spawnboxes_001",
		"RNGModifier_mus_spawnboxes_002",
		"RNGModifier_mus_spawnboxes_003",
		"RNGModifier_mus_spawnboxes_004",
		"RNGModifier_mus_spawnboxes_005",
		"RNGModifier_mus_spawnboxes_006",
		"RNGModifier_mus_spawnboxes_007"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnboxes_5"),
	menu_id = "RNGModifier_mus_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mus_spawnbox_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnbox_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_mus_spawnbox_A",
	title = "RNGModifier_mus_spawnbox_A_title",
	desc = "RNGModifier_mus_spawnbox_A_desc",
	callback = "RNGModifier_mus_spawnbox_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnbox_A"),
	menu_id = "RNGModifier_mus_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mus_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 21,
	id = "RNGModifier_mus_spawn",
	title = "RNGModifier_mus_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mus_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_spawn_1",
		"RNGModifier_mus_spawn_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn"),
	menu_id = "RNGModifier_mus_Options_Menu"
})

--[[
MenuCallbackHandler.RNGModifier_mus_spawnbox_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnbox_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_mus_spawnbox_B",
	title = "RNGModifier_mus_spawnbox_B_title",
	desc = "RNGModifier_mus_spawnbox_B_desc",
	callback = "RNGModifier_mus_spawnbox_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnbox_B"),
	menu_id = "RNGModifier_mus_Options_Menu"
})
]]
--[[MenuCallbackHandler.RNGModifier_mus_spawnbox_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnbox_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_mus_spawnbox_C",
	title = "RNGModifier_mus_spawnbox_C_title",
	desc = "RNGModifier_mus_spawnbox_desc",
	callback = "RNGModifier_mus_spawnbox_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnbox_C"),
	menu_id = "RNGModifier_mus_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mus_spawnbox_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnbox_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_mus_spawnbox_D",
	title = "RNGModifier_mus_spawnbox_D_title",
	desc = "RNGModifier_mus_spawnbox_desc",
	callback = "RNGModifier_mus_spawnbox_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnbox_D"),
	menu_id = "RNGModifier_mus_Options_Menu"
})


MenuCallbackHandler.RNGModifier_mus_spawnbox_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnbox_E")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_mus_spawnbox_E",
	title = "RNGModifier_mus_spawnbox_E_title",
	desc = "RNGModifier_mus_spawnbox_desc",
	callback = "RNGModifier_mus_spawnbox_E",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnbox_E"),
	menu_id = "RNGModifier_mus_Options_Menu"
})


MenuCallbackHandler.RNGModifier_mus_spawnboxes_F = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnboxes_F")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_mus_spawnboxes_F",
	title = "RNGModifier_mus_spawnboxes_F_title",
	desc = "RNGModifier_mus_spawnboxes_desc",
	callback = "RNGModifier_mus_spawnboxes_F",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mus_spawnboxF_1",
		"RNGModifier_mus_spawnboxF_2",
		"RNGModifier_mus_spawnboxF_3",
		"RNGModifier_mus_spawnboxF_4",
		"RNGModifier_mus_spawnboxF_5",
		"RNGModifier_mus_spawnboxF_6",
		"RNGModifier_mus_spawnboxF_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnboxes_F"),
	menu_id = "RNGModifier_mus_Options_Menu"
})]]--


--[[MenuCallbackHandler.RNGModifier_mus_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_mus_test",
	title = "RNGModifier_mus_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mus_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_test"),
	menu_id = "RNGModifier_mus_Options_Menu"
})]]--