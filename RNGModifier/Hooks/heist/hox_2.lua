_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "hox_2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_hox_2_select_excursion_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_select_excursion_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.1,
	id = "RNGModifier_hox_2_select_excursion_A",
	title = "RNGModifier_hox_2_select_excursion_title_A",
	desc = "RNGModifier_hox_2_select_excursion_title_desc",
	callback = "RNGModifier_hox_2_select_excursion_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_select_excursion_001",
		"RNGModifier_hox_2_select_excursion_002",
		"RNGModifier_hox_2_select_excursion_003",
		"RNGModifier_hox_2_select_excursion_004",
		"RNGModifier_hox_2_select_excursion_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_select_excursion_A"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_select_excursion_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_select_excursion_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.2,
	id = "RNGModifier_hox_2_select_excursion_B",
	title = "RNGModifier_hox_2_select_excursion_title_B",
	desc = "RNGModifier_hox_2_select_excursion_title_desc",
	callback = "RNGModifier_hox_2_select_excursion_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_select_excursion_001",
		"RNGModifier_hox_2_select_excursion_002",
		"RNGModifier_hox_2_select_excursion_003",
		"RNGModifier_hox_2_select_excursion_004",
		"RNGModifier_hox_2_select_excursion_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_select_excursion_B"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_select_excursion_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_select_excursion_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.3,
	id = "RNGModifier_hox_2_select_excursion_C",
	title = "RNGModifier_hox_2_select_excursion_title_C",
	desc = "RNGModifier_hox_2_select_excursion_title_desc",
	callback = "RNGModifier_hox_2_select_excursion_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_select_excursion_001",
		"RNGModifier_hox_2_select_excursion_002",
		"RNGModifier_hox_2_select_excursion_003",
		"RNGModifier_hox_2_select_excursion_004",
		"RNGModifier_hox_2_select_excursion_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_select_excursion_C"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_select_random_powerbox = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_select_random_powerbox")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_hox_2_select_random_powerbox",
	title = "RNGModifier_hox_2_select_random_powerbox_title",
	desc = "RNGModifier_hox_2_select_random_powerbox_desc",
	callback = "RNGModifier_hox_2_select_random_powerbox",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_select_random_powerboxuse_1",
		"RNGModifier_hox_2_select_random_powerboxuse_2",
		"RNGModifier_hox_2_select_random_powerboxuse_3",
		"RNGModifier_hox_2_select_random_powerboxuse_4",
		"RNGModifier_hox_2_select_random_powerboxuse_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_select_random_powerbox"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_server_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.3,
	id = "RNGModifier_hox_2_server_location",
	title = "RNGModifier_hox_2_server_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_2_server_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_server_location_1",
		"RNGModifier_hox_2_server_location_2",
		"RNGModifier_hox_2_server_location_3",
		"RNGModifier_hox_2_server_location_4",
		"RNGModifier_hox_2_server_location_5",
		"RNGModifier_hox_2_server_location_6",
		"RNGModifier_hox_2_server_location_7",
		"RNGModifier_hox_2_server_location_8"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_server_location"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_server = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.35,
	id = "RNGModifier_hox_2_server",
	title = "RNGModifier_hox_2_server_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_2_server",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_server_1",
		"RNGModifier_hox_2_server_2",
		"RNGModifier_hox_2_server_3",
		"RNGModifier_hox_2_server_4",
		"RNGModifier_hox_2_server_5",
		"RNGModifier_hox_2_server_6",
		"RNGModifier_hox_2_server_7",
		"RNGModifier_hox_2_server_8",
		"RNGModifier_hox_2_server_9",
		"RNGModifier_hox_2_server_10",
		"RNGModifier_hox_2_server_11",
		"RNGModifier_hox_2_server_12",
		"RNGModifier_hox_2_server_13"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_server"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_testimony_shelf = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_testimony_shelf")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_testimony_shelf")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -4.4,
	id = "RNGModifier_hox_2_testimony_shelf",
	title = "RNGModifier_hox_2_testimony_shelf_title",
	desc = "RNGModifier_hox_2_testimony_shelf_desc",
	callback = "RNGModifier_hox_2_testimony_shelf",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_testimony_shelf")) == 1 and true or false,
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_entrances = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_entrances")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3.1,
	id = "RNGModifier_hox_2_entrances",
	title = "RNGModifier_hox_2_entrances_title",
	desc = "RNGModifier_hox_2_entrances_desc",
	callback = "RNGModifier_hox_2_entrances",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_entrances_1",
		"RNGModifier_hox_2_entrances_2",
		"RNGModifier_hox_2_entrances_3",
		"RNGModifier_hox_2_entrances_4",
		"RNGModifier_hox_2_entrances_5",
		"RNGModifier_hox_2_entrances_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_entrances"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_corridor_block = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_corridor_block")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3.2,
	id = "RNGModifier_hox_2_corridor_block",
	title = "RNGModifier_hox_2_corridor_block_title",
	desc = "RNGModifier_hox_2_corridor_block_desc",
	callback = "RNGModifier_hox_2_corridor_block",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_yes",
		"RNGModifier_no"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_corridor_block"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_easy_evidence = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_easy_evidence")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.51,
	id = "RNGModifier_hox_2_easy_evidence",
	title = "RNGModifier_hox_2_easy_evidence_title",
	desc = "RNGModifier_hox_2_easy_evidence_desc",
	callback = "RNGModifier_hox_2_easy_evidence",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_easy_evidence_1",
		"RNGModifier_hox_2_easy_evidence_2",
		"RNGModifier_hox_2_easy_evidence_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_easy_evidence"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

--[[
MenuCallbackHandler.RNGModifier_hox_2_easy_evidence = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_easy_evidence")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_easy_evidence")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -4.51,
	id = "RNGModifier_hox_2_easy_evidence",
	title = "RNGModifier_hox_2_easy_evidence_title",
	desc = "RNGModifier_hox_2_easy_evidence_desc",
	callback = "RNGModifier_hox_2_easy_evidence",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_easy_evidence")) == 1 and true or false,
	menu_id = "RNGModifier_hox_2_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_hox_2_correct_evidence = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_correct_evidence")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_correct_evidence")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -4.52,
	id = "RNGModifier_hox_2_correct_evidence",
	title = "RNGModifier_hox_2_correct_evidence_title",
	desc = "RNGModifier_hox_2_correct_evidence_desc",
	callback = "RNGModifier_hox_2_correct_evidence",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_correct_evidence")) == 1 and true or false,
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_keycard_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3.3,
	id = "RNGModifier_hox_2_keycard_1",
	title = "RNGModifier_hox_2_keycard_1_title",
	desc = "RNGModifier_hox_2_keycard_1_desc",
	callback = "RNGModifier_hox_2_keycard_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_keycard_1_1",
		"RNGModifier_hox_2_keycard_1_2",
		"RNGModifier_hox_2_keycard_1_3",
		"RNGModifier_hox_2_keycard_1_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard_1"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_keycard_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3.4,
	id = "RNGModifier_hox_2_keycard_2",
	title = "RNGModifier_hox_2_keycard_2_title",
	desc = "RNGModifier_hox_2_keycard_2_desc",
	callback = "RNGModifier_hox_2_keycard_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_keycard_2_1",
		"RNGModifier_hox_2_keycard_2_2",
		"RNGModifier_hox_2_keycard_2_3",
		"RNGModifier_hox_2_keycard_2_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard_2"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_keycard_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3.5,
	id = "RNGModifier_hox_2_keycard_3",
	title = "RNGModifier_hox_2_keycard_3_title",
	desc = "RNGModifier_hox_2_keycard_3_desc",
	callback = "RNGModifier_hox_2_keycard_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_keycard_3_1",
		"RNGModifier_hox_2_keycard_3_2",
		"RNGModifier_hox_2_keycard_3_3",
		"RNGModifier_hox_2_keycard_3_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard_3"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_explore_keycard = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_explore_keycard")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_explore_keycard")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -3.6,
	id = "RNGModifier_hox_2_explore_keycard",
	title = "RNGModifier_hox_2_explore_keycard_title",
	desc = "RNGModifier_hox_2_explore_keycard_desc",
	callback = "RNGModifier_hox_2_explore_keycard",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_explore_keycard")) == 1 and true or false,
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_2_extra_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_extra_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3.4,
	id = "RNGModifier_hox_2_extra_keycard",
	title = "RNGModifier_hox_2_extra_keycard_title",
	desc = "RNGModifier_hox_2_extra_keycard_desc",
	callback = "RNGModifier_hox_2_extra_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_2_keycard_2_1",
		"RNGModifier_hox_2_keycard_2_2",
		"RNGModifier_hox_2_keycard_2_3",
		"RNGModifier_hox_2_keycard_2_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_extra_keycard"),
	menu_id = "RNGModifier_hox_2_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_hox_2_extra_keycard = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_extra_keycard")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_extra_keycard")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -3.7,
	id = "RNGModifier_hox_2_extra_keycard",
	title = "RNGModifier_hox_2_extra_keycard_title",
	desc = "RNGModifier_hox_2_extra_keycard_desc",
	callback = "RNGModifier_hox_2_extra_keycard",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_extra_keycard")) == 1 and true or false,
	menu_id = "RNGModifier_hox_2_Options_Menu"
})
MenuCallbackHandler.RNGModifier_hox_2_extra_keycard_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_extra_keycard_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_extra_keycard_chance")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -3.69,
	id = "RNGModifier_hox_2_extra_keycard_chance",
	title = "RNGModifier_hox_2_extra_keycard_chance_title",
	desc = "RNGModifier_hox_2_extra_keycard_chance_desc",
	callback = "RNGModifier_hox_2_extra_keycard_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_extra_keycard_chance")) == 1 and true or false,
	menu_id = "RNGModifier_hox_2_Options_Menu"
})]]