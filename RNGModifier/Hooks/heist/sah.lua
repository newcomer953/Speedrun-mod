_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "sah"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_sah_pick_rand_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_rand_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 100,
	id = "RNGModifier_sah_pick_rand_escape",
	title = "RNGModifier_sah_pick_rand_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_pick_rand_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("sah", "_pick_rand_escape"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_spawn_rand_walker = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_rand_walker")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_sah_spawn_rand_walker",
	title = "RNGModifier_sah_spawn_rand_walker_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_spawn_rand_walker",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("sah", "_spawn_rand_walker"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_randomize_hackbox_pairs = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randomize_hackbox_pairs")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 98,
	id = "RNGModifier_sah_randomize_hackbox_pairs",
	title = "RNGModifier_sah_randomize_hackbox_pairs_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_randomize_hackbox_pairs",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_randomize_hackbox_pairs_1",
		"RNGModifier_sah_randomize_hackbox_pairs_2",
		"RNGModifier_sah_randomize_hackbox_pairs_3",
		"RNGModifier_sah_randomize_hackbox_pairs_4"
	},
	value = RNGModifier:SafeGetData("sah", "_randomize_hackbox_pairs"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_randomize_vault = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randomize_vault")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 97,
	id = "RNGModifier_sah_randomize_vault",
	title = "RNGModifier_sah_randomize_vault_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_randomize_vault",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("sah", "_randomize_vault"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_randomize_breaker = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randomize_breaker")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 96,
	id = "RNGModifier_sah_randomize_breaker",
	title = "RNGModifier_sah_randomize_breaker_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_randomize_breaker",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("sah", "_randomize_breaker"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_randomize_ziplines = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randomize_ziplines")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 95,
	id = "RNGModifier_sah_randomize_ziplines",
	title = "RNGModifier_sah_randomize_ziplines_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_randomize_ziplines",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("sah", "_randomize_ziplines"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_randomize_security_rooms = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randomize_security_rooms")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 94,
	id = "RNGModifier_sah_randomize_security_rooms",
	title = "RNGModifier_sah_randomize_security_rooms_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_randomize_security_rooms",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_randomize_security_rooms_1",
		"RNGModifier_sah_randomize_security_rooms_2"
	},
	value = RNGModifier:SafeGetData("sah", "_randomize_security_rooms"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_randomzize_electrical_boxes = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randomzize_electrical_boxes")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_randomzize_electrical_boxes",
	title = "RNGModifier_sah_randomzize_electrical_boxes_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_randomzize_electrical_boxes",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_randomzize_electrical_boxes_1",
		"RNGModifier_sah_randomzize_electrical_boxes_2"
	},
	value = RNGModifier:SafeGetData("sah", "_randomzize_electrical_boxes"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_cpair_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cpair_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_cpair_A",
	title = "RNGModifier_sah_cpair_A_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sah_cpair_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_cpair_1",
		"RNGModifier_sah_cpair_2",
		"RNGModifier_sah_cpair_3",
		"RNGModifier_sah_cpair_4"
	},
	value = RNGModifier:SafeGetData("sah", "_cpair_A"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_cpair_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cpair_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_cpair_B",
	title = "RNGModifier_sah_cpair_B_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sah_cpair_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_cpair_1",
		"RNGModifier_sah_cpair_2",
		"RNGModifier_sah_cpair_3",
		"RNGModifier_sah_cpair_4"
	},
	value = RNGModifier:SafeGetData("sah", "_cpair_B"),
	menu_id = "RNGModifier_sah_Options_Menu"
})
MenuCallbackHandler.RNGModifier_sah_bpair_ON = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bpair_ON")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_bpair_ON",
	title = "RNGModifier_sah_bpair_ON_title",
	desc = "RNGModifier_bpairs_desc",
	callback = "RNGModifier_sah_bpair_ON",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("sah", "_bpair_ON"),
	menu_id = "RNGModifier_sah_Options_Menu"
})
MenuCallbackHandler.RNGModifier_sah_bpair_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bpair_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_bpair_A",
	title = "RNGModifier_sah_bpair_A_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sah_bpair_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_bpair_1",
		"RNGModifier_sah_bpair_2",
		"RNGModifier_sah_bpair_3"
	},
	value = RNGModifier:SafeGetData("sah", "_bpair_A"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_bpair_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bpair_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_bpair_B",
	title = "RNGModifier_sah_bpair_B_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sah_bpair_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_bpair_1",
		"RNGModifier_sah_bpair_2",
		"RNGModifier_sah_bpair_3"
	},
	value = RNGModifier:SafeGetData("sah", "_bpair_B"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_rpair_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rpair_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_rpair_A",
	title = "RNGModifier_sah_rpair_A_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sah_rpair_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_rpair_1",
		"RNGModifier_sah_rpair_2",
		"RNGModifier_sah_rpair_3",
		"RNGModifier_sah_rpair_4"
	},
	value = RNGModifier:SafeGetData("sah", "_rpair_A"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_rpair_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rpair_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_rpair_B",
	title = "RNGModifier_sah_rpair_B_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sah_rpair_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_rpair_1",
		"RNGModifier_sah_rpair_2",
		"RNGModifier_sah_rpair_3",
		"RNGModifier_sah_rpair_4"
	},
	value = RNGModifier:SafeGetData("sah", "_rpair_B"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_lpairs = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_lpairs")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sah_lpairs",
	title = "RNGModifier_sah_lpairs_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sah_lpairs",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_lpairs_1",
		"RNGModifier_sah_lpairs_2",
		"RNGModifier_sah_lpairs_3"
	},
	value = RNGModifier:SafeGetData("sah", "_lpairs"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_officeL = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_officeL")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_sah_officeL",
	title = "RNGModifier_sah_officeL_title",
	desc = "RNGModifier_officeL_desc",
	callback = "RNGModifier_sah_officeL",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_officeL_1",
		"RNGModifier_sah_officeL_2"
	},
	value = RNGModifier:SafeGetData("sah", "_officeL"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_officeR = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_officeR")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_sah_officeR",
	title = "RNGModifier_sah_officeR_title",
	desc = "RNGModifier_officeR_desc",
	callback = "RNGModifier_sah_officeR",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_officeR_1",
		"RNGModifier_sah_officeR_2"
	},
	value = RNGModifier:SafeGetData("sah", "_officeR"),
	menu_id = "RNGModifier_sah_Options_Menu"
})
MenuCallbackHandler.RNGModifier_sah_officeB = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_officeB")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_sah_officeB",
	title = "RNGModifier_sah_officeB_title",
	desc = "RNGModifier_officeB_desc",
	callback = "RNGModifier_sah_officeB",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_officeB_1",
		"RNGModifier_sah_officeB_2"
	},
	value = RNGModifier:SafeGetData("sah", "_officeB"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_officeC = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_officeC")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_sah_officeC",
	title = "RNGModifier_sah_officeC_title",
	desc = "RNGModifier_officeC_desc",
	callback = "RNGModifier_sah_officeC",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_officeC_1",
		"RNGModifier_sah_officeC_2",
		"RNGModifier_sah_officeC_3"
	},
	value = RNGModifier:SafeGetData("sah", "_officeC"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_tool1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_tool1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_sah_tool1",
	title = "RNGModifier_sah_tool1_title",
	desc = "RNGModifier_tool_desc",
	callback = "RNGModifier_sah_tool1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_tool_2",
		"RNGModifier_sah_tool_3"
	},
	value = RNGModifier:SafeGetData("sah", "_tool1"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_tool2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_tool2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_sah_tool2",
	title = "RNGModifier_sah_tool2_title",
	desc = "RNGModifier_tool_desc",
	callback = "RNGModifier_sah_tool2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_tool_1",
		"RNGModifier_sah_tool_3"
	},
	value = RNGModifier:SafeGetData("sah", "_tool2"),
	menu_id = "RNGModifier_sah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sah_tool3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_tool3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_sah_tool3",
	title = "RNGModifier_sah_tool3_title",
	desc = "RNGModifier_tool_desc",
	callback = "RNGModifier_sah_tool3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sah_tool_1",
		"RNGModifier_sah_tool_2"
	},
	value = RNGModifier:SafeGetData("sah", "_tool3"),
	menu_id = "RNGModifier_sah_Options_Menu"
})


MenuCallbackHandler.RNGModifier_sah_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_sah_code",
	title = "RNGModifier_sah_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sah_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("sah", "_code"),
	menu_id = "RNGModifier_sah_Options_Menu"
})