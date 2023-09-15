_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "vit"
local _bool = true
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_vit_vault_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_vault_location",
	title = "RNGModifier_vit_vault_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_vault_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_vault_location"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_spawn",
	title = "RNGModifier_vit_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_security_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_security_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_security_room",
	title = "RNGModifier_vit_security_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_security_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_vit_security_room_1",
		"RNGModifier_vit_security_room_2",
		"RNGModifier_vit_security_room_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_security_room"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_closedoor_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_closedoor_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_closedoor_B",
	title = "RNGModifier_vit_closedoor_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_closedoor_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_closedoor_2",
		"RNGModifier_closedoor_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_closedoor_B"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_closedoor_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_closedoor_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_closedoor_A",
	title = "RNGModifier_vit_closedoor_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_closedoor_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_closedoor_1",
		"RNGModifier_closedoor_2",
		"RNGModifier_closedoor_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_closedoor_A"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_laptop_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laptop_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_laptop_room",
	title = "RNGModifier_vit_laptop_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_laptop_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_vit_laptop_room_1",
		"RNGModifier_vit_laptop_room_2",
		"RNGModifier_vit_laptop_room_3",
		"RNGModifier_vit_laptop_room_4",
		"RNGModifier_vit_laptop_room_5",
		"RNGModifier_vit_laptop_room_6",
		"RNGModifier_vit_laptop_room_7",
		"RNGModifier_vit_laptop_room_8",
		"RNGModifier_vit_laptop_room_9",
		"RNGModifier_vit_laptop_room_10"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_laptop_room"),
	menu_id = "RNGModifier_vit_Options_Menu"
})
MenuCallbackHandler.RNGModifier_vit_usb = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_usb")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_usb",
	title = "RNGModifier_vit_usb_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_usb",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_vit_usb_001",
		"RNGModifier_vit_usb_002",
		"RNGModifier_vit_usb_003",
		"RNGModifier_vit_usb_004",
		"RNGModifier_vit_usb_005",
		"RNGModifier_vit_usb_006",
		"RNGModifier_vit_usb_007",
		"RNGModifier_vit_usb_008",
		"RNGModifier_vit_usb_009",
		"RNGModifier_vit_usb_010",
		"RNGModifier_vit_usb_011",
		"RNGModifier_vit_usb_012"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_usb"),
	menu_id = "RNGModifier_vit_Options_Menu"
})
MenuCallbackHandler.RNGModifier_vit_first_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_first_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_first_number",
	title = "RNGModifier_vit_first_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_first_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_first_number"),
	menu_id = "RNGModifier_vit_Options_Menu"
})
MenuCallbackHandler.RNGModifier_vit_second_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_second_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_second_number",
	title = "RNGModifier_vit_second_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_second_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_second_number"),
	menu_id = "RNGModifier_vit_Options_Menu"
})
MenuCallbackHandler.RNGModifier_vit_third_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_third_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_third_number",
	title = "RNGModifier_vit_third_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_third_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_third_number"),
	menu_id = "RNGModifier_vit_Options_Menu"
})
MenuCallbackHandler.RNGModifier_vit_fourth_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fourth_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_fourth_number",
	title = "RNGModifier_vit_fourth_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_fourth_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_fourth_number"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_vit_bookshelf = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vit_bookshelf")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_vit_bookshelf",
	title = "RNGModifier_vit_vit_bookshelf_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_vit_bookshelf",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_vit_bookshelf"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_button = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_button")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_button",
	title = "RNGModifier_vit_button_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_button",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_button_1",
		"RNGModifier_button_2",
		"RNGModifier_button_3",
		"RNGModifier_button_4",
		"RNGModifier_button_5",
		"RNGModifier_button_6",
		"RNGModifier_button_7",
		"RNGModifier_button_8",
		"RNGModifier_button_9",
		"RNGModifier_button_10"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_button"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_1",
	title = "RNGModifier_vit_riddle_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_1"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_2",
	title = "RNGModifier_vit_riddle_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_2"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_3",
	title = "RNGModifier_vit_riddle_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_3"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_4",
	title = "RNGModifier_vit_riddle_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_4"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_5 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_5")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_5",
	title = "RNGModifier_vit_riddle_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_5",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_5"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_6 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_6")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_6",
	title = "RNGModifier_vit_riddle_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_6",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_6"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_7 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_7")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_7",
	title = "RNGModifier_vit_riddle_7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_7",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_7"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_8 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_8")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_8",
	title = "RNGModifier_vit_riddle_8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_8",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_8"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_9 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_9")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_9",
	title = "RNGModifier_vit_riddle_9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_9",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_9"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_10 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_10")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_10",
	title = "RNGModifier_vit_riddle_10_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_10",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_10"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_11 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_11")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_11",
	title = "RNGModifier_vit_riddle_11_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_11",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_11"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_12 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_12")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_12",
	title = "RNGModifier_vit_riddle_12_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_12",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_12"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_riddle_13 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_riddle_13")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_riddle_13",
	title = "RNGModifier_vit_riddle_13_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_riddle_13",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_riddle_13"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_wire_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wire_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_wire_A",
	title = "RNGModifier_vit_wire_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_wire_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_vit_wire_A_1",
	    "RNGModifier_vit_wire_A_2",
	    "RNGModifier_vit_wire_A_3",
	    "RNGModifier_vit_wire_A_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_wire_A"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_wire_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wire_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_wire_B",
	title = "RNGModifier_vit_wire_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_wire_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_wire_B"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_red_wire_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_wire_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_red_wire_box",
	title = "RNGModifier_vit_red_wire_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_red_wire_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_10",
		"RNGModifier_number_4_use_11",
		"RNGModifier_number_4_use_12",
		"RNGModifier_number_4_use_13",
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_red_wire_box"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_green_wire_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green_wire_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_green_wire_box",
	title = "RNGModifier_vit_green_wire_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_green_wire_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_10",
		"RNGModifier_number_4_use_11",
		"RNGModifier_number_4_use_12",
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_green_wire_box"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_blue_wire_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue_wire_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_blue_wire_box",
	title = "RNGModifier_vit_blue_wire_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_blue_wire_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_10",
		"RNGModifier_number_4_use_11",
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_blue_wire_box"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_yellow_wire_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_yellow_wire_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_yellow_wire_box",
	title = "RNGModifier_vit_yellow_wire_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_yellow_wire_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
	    "RNGModifier_number_4_use_2",
	    "RNGModifier_number_4_use_3",
	    "RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_10",
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_yellow_wire_box"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_powerbox = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_powerbox")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_powerbox",
	title = "RNGModifier_vit_powerbox_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_powerbox",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_vit_powerbox_1",
	    "RNGModifier_vit_powerbox_2",
	    "RNGModifier_vit_powerbox_3",
	    "RNGModifier_vit_powerbox_4",
		"RNGModifier_vit_powerbox_5",
		"RNGModifier_vit_powerbox_6",
		"RNGModifier_vit_powerbox_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_powerbox"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

MenuCallbackHandler.RNGModifier_vit_thermite = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_thermite")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_thermite",
	title = "RNGModifier_vit_thermite_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_thermite",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_vit_thermite_1",
	    "RNGModifier_vit_thermite_2",
	    "RNGModifier_vit_thermite_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_thermite"),
	menu_id = "RNGModifier_vit_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_vit_study = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_study")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_study",
	title = "RNGModifier_vit_study_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_study",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_vit_security_room_1",
	    "RNGModifier_vit_security_room_2",
	    "RNGModifier_vit_security_room_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_study"),
	menu_id = "RNGModifier_vit_Options_Menu"
})]]

--[[MenuCallbackHandler.RNGModifier_vit_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_test",
	title = "RNGModifier_vit_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_test"),
	menu_id = "RNGModifier_vit_Options_Menu"
})]]--

--[[MenuCallbackHandler.RNGModifier_vit_test1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_vit_test1",
	title = "RNGModifier_vit_test1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_vit_test1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_test1"),
	menu_id = "RNGModifier_vit_Options_Menu"
})]]--