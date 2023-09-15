_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "pent"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

--[[MenuCallbackHandler.RNGModifier_pent_boobytrap_chance = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boobytrap_chance")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pent_boobytrap_chance",
	title = "RNGModifier_pent_boobytrap_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_boobytrap_chance",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("pent", "_boobytrap_chance"),
	menu_id = "RNGModifier_pent_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_pent_electric_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_electric_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_pent_electric_box",
	title = "RNGModifier_pent_electric_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_electric_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_electric_box_1",
		"RNGModifier_electric_box_2",
		"RNGModifier_electric_box_3"
	},
	value = RNGModifier:SafeGetData("pent", "_electric_box"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_box_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.1,
	id = "RNGModifier_pent_box_1",
	title = "RNGModifier_pent_box_1_title",
	desc = "RNGModifier_box_desc",
	callback = "RNGModifier_pent_box_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_box_ground_1",
		"RNGModifier_pent_box_ground_2",
		"RNGModifier_pent_box_ground_3",
		"RNGModifier_pent_box_basement_1",
		"RNGModifier_pent_box_basement_2",
		"RNGModifier_pent_box_basement_3",
		"RNGModifier_pent_box_basement_4"
	},
	value = RNGModifier:SafeGetData("pent", "_box_1"),
	menu_id = "RNGModifier_pent_Options_Menu"
})


MenuCallbackHandler.RNGModifier_pent_box_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.2,
	id = "RNGModifier_pent_box_2",
	title = "RNGModifier_pent_box_2_title",
	desc = "RNGModifier_box_desc",
	callback = "RNGModifier_pent_box_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_box_ground_1",
		"RNGModifier_pent_box_ground_2",
		"RNGModifier_pent_box_ground_3",
		"RNGModifier_pent_box_basement_1",
		"RNGModifier_pent_box_basement_2",
		"RNGModifier_pent_box_basement_3",
		"RNGModifier_pent_box_basement_4"
	},
	value = RNGModifier:SafeGetData("pent", "_box_2"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_box_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.3,
	id = "RNGModifier_pent_box_3",
	title = "RNGModifier_pent_box_3_title",
	desc = "RNGModifier_box_desc",
	callback = "RNGModifier_pent_box_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_box_ground_1",
		"RNGModifier_pent_box_ground_2",
		"RNGModifier_pent_box_ground_3",
		"RNGModifier_pent_box_basement_1",
		"RNGModifier_pent_box_basement_2",
		"RNGModifier_pent_box_basement_3",
		"RNGModifier_pent_box_basement_4"
	},
	value = RNGModifier:SafeGetData("pent", "_box_3"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_lobby_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_lobby_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4,
	id = "RNGModifier_pent_lobby_door",
	title = "RNGModifier_pent_lobby_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_lobby_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData("pent", "_lobby_door"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_tool = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_tool")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4,
	id = "RNGModifier_pent_tool",
	title = "RNGModifier_pent_tool_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_tool",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_2",
		"RNGModifier_direction_3",
		"RNGModifier_direction_1"
	},
	value = RNGModifier:SafeGetData("pent", "_tool"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_elevator_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_elevator_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5,
	id = "RNGModifier_pent_elevator_box",
	title = "RNGModifier_pent_elevator_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_elevator_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_elevator_box_1",
		"RNGModifier_elevator_box_2"
	},
	value = RNGModifier:SafeGetData("pent", "_elevator_box"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_server = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -6,
	id = "RNGModifier_pent_server",
	title = "RNGModifier_pent_server_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_server",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_server_1A",
		"RNGModifier_pent_server_1B",
		"RNGModifier_pent_server_2A",
		"RNGModifier_pent_server_2B",
		"RNGModifier_pent_server_3"
	},
	value = RNGModifier:SafeGetData("pent", "_server"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_laptop = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laptop")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7,
	id = "RNGModifier_pent_laptop",
	title = "RNGModifier_pent_laptop_title",
	desc = "RNGModifier_pent_laptop_desc",
	callback = "RNGModifier_pent_laptop",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_laptop_1",
		"RNGModifier_pent_laptop_2",
		"RNGModifier_pent_laptop_3"
	},
	value = RNGModifier:SafeGetData("pent", "_laptop"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8,
	id = "RNGModifier_pent_keycard",
	title = "RNGModifier_pent_keycard_title",
	desc = "RNGModifier_pent_keycard_desc",
	callback = "RNGModifier_pent_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_keycard_1",
		"RNGModifier_pent_keycard_2",
		"RNGModifier_pent_keycard_3",
		"RNGModifier_pent_keycard_4"
	},
	value = RNGModifier:SafeGetData("pent", "_keycard"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_gold = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_gold")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_gold")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -9,
	id = "RNGModifier_pent_gold",
	title = "RNGModifier_pent_gold_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_gold",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_gold")) == 1 and true or false,
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_alarm_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_alarm_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -10.1,
	id = "RNGModifier_pent_alarm_1",
	title = "RNGModifier_pent_alarm_1_title",
	desc = "RNGModifier_pent_alarm_desc",
	callback = "RNGModifier_pent_alarm_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_alarm_1",
		"RNGModifier_pent_alarm_2",
		"RNGModifier_pent_alarm_3",
		"RNGModifier_pent_alarm_4"
	},
	value = RNGModifier:SafeGetData("pent", "_alarm_1"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_alarm_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_alarm_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -10.2,
	id = "RNGModifier_pent_alarm_2",
	title = "RNGModifier_pent_alarm_2_title",
	desc = "RNGModifier_pent_alarm_desc",
	callback = "RNGModifier_pent_alarm_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_alarm_1",
		"RNGModifier_pent_alarm_2",
		"RNGModifier_pent_alarm_3",
		"RNGModifier_pent_alarm_4"
	},
	value = RNGModifier:SafeGetData("pent", "_alarm_2"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_stealth_boss_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_stealth_boss_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -11,
	id = "RNGModifier_pent_stealth_boss_location",
	title = "RNGModifier_pent_stealth_boss_location_title",
	desc = "RNGModifier_pent_stealth_boss_location_desc",
	callback = "RNGModifier_pent_stealth_boss_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_stealth_boss_location_1",
		"RNGModifier_pent_stealth_boss_location_2",
		"RNGModifier_pent_stealth_boss_location_3"
	},
	value = RNGModifier:SafeGetData("pent", "_stealth_boss_location"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_ladder = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_ladder")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_ladder")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -12,
	id = "RNGModifier_pent_ladder",
	title = "RNGModifier_pent_ladder_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_ladder",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_ladder")) == 1 and true or false,
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_breaker_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_breaker_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -13,
	id = "RNGModifier_pent_breaker_location",
	title = "RNGModifier_pent_breaker_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_breaker_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pent_breaker_location_1",
		"RNGModifier_pent_breaker_location_2"
	},
	value = RNGModifier:SafeGetData("pent", "_breaker_location"),
	menu_id = "RNGModifier_pent_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pent_no_heli_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_heli_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_heli_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -14,
	id = "RNGModifier_pent_no_heli_delay",
	title = "RNGModifier_pent_no_heli_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pent_no_heli_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_heli_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})