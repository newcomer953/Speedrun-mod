_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "firestarter_2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_firestarter_2_randServerRoom = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randServerRoom")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_2_randServerRoom",
	title = "RNGModifier_firestarter_2_randServerRoom_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_firestarter_2_randServerRoom",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_firestarter_2_randServerRoom_1",
		"RNGModifier_firestarter_2_randServerRoom_2",
		"RNGModifier_firestarter_2_randServerRoom_3",
		"RNGModifier_firestarter_2_randServerRoom_4",
	},
	value = RNGModifier:SafeGetData("firestarter_2", "_randServerRoom"),
	menu_id = "RNGModifier_firestarter_2_Options_Menu"
})

--[[
MenuCallbackHandler.RNGModifier_firestarter_2_hackbox = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hackbox")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_2_hackbox",
	title = "RNGModifier_firestarter_2_hackbox_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_firestarter_2_hackbox",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"		
		
	},
	value = RNGModifier:SafeGetData("firestarter_2", "_hackbox"),
	menu_id = "RNGModifier_firestarter_2_Options_Menu"
})
]]

MenuCallbackHandler.RNGModifier_firestarter_2_no_fence = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_no_fence")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_2_no_fence",
	title = "RNGModifier_firestarter_2_no_fence_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_firestarter_2_no_fence",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"		
		
	},
	value = RNGModifier:SafeGetData("firestarter_2", "_no_fence"),
	menu_id = "RNGModifier_firestarter_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_firestarter_2_securitybox_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_securitybox_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_2_securitybox_A",
	title = "RNGModifier_firestarter_2_securitybox_A_title",
	desc = "RNGModifier_firestarter_2_securitybox_desc",
	callback = "RNGModifier_firestarter_2_securitybox_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_firestarter_2_securitybox_1",
		"RNGModifier_firestarter_2_securitybox_2",
		"RNGModifier_firestarter_2_securitybox_3",
		"RNGModifier_firestarter_2_securitybox_4",
		"RNGModifier_firestarter_2_securitybox_5",
		"RNGModifier_firestarter_2_securitybox_6",
		"RNGModifier_firestarter_2_securitybox_7",
		"RNGModifier_firestarter_2_securitybox_8",
		"RNGModifier_firestarter_2_securitybox_9",
		"RNGModifier_firestarter_2_securitybox_10",
		"RNGModifier_firestarter_2_securitybox_11",
		"RNGModifier_firestarter_2_securitybox_12",
		"RNGModifier_firestarter_2_securitybox_13",
		"RNGModifier_firestarter_2_securitybox_14",
		"RNGModifier_firestarter_2_securitybox_15",
		"RNGModifier_firestarter_2_securitybox_16",
		"RNGModifier_firestarter_2_securitybox_17",
		"RNGModifier_firestarter_2_securitybox_18",
		"RNGModifier_firestarter_2_securitybox_19",
		"RNGModifier_firestarter_2_securitybox_20",
		"RNGModifier_firestarter_2_securitybox_21",
		"RNGModifier_firestarter_2_securitybox_22",
		"RNGModifier_firestarter_2_securitybox_23",
		"RNGModifier_firestarter_2_securitybox_24",
		"RNGModifier_firestarter_2_securitybox_25"
	
	},
	value = RNGModifier:SafeGetData("firestarter_2", "_securitybox_A"),
	menu_id = "RNGModifier_firestarter_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_firestarter_2_securitybox_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_securitybox_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_2_securitybox_B",
	title = "RNGModifier_firestarter_2_securitybox_B_title",
	desc = "RNGModifier_firestarter_2_securitybox_desc",
	callback = "RNGModifier_firestarter_2_securitybox_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_firestarter_2_securitybox_1",
		"RNGModifier_firestarter_2_securitybox_2",
		"RNGModifier_firestarter_2_securitybox_3",
		"RNGModifier_firestarter_2_securitybox_4",
		"RNGModifier_firestarter_2_securitybox_5",
		"RNGModifier_firestarter_2_securitybox_6",
		"RNGModifier_firestarter_2_securitybox_7",
		"RNGModifier_firestarter_2_securitybox_8",
		"RNGModifier_firestarter_2_securitybox_9",
		"RNGModifier_firestarter_2_securitybox_10",
		"RNGModifier_firestarter_2_securitybox_11",
		"RNGModifier_firestarter_2_securitybox_12",
		"RNGModifier_firestarter_2_securitybox_13",
		"RNGModifier_firestarter_2_securitybox_14",
		"RNGModifier_firestarter_2_securitybox_15",
		"RNGModifier_firestarter_2_securitybox_16",
		"RNGModifier_firestarter_2_securitybox_17",
		"RNGModifier_firestarter_2_securitybox_18",
		"RNGModifier_firestarter_2_securitybox_19",
		"RNGModifier_firestarter_2_securitybox_20",
		"RNGModifier_firestarter_2_securitybox_21",
		"RNGModifier_firestarter_2_securitybox_22",
		"RNGModifier_firestarter_2_securitybox_23",
		"RNGModifier_firestarter_2_securitybox_24",
		"RNGModifier_firestarter_2_securitybox_25"
	
	},
	value = RNGModifier:SafeGetData("firestarter_2", "_securitybox_B"),
	menu_id = "RNGModifier_firestarter_2_Options_Menu"
})