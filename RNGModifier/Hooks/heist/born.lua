_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "born"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_born_truck = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_truck")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_truck",
	title = "RNGModifier_born_truck_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_truck",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_born_truck_1",
		"RNGModifier_born_truck_2"
	},
	value = RNGModifier:SafeGetData("born", "_truck"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_skull_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_skull_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_skull_room",
	title = "RNGModifier_born_skull_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_skull_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_switch_4_DOWN",
		"RNGModifier_switch_4_UP"		
	},
	value = RNGModifier:SafeGetData("born", "_skull_room"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_crate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_crate",
	title = "RNGModifier_born_crate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_crate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_switch_4_UP",
		"RNGModifier_switch_4_DOWN"			
	},
	value = RNGModifier:SafeGetData("born", "_crate"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_first_objective = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_first_objective")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_first_objective",
	title = "RNGModifier_born_first_objective_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_first_objective",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_born_first_objective_1",
		"RNGModifier_born_first_objective_2",
		"RNGModifier_born_first_objective_3"
	},
	value = RNGModifier:SafeGetData("born", "_first_objective"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_objective = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_objective")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_objective",
	title = "RNGModifier_born_objective_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_objective",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_born_second_objective_1",
		"RNGModifier_born_second_objective_2",
		"RNGModifier_born_second_objective_3",
		"RNGModifier_born_second_objective_4"
	},
	value = RNGModifier:SafeGetData("born", "_objective"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_objective_two = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_objective_two")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_objective_two",
	title = "RNGModifier_born_objective_two_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_objective_two",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_born_second_objective_1",
		"RNGModifier_born_second_objective_2",
		"RNGModifier_born_second_objective_3",
		"RNGModifier_born_second_objective_4"
	},
	value = RNGModifier:SafeGetData("born", "_objective_two"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_engine = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_engine")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_engine",
	title = "RNGModifier_born_engine_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_engine",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_born_engine_1",
		"RNGModifier_born_engine_2",
		"RNGModifier_born_engine_3",
		"RNGModifier_born_engine_4",
		"RNGModifier_born_engine_5",
		"RNGModifier_born_engine_6",
		"RNGModifier_born_engine_7",
		"RNGModifier_born_engine_8",
		"RNGModifier_born_engine_9",
		"RNGModifier_born_engine_10"
	},
	value = RNGModifier:SafeGetData("born", "_engine"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_tool_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_tool_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_tool_chance")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_born_tool_chance",
	title = "RNGModifier_born_tool_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_tool_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_tool_chance")) == 1 and true or false,
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_soda = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_soda")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_soda")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_born_soda",
	title = "RNGModifier_born_soda_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_soda",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_soda")) == 1 and true or false,
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_no_objective_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_objective_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_objective_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_born_no_objective_delay",
	title = "RNGModifier_born_no_objective_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_no_objective_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_objective_delay")) == 1 and true or false,
	menu_id = "RNGModifier_born_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_born_tool_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_tool_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_tool_chance")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_born_tool_chance",
	title = "RNGModifier_born_tool_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_tool_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_tool_chance")) == 1 and true or false,
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_soda = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_soda")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_soda")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_born_soda",
	title = "RNGModifier_born_soda_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_soda",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_soda")) == 1 and true or false,
	menu_id = "RNGModifier_born_Options_Menu"
})]]

--[[MenuCallbackHandler.RNGModifier_born_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_test",
	title = "RNGModifier_born_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData("born", "_test"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_test1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_test1",
	title = "RNGModifier_born_test1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_test1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData("born", "_test1"),
	menu_id = "RNGModifier_born_Options_Menu"
})]]

--[[MenuCallbackHandler.RNGModifier_born_winch_chance = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_winch_chance")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_winch_chance",
	title = "RNGModifier_born_winch_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_winch_chance",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("born", "_winch_chance"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_vault = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_born_vault",
	title = "RNGModifier_born_vault_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_vault",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_born_vault_1",
		"RNGModifier_born_vault_2"
	},
	value = RNGModifier:SafeGetData("born", "_vault"),
	menu_id = "RNGModifier_born_Options_Menu"
})

MenuCallbackHandler.RNGModifier_born_tool_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_tool_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_tool_chance")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	id = "RNGModifier_born_tool_chance",
	title = "RNGModifier_born_tool_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_born_tool_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_tool_chance")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})]]