_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "wwh"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_wwh_random_ammo_bag = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_ammo_bag")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_wwh_random_ammo_bag",
	title = "RNGModifier_wwh_random_ammo_bag_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_wwh_random_ammo_bag",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("wwh", "_random_ammo_bag"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_random_health_bag = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_health_bag")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_wwh_random_health_bag",
	title = "RNGModifier_wwh_random_health_bag_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_wwh_random_health_bag",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("wwh", "_random_health_bag"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_random_grenade_crate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_grenade_crate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3,
	id = "RNGModifier_wwh_random_grenade_crate",
	title = "RNGModifier_wwh_random_grenade_crate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_wwh_random_grenade_crate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("wwh", "_random_grenade_crate"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_hostage_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hostage_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.1,
	id = "RNGModifier_wwh_hostage_A",
	title = "RNGModifier_wwh_hostage_A_title",
	desc = "RNGModifier_wwh_hostage_desc",
	callback = "RNGModifier_wwh_hostage_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"	
		
	},
	value = RNGModifier:SafeGetData("wwh", "_hostage_A"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})


MenuCallbackHandler.RNGModifier_wwh_hostage_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hostage_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.2,
	id = "RNGModifier_wwh_hostage_B",
	title = "RNGModifier_wwh_hostage_B_title",
	desc = "RNGModifier_wwh_hostage_desc",
	callback = "RNGModifier_wwh_hostage_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"	
		
	},
	value = RNGModifier:SafeGetData("wwh", "_hostage_B"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})


MenuCallbackHandler.RNGModifier_wwh_hostage_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hostage_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.3,
	id = "RNGModifier_wwh_hostage_C",
	title = "RNGModifier_wwh_hostage_C_title",
	desc = "RNGModifier_wwh_hostage_desc",
	callback = "RNGModifier_wwh_hostage_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"	
		
	},
	value = RNGModifier:SafeGetData("wwh", "_hostage_C"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_hostage_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hostage_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.4,
	id = "RNGModifier_wwh_hostage_D",
	title = "RNGModifier_wwh_hostage_D_title",
	desc = "RNGModifier_wwh_hostage_desc",
	callback = "RNGModifier_wwh_hostage_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"	
		
	},
	value = RNGModifier:SafeGetData("wwh", "_hostage_D"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_no_hostage_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_hostage_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_hostage_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -4.5,
	id = "RNGModifier_wwh_no_hostage_delay",
	title = "RNGModifier_wwh_no_hostage_delay_title",
	desc = "RNGModifier_wwh_no_hostage_delay_desc",
	callback = "RNGModifier_wwh_no_hostage_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_hostage_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_container = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_container")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5,
	id = "RNGModifier_wwh_container",
	title = "RNGModifier_wwh_container_title",
	desc = "RNGModifier_wwh_hostage_desc",
	callback = "RNGModifier_wwh_container",
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
	value = RNGModifier:SafeGetData("wwh", "_container"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_random_captain_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_captain_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -6,
	id = "RNGModifier_wwh_random_captain_location",
	title = "RNGModifier_wwh_random_captain_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_wwh_random_captain_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_wwh_random_captain_location_1",
		"RNGModifier_wwh_random_captain_location_2",
		"RNGModifier_wwh_random_captain_location_3",
		"RNGModifier_wwh_random_captain_location_4"
	},
	value = RNGModifier:SafeGetData("wwh", "_random_captain_location"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_random_tanker_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_tanker_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7,
	id = "RNGModifier_wwh_random_tanker_location",
	title = "RNGModifier_wwh_random_tanker_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_wwh_random_tanker_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("wwh", "_random_tanker_location"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_wwh_random_pump = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_pump")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8,
	id = "RNGModifier_wwh_random_pump",
	title = "RNGModifier_wwh_random_pump_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_wwh_random_pump",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("wwh", "_random_pump"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_wwh_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_wwh_test",
	title = "RNGModifier_wwh_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_wwh_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"	
		
	},
	value = RNGModifier:SafeGetData("wwh", "_test"),
	menu_id = "RNGModifier_wwh_Options_Menu"
})]]--