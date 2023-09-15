_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "peta"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end


MenuCallbackHandler.RNGModifier_peta_truck = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_truck")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_truck",
	title = "RNGModifier_peta_truck_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_truck",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_truck_1",
		"RNGModifier_peta_truck_2",
		"RNGModifier_peta_truck_3"
	},
	value = RNGModifier:SafeGetData("peta", "_truck"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_spawn",
	title = "RNGModifier_peta_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_spawn_1",
		"RNGModifier_peta_spawn_2",
		"RNGModifier_peta_spawn_3"
	},
	value = RNGModifier:SafeGetData("peta", "_spawn"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

local goat_menu_id = RNGModifier._heist_submenu.peta_goat_random[2]

MenuHelper:AddButton({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_Menu_Button",
	title = goat_menu_id .. "_title",
	desc = goat_menu_id .. "_desc",
	next_node = goat_menu_id,
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_1 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_1")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_1")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_1",
	title = "RNGModifier_peta_goat_choice_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_1",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_1")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_2 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_2")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_2")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_2",
	title = "RNGModifier_peta_goat_choice_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_2",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_2")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_3 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_3")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_3")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_3",
	title = "RNGModifier_peta_goat_choice_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_3",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_3")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_4 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_4")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_4")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_4",
	title = "RNGModifier_peta_goat_choice_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_4",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_4")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_5 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_5")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_5")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_5",
	title = "RNGModifier_peta_goat_choice_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_5",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_5")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_6 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_6")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_6")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_6",
	title = "RNGModifier_peta_goat_choice_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_6",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_6")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_7 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_7")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_7")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_7",
	title = "RNGModifier_peta_goat_choice_7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_7",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_7")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_8 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_8")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_8")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_8",
	title = "RNGModifier_peta_goat_choice_8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_8",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_8")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_9 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_9")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_9")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_9",
	title = "RNGModifier_peta_goat_choice_9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_9",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_9")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_10 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_10")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_10")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_10",
	title = "RNGModifier_peta_goat_choice_10_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_10",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_10")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_11 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_11")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_11")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_11",
	title = "RNGModifier_peta_goat_choice_11_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_11",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_11")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_12 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_12")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_12")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_12",
	title = "RNGModifier_peta_goat_choice_12_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_12",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_12")) == 1 and true or false,
	menu_id = goat_menu_id
})

MenuCallbackHandler.RNGModifier_peta_goat_choice_13 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_goat_choice_13")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_goat_choice_13")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_choice_13",
	title = "RNGModifier_peta_goat_choice_13_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_choice_13",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_goat_choice_13")) == 1 and true or false,
	menu_id = goat_menu_id
})

--[[MenuCallbackHandler.RNGModifier_peta_goat_random = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_goat_random")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_random",
	title = "RNGModifier_peta_goat_random_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_random",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_goat_random_1",
		"RNGModifier_peta_goat_random_2",
		"RNGModifier_peta_goat_random_3",
		"RNGModifier_peta_goat_random_4",
		"RNGModifier_peta_goat_random_5",
		"RNGModifier_peta_goat_random_6",
		"RNGModifier_peta_goat_random_7",
		"RNGModifier_peta_goat_random_8",
		"RNGModifier_peta_goat_random_9",
		"RNGModifier_peta_goat_random_10",
		"RNGModifier_peta_goat_random_11",
		"RNGModifier_peta_goat_random_12",
		"RNGModifier_peta_goat_random_13"
	},
	value = RNGModifier:SafeGetData("peta", "_goat_random"),
	menu_id = "RNGModifier_peta_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_peta_goat_building = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_goat_building")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_building",
	title = "RNGModifier_peta_goat_building_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_building",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_goat_building_1",
		"RNGModifier_peta_goat_building_2"
	},
	value = RNGModifier:SafeGetData("peta", "_goat_building"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_goat_electric = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_goat_electric")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_electric",
	title = "RNGModifier_peta_goat_electric_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_electric",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_goat_electric_1",
		"RNGModifier_peta_goat_electric_2"
	},
	value = RNGModifier:SafeGetData("peta", "_goat_electric"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_goat_fan = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_goat_fan")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_fan",
	title = "RNGModifier_peta_goat_fan_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_fan",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_goat_fan_1",
		"RNGModifier_peta_goat_fan_2",
		"RNGModifier_peta_goat_fan_3"
	},
	value = RNGModifier:SafeGetData("peta", "_goat_fan"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_goat_equipment = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_goat_equipment")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_equipment",
	title = "RNGModifier_peta_goat_equipment_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_equipment",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_goat_equipment_1",
		"RNGModifier_peta_goat_equipment_2"
	},
	value = RNGModifier:SafeGetData("peta", "_goat_equipment"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_goat_saw = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_goat_saw")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_saw",
	title = "RNGModifier_peta_goat_saw_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_saw",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_goat_saw_1",
		"RNGModifier_peta_goat_saw_2",
		"RNGModifier_peta_goat_saw_3",
		"RNGModifier_peta_goat_saw_4"
	},
	value = RNGModifier:SafeGetData("peta", "_goat_saw"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_goat_drill = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_goat_drill")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_goat_drill",
	title = "RNGModifier_peta_goat_drill_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_goat_drill",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_goat_drill_1",
		"RNGModifier_peta_goat_drill_2",
		"RNGModifier_peta_goat_drill_3"
	},
	value = RNGModifier:SafeGetData("peta", "_goat_drill"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_correct_powerbox1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_correct_powerbox1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_correct_powerbox1",
	title = "RNGModifier_peta_correct_powerbox1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_correct_powerbox1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_correct_powerbox1_1",
		"RNGModifier_peta_correct_powerbox1_2",
		"RNGModifier_peta_correct_powerbox1_3",
		"RNGModifier_peta_correct_powerbox1_4"
	},
	value = RNGModifier:SafeGetData("peta", "_correct_powerbox1"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_correct_powerbox2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_correct_powerbox2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_correct_powerbox2",
	title = "RNGModifier_peta_correct_powerbox2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_correct_powerbox2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_correct_powerbox2_1",
		"RNGModifier_peta_correct_powerbox2_2",
		"RNGModifier_peta_correct_powerbox2_3",
		"RNGModifier_peta_correct_powerbox2_4"
	},
	value = RNGModifier:SafeGetData("peta", "_correct_powerbox2"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_correct_powerbox3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_correct_powerbox3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_correct_powerbox3",
	title = "RNGModifier_peta_correct_powerbox3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_correct_powerbox3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_correct_powerbox3_1",
		"RNGModifier_peta_correct_powerbox3_2",
		"RNGModifier_peta_correct_powerbox3_3",
		"RNGModifier_peta_correct_powerbox3_4"
	},
	value = RNGModifier:SafeGetData("peta", "_correct_powerbox3"),
	menu_id = "RNGModifier_peta_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta_correct_powerbox_scaffold = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_correct_powerbox_scaffold")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_peta_correct_powerbox_scaffold",
	title = "RNGModifier_peta_correct_powerbox_scaffold_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta_correct_powerbox_scaffold",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta_correct_powerbox_scaffold_1",
		"RNGModifier_peta_correct_powerbox_scaffold_2",
		"RNGModifier_peta_correct_powerbox_scaffold_3",
		"RNGModifier_peta_correct_powerbox_scaffold_4"
	},
	value = RNGModifier:SafeGetData("peta", "_correct_powerbox_scaffold"),
	menu_id = "RNGModifier_peta_Options_Menu"
})