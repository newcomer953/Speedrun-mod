_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "dark"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_dark_pick_emp_train_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_emp_train_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 19,
	id = "RNGModifier_dark_pick_emp_train_1",
	title = "RNGModifier_dark_pick_emp_train_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_emp_train_1",
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
	value = RNGModifier:SafeGetData("dark", "_pick_emp_train_1"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_emp_train_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_emp_train_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_dark_pick_emp_train_2",
	title = "RNGModifier_dark_pick_emp_train_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_emp_train_2",
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
	value = RNGModifier:SafeGetData("dark", "_pick_emp_train_2"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_murky_train_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_murky_train_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16.9,
	id = "RNGModifier_dark_pick_murky_train_1",
	title = "RNGModifier_dark_pick_murky_train_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_murky_train_1",
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
	value = RNGModifier:SafeGetData("dark", "_pick_murky_train_1"),
	menu_id = "RNGModifier_dark_Options_Menu"
})


MenuCallbackHandler.RNGModifier_dark_pick_murky_train_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_murky_train_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 18,
	id = "RNGModifier_dark_pick_murky_train_2",
	title = "RNGModifier_dark_pick_murky_train_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_murky_train_2",
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
	value = RNGModifier:SafeGetData("dark", "_pick_murky_train_2"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_panel_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_panel_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15.1,
	id = "RNGModifier_dark_panel_1",
	title = "RNGModifier_dark_panel_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_panel_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("dark", "_panel_1"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_panel_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_panel_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15,
	id = "RNGModifier_dark_panel_2",
	title = "RNGModifier_dark_panel_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_panel_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("dark", "_panel_2"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_panel_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_panel_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16.1,
	id = "RNGModifier_dark_panel_3",
	title = "RNGModifier_dark_panel_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_panel_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dark_panel_1",
		"RNGModifier_dark_panel_2"
	},
	value = RNGModifier:SafeGetData("dark", "_panel_3"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_panel_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_panel_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16.2,
	id = "RNGModifier_dark_panel_4",
	title = "RNGModifier_dark_panel_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_panel_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("dark", "_panel_4"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_lock_emp = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_lock_emp")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15.9,
	id = "RNGModifier_dark_lock_emp",
	title = "RNGModifier_dark_lock_emp_title",
	desc = "RNGModifier_dark_lock_emp_desc",
	callback = "RNGModifier_dark_lock_emp",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dark_lock_emp_1",
		"RNGModifier_dark_lock_emp_2"
	},
	value = RNGModifier:SafeGetData("dark", "_lock_emp"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_lock_emp_2nd = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_lock_emp_2nd")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15.8,
	id = "RNGModifier_dark_lock_emp_2nd",
	title = "RNGModifier_dark_lock_emp_2nd_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_lock_emp_2nd",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dark_lock_emp_1",
		"RNGModifier_dark_lock_emp_2"
	},
	value = RNGModifier:SafeGetData("dark", "_lock_emp_2nd"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_dark_lock_emp = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_lock_emp")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_lock_emp")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = 16.1,
	id = "RNGModifier_dark_lock_emp",
	title = "RNGModifier_dark_lock_emp_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_lock_emp",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_lock_emp")) == 1 and true or false,
	menu_id = "RNGModifier_dark_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_dark_pick_exit = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_exit")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 1,
	id = "RNGModifier_dark_pick_exit",
	title = "RNGModifier_dark_pick_exit_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_exit",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dark_pick_exit_1",
		"RNGModifier_dark_pick_exit_2"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_exit"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_thermite_upper = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_thermite_upper")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 13,
	id = "RNGModifier_dark_pick_thermite_upper",
	title = "RNGModifier_dark_pick_thermite_upper_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_thermite_upper",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_thermite_upper"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_thermite_lower = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_thermite_lower")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_dark_pick_thermite_lower",
	title = "RNGModifier_dark_pick_thermite_lower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_thermite_lower",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_thermite_lower"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_blowtorch_upper = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_blowtorch_upper")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11,
	id = "RNGModifier_dark_pick_blowtorch_upper",
	title = "RNGModifier_dark_pick_blowtorch_upper_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_blowtorch_upper",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_blowtorch_upper"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_blowtorch_lower = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_blowtorch_lower")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10,
	id = "RNGModifier_dark_pick_blowtorch_lower",
	title = "RNGModifier_dark_pick_blowtorch_lower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_blowtorch_lower",
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
	value = RNGModifier:SafeGetData("dark", "_pick_blowtorch_lower"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_hd_upper = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_hd_upper")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_dark_pick_hd_upper",
	title = "RNGModifier_dark_pick_hd_upper_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_hd_upper",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_hd_upper"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_hd_lower = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_hd_lower")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_dark_pick_hd_lower",
	title = "RNGModifier_dark_pick_hd_lower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_hd_lower",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_hd_lower"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_keycard_upper = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_keycard_upper")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7,
	id = "RNGModifier_dark_pick_keycard_upper",
	title = "RNGModifier_dark_pick_keycard_upper_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_keycard_upper",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_keycard_upper"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_pick_keycard_lower = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_keycard_lower")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 6,
	id = "RNGModifier_dark_pick_keycard_lower",
	title = "RNGModifier_dark_pick_keycard_lower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_keycard_lower",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_keycard_lower"),
	menu_id = "RNGModifier_dark_Options_Menu"
})


MenuCallbackHandler.RNGModifier_dark_thermite_upper_lower = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_thermite_upper_lower")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 5,
	id = "RNGModifier_dark_thermite_upper_lower",
	title = "RNGModifier_dark_thermite_upper_lower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_thermite_upper_lower",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_switch_4_UP",
		"RNGModifier_switch_4_DOWN",
	},
	value = RNGModifier:SafeGetData("dark", "_thermite_upper_lower"),
	menu_id = "RNGModifier_dark_Options_Menu"
})


MenuCallbackHandler.RNGModifier_dark_blowtorch_upper_lower = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blowtorch_upper_lower")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4,
	id = "RNGModifier_dark_blowtorch_upper_lower",
	title = "RNGModifier_dark_blowtorch_upper_lower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_blowtorch_upper_lower",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_switch_4_UP",
		"RNGModifier_switch_4_DOWN",
	},
	value = RNGModifier:SafeGetData("dark", "_blowtorch_upper_lower"),
	menu_id = "RNGModifier_dark_Options_Menu"
})


MenuCallbackHandler.RNGModifier_dark_hd_upper_lower = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hd_upper_lower")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 3,
	id = "RNGModifier_dark_hd_upper_lower",
	title = "RNGModifier_dark_hd_upper_lower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_hd_upper_lower",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_switch_4_UP",
		"RNGModifier_switch_4_DOWN",
	},
	value = RNGModifier:SafeGetData("dark", "_hd_upper_lower"),
	menu_id = "RNGModifier_dark_Options_Menu"
})


MenuCallbackHandler.RNGModifier_dark_keycard_upper_lower = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_upper_lower")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 2,
	id = "RNGModifier_dark_keycard_upper_lower",
	title = "RNGModifier_dark_keycard_upper_lower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_keycard_upper_lower",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_switch_4_UP",
		"RNGModifier_switch_4_DOWN",
	},
	value = RNGModifier:SafeGetData("dark", "_keycard_upper_lower"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_fence_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fence_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14.5,
	id = "RNGModifier_dark_fence_spawn",
	title = "RNGModifier_dark_fence_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_fence_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData("dark", "_fence_spawn"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dark_fence_back = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fence_back")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14.4,
	id = "RNGModifier_dark_fence_back",
	title = "RNGModifier_dark_fence_back_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_fence_back",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dark_fence_back_1",
		"RNGModifier_dark_fence_back_2",
		"RNGModifier_dark_fence_back_3",
		"RNGModifier_dark_fence_back_4"
	},
	value = RNGModifier:SafeGetData("dark", "_fence_back"),
	menu_id = "RNGModifier_dark_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_dark_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 1,
	id = "RNGModifier_dark_test",
	title = "RNGModifier_dark_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData("dark", "_test"),
	menu_id = "RNGModifier_dark_Options_Menu"
})]]

--[[MenuCallbackHandler.RNGModifier_dark_train_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_train_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_dark_train_A",
	title = "RNGModifier_dark_train_A_title",
	desc = "RNGModifier_dark_train1_desc",
	callback = "RNGModifier_dark_train_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("dark", "_train_A"),
	menu_id = "RNGModifier_dark_Options_Menu"
})


MenuCallbackHandler.RNGModifier_dark_train_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_train_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_dark_train_B",
	title = "RNGModifier_dark_train_B_title",
	desc = "RNGModifier_dark_train2_desc",
	callback = "RNGModifier_dark_train_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("dark", "_train_B"),
	menu_id = "RNGModifier_dark_Options_Menu"
})]]

--[[MenuCallbackHandler.RNGModifier_dark_train_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_train_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_dark_train_C",
	title = "RNGModifier_dark_train_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_train_C",
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
	value = RNGModifier:SafeGetData("dark", "_train_C"),
	menu_id = "RNGModifier_dark_Options_Menu"
})]]--


MenuCallbackHandler.RNGModifier_dark_pick_type_vault1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_type_vault1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16.7,
	id = "RNGModifier_dark_pick_type_vault1",
	title = "RNGModifier_dark_pick_type_vault1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_type_vault1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pick_type_vault1_1",
		"RNGModifier_pick_type_vault1_2",
		"RNGModifier_pick_type_vault1_3",
		"RNGModifier_pick_type_vault1_4"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_type_vault1"),
	menu_id = "RNGModifier_dark_Options_Menu"
})


MenuCallbackHandler.RNGModifier_dark_pick_type_vault2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_type_vault2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16.6,
	id = "RNGModifier_dark_pick_type_vault2",
	title = "RNGModifier_dark_pick_type_vault2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dark_pick_type_vault2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pick_type_vault1_1",
		"RNGModifier_pick_type_vault1_2",
		"RNGModifier_pick_type_vault1_3",
		"RNGModifier_pick_type_vault1_4"
	},
	value = RNGModifier:SafeGetData("dark", "_pick_type_vault2"),
	menu_id = "RNGModifier_dark_Options_Menu"
})