_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "deep"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_deep_kc_civ = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_kc_civ")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_kc_civ",
	title = "RNGModifier_deep_kc_civ_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_kc_civ",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_area_1",
		"RNGModifier_deep_area_2",
		"RNGModifier_deep_area_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_kc_civ"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_server_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_server_room",
	title = "RNGModifier_deep_server_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_server_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_area_6",
		"RNGModifier_deep_area_3",
		"RNGModifier_deep_area_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_server_room"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_usb_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_usb_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_usb_room",
	title = "RNGModifier_deep_usb_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_usb_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_area_2",
		"RNGModifier_deep_area_1",
		"RNGModifier_deep_area_6",
		"RNGModifier_deep_area_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_usb_room"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_bridge = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bridge")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_bridge",
	title = "RNGModifier_deep_bridge_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_bridge",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_bridge_1",
		"RNGModifier_deep_bridge_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_bridge"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_pc = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pc")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_pc",
	title = "RNGModifier_deep_pc_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_pc",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_pc_1",
		"RNGModifier_deep_pc_2",
		"RNGModifier_deep_pc_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pc"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_no_usb_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_usb_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_usb_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_deep_no_usb_delay",
	title = "RNGModifier_deep_no_usb_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_no_usb_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_usb_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_testing_device = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_testing_device")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_testing_device",
	title = "RNGModifier_deep_testing_device_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_testing_device",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_testing_device"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_correct_oil = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_correct_oil")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_correct_oil",
	title = "RNGModifier_deep_correct_oil_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_correct_oil",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_correct_oil_1",
		"RNGModifier_deep_correct_oil_2",
		"RNGModifier_deep_correct_oil_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_correct_oil"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_oil_position = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_oil_position")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_oil_position",
	title = "RNGModifier_deep_oil_position_title",
	desc = "RNGModifier_deep_oil_position_desc",
	callback = "RNGModifier_deep_oil_position",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_oil_position_1",
		"RNGModifier_deep_oil_position_2",
		"RNGModifier_deep_oil_position_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_oil_position"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_correct_color = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_correct_color")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_correct_color",
	title = "RNGModifier_deep_correct_color_title",
	desc = "RNGModifier_deep_correct_color_desc",
	callback = "RNGModifier_deep_correct_color",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_color_blue",
		"RNGModifier_color_red",
		"RNGModifier_color_yellow"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_correct_color"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_pump = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pump")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_pump",
	title = "RNGModifier_deep_pump_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_pump",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pump"),
	menu_id = "RNGModifier_deep_Options_Menu"
})


MenuCallbackHandler.RNGModifier_deep_correct_pipe_rotation = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_correct_pipe_rotation")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_correct_pipe_rotation",
	title = "RNGModifier_deep_correct_pipe_rotation_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_correct_pipe_rotation",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_correct_pipe_rotation_1",
		"RNGModifier_deep_correct_pipe_rotation_2",
		"RNGModifier_deep_correct_pipe_rotation_3",
		"RNGModifier_deep_correct_pipe_rotation_4",
		"RNGModifier_deep_correct_pipe_rotation_5",
		"RNGModifier_deep_correct_pipe_rotation_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_correct_pipe_rotation"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_no_event = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_event")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_event")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_deep_no_event",
	title = "RNGModifier_deep_no_event_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_no_event",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_event")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_no_pump_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_pump_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_pump_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_deep_no_pump_delay",
	title = "RNGModifier_deep_no_pump_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_no_pump_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_pump_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_deep_phone_or_firewall = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_phone_or_firewall")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_phone_or_firewall",
	title = "RNGModifier_deep_phone_or_firewall_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_phone_or_firewall",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_phone_or_firewall_1",
		"RNGModifier_deep_phone_or_firewall_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_phone_or_firewall"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_laptop = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laptop")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_laptop",
	title = "RNGModifier_deep_laptop_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_laptop",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_laptop_1",
		"RNGModifier_deep_laptop_2",
		"RNGModifier_deep_laptop_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_laptop"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_phone_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_phone_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_phone_1",
	title = "RNGModifier_deep_phone_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_phone_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_phone_1",
		"RNGModifier_deep_phone_2",
		"RNGModifier_deep_phone_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_phone_1"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_phone_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_phone_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_phone_2",
	title = "RNGModifier_deep_phone_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_phone_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_phone_1",
		"RNGModifier_deep_phone_2",
		"RNGModifier_deep_phone_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_phone_2"),
	menu_id = "RNGModifier_deep_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_deep_laser_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laser_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_laser_room",
	title = "RNGModifier_deep_laser_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_laser_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_laser_room"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_gas = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gas")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_gas",
	title = "RNGModifier_deep_gas_title",
	desc = "RNGModifier_deep_gas_desc",
	callback = "RNGModifier_deep_gas",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_gas_1",
		"RNGModifier_deep_gas_2",
		"RNGModifier_deep_gas_3",
		"RNGModifier_deep_gas_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gas"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_valve_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_valve_1",
	title = "RNGModifier_deep_valve_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_valve_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_valve_1",
		"RNGModifier_deep_valve_2",
		"RNGModifier_deep_valve_3",
		"RNGModifier_deep_valve_4",
		"RNGModifier_deep_valve_5",
		"RNGModifier_deep_valve_6",
		"RNGModifier_deep_valve_7",
		"RNGModifier_deep_valve_8"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_valve_1"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_valve_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_valve_2",
	title = "RNGModifier_deep_valve_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_valve_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_valve_1",
		"RNGModifier_deep_valve_2",
		"RNGModifier_deep_valve_3",
		"RNGModifier_deep_valve_4",
		"RNGModifier_deep_valve_5",
		"RNGModifier_deep_valve_6",
		"RNGModifier_deep_valve_7",
		"RNGModifier_deep_valve_8"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_valve_2"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_valve_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_valve_3",
	title = "RNGModifier_deep_valve_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_valve_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_valve_1",
		"RNGModifier_deep_valve_2",
		"RNGModifier_deep_valve_3",
		"RNGModifier_deep_valve_4",
		"RNGModifier_deep_valve_5",
		"RNGModifier_deep_valve_6",
		"RNGModifier_deep_valve_7",
		"RNGModifier_deep_valve_8"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_valve_3"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

MenuCallbackHandler.RNGModifier_deep_valve_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_valve_4",
	title = "RNGModifier_deep_valve_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_valve_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_deep_valve_1",
		"RNGModifier_deep_valve_2",
		"RNGModifier_deep_valve_3",
		"RNGModifier_deep_valve_4",
		"RNGModifier_deep_valve_5",
		"RNGModifier_deep_valve_6",
		"RNGModifier_deep_valve_7",
		"RNGModifier_deep_valve_8"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_valve_4"),
	menu_id = "RNGModifier_deep_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_deep_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_deep_test",
	title = "RNGModifier_deep_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_deep_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_test"),
	menu_id = "RNGModifier_deep_Options_Menu"
})]]