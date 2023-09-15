_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "mex"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_mex_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_mex_spawn",
	title = "RNGModifier_mex_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("mex", "_spawn"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_cam_usa = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cam_usa")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mex_cam_usa",
	title = "RNGModifier_mex_cam_usa_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_cam_usa",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("mex", "_cam_usa"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_opened_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_opened_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3,
	id = "RNGModifier_mex_opened_door",
	title = "RNGModifier_mex_opened_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_opened_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_opened_door_1",
		"RNGModifier_mex_opened_door_2",
		"RNGModifier_mex_opened_door_3",
		"RNGModifier_mex_opened_door_4",
		"RNGModifier_mex_opened_door_5",
		"RNGModifier_mex_opened_door_6",
		"RNGModifier_mex_opened_door_7"
	},
	value = RNGModifier:SafeGetData("mex", "_opened_door"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_red_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.1,
	id = "RNGModifier_mex_red_door",
	title = "RNGModifier_mex_red_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_red_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("mex", "_red_door"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_chance_red_door_opened = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_chance_red_door_opened")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_chance_red_door_opened")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -4.2,
	id = "RNGModifier_mex_chance_red_door_opened",
	title = "RNGModifier_mex_chance_red_door_opened_title",
	desc = "RNGModifier_mex_chance_red_door_opened_desc",
	callback = "RNGModifier_mex_chance_red_door_opened",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_chance_red_door_opened")) == 1 and true or false,
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_chance_diffusible = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_chance_diffusible")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.3,
	id = "RNGModifier_mex_chance_diffusible",
	title = "RNGModifier_mex_chance_diffusible_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_chance_diffusible",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("mex", "_chance_diffusible"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5,
	id = "RNGModifier_mex_code",
	title = "RNGModifier_mex_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_code_1",
		"RNGModifier_mex_code_2",
		"RNGModifier_mex_code_3",
		"RNGModifier_mex_code_4"
	},
	value = RNGModifier:SafeGetData("mex", "_code"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_code1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5.1,
	id = "RNGModifier_mex_code1",
	title = "RNGModifier_mex_code1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_code1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_code1_1",
		"RNGModifier_mex_code1_2"
	},
	value = RNGModifier:SafeGetData("mex", "_code1"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_code2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5.2,
	id = "RNGModifier_mex_code2",
	title = "RNGModifier_mex_code2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_code2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_code2_1",
		"RNGModifier_mex_code2_2"
	},
	value = RNGModifier:SafeGetData("mex", "_code2"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_code3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5.3,
	id = "RNGModifier_mex_code3",
	title = "RNGModifier_mex_code3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_code3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_code3_1",
		"RNGModifier_mex_code3_2",
		"RNGModifier_mex_code3_3"
	},
	value = RNGModifier:SafeGetData("mex", "_code3"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_code4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5.4,
	id = "RNGModifier_mex_code4",
	title = "RNGModifier_mex_code4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_code4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_code4_1",
		"RNGModifier_mex_code4_2",
		"RNGModifier_mex_code4_3"
	},
	value = RNGModifier:SafeGetData("mex", "_code4"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_entrance = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_entrance")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -6,
	id = "RNGModifier_mex_entrance",
	title = "RNGModifier_mex_entrance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_entrance",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_2",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData("mex", "_entrance"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_exit = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_exit")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7,
	id = "RNGModifier_mex_exit",
	title = "RNGModifier_mex_exit_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_exit",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_exit_1",
		"RNGModifier_mex_exit_2",
		"RNGModifier_mex_exit_3"
	},
	value = RNGModifier:SafeGetData("mex", "_exit"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_cam_mexico = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cam_mexico")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8,
	id = "RNGModifier_mex_cam_mexico",
	title = "RNGModifier_mex_cam_mexico_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_cam_mexico",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("mex", "_cam_mexico"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_objective = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_objective")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -9,
	id = "RNGModifier_mex_objective",
	title = "RNGModifier_mex_objective_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_objective",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_objective_1",
		"RNGModifier_mex_objective_2",
		"RNGModifier_mex_objective_3"
	},
	value = RNGModifier:SafeGetData("mex", "_objective"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_plane = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_plane")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -10,
	id = "RNGModifier_mex_plane",
	title = "RNGModifier_mex_plane_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_plane",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_plane_1",
		"RNGModifier_mex_plane_2"
	},
	value = RNGModifier:SafeGetData("mex", "_plane"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_hangar_coke = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hangar_coke")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -11,
	id = "RNGModifier_mex_hangar_coke",
	title = "RNGModifier_mex_hangar_coke_title",
	desc = "RNGModifier_mex_hangar_coke_desc",
	callback = "RNGModifier_mex_hangar_coke",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_hangar_coke_1",
		"RNGModifier_mex_hangar_coke_2",
		"RNGModifier_mex_hangar_coke_3",
		"RNGModifier_mex_hangar_coke_4",
		"RNGModifier_mex_hangar_coke_5",
		"RNGModifier_mex_hangar_coke_6",
		"RNGModifier_mex_hangar_coke_7",
		"RNGModifier_mex_hangar_coke_8",
		"RNGModifier_mex_hangar_coke_9",
		"RNGModifier_mex_hangar_coke_10",
		"RNGModifier_mex_hangar_coke_11",
		"RNGModifier_mex_hangar_coke_12",
		"RNGModifier_mex_hangar_coke_13"
	},
	value = RNGModifier:SafeGetData("mex", "_hangar_coke"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_hangar1_switch = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hangar1_switch")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -12.1,
	id = "RNGModifier_mex_hangar1_switch",
	title = "RNGModifier_mex_hangar1_switch_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_hangar1_switch",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_3",
		"RNGModifier_direction_1"
	},
	value = RNGModifier:SafeGetData("mex", "_hangar1_switch"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_hangar2_switch = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hangar2_switch")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -12.2,
	id = "RNGModifier_mex_hangar2_switch",
	title = "RNGModifier_mex_hangar2_switch_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_hangar2_switch",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_3",
		"RNGModifier_direction_1"
	},
	value = RNGModifier:SafeGetData("mex", "_hangar2_switch"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

--Coke choice submenu
local warehouse_coke_menu_id = RNGModifier._heist_submenu.mex_coke[2]

MenuHelper:AddButton({
	priority = -13,
	id = "RNGModifier_mex_warehouse_coke_Menu_Button",
	title = warehouse_coke_menu_id .. "_title",
	desc = warehouse_coke_menu_id .. "_desc",
	next_node = warehouse_coke_menu_id,
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_1 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_1")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_1")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -1,
	id = "RNGModifier_mex_coke_choice_1",
	title = "RNGModifier_mex_coke_choice_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_1",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_1")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_2 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_2")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_2")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -4,
	id = "RNGModifier_mex_coke_choice_2",
	title = "RNGModifier_mex_coke_choice_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_2",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_2")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_3 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_3")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_3")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -2,
	id = "RNGModifier_mex_coke_choice_3",
	title = "RNGModifier_mex_coke_choice_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_3",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_3")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_4 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_4")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_4")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -5,
	id = "RNGModifier_mex_coke_choice_4",
	title = "RNGModifier_mex_coke_choice_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_4",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_4")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_5 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_5")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_5")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -6,
	id = "RNGModifier_mex_coke_choice_5",
	title = "RNGModifier_mex_coke_choice_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_5",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_5")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_6 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_6")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_6")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -7,
	id = "RNGModifier_mex_coke_choice_6",
	title = "RNGModifier_mex_coke_choice_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_6",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_6")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_7 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_7")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_7")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -3,
	id = "RNGModifier_mex_coke_choice_7",
	title = "RNGModifier_mex_coke_choice_7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_7",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_7")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_8 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_8")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_8")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -11,
	id = "RNGModifier_mex_coke_choice_8",
	title = "RNGModifier_mex_coke_choice_8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_8",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_8")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_9 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_9")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_9")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -12,
	id = "RNGModifier_mex_coke_choice_9",
	title = "RNGModifier_mex_coke_choice_9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_9",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_9")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_10 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_10")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_10")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -10,
	id = "RNGModifier_mex_coke_choice_10",
	title = "RNGModifier_mex_coke_choice_10_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_10",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_10")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})
MenuCallbackHandler.RNGModifier_mex_coke_choice_11 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_11")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_11")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -9,
	id = "RNGModifier_mex_coke_choice_11",
	title = "RNGModifier_mex_coke_choice_11_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_11",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_11")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})
MenuCallbackHandler.RNGModifier_mex_coke_choice_12 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_12")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_12")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -13,
	id = "RNGModifier_mex_coke_choice_12",
	title = "RNGModifier_mex_coke_choice_12_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_12",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_12")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})
MenuCallbackHandler.RNGModifier_mex_coke_choice_13 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_13")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_13")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -14,
	id = "RNGModifier_mex_coke_choice_13",
	title = "RNGModifier_mex_coke_choice_13_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_13",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_13")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})
MenuCallbackHandler.RNGModifier_mex_coke_choice_14 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_14")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_14")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -15,
	id = "RNGModifier_mex_coke_choice_14",
	title = "RNGModifier_mex_coke_choice_14_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_14",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_14")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})
MenuCallbackHandler.RNGModifier_mex_coke_choice_15 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_15")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_15")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -17,
	id = "RNGModifier_mex_coke_choice_15",
	title = "RNGModifier_mex_coke_choice_15_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_15",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_15")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})

MenuCallbackHandler.RNGModifier_mex_coke_choice_16 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_16")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_16")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -16,
	id = "RNGModifier_mex_coke_choice_16",
	title = "RNGModifier_mex_coke_choice_16_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_16",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_16")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})
MenuCallbackHandler.RNGModifier_mex_coke_choice_17 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_17")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_17")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -18,
	id = "RNGModifier_mex_coke_choice_17",
	title = "RNGModifier_mex_coke_choice_17_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_17",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_17")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})
MenuCallbackHandler.RNGModifier_mex_coke_choice_18 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_choice_18")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_choice_18")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = -8,
	id = "RNGModifier_mex_coke_choice_18",
	title = "RNGModifier_mex_coke_choice_18_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_coke_choice_18",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_choice_18")) == 1 and true or false,
	menu_id = warehouse_coke_menu_id
})
--Coke choice submenu

MenuCallbackHandler.RNGModifier_mex_crowbar = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -14,
	id = "RNGModifier_mex_crowbar",
	title = "RNGModifier_mex_crowbar_title",
	desc = "RNGModifier_mex_crowbar_desc",
	callback = "RNGModifier_mex_crowbar",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_crowbar_1",
		"RNGModifier_mex_crowbar_2",
		"RNGModifier_mex_crowbar_3",
		"RNGModifier_mex_crowbar_4",
		"RNGModifier_mex_crowbar_5"
	},
	value = RNGModifier:SafeGetData("mex", "_crowbar"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_gasoline = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gasoline")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -15,
	id = "RNGModifier_mex_gasoline",
	title = "RNGModifier_mex_gasoline_title",
	desc = "RNGModifier_mex_crowbar_desc",
	callback = "RNGModifier_mex_gasoline",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_gasoline_1",
		"RNGModifier_mex_gasoline_2",
		"RNGModifier_mex_gasoline_3",
		"RNGModifier_mex_gasoline_4",
		"RNGModifier_mex_gasoline_5",
		"RNGModifier_mex_gasoline_6",
		"RNGModifier_mex_gasoline_7",
		"RNGModifier_mex_gasoline_8",
		"RNGModifier_mex_gasoline_9",
		"RNGModifier_mex_gasoline_10"
	},
	value = RNGModifier:SafeGetData("mex", "_gasoline"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_tank = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_tank")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -16,
	id = "RNGModifier_mex_tank",
	title = "RNGModifier_mex_tank_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_tank",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_tank_1",
		"RNGModifier_mex_tank_2"
	},
	value = RNGModifier:SafeGetData("mex", "_tank"),
	menu_id = "RNGModifier_mex_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_mex_pump = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pump")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -15,
	id = "RNGModifier_mex_pump",
	title = "RNGModifier_mex_pump_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_pump",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("mex", "_pump"),
	menu_id = "RNGModifier_mex_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_mex_one_refuel = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_one_refuel")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_one_refuel")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -18,
	id = "RNGModifier_mex_one_refuel",
	title = "RNGModifier_mex_one_refuel_title",
	desc = "RNGModifier_mex_one_refuel_desc",
	callback = "RNGModifier_mex_one_refuel",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_one_refuel")) == 1 and true or false,
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_no_refuel_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_refuel_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_refuel_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -19,
	id = "RNGModifier_mex_no_refuel_delay",
	title = "RNGModifier_mex_no_refuel_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_no_refuel_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_refuel_delay")) == 1 and true or false,
	menu_id = "RNGModifier_mex_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_santanico_opened_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_santanico_opened_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -20,
	id = "RNGModifier_mex_santanico_opened_door",
	title = "RNGModifier_mex_santanico_opened_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_santanico_opened_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_santanico_opened_door_1",
		"RNGModifier_mex_santanico_opened_door_2",
		"RNGModifier_mex_santanico_opened_door_3",
		"RNGModifier_mex_santanico_opened_door_4"
	},
	value = RNGModifier:SafeGetData("mex", "_santanico_opened_door"),
	menu_id = "RNGModifier_mex_Options_Menu"
})