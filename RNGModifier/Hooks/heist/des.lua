_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "des"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_des_objective = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_objective")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 100.2,
	id = "RNGModifier_des_objective",
	title = "RNGModifier_des_objective_title",
	desc = "RNGModifier_des_objective_desc",
	callback = "RNGModifier_des_objective",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_objective_1",
		"RNGModifier_des_objective_2",
		"RNGModifier_des_objective_3",
		"RNGModifier_des_objective_4"
		
	},
	value = RNGModifier:SafeGetData("des", "_objective"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_objective_two = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_objective_two")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 100.1,
	id = "RNGModifier_des_objective_two",
	title = "RNGModifier_des_objective_two_title",
	desc = "RNGModifier_des_objective_desc",
	callback = "RNGModifier_des_objective_two",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_objective_1",
		"RNGModifier_des_objective_2",
		"RNGModifier_des_objective_3",
		"RNGModifier_des_objective_4"
		
	},
	value = RNGModifier:SafeGetData("des", "_objective_two"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_computer_hack = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_computer_hack")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 81,
	id = "RNGModifier_des_computer_hack",
	title = "RNGModifier_des_computer_hack_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_computer_hack",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("des", "_computer_hack"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_computer = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_computer")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 82,
	id = "RNGModifier_des_computer",
	title = "RNGModifier_des_computer_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_computer",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_computer_1",
		"RNGModifier_des_computer_2",
		"RNGModifier_des_computer_3",
		"RNGModifier_des_computer_4",
		"RNGModifier_des_computer_5",
		"RNGModifier_des_computer_6",
		"RNGModifier_des_computer_7",
		"RNGModifier_des_computer_8"
	},
	value = RNGModifier:SafeGetData("des", "_computer"),
	menu_id = "RNGModifier_des_Options_Menu"
})

--[[
MenuCallbackHandler.RNGModifier_des_block_computer = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_block_computer")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 82.1,
	id = "RNGModifier_des_block_computer",
	title = "RNGModifier_des_block_computer_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_block_computer",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_block_computer_1",
		"RNGModifier_des_block_computer_2"
	},
	value = RNGModifier:SafeGetData("des", "_block_computer"),
	menu_id = "RNGModifier_des_Options_Menu"
})
]]

MenuCallbackHandler.RNGModifier_des_crane_breaker = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crane_breaker")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 80,
	id = "RNGModifier_des_crane_breaker",
	title = "RNGModifier_des_crane_breaker_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_crane_breaker",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_crane_breaker_1",
		"RNGModifier_des_crane_breaker_2",
		"RNGModifier_des_crane_breaker_3"
		
	},
	value = RNGModifier:SafeGetData("des", "_crane_breaker"),
	menu_id = "RNGModifier_des_Options_Menu"
})


MenuCallbackHandler.RNGModifier_des_whiteboard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_whiteboard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 69,
	id = "RNGModifier_des_whiteboard",
	title = "RNGModifier_des_whiteboard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_whiteboard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_whiteboard_1",
		"RNGModifier_des_whiteboard_2",
		"RNGModifier_des_whiteboard_3"
		
	},
	value = RNGModifier:SafeGetData("des", "_whiteboard"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_letter_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_letter_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 68,
	id = "RNGModifier_des_letter_1",
	title = "RNGModifier_des_letter_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_letter_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_letter_a",
		"RNGModifier_des_letter_b",
		"RNGModifier_des_letter_c",
		"RNGModifier_des_letter_d"
		
	},
	value = RNGModifier:SafeGetData("des", "_letter_1"),
	menu_id = "RNGModifier_des_Options_Menu"
})


MenuCallbackHandler.RNGModifier_des_letter_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_letter_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 67,
	id = "RNGModifier_des_letter_2",
	title = "RNGModifier_des_letter_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_letter_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_letter_b",
		"RNGModifier_des_letter_c",
		"RNGModifier_des_letter_d"
		
	},
	value = RNGModifier:SafeGetData("des", "_letter_2"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_letter_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_letter_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 66,
	id = "RNGModifier_des_letter_3",
	title = "RNGModifier_des_letter_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_letter_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_letter_c",
		"RNGModifier_des_letter_d"
		
	},
	value = RNGModifier:SafeGetData("des", "_letter_3"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_compound_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_compound_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 65,
	id = "RNGModifier_des_compound_A",
	title = "RNGModifier_des_compound_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_compound_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_compound_A_1",
		"RNGModifier_des_compound_A_2",
		"RNGModifier_des_compound_A_3",
		"RNGModifier_des_compound_A_4"
		
	},
	value = RNGModifier:SafeGetData("des", "_compound_A"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_compound_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_compound_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 64,
	id = "RNGModifier_des_compound_B",
	title = "RNGModifier_des_compound_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_compound_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_compound_B_1",
		"RNGModifier_des_compound_B_2",
		"RNGModifier_des_compound_B_3"
		
	},
	value = RNGModifier:SafeGetData("des", "_compound_B"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_compound_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_compound_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 63,
	id = "RNGModifier_des_compound_C",
	title = "RNGModifier_des_compound_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_compound_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_compound_C_1",
		"RNGModifier_des_compound_C_2",
		"RNGModifier_des_compound_C_3"
		
	},
	value = RNGModifier:SafeGetData("des", "_compound_C"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_first_symbol = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_first_symbol")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 75,
	id = "RNGModifier_des_first_symbol",
	title = "RNGModifier_des_first_symbol_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_first_symbol",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_symbol_1",
		"RNGModifier_des_symbol_2",
		"RNGModifier_des_symbol_3",
		"RNGModifier_des_symbol_4",
		"RNGModifier_des_symbol_5",
		"RNGModifier_des_symbol_6",
		"RNGModifier_des_symbol_7",
		"RNGModifier_des_symbol_8",
		"RNGModifier_des_symbol_9"
	},
	value = RNGModifier:SafeGetData("des", "_first_symbol"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_second_symbol = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_second_symbol")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
		priority = 74,
	id = "RNGModifier_des_second_symbol",
	title = "RNGModifier_des_second_symbol_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_second_symbol",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_symbol_1",
		"RNGModifier_des_symbol_2",
		"RNGModifier_des_symbol_3",
		"RNGModifier_des_symbol_4",
		"RNGModifier_des_symbol_5",
		"RNGModifier_des_symbol_6",
		"RNGModifier_des_symbol_7",
		"RNGModifier_des_symbol_8",
		"RNGModifier_des_symbol_9"
	},
	value = RNGModifier:SafeGetData("des", "_second_symbol"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_third_symbol = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_third_symbol")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 73,
	id = "RNGModifier_des_third_symbol",
	title = "RNGModifier_des_third_symbol_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_third_symbol",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_symbol_1",
		"RNGModifier_des_symbol_2",
		"RNGModifier_des_symbol_3",
		"RNGModifier_des_symbol_4",
		"RNGModifier_des_symbol_5",
		"RNGModifier_des_symbol_6",
		"RNGModifier_des_symbol_7",
		"RNGModifier_des_symbol_8",
		"RNGModifier_des_symbol_9"
	},
	value = RNGModifier:SafeGetData("des", "_third_symbol"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_crowbar_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_des_crowbar_A",
	title = "RNGModifier_des_crowbar_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_crowbar_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_crowbar_1",
		"RNGModifier_des_crowbar_2",
		"RNGModifier_des_crowbar_3",
		"RNGModifier_des_crowbar_4",
		"RNGModifier_des_crowbar_5",
		"RNGModifier_des_crowbar_6"
	},
	value = RNGModifier:SafeGetData("des", "_crowbar_A"),
	menu_id = "RNGModifier_des_Options_Menu"
})

MenuCallbackHandler.RNGModifier_des_crowbar_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 98,
	id = "RNGModifier_des_crowbar_B",
	title = "RNGModifier_des_crowbar_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_crowbar_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_des_crowbar_1",
		"RNGModifier_des_crowbar_2",
		"RNGModifier_des_crowbar_3",
		"RNGModifier_des_crowbar_4",
		"RNGModifier_des_crowbar_5",
		"RNGModifier_des_crowbar_6"
	},
	value = RNGModifier:SafeGetData("des", "_crowbar_B"),
	menu_id = "RNGModifier_des_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_des_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_des_test",
	title = "RNGModifier_des_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_des_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("des", "_test"),
	menu_id = "RNGModifier_des_Options_Menu"
})]]