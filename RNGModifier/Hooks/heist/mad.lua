_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "mad"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_mad_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_mad_spawn",
	title = "RNGModifier_mad_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData("mad", "_spawn"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_c4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mad_c4",
	title = "RNGModifier_mad_c4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_c4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_c4_1",
		"RNGModifier_mad_c4_2",
		"RNGModifier_mad_c4_3",
		"RNGModifier_mad_c4_4"
	},
	value = RNGModifier:SafeGetData("mad", "_c4"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_radar = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_radar")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3,
	id = "RNGModifier_mad_radar",
	title = "RNGModifier_mad_radar_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_radar",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_radar_1",
		"RNGModifier_mad_radar_2",
		"RNGModifier_mad_radar_3",
		"RNGModifier_mad_radar_4",
		"RNGModifier_mad_radar_5",
		"RNGModifier_mad_radar_6"
	},
	value = RNGModifier:SafeGetData("mad", "_radar"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_antiair = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_antiair")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4,
	id = "RNGModifier_mad_antiair",
	title = "RNGModifier_mad_antiair_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_antiair",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData("mad", "_antiair"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_emp = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_emp")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5,
	id = "RNGModifier_mad_emp",
	title = "RNGModifier_mad_emp_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_emp",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_emp_1",
		"RNGModifier_mad_emp_2",
		"RNGModifier_mad_emp_3"
	},
	value = RNGModifier:SafeGetData("mad", "_emp"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_briefcase = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_briefcase")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -6,
	id = "RNGModifier_mad_briefcase",
	title = "RNGModifier_mad_briefcase_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_briefcase",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_briefcase_1",
		"RNGModifier_mad_briefcase_2",
		"RNGModifier_mad_briefcase_3",
		"RNGModifier_mad_briefcase_4"
	},
	value = RNGModifier:SafeGetData("mad", "_briefcase"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7,
	id = "RNGModifier_mad_keycard",
	title = "RNGModifier_mad_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_keycard_1",
		"RNGModifier_mad_keycard_2",
		"RNGModifier_mad_keycard_3",
		"RNGModifier_mad_keycard_4",
		"RNGModifier_mad_keycard_5",
		"RNGModifier_mad_keycard_6",
		"RNGModifier_mad_keycard_7",
		"RNGModifier_mad_keycard_8"
	},
	value = RNGModifier:SafeGetData("mad", "_keycard"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_scanner = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_scanner")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8,
	id = "RNGModifier_mad_scanner",
	title = "RNGModifier_mad_scanner_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_scanner",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_scanner_1",
		"RNGModifier_mad_scanner_2"
	},
	value = RNGModifier:SafeGetData("mad", "_scanner"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_server = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -9,
	id = "RNGModifier_mad_server",
	title = "RNGModifier_mad_server_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_server",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_server_1",
		"RNGModifier_mad_server_2",
		"RNGModifier_mad_server_3",
		"RNGModifier_mad_server_4"
	},
	value = RNGModifier:SafeGetData("mad", "_server"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_bunker_objective = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bunker_objective")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -10,
	id = "RNGModifier_mad_bunker_objective",
	title = "RNGModifier_mad_bunker_objective_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_bunker_objective",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_bunker_objective_1",
		"RNGModifier_mad_bunker_objective_2"
	},
	value = RNGModifier:SafeGetData("mad", "_bunker_objective"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_scientist_hand = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_scientist_hand")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -11,
	id = "RNGModifier_mad_scientist_hand",
	title = "RNGModifier_mad_scientist_hand_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_scientist_hand",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_scientist_hand_1",
		"RNGModifier_mad_scientist_hand_2",
		"RNGModifier_mad_scientist_hand_3",
		"RNGModifier_mad_scientist_hand_4",
		"RNGModifier_mad_scientist_hand_5",
		"RNGModifier_mad_scientist_hand_6"
	},
	value = RNGModifier:SafeGetData("mad", "_scientist_hand"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_gas = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gas")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -12,
	id = "RNGModifier_mad_gas",
	title = "RNGModifier_mad_gas_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_gas",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_gas_1",
		"RNGModifier_mad_gas_2",
		"RNGModifier_mad_gas_3",
		"RNGModifier_mad_gas_4"
	},
	value = RNGModifier:SafeGetData("mad", "_gas"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_test_subject = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test_subject")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -13,
	id = "RNGModifier_mad_test_subject",
	title = "RNGModifier_mad_test_subject_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_test_subject",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_test_subject_1",
		"RNGModifier_mad_test_subject_2",
		"RNGModifier_mad_test_subject_3",
		"RNGModifier_mad_test_subject_4",
		"RNGModifier_mad_test_subject_5",
		"RNGModifier_mad_test_subject_6",
		"RNGModifier_mad_test_subject_7",
		"RNGModifier_mad_test_subject_8",
		"RNGModifier_mad_test_subject_9",
		"RNGModifier_mad_test_subject_10"
	},
	value = RNGModifier:SafeGetData("mad", "_test_subject"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_pbox_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pbox_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -14,
	id = "RNGModifier_mad_pbox_1",
	title = "RNGModifier_mad_pbox_1_title",
	desc = "RNGModifier_mad_pbox_1_desc",
	callback = "RNGModifier_mad_pbox_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_pbox_2",
		"RNGModifier_mad_pbox_3",
		"RNGModifier_mad_pbox_4",
		"RNGModifier_mad_pbox_5",
		"RNGModifier_mad_pbox_9"
	},
	value = RNGModifier:SafeGetData("mad", "_pbox_1"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_pbox_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pbox_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -15,
	id = "RNGModifier_mad_pbox_2",
	title = "RNGModifier_mad_pbox_2_title",
	desc = "RNGModifier_mad_pbox_2_desc",
	callback = "RNGModifier_mad_pbox_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_pbox_1",
		"RNGModifier_mad_pbox_2",
		"RNGModifier_mad_pbox_3",
		"RNGModifier_mad_pbox_4",
		"RNGModifier_mad_pbox_6",
		"RNGModifier_mad_pbox_8"
	},
	value = RNGModifier:SafeGetData("mad", "_pbox_2"),
	menu_id = "RNGModifier_mad_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mad_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -16,
	id = "RNGModifier_mad_escape",
	title = "RNGModifier_mad_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mad_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mad_escape_1",
		"RNGModifier_mad_escape_2"
	},
	value = RNGModifier:SafeGetData("mad", "_escape"),
	menu_id = "RNGModifier_mad_Options_Menu"
})