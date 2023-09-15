_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "arena"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_arena_c4_room_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4_room_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_c4_room_1",
	title = "RNGModifier_arena_c4_room_1_title",
	desc = "RNGModifier_arena_c4_room_desc",
	callback = "RNGModifier_arena_c4_room_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_c4_room_red_1",
		"RNGModifier_arena_c4_room_red_2",
		"RNGModifier_arena_c4_room_red_3",
		"RNGModifier_arena_c4_room_red_4",
		"RNGModifier_arena_c4_room_red_5",
		"RNGModifier_arena_c4_room_red_6",
		"RNGModifier_arena_c4_room_red_7",
		"RNGModifier_arena_c4_room_blue_1",
		"RNGModifier_arena_c4_room_blue_2",
		"RNGModifier_arena_c4_room_blue_3",
		"RNGModifier_arena_c4_room_blue_4",
		"RNGModifier_arena_c4_room_blue_5",
		"RNGModifier_arena_c4_room_blue_6",
		"RNGModifier_arena_c4_room_blue_7",
		"RNGModifier_arena_c4_room_green_1",
		"RNGModifier_arena_c4_room_green_2",
		"RNGModifier_arena_c4_room_green_3",
		"RNGModifier_arena_c4_room_green_4",
		"RNGModifier_arena_c4_room_green_5",
		"RNGModifier_arena_c4_room_green_6",
		"RNGModifier_arena_c4_room_yellow_1",
		"RNGModifier_arena_c4_room_yellow_2",
		"RNGModifier_arena_c4_room_yellow_3",
		"RNGModifier_arena_c4_room_yellow_4",
		"RNGModifier_arena_c4_room_yellow_5",
		"RNGModifier_arena_c4_room_yellow_6",
		"RNGModifier_arena_c4_room_yellow_7",
		"RNGModifier_arena_c4_room_yellow_8"
	},
	value = RNGModifier:SafeGetData("arena", "_c4_room_1"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_c4_room_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4_room_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_c4_room_2",
	title = "RNGModifier_arena_c4_room_2_title",
	desc = "RNGModifier_arena_c4_room_desc",
	callback = "RNGModifier_arena_c4_room_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_c4_room_red_1",
		"RNGModifier_arena_c4_room_red_2",
		"RNGModifier_arena_c4_room_red_3",
		"RNGModifier_arena_c4_room_red_4",
		"RNGModifier_arena_c4_room_red_5",
		"RNGModifier_arena_c4_room_red_6",
		"RNGModifier_arena_c4_room_red_7",
		"RNGModifier_arena_c4_room_blue_1",
		"RNGModifier_arena_c4_room_blue_2",
		"RNGModifier_arena_c4_room_blue_3",
		"RNGModifier_arena_c4_room_blue_4",
		"RNGModifier_arena_c4_room_blue_5",
		"RNGModifier_arena_c4_room_blue_6",
		"RNGModifier_arena_c4_room_blue_7",
		"RNGModifier_arena_c4_room_green_1",
		"RNGModifier_arena_c4_room_green_2",
		"RNGModifier_arena_c4_room_green_3",
		"RNGModifier_arena_c4_room_green_4",
		"RNGModifier_arena_c4_room_green_5",
		"RNGModifier_arena_c4_room_green_6",
		"RNGModifier_arena_c4_room_yellow_1",
		"RNGModifier_arena_c4_room_yellow_2",
		"RNGModifier_arena_c4_room_yellow_3",
		"RNGModifier_arena_c4_room_yellow_4",
		"RNGModifier_arena_c4_room_yellow_5",
		"RNGModifier_arena_c4_room_yellow_6",
		"RNGModifier_arena_c4_room_yellow_7",
		"RNGModifier_arena_c4_room_yellow_8"
	},
	value = RNGModifier:SafeGetData("arena", "_c4_room_2"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_c4_room_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4_room_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_c4_room_3",
	title = "RNGModifier_arena_c4_room_3_title",
	desc = "RNGModifier_arena_c4_room_desc",
	callback = "RNGModifier_arena_c4_room_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_c4_room_red_1",
		"RNGModifier_arena_c4_room_red_2",
		"RNGModifier_arena_c4_room_red_3",
		"RNGModifier_arena_c4_room_red_4",
		"RNGModifier_arena_c4_room_red_5",
		"RNGModifier_arena_c4_room_red_6",
		"RNGModifier_arena_c4_room_red_7",
		"RNGModifier_arena_c4_room_blue_1",
		"RNGModifier_arena_c4_room_blue_2",
		"RNGModifier_arena_c4_room_blue_3",
		"RNGModifier_arena_c4_room_blue_4",
		"RNGModifier_arena_c4_room_blue_5",
		"RNGModifier_arena_c4_room_blue_6",
		"RNGModifier_arena_c4_room_blue_7",
		"RNGModifier_arena_c4_room_green_1",
		"RNGModifier_arena_c4_room_green_2",
		"RNGModifier_arena_c4_room_green_3",
		"RNGModifier_arena_c4_room_green_4",
		"RNGModifier_arena_c4_room_green_5",
		"RNGModifier_arena_c4_room_green_6",
		"RNGModifier_arena_c4_room_yellow_1",
		"RNGModifier_arena_c4_room_yellow_2",
		"RNGModifier_arena_c4_room_yellow_3",
		"RNGModifier_arena_c4_room_yellow_4",
		"RNGModifier_arena_c4_room_yellow_5",
		"RNGModifier_arena_c4_room_yellow_6",
		"RNGModifier_arena_c4_room_yellow_7",
		"RNGModifier_arena_c4_room_yellow_8"
	},
	value = RNGModifier:SafeGetData("arena", "_c4_room_3"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_c4_room_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4_room_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_c4_room_4",
	title = "RNGModifier_arena_c4_room_4_title",
	desc = "RNGModifier_arena_c4_room_desc",
	callback = "RNGModifier_arena_c4_room_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_c4_room_red_1",
		"RNGModifier_arena_c4_room_red_2",
		"RNGModifier_arena_c4_room_red_3",
		"RNGModifier_arena_c4_room_red_4",
		"RNGModifier_arena_c4_room_red_5",
		"RNGModifier_arena_c4_room_red_6",
		"RNGModifier_arena_c4_room_red_7",
		"RNGModifier_arena_c4_room_blue_1",
		"RNGModifier_arena_c4_room_blue_2",
		"RNGModifier_arena_c4_room_blue_3",
		"RNGModifier_arena_c4_room_blue_4",
		"RNGModifier_arena_c4_room_blue_5",
		"RNGModifier_arena_c4_room_blue_6",
		"RNGModifier_arena_c4_room_blue_7",
		"RNGModifier_arena_c4_room_green_1",
		"RNGModifier_arena_c4_room_green_2",
		"RNGModifier_arena_c4_room_green_3",
		"RNGModifier_arena_c4_room_green_4",
		"RNGModifier_arena_c4_room_green_5",
		"RNGModifier_arena_c4_room_green_6",
		"RNGModifier_arena_c4_room_yellow_1",
		"RNGModifier_arena_c4_room_yellow_2",
		"RNGModifier_arena_c4_room_yellow_3",
		"RNGModifier_arena_c4_room_yellow_4",
		"RNGModifier_arena_c4_room_yellow_5",
		"RNGModifier_arena_c4_room_yellow_6",
		"RNGModifier_arena_c4_room_yellow_7",
		"RNGModifier_arena_c4_room_yellow_8"
	},
	value = RNGModifier:SafeGetData("arena", "_c4_room_4"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_c4_room_5 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4_room_5")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_c4_room_5",
	title = "RNGModifier_arena_c4_room_5_title",
	desc = "RNGModifier_arena_c4_room_desc",
	callback = "RNGModifier_arena_c4_room_5",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_c4_room_red_1",
		"RNGModifier_arena_c4_room_red_2",
		"RNGModifier_arena_c4_room_red_3",
		"RNGModifier_arena_c4_room_red_4",
		"RNGModifier_arena_c4_room_red_5",
		"RNGModifier_arena_c4_room_red_6",
		"RNGModifier_arena_c4_room_red_7",
		"RNGModifier_arena_c4_room_blue_1",
		"RNGModifier_arena_c4_room_blue_2",
		"RNGModifier_arena_c4_room_blue_3",
		"RNGModifier_arena_c4_room_blue_4",
		"RNGModifier_arena_c4_room_blue_5",
		"RNGModifier_arena_c4_room_blue_6",
		"RNGModifier_arena_c4_room_blue_7",
		"RNGModifier_arena_c4_room_green_1",
		"RNGModifier_arena_c4_room_green_2",
		"RNGModifier_arena_c4_room_green_3",
		"RNGModifier_arena_c4_room_green_4",
		"RNGModifier_arena_c4_room_green_5",
		"RNGModifier_arena_c4_room_green_6",
		"RNGModifier_arena_c4_room_yellow_1",
		"RNGModifier_arena_c4_room_yellow_2",
		"RNGModifier_arena_c4_room_yellow_3",
		"RNGModifier_arena_c4_room_yellow_4",
		"RNGModifier_arena_c4_room_yellow_5",
		"RNGModifier_arena_c4_room_yellow_6",
		"RNGModifier_arena_c4_room_yellow_7",
		"RNGModifier_arena_c4_room_yellow_8"
	},
	value = RNGModifier:SafeGetData("arena", "_c4_room_5"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_unmask_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_unmask_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_unmask_room",
	title = "RNGModifier_arena_unmask_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_unmask_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_c4_room_red_1",
		"RNGModifier_arena_c4_room_red_2",
		"RNGModifier_arena_c4_room_red_3",
		"RNGModifier_arena_c4_room_red_4",
		"RNGModifier_arena_c4_room_red_5",
		"RNGModifier_arena_c4_room_red_6",
		"RNGModifier_arena_c4_room_red_7",
		"RNGModifier_arena_c4_room_blue_1",
		"RNGModifier_arena_c4_room_blue_2",
		"RNGModifier_arena_c4_room_blue_3",
		"RNGModifier_arena_c4_room_blue_4",
		"RNGModifier_arena_c4_room_blue_5",
		"RNGModifier_arena_c4_room_blue_6",
		"RNGModifier_arena_c4_room_blue_7"
	},
	value = RNGModifier:SafeGetData("arena", "_unmask_room"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_c4_shelf_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4_shelf_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_c4_shelf_A",
	title = "RNGModifier_arena_c4_shelf_A_title",
	desc = "RNGModifier_arena_c4_shelf_A_desc",
	callback = "RNGModifier_arena_c4_shelf_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5"
	},
	value = RNGModifier:SafeGetData("arena", "_c4_shelf_A"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_c4_shelf_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4_shelf_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_c4_shelf_B",
	title = "RNGModifier_arena_c4_shelf_B_title",
	desc = "RNGModifier_arena_c4_shelf_B_desc",
	callback = "RNGModifier_arena_c4_shelf_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
	},
	value = RNGModifier:SafeGetData("arena", "_c4_shelf_B"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_extra_booth_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_extra_booth_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_extra_booth_1",
	title = "RNGModifier_arena_extra_booth_1_title",
	desc = "RNGModifier_arena_booth_desc",
	callback = "RNGModifier_arena_extra_booth_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_booth_1",
		"RNGModifier_arena_booth_2",
		"RNGModifier_arena_booth_3",
		"RNGModifier_arena_booth_4"
	},
	value = RNGModifier:SafeGetData("arena", "_extra_booth_1"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_extra_booth_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_extra_booth_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_extra_booth_2",
	title = "RNGModifier_arena_extra_booth_2_title",
	desc = "RNGModifier_arena_booth_desc",
	callback = "RNGModifier_arena_extra_booth_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_booth_1",
		"RNGModifier_arena_booth_2",
		"RNGModifier_arena_booth_3",
		"RNGModifier_arena_booth_4"
	},
	value = RNGModifier:SafeGetData("arena", "_extra_booth_2"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_select_security_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_select_security_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_select_security_room",
	title = "RNGModifier_arena_select_security_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_select_security_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_select_security_room_No_Lobby",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("arena", "_select_security_room"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_are_pyro_booth = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_are_pyro_booth")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_are_pyro_booth",
	title = "RNGModifier_arena_are_pyro_booth_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_are_pyro_booth",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_are_pyro_booth_1"
	},
	value = RNGModifier:SafeGetData("arena", "_are_pyro_booth"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_vault_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_vault_1",
	title = "RNGModifier_arena_vault_1_title",
	desc = "RNGModifier_arena_vault_desc",
	callback = "RNGModifier_arena_vault_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_vault_1",
		"RNGModifier_arena_vault_2",
		"RNGModifier_arena_vault_3",
		"RNGModifier_arena_vault_4",
		"RNGModifier_arena_vault_5",
		"RNGModifier_arena_vault_6"
	},
	value = RNGModifier:SafeGetData("arena", "_vault_1"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_vault_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_vault_2",
	title = "RNGModifier_arena_vault_2_title",
	desc = "RNGModifier_arena_vault_desc",
	callback = "RNGModifier_arena_vault_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_vault_1",
		"RNGModifier_arena_vault_2",
		"RNGModifier_arena_vault_3",
		"RNGModifier_arena_vault_4",
		"RNGModifier_arena_vault_5",
		"RNGModifier_arena_vault_6"
	},
	value = RNGModifier:SafeGetData("arena", "_vault_2"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_vault_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_vault_3",
	title = "RNGModifier_arena_vault_3_title",
	desc = "RNGModifier_arena_vault_desc",
	callback = "RNGModifier_arena_vault_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_vault_1",
		"RNGModifier_arena_vault_2",
		"RNGModifier_arena_vault_3",
		"RNGModifier_arena_vault_4",
		"RNGModifier_arena_vault_5",
		"RNGModifier_arena_vault_6"
	},
	value = RNGModifier:SafeGetData("arena", "_vault_3"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

--Only 3 vaults max
--[[
MenuCallbackHandler.RNGModifier_arena_vault_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_vault_D",
	title = "RNGModifier_arena_vault_D_title",
	desc = "RNGModifier_arena_vault_desc",
	callback = "RNGModifier_arena_vault_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_vault_3",
		"RNGModifier_arena_vault_4",
		"RNGModifier_arena_vault_5",
		"RNGModifier_arena_vault_6"
	},
	value = RNGModifier:SafeGetData("arena", "_vault_D"),
	menu_id = "RNGModifier_arena_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_arena_forklift = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_forklift")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_forklift",
	title = "RNGModifier_arena_forklift_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_forklift",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_forklift_1",
		"RNGModifier_arena_forklift_2",
		"RNGModifier_arena_forklift_3"
	},
	value = RNGModifier:SafeGetData("arena", "_forklift"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

--[[
MenuCallbackHandler.RNGModifier_arena_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 3,
	id = "RNGModifier_arena_escape",
	title = "RNGModifier_arena_escape_title",
	desc = "RNGModifier_arena_escape_desc",
	callback = "RNGModifier_arena_escape",
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
		"RNGModifier_number_4_use_14"
	},
	value = RNGModifier:SafeGetData("arena", "_escape"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_loot_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_loot_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4.5,
	id = "RNGModifier_arena_loot_A",
	title = "RNGModifier_arena_loot_A_title",
	desc = "RNGModifier_arena_loot_normal_desc",
	callback = "RNGModifier_arena_loot_A",
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
		"RNGModifier_number_4_use_14"
	},
	value = RNGModifier:SafeGetData("arena", "_loot_A"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_loot_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_loot_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4.4,
	id = "RNGModifier_arena_loot_B",
	title = "RNGModifier_arena_loot_B_title",
	desc = "RNGModifier_arena_loot_normal_desc",
	callback = "RNGModifier_arena_loot_B",
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
		"RNGModifier_number_4_use_14"
	},
	value = RNGModifier:SafeGetData("arena", "_loot_B"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_loot_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_loot_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4.3,
	id = "RNGModifier_arena_loot_C",
	title = "RNGModifier_arena_loot_C_title",
	desc = "RNGModifier_arena_loot_DW+_desc",
	callback = "RNGModifier_arena_loot_C",
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
		"RNGModifier_number_4_use_14"
	},
	value = RNGModifier:SafeGetData("arena", "_loot_C"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_loot_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_loot_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4.2,
	id = "RNGModifier_arena_loot_D",
	title = "RNGModifier_arena_loot_D_title",
	desc = "RNGModifier_arena_loot_DW+_desc",
	callback = "RNGModifier_arena_loot_D",
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
		"RNGModifier_number_4_use_14"
	},
	value = RNGModifier:SafeGetData("arena", "_loot_D"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_loot_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_loot_E")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4.1,
	id = "RNGModifier_arena_loot_E",
	title = "RNGModifier_arena_loot_E_title",
	desc = "RNGModifier_arena_loot_DW+_desc",
	callback = "RNGModifier_arena_loot_E",
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
		"RNGModifier_number_4_use_14"
	},
	value = RNGModifier:SafeGetData("arena", "_loot_E"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_room_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_room_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_room_A",
	title = "RNGModifier_arena_room_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_room_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_room_A_1",
		"RNGModifier_arena_room_A_2"
	},
	value = RNGModifier:SafeGetData("arena", "_room_A"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_room_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_room_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_room_B",
	title = "RNGModifier_arena_room_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_room_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_room_B_1",
		"RNGModifier_arena_room_B_2",
		"RNGModifier_arena_room_B_3",
	},
	value = RNGModifier:SafeGetData("arena", "_room_B"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_red_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10.6,	
	id = "RNGModifier_arena_red_A",
	title = "RNGModifier_arena_red_A_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_red_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_1",
		"RNGModifier_arena_loot_2",
		"RNGModifier_arena_loot_3",
		"RNGModifier_arena_loot_4",
		"RNGModifier_arena_loot_5",
		"RNGModifier_arena_loot_6",
		"RNGModifier_arena_loot_7"
	},
	value = RNGModifier:SafeGetData("arena", "_red_A"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_red_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10.5,
	id = "RNGModifier_arena_red_B",
	title = "RNGModifier_arena_red_B_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_red_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_1",
		"RNGModifier_arena_loot_2",
		"RNGModifier_arena_loot_3",
		"RNGModifier_arena_loot_4",
		"RNGModifier_arena_loot_5",
		"RNGModifier_arena_loot_6",
		"RNGModifier_arena_loot_7"
	},
	value = RNGModifier:SafeGetData("arena", "_red_B"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_red_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10.4,
	id = "RNGModifier_arena_red_C",
	title = "RNGModifier_arena_red_C_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_red_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_1",
		"RNGModifier_arena_loot_2",
		"RNGModifier_arena_loot_3",
		"RNGModifier_arena_loot_4",
		"RNGModifier_arena_loot_5",
		"RNGModifier_arena_loot_6",
		"RNGModifier_arena_loot_7"
	},
	value = RNGModifier:SafeGetData("arena", "_red_C"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_red_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10.3,
	id = "RNGModifier_arena_red_D",
	title = "RNGModifier_arena_red_D_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_red_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_1",
		"RNGModifier_arena_loot_2",
		"RNGModifier_arena_loot_3",
		"RNGModifier_arena_loot_4",
		"RNGModifier_arena_loot_5",
		"RNGModifier_arena_loot_6",
		"RNGModifier_arena_loot_7"
	},
	value = RNGModifier:SafeGetData("arena", "_red_D"),
	menu_id = "RNGModifier_arena_Options_Menu"
}) 

MenuCallbackHandler.RNGModifier_arena_red_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_E")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10.2,
	id = "RNGModifier_arena_red_E",
	title = "RNGModifier_arena_red_E_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_red_E",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_1",
		"RNGModifier_arena_loot_2",
		"RNGModifier_arena_loot_3",
		"RNGModifier_arena_loot_4",
		"RNGModifier_arena_loot_5",
		"RNGModifier_arena_loot_6",
		"RNGModifier_arena_loot_7"
	},
	value = RNGModifier:SafeGetData("arena", "_red_E"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_blue_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9.6,
	id = "RNGModifier_arena_blue_A",
	title = "RNGModifier_arena_blue_A_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_blue_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_8",
		"RNGModifier_arena_loot_9",
		"RNGModifier_arena_loot_10",
		"RNGModifier_arena_loot_11",
		"RNGModifier_arena_loot_12",
		"RNGModifier_arena_loot_13",
		"RNGModifier_arena_loot_14"		
			
	},
	value = RNGModifier:SafeGetData("arena", "_blue_A"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_blue_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9.5,
	id = "RNGModifier_arena_blue_B",
	title = "RNGModifier_arena_blue_B_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_blue_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_8",
		"RNGModifier_arena_loot_9",
		"RNGModifier_arena_loot_10",
		"RNGModifier_arena_loot_11",
		"RNGModifier_arena_loot_12",
		"RNGModifier_arena_loot_13",
		"RNGModifier_arena_loot_14"

	},
	value = RNGModifier:SafeGetData("arena", "_blue_B"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_blue_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9.4,
	id = "RNGModifier_arena_blue_C",
	title = "RNGModifier_arena_blue_C_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_blue_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_8",
		"RNGModifier_arena_loot_9",
		"RNGModifier_arena_loot_10",
		"RNGModifier_arena_loot_11",
		"RNGModifier_arena_loot_12",
		"RNGModifier_arena_loot_13",
		"RNGModifier_arena_loot_14"

	},
	value = RNGModifier:SafeGetData("arena", "_blue_C"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_blue_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9.3,
	id = "RNGModifier_arena_blue_D",
	title = "RNGModifier_arena_blue_D_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_blue_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_8",
		"RNGModifier_arena_loot_9",
		"RNGModifier_arena_loot_10",
		"RNGModifier_arena_loot_11",
		"RNGModifier_arena_loot_12",
		"RNGModifier_arena_loot_13",
		"RNGModifier_arena_loot_14"

	},
	value = RNGModifier:SafeGetData("arena", "_blue_D"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_blue_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue_E")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9.2,
	id = "RNGModifier_arena_blue_E",
	title = "RNGModifier_arena_blue_E_title",
	desc = "RNGModifier_arena_doors_desc",
	callback = "RNGModifier_arena_blue_E",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_loot_8",
		"RNGModifier_arena_loot_9",
		"RNGModifier_arena_loot_10",
		"RNGModifier_arena_loot_11",
		"RNGModifier_arena_loot_12",
		"RNGModifier_arena_loot_13",
		"RNGModifier_arena_loot_14"

	},
	value = RNGModifier:SafeGetData("arena", "_blue_E"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_yellow_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_yellow_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8.6,
	id = "RNGModifier_arena_yellow_A",
	title = "RNGModifier_arena_yellow_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_yellow_A",
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
	value = RNGModifier:SafeGetData("arena", "_yellow_A"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_yellow_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_yellow_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8.5,
	id = "RNGModifier_arena_yellow_B",
	title = "RNGModifier_arena_yellow_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_yellow_B",
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
	value = RNGModifier:SafeGetData("arena", "_yellow_B"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_yellow_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_yellow_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8.4,
	id = "RNGModifier_arena_yellow_C",
	title = "RNGModifier_arena_yellow_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_yellow_C",
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
	value = RNGModifier:SafeGetData("arena", "_yellow_C"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_yellow_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_yellow_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8.3,
	id = "RNGModifier_arena_yellow_D",
	title = "RNGModifier_arena_yellow_D_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_yellow_D",
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
	value = RNGModifier:SafeGetData("arena", "_yellow_D"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_yellow_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_yellow_E")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8.2,
	id = "RNGModifier_arena_yellow_E",
	title = "RNGModifier_arena_yellow_E_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_yellow_E",
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
	value = RNGModifier:SafeGetData("arena", "_yellow_E"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_green_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7.6,
	id = "RNGModifier_arena_green_A",
	title = "RNGModifier_arena_green_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_green_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("arena", "_green_A"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_green_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7.5,
	id = "RNGModifier_arena_green_B",
	title = "RNGModifier_arena_green_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_green_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("arena", "_green_B"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_green_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7.4,
	id = "RNGModifier_arena_green_C",
	title = "RNGModifier_arena_green_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_green_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("arena", "_green_C"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_green_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green_D")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7.3,
	id = "RNGModifier_arena_green_D",
	title = "RNGModifier_arena_green_D_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_green_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("arena", "_green_D"),
	menu_id = "RNGModifier_arena_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arena_green_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green_E")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7.2,
	id = "RNGModifier_arena_green_E",
	title = "RNGModifier_arena_green_E_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_green_E",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"
	},
	value = RNGModifier:SafeGetData("arena", "_green_E"),
	menu_id = "RNGModifier_arena_Options_Menu"
})
MenuCallbackHandler.RNGModifier_arena_c4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4.0,
	id = "RNGModifier_arena_c4",
	title = "RNGModifier_arena_c4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_c4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("arena", "_c4"),
	menu_id = "RNGModifier_arena_Options_Menu"
})
]]


--[[MenuCallbackHandler.RNGModifier_arena_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arena_test",
	title = "RNGModifier_arena_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arena_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arena_room_1"
	},
	value = RNGModifier:SafeGetData("arena", "_test"),
	menu_id = "RNGModifier_arena_Options_Menu"
})]]