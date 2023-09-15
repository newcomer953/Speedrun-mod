_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "hox_3"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_hox_3_panic_hector = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_panic_hector")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.2,
	id = "RNGModifier_hox_3_panic_hector",
	title = "RNGModifier_hox_3_panic_hector_title",
	desc = "RNGModifier_hox_3_panic_hector_desc",
	callback = "RNGModifier_hox_3_panic_hector",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_panic_hector_1",
		"RNGModifier_hox_3_panic_hector_2A",
		"RNGModifier_hox_3_panic_hector_2B",
		"RNGModifier_hox_3_panic_hector_3",
		"RNGModifier_hox_3_panic_hector_4A",
		"RNGModifier_hox_3_panic_hector_4B",
		"RNGModifier_hox_3_panic_hector_5",
		"RNGModifier_hox_3_panic_hector_6A",
		"RNGModifier_hox_3_panic_hector_6B"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_panic_hector"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_alarm_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_alarm_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_alarm_box",
	title = "RNGModifier_hox_3_alarm_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_alarm_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_10",
		"RNGModifier_number_4_use_11",
		"RNGModifier_number_4_use_12",
		"RNGModifier_number_4_use_13",
		"RNGModifier_number_4_use_14",
		"RNGModifier_number_4_use_15",
		"RNGModifier_number_4_use_16",
		"RNGModifier_number_4_use_17",
		"RNGModifier_number_4_use_18",
		"RNGModifier_number_4_use_19",
		"RNGModifier_number_4_use_20",
		"RNGModifier_number_4_use_21",
		"RNGModifier_number_4_use_22"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_alarm_box"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.1,
	id = "RNGModifier_hox_3_code",
	title = "RNGModifier_hox_3_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_code_1",
		"RNGModifier_hox_3_code_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_code"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_fake_boss = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fake_boss")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_fake_boss",
	title = "RNGModifier_hox_3_fake_boss_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_fake_boss",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_fake_boss_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_fake_boss"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})


MenuCallbackHandler.RNGModifier_hox_3_keycard_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_keycard_A",
	title = "RNGModifier_hox_3_keycard_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_keycard_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_keycard_1",
		"RNGModifier_hox_3_keycard_2",
		"RNGModifier_hox_3_keycard_3",
		"RNGModifier_hox_3_keycard_4",
		"RNGModifier_hox_3_keycard_5",
		"RNGModifier_hox_3_keycard_6",
		"RNGModifier_hox_3_keycard_7",
		"RNGModifier_hox_3_keycard_8",
		"RNGModifier_hox_3_keycard_9",
		"RNGModifier_hox_3_keycard_10",
		"RNGModifier_hox_3_keycard_11",
		--"RNGModifier_hox_3_keycard_12", #12 is disabled in-game
		"RNGModifier_hox_3_keycard_13",
		"RNGModifier_hox_3_keycard_14",
		"RNGModifier_hox_3_keycard_15",
		"RNGModifier_hox_3_keycard_16",
		"RNGModifier_hox_3_keycard_17"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard_A"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_keycard_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_keycard_B",
	title = "RNGModifier_hox_3_keycard_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_keycard_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_keycard_1",
		"RNGModifier_hox_3_keycard_2",
		"RNGModifier_hox_3_keycard_3",
		"RNGModifier_hox_3_keycard_4",
		"RNGModifier_hox_3_keycard_5",
		"RNGModifier_hox_3_keycard_6",
		"RNGModifier_hox_3_keycard_7",
		"RNGModifier_hox_3_keycard_8",
		"RNGModifier_hox_3_keycard_9",
		"RNGModifier_hox_3_keycard_10",
		"RNGModifier_hox_3_keycard_11",
		--"RNGModifier_hox_3_keycard_12", #12 is disabled in-game
		"RNGModifier_hox_3_keycard_13",
		"RNGModifier_hox_3_keycard_14",
		"RNGModifier_hox_3_keycard_15",
		"RNGModifier_hox_3_keycard_16",
		"RNGModifier_hox_3_keycard_17"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard_B"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_keycard_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_keycard_C",
	title = "RNGModifier_hox_3_keycard_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_keycard_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_keycard_1",
		"RNGModifier_hox_3_keycard_2",
		"RNGModifier_hox_3_keycard_3",
		"RNGModifier_hox_3_keycard_4",
		"RNGModifier_hox_3_keycard_5",
		"RNGModifier_hox_3_keycard_6",
		"RNGModifier_hox_3_keycard_7",
		"RNGModifier_hox_3_keycard_8",
		"RNGModifier_hox_3_keycard_9",
		"RNGModifier_hox_3_keycard_10",
		"RNGModifier_hox_3_keycard_11",
		--"RNGModifier_hox_3_keycard_12", #12 is disabled in-game
		"RNGModifier_hox_3_keycard_13",
		"RNGModifier_hox_3_keycard_14",
		"RNGModifier_hox_3_keycard_15",
		"RNGModifier_hox_3_keycard_16",
		"RNGModifier_hox_3_keycard_17"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard_C"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})
MenuCallbackHandler.RNGModifier_hox_3_evidence_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_evidence_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.3,
	id = "RNGModifier_hox_3_evidence_A",
	title = "RNGModifier_hox_3_evidence_A_title",
	desc = "RNGModifier_hox_3_evidence_desc",
	callback = "RNGModifier_hox_3_evidence_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_evidence_1A",
		"RNGModifier_hox_3_evidence_1B",
		"RNGModifier_hox_3_evidence_2A",
		"RNGModifier_hox_3_evidence_2B",
		"RNGModifier_hox_3_evidence_3A",
		"RNGModifier_hox_3_evidence_3B",
		"RNGModifier_hox_3_evidence_3C",
		"RNGModifier_hox_3_evidence_4A",
		"RNGModifier_hox_3_evidence_4B",
		"RNGModifier_hox_3_evidence_4C"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_evidence_A"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_evidence_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_evidence_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.4,
	id = "RNGModifier_hox_3_evidence_B",
	title = "RNGModifier_hox_3_evidence_B_title",
	desc = "RNGModifier_hox_3_evidence_desc",
	callback = "RNGModifier_hox_3_evidence_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_evidence_1A",
		"RNGModifier_hox_3_evidence_1B",
		"RNGModifier_hox_3_evidence_2A",
		"RNGModifier_hox_3_evidence_2B",
		"RNGModifier_hox_3_evidence_3A",
		"RNGModifier_hox_3_evidence_3B",
		"RNGModifier_hox_3_evidence_3C",
		"RNGModifier_hox_3_evidence_4A",
		"RNGModifier_hox_3_evidence_4B",
		"RNGModifier_hox_3_evidence_4C"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_evidence_B"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_evidence_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_evidence_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.5,
	id = "RNGModifier_hox_3_evidence_C",
	title = "RNGModifier_hox_3_evidence_C_title",
	desc = "RNGModifier_hox_3_evidence_desc",
	callback = "RNGModifier_hox_3_evidence_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_evidence_1A",
		"RNGModifier_hox_3_evidence_1B",
		"RNGModifier_hox_3_evidence_2A",
		"RNGModifier_hox_3_evidence_2B",
		"RNGModifier_hox_3_evidence_3A",
		"RNGModifier_hox_3_evidence_3B",
		"RNGModifier_hox_3_evidence_3C",
		"RNGModifier_hox_3_evidence_4A",
		"RNGModifier_hox_3_evidence_4B",
		"RNGModifier_hox_3_evidence_4C"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_evidence_C"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_evidence_A_amount = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_evidence_A_amount")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.61,
	id = "RNGModifier_hox_3_evidence_A_amount",
	title = "RNGModifier_hox_3_evidence_amount_A_title",
	desc = "RNGModifier_hox_3_evidence_amount_desc",
	callback = "RNGModifier_hox_3_evidence_A_amount",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_evidence_A_amount"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_evidence_B_amount = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_evidence_B_amount")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.62,
	id = "RNGModifier_hox_3_evidence_B_amount",
	title = "RNGModifier_hox_3_evidence_amount_B_title",
	desc = "RNGModifier_hox_3_evidence_amount_desc",
	callback = "RNGModifier_hox_3_evidence_B_amount",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_evidence_B_amount"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_evidence_C_amount = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_evidence_C_amount")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.63,
	id = "RNGModifier_hox_3_evidence_C_amount",
	title = "RNGModifier_hox_3_evidence_amount_C_title",
	desc = "RNGModifier_hox_3_evidence_amount_desc",
	callback = "RNGModifier_hox_3_evidence_C_amount",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_evidence_C_amount"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

--[[
MenuCallbackHandler.RNGModifier_hox_3_room1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_room1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_room1",
	title = "RNGModifier_hox_3_room1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_room1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_room1_1",
		"RNGModifier_hox_3_room1_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_room1"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_room2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_room2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_room2",
	title = "RNGModifier_hox_3_room2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_room2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_room2_1",
		"RNGModifier_hox_3_room2_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_room2"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_room3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_room3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_room3",
	title = "RNGModifier_hox_3_room3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_room3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_room3_1",
		"RNGModifier_hox_3_room3_2",
		"RNGModifier_hox_3_room3_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_room3"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_room4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_room4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_room4",
	title = "RNGModifier_hox_3_room4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_room4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_room4_1",
		"RNGModifier_hox_3_room4_2",
		"RNGModifier_hox_3_room4_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_room4"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_hox_3_setup = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_setupRF")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.1,
	id = "RNGModifier_hox_3_setup",
	title = "RNGModifier_hox_3_setupRF_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_setup",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_setupRF_1",
		"RNGModifier_hox_3_setupRF_2",
		"RNGModifier_hox_3_setupRF_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_setupRF"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_rock_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rock_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.2,
	id = "RNGModifier_hox_3_rock_1",
	title = "RNGModifier_hox_3_rock_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_rock_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_rock_1",
		"RNGModifier_hox_3_rock_2",
		"RNGModifier_hox_3_rock_3",
		"RNGModifier_hox_3_rock_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_rock_1"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_rock_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rock_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.3,
	id = "RNGModifier_hox_3_rock_2",
	title = "RNGModifier_hox_3_rock_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_rock_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_rock_1",
		"RNGModifier_hox_3_rock_2",
		"RNGModifier_hox_3_rock_3",
		"RNGModifier_hox_3_rock_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_rock_2"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_fence_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fence_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.4,
	id = "RNGModifier_hox_3_fence_1",
	title = "RNGModifier_hox_3_fence_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_fence_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_fence_1",
		"RNGModifier_hox_3_fence_2",
		"RNGModifier_hox_3_fence_3",
		"RNGModifier_hox_3_fence_4",
		"RNGModifier_hox_3_fence_5",
		"RNGModifier_hox_3_fence_6",
		"RNGModifier_hox_3_fence_7",
		"RNGModifier_hox_3_fence_8",
		"RNGModifier_hox_3_fence_9"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_fence_1"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_fence_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fence_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.5,
	id = "RNGModifier_hox_3_fence_2",
	title = "RNGModifier_hox_3_fence_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_fence_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_fence_1",
		"RNGModifier_hox_3_fence_2",
		"RNGModifier_hox_3_fence_3",
		"RNGModifier_hox_3_fence_4",
		"RNGModifier_hox_3_fence_5",
		"RNGModifier_hox_3_fence_6",
		"RNGModifier_hox_3_fence_7",
		"RNGModifier_hox_3_fence_8",
		"RNGModifier_hox_3_fence_9"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_fence_2"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_hox_3_boost_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boost_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_boost_A",
	title = "RNGModifier_hox_3_boost_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_boost_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_boost_1",
		"RNGModifier_hox_3_boost_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_boost_A"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_boost_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boost_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_boost_B",
	title = "RNGModifier_hox_3_boost_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_boost_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_boost_1",
		"RNGModifier_hox_3_boost_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_boost_B"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_rock = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rock")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_rock",
	title = "RNGModifier_hox_3_rock_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_rock",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_rock_1",
		"RNGModifier_hox_3_rock_2",
		"RNGModifier_hox_3_rock_3",
		"RNGModifier_hox_3_rock_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_rock"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_fenceL = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fenceL")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_fenceL",
	title = "RNGModifier_hox_3_fenceL_title",
	desc = "RNGModifier_hox_3_fence_desc",
	callback = "RNGModifier_hox_3_fenceL",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_fenceL"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})


MenuCallbackHandler.RNGModifier_hox_3_fenceR = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fenceR")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_fenceR",
	title = "RNGModifier_hox_3_fenceR_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_fenceR",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_fenceR_1",
		"RNGModifier_hox_3_fenceR_2",
		"RNGModifier_hox_3_fenceR_3",
		"RNGModifier_hox_3_fenceR_4",
		"RNGModifier_hox_3_fenceR_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_fenceR"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_3_fence = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fence")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_fence",
	title = "RNGModifier_hox_3_fence_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_fence",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_fence_1",
		"RNGModifier_hox_3_fence_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_fence"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_hox_3_ladder = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_ladder")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hox_3_ladder",
	title = "RNGModifier_hox_3_ladder_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_3_ladder",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_3_ladder_1",
		"RNGModifier_hox_3_ladder_2",
		"RNGModifier_hox_3_ladder_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_ladder"),
	menu_id = "RNGModifier_hox_3_Options_Menu"
})