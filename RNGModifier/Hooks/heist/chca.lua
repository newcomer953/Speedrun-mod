_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "chca"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_chca_bartender = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bartender")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 38,
	id = "RNGModifier_chca_bartender",
	title = "RNGModifier_chca_bartender_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_bartender",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_bartender_1",
		"RNGModifier_chca_bartender_2"
	},
	value = RNGModifier:SafeGetData("chca", "_bartender"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_normal_kc_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_normal_kc_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 37,
	id = "RNGModifier_chca_normal_kc_1",
	title = "RNGModifier_chca_normal_kc_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_normal_kc_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_keycard_1",
		"RNGModifier_chca_keycard_2",
		"RNGModifier_chca_keycard_3",
		"RNGModifier_chca_keycard_4",
		"RNGModifier_chca_keycard_5",
		"RNGModifier_chca_keycard_6",
		"RNGModifier_chca_keycard_7",
		"RNGModifier_chca_keycard_8"
	},
	value = RNGModifier:SafeGetData("chca", "_normal_kc_1"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_normal_kc_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_normal_kc_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 36.3,
	id = "RNGModifier_chca_normal_kc_2",
	title = "RNGModifier_chca_normal_kc_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_normal_kc_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_keycard_1",
		"RNGModifier_chca_keycard_2",
		"RNGModifier_chca_keycard_3",
		"RNGModifier_chca_keycard_4",
		"RNGModifier_chca_keycard_5",
		"RNGModifier_chca_keycard_6",
		"RNGModifier_chca_keycard_7",
		"RNGModifier_chca_keycard_8"
	},
	value = RNGModifier:SafeGetData("chca", "_normal_kc_2"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_normal_kc_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_normal_kc_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 36.2,
	id = "RNGModifier_chca_normal_kc_3",
	title = "RNGModifier_chca_normal_kc_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_normal_kc_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_keycard_1",
		"RNGModifier_chca_keycard_2",
		"RNGModifier_chca_keycard_3",
		"RNGModifier_chca_keycard_4",
		"RNGModifier_chca_keycard_5",
		"RNGModifier_chca_keycard_6",
		"RNGModifier_chca_keycard_7",
		"RNGModifier_chca_keycard_8"
	},
	value = RNGModifier:SafeGetData("chca", "_normal_kc_3"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_normal_kc_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_normal_kc_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 36.1,
	id = "RNGModifier_chca_normal_kc_4",
	title = "RNGModifier_chca_normal_kc_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_normal_kc_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_keycard_1",
		"RNGModifier_chca_keycard_2",
		"RNGModifier_chca_keycard_3",
		"RNGModifier_chca_keycard_4",
		"RNGModifier_chca_keycard_5",
		"RNGModifier_chca_keycard_6",
		"RNGModifier_chca_keycard_7",
		"RNGModifier_chca_keycard_8"
	},
	value = RNGModifier:SafeGetData("chca", "_normal_kc_4"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_normal_kc_5 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_normal_kc_5")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 35,
	id = "RNGModifier_chca_normal_kc_5",
	title = "RNGModifier_chca_normal_kc_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_normal_kc_5",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_keycard_1",
		"RNGModifier_chca_keycard_2",
		"RNGModifier_chca_keycard_3",
		"RNGModifier_chca_keycard_4",
		"RNGModifier_chca_keycard_5",
		"RNGModifier_chca_keycard_6",
		"RNGModifier_chca_keycard_7",
		"RNGModifier_chca_keycard_8"
	},
	value = RNGModifier:SafeGetData("chca", "_normal_kc_5"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

--[[
MenuCallbackHandler.RNGModifier_chca_deathwish_kc_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_deathwish_kc_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 34,
	id = "RNGModifier_chca_deathwish_kc_1",
	title = "RNGModifier_chca_deathwish_kc_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_deathwish_kc_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_keycard_1",
		"RNGModifier_chca_keycard_2",
		"RNGModifier_chca_keycard_3",
		"RNGModifier_chca_keycard_4",
		"RNGModifier_chca_keycard_5",
		"RNGModifier_chca_keycard_6",
		"RNGModifier_chca_keycard_7",
		"RNGModifier_chca_keycard_8"
	},
	value = RNGModifier:SafeGetData("chca", "_deathwish_kc_1"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_deathwish_kc_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_deathwish_kc_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 33,
	id = "RNGModifier_chca_deathwish_kc_2",
	title = "RNGModifier_chca_deathwish_kc_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_deathwish_kc_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_keycard_1",
		"RNGModifier_chca_keycard_2",
		"RNGModifier_chca_keycard_3",
		"RNGModifier_chca_keycard_4",
		"RNGModifier_chca_keycard_5",
		"RNGModifier_chca_keycard_6",
		"RNGModifier_chca_keycard_7",
		"RNGModifier_chca_keycard_8"
	},
	value = RNGModifier:SafeGetData("chca", "_deathwish_kc_2"),
	menu_id = "RNGModifier_chca_Options_Menu"
})


MenuCallbackHandler.RNGModifier_chca_deathwish_kc_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_deathwish_kc_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 32,
	id = "RNGModifier_chca_deathwish_kc_3",
	title = "RNGModifier_chca_deathwish_kc_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_deathwish_kc_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_keycard_1",
		"RNGModifier_chca_keycard_2",
		"RNGModifier_chca_keycard_3",
		"RNGModifier_chca_keycard_4",
		"RNGModifier_chca_keycard_5",
		"RNGModifier_chca_keycard_6",
		"RNGModifier_chca_keycard_7",
		"RNGModifier_chca_keycard_8"
	},
	value = RNGModifier:SafeGetData("chca", "_deathwish_kc_3"),
	menu_id = "RNGModifier_chca_Options_Menu"
})
]]

MenuCallbackHandler.RNGModifier_chca_massage = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_massage")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 31,
	id = "RNGModifier_chca_massage",
	title = "RNGModifier_chca_massage_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_massage",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_massage_1",
		"RNGModifier_chca_massage_2"
		
	},
	value = RNGModifier:SafeGetData("chca", "_massage"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_1st_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_1st_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 30,
	id = "RNGModifier_chca_1st_number",
	title = "RNGModifier_chca_1st_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_1st_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_0",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9"
		
	},
	value = RNGModifier:SafeGetData("chca", "_1st_number"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_2nd_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_2nd_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 29,
	id = "RNGModifier_chca_2nd_number",
	title = "RNGModifier_chca_2nd_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_2nd_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_0",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9"
		
	},
	value = RNGModifier:SafeGetData("chca", "_2nd_number"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_3rd_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_3rd_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 28,
	id = "RNGModifier_chca_3rd_number",
	title = "RNGModifier_chca_3rd_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_3rd_number",
	items = {
		"RNGModifier_Default_One_Item",	
		"RNGModifier_number_4_use_0",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9"
		
	},
	value = RNGModifier:SafeGetData("chca", "_3rd_number"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_4th_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_4th_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 27,
	id = "RNGModifier_chca_4th_number",
	title = "RNGModifier_chca_4th_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_4th_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_0",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9"
		
	},
	value = RNGModifier:SafeGetData("chca", "_4th_number"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_cabin = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cabin")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 26,
	id = "RNGModifier_chca_cabin",
	title = "RNGModifier_chca_cabin_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_cabin",
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
		"RNGModifier_number_4_use_11",
		"RNGModifier_number_4_use_12",
		"RNGModifier_number_4_use_13",
		"RNGModifier_number_4_use_14",
		"RNGModifier_number_4_use_15",
		"RNGModifier_number_4_use_16"
		
	},
	value = RNGModifier:SafeGetData("chca", "_cabin"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_control = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_control")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 25,
	id = "RNGModifier_chca_control",
	title = "RNGModifier_chca_control_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_control",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_control_1",
		"RNGModifier_chca_control_2"
		
	},
	value = RNGModifier:SafeGetData("chca", "_control"),
	menu_id = "RNGModifier_chca_Options_Menu"
})


MenuCallbackHandler.RNGModifier_chca_security = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_security")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 24,
	id = "RNGModifier_chca_security",
	title = "RNGModifier_chca_security_title",
	desc = "RNGModifier_chca_security_desc",
	callback = "RNGModifier_chca_security",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_security_1",
		"RNGModifier_chca_security_2",
		"RNGModifier_chca_security_3"
		
	},
	value = RNGModifier:SafeGetData("chca", "_security"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_laser = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laser")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 23,
	id = "RNGModifier_chca_laser",
	title = "RNGModifier_chca_laser_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_laser",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_laser_1",
		"RNGModifier_chca_laser_2"
		
	},
	value = RNGModifier:SafeGetData("chca", "_laser"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_boat = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boat")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 22,
	id = "RNGModifier_chca_boat",
	title = "RNGModifier_chca_boat_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_boat",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_boat_1",
		"RNGModifier_chca_boat_2"
		
	},
	value = RNGModifier:SafeGetData("chca", "_boat"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 21,
	id = "RNGModifier_chca_escape",
	title = "RNGModifier_chca_escape_title",
	desc = "RNGModifier_chca_escape_desc",
	callback = "RNGModifier_chca_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		
	},
	value = RNGModifier:SafeGetData("chca", "_escape"),
	menu_id = "RNGModifier_chca_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chca_gear = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gear")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 37.5,
	id = "RNGModifier_chca_gear",
	title = "RNGModifier_chca_gear_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chca_gear",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chca_gear_1",
		"RNGModifier_chca_gear_2"
		
	},
	value = RNGModifier:SafeGetData("chca", "_gear"),
	menu_id = "RNGModifier_chca_Options_Menu"
})