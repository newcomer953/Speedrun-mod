_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "chas"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_chas_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 38,
	id = "RNGModifier_chas_spawn",
	title = "RNGModifier_chas_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_spawn_1",
		"RNGModifier_chas_spawn_2"
	},
	value = RNGModifier:SafeGetData("chas", "_spawn"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_alarm_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_alarm_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 37,
	id = "RNGModifier_chas_alarm_box",
	title = "RNGModifier_chas_alarm_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_alarm_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_alarm_box_1",
		"RNGModifier_chas_alarm_box_2",
		"RNGModifier_chas_alarm_box_3",
		"RNGModifier_chas_alarm_box_4"
	},
	value = RNGModifier:SafeGetData("chas", "_alarm_box"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_keycard_locker = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_locker")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 36.3,
	id = "RNGModifier_chas_keycard_locker",
	title = "RNGModifier_chas_keycard_locker_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_keycard_locker",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_keycard_locker_1",
		"RNGModifier_chas_keycard_locker_2"
	},
	value = RNGModifier:SafeGetData("chas", "_keycard_locker"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_right_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_right_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 36.2,
	id = "RNGModifier_chas_right_keycard",
	title = "RNGModifier_chas_right_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_right_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_keycard_1",
		"RNGModifier_chas_keycard_2",
		"RNGModifier_chas_keycard_3"
	},
	value = RNGModifier:SafeGetData("chas", "_right_keycard"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_left_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_left_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 36.1,
	id = "RNGModifier_chas_left_keycard",
	title = "RNGModifier_chas_left_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_left_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_keycard_1",
		"RNGModifier_chas_keycard_2",
		"RNGModifier_chas_keycard_3"
	},
	value = RNGModifier:SafeGetData("chas", "_left_keycard"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_keycard_special = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_special")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 35,
	id = "RNGModifier_chas_keycard_special",
	title = "RNGModifier_chas_keycard_special_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_keycard_special",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_keycard_special_1",
		"RNGModifier_chas_keycard_special_2"
	},
	value = RNGModifier:SafeGetData("chas", "_keycard_special"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_keycard_warehouse = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_warehouse")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 34,
	id = "RNGModifier_chas_keycard_warehouse",
	title = "RNGModifier_chas_keycard_warehouse_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_keycard_warehouse",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_keycard_warehouse_1",
		"RNGModifier_chas_keycard_warehouse_2",
		"RNGModifier_chas_keycard_warehouse_3"
	},
	value = RNGModifier:SafeGetData("chas", "_keycard_warehouse"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 33,
	id = "RNGModifier_chas_code",
	title = "RNGModifier_chas_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("chas", "_code"),
	menu_id = "RNGModifier_chas_Options_Menu"
})


MenuCallbackHandler.RNGModifier_chas_notepad_4_1st = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_4_1st")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16,
	id = "RNGModifier_chas_notepad_4_1st",
	title = "RNGModifier_chas_notepad_4_1st_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_4_1st",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_4_1st"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_4_2nd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_4_2nd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15,
	id = "RNGModifier_chas_notepad_4_2nd",
	title = "RNGModifier_chas_notepad_4_2nd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_4_2nd",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_4_2nd"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_4_3rd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_4_3rd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_chas_notepad_4_3rd",
	title = "RNGModifier_chas_notepad_4_3rd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_4_3rd",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_4_3rd"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_4_4th = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_4_4th")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 13,
	id = "RNGModifier_chas_notepad_4_4th",
	title = "RNGModifier_chas_notepad_4_4th_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_4_4th",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_4_4th"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_3_1st = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_3_1st")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 20,
	id = "RNGModifier_chas_notepad_3_1st",
	title = "RNGModifier_chas_notepad_3_1st_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_3_1st",
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
		"RNGModifier_number_4_use_0"
	},
	value = RNGModifier:SafeGetData("chas", "_notepad_3_1st"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_3_2nd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_3_2nd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 19,
	id = "RNGModifier_chas_notepad_3_2nd",
	title = "RNGModifier_chas_notepad_3_2nd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_3_2nd",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_3_2nd"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_3_3rd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_3_3rd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 18,
	id = "RNGModifier_chas_notepad_3_3rd",
	title = "RNGModifier_chas_notepad_3_3rd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_3_3rd",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_3_3rd"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_3_4th = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_3_4th")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_chas_notepad_3_4th",
	title = "RNGModifier_chas_notepad_3_4th_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_3_4th",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_3_4th"),
	menu_id = "RNGModifier_chas_Options_Menu"
})


MenuCallbackHandler.RNGModifier_chas_notepad_2_1st = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_2_1st")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 24,
	id = "RNGModifier_chas_notepad_2_1st",
	title = "RNGModifier_chas_notepad_2_1st_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_2_1st",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_2_1st"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_2_2nd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_2_2nd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 23,
	id = "RNGModifier_chas_notepad_2_2nd",
	title = "RNGModifier_chas_notepad_2_2nd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_2_2nd",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_2_2nd"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_2_3rd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_2_3rd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 22,
	id = "RNGModifier_chas_notepad_2_3rd",
	title = "RNGModifier_chas_notepad_2_3rd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_2_3rd",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_2_3rd"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_2_4th = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_2_4th")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 21,
	id = "RNGModifier_chas_notepad_2_4th",
	title = "RNGModifier_chas_notepad_2_4th_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_2_4th",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_2_4th"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_1_1st = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_1_1st")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 28,
	id = "RNGModifier_chas_notepad_1_1st",
	title = "RNGModifier_chas_notepad_1_1st_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_1_1st",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_1_1st"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_1_2nd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_1_2nd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 27,
	id = "RNGModifier_chas_notepad_1_2nd",
	title = "RNGModifier_chas_notepad_1_2nd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_1_2nd",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_1_2nd"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_1_3rd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_1_3rd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 26,
	id = "RNGModifier_chas_notepad_1_3rd",
	title = "RNGModifier_chas_notepad_1_3rd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_1_3rd",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_1_3rd"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_notepad_1_4th = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_notepad_1_4th")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 25,
	id = "RNGModifier_chas_notepad_1_4th",
	title = "RNGModifier_chas_notepad_1_4th_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_notepad_1_4th",
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
	value = RNGModifier:SafeGetData("chas", "_notepad_1_4th"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_crowbar_auction = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_auction")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_chas_crowbar_auction",
	title = "RNGModifier_chas_crowbar_auction_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_crowbar_auction",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_crowbar_auction_1",
		"RNGModifier_chas_crowbar_auction_2",
		"RNGModifier_chas_crowbar_auction_3"
		
	},
	value = RNGModifier:SafeGetData("chas", "_crowbar_auction"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_crowbar_warehouse = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_warehouse")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11,
	id = "RNGModifier_chas_crowbar_warehouse",
	title = "RNGModifier_chas_crowbar_warehouse_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_crowbar_warehouse",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_crowbar_warehouse_1",
		"RNGModifier_chas_crowbar_warehouse_2",
		"RNGModifier_chas_crowbar_warehouse_3",
		"RNGModifier_chas_crowbar_warehouse_4",
		"RNGModifier_chas_crowbar_warehouse_5"
		
	},
	value = RNGModifier:SafeGetData("chas", "_crowbar_warehouse"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_blue_wire = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue_wire")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10,
	id = "RNGModifier_chas_blue_wire",
	title = "RNGModifier_chas_blue_wire_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_blue_wire",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_wire_3",
		"RNGModifier_chas_wire_4",
		"RNGModifier_chas_wire_5",
		"RNGModifier_chas_wire_6",
		"RNGModifier_chas_wire_7",
		"RNGModifier_chas_wire_8"
		
	},
	value = RNGModifier:SafeGetData("chas", "_blue_wire"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_green_wire = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green_wire")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_chas_green_wire",
	title = "RNGModifier_chas_green_wire_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_green_wire",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_wire_2",
		"RNGModifier_chas_wire_3",
		"RNGModifier_chas_wire_4",
		"RNGModifier_chas_wire_5",
		"RNGModifier_chas_wire_6",
		"RNGModifier_chas_wire_7",
		"RNGModifier_chas_wire_8"
		
	},
	value = RNGModifier:SafeGetData("chas", "_green_wire"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_red_wire = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_wire")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_chas_red_wire",
	title = "RNGModifier_chas_red_wire_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_red_wire",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_wire_1",
		"RNGModifier_chas_wire_2",
		"RNGModifier_chas_wire_3",
		"RNGModifier_chas_wire_4",
		"RNGModifier_chas_wire_5",
		"RNGModifier_chas_wire_6",
		"RNGModifier_chas_wire_7",
		"RNGModifier_chas_wire_8"
		
	},
	value = RNGModifier:SafeGetData("chas", "_red_wire"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_yellow_wire = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_yellow_wire")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7,
	id = "RNGModifier_chas_yellow_wire",
	title = "RNGModifier_chas_yellow_wire_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_yellow_wire",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_wire_4",
		"RNGModifier_chas_wire_5",
		"RNGModifier_chas_wire_6",
		"RNGModifier_chas_wire_7",
		"RNGModifier_chas_wire_8"
		
	},
	value = RNGModifier:SafeGetData("chas", "_yellow_wire"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_laser_color_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laser_color_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 6,
	id = "RNGModifier_chas_laser_color_A",
	title = "RNGModifier_chas_laser_color_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_laser_color_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_laser_color_1",
		"RNGModifier_chas_laser_color_2",
		"RNGModifier_chas_laser_color_3",
		"RNGModifier_chas_laser_color_4"
		
	},
	value = RNGModifier:SafeGetData("chas", "_laser_color_A"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_laser_color_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laser_color_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 5,
	id = "RNGModifier_chas_laser_color_B",
	title = "RNGModifier_chas_laser_color_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_laser_color_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_laser_color_1",
		"RNGModifier_chas_laser_color_2",
		"RNGModifier_chas_laser_color_3",
		"RNGModifier_chas_laser_color_4"
		
	},
	value = RNGModifier:SafeGetData("chas", "_laser_color_B"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_dragon_crate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_dragon_crate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4,
	id = "RNGModifier_chas_dragon_crate",
	title = "RNGModifier_chas_dragon_crate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_dragon_crate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_dragon_crate_1",
		"RNGModifier_chas_dragon_crate_2",
		"RNGModifier_chas_dragon_crate_3",
		"RNGModifier_chas_dragon_crate_4",
		"RNGModifier_chas_dragon_crate_5",
		"RNGModifier_chas_dragon_crate_6"
		
	},
	value = RNGModifier:SafeGetData("chas", "_dragon_crate"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_security_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_security_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 3,
	id = "RNGModifier_chas_security_room",
	title = "RNGModifier_chas_security_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chas_security_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chas_security_room_1",
		"RNGModifier_chas_security_room_2"
		
	},
	value = RNGModifier:SafeGetData("chas", "_security_room"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chas_key_success = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_key_success")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 2,
	id = "RNGModifier_chas_key_success",
	title = "RNGModifier_chas_key_success_title",
	desc = "RNGModifier_chas_key_success_desc",
	callback = "RNGModifier_chas_key_success",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true", 
		"RNGModifier_bool_4_false"
		
	},
	value = RNGModifier:SafeGetData("chas", "_key_success"),
	menu_id = "RNGModifier_chas_Options_Menu"
})

