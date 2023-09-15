_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "branchbank"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_branchbank_randVaultDoor = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randVaultDoor")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_branchbank_randVaultDoor",
	title = "RNGModifier_branchbank_randVaultDoor_title",
	desc = "RNGModifier_branchbank_randVaultDoor_desc",
	callback = "RNGModifier_branchbank_randVaultDoor",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_branchbank_randVaultDoor_front",
		"RNGModifier_branchbank_randVaultDoor_back"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_randVaultDoor"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})

MenuCallbackHandler.RNGModifier_branchbank_logic_random_026 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_026")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_branchbank_logic_random_026",
	title = "RNGModifier_branchbank_logic_random_026_title",
	desc = "RNGModifier_branchbank_logic_random_026_desc",
	callback = "RNGModifier_branchbank_logic_random_026",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_branchbank_logic_random_026_front",
		"RNGModifier_branchbank_logic_random_026_back"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_026"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})

MenuCallbackHandler.RNGModifier_branchbank_logic_random_024 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_024")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_branchbank_logic_random_024",
	title = "RNGModifier_branchbank_logic_random_024_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_branchbank_logic_random_024",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_branchbank_logic_random_024_farfront",
		"RNGModifier_branchbank_logic_random_024_front",
		"RNGModifier_branchbank_logic_random_024_back"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_024"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})

--[[
MenuCallbackHandler.RNGModifier_branchbank_hideOfficeCard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hideOfficeCard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_branchbank_hideOfficeCard",
	title = "RNGModifier_branchbank_hideOfficeCard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_branchbank_hideOfficeCard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_hideOfficeCard"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})]]


MenuCallbackHandler.RNGModifier_branchbank_outside_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_outside_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_branchbank_outside_door",
	title = "RNGModifier_outside_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_branchbank_outside_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_outside_door_1",
		"RNGModifier_outside_door_2",
		"RNGModifier_outside_door_3",
		"RNGModifier_outside_door_4"
	},
	value = RNGModifier:SafeGetData("branchbank", "_outside_door"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})

MenuCallbackHandler.RNGModifier_branchbank_vault_gate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_gate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_branchbank_vault_gate",
	title = "RNGModifier_branchbank_vault_gate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_branchbank_vault_gate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_vault_gate"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})

MenuCallbackHandler.RNGModifier_branchbank_deposit = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_deposit")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_branchbank_deposit",
	title = "RNGModifier_branchbank_deposit_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_branchbank_deposit",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_deposit"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})

MenuCallbackHandler.RNGModifier_branchbank_number = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_number")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_branchbank_number",
	title = "RNGModifier_branchbank_number_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_branchbank_number",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_number"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})

MenuCallbackHandler.RNGModifier_branchbank_letter = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_letter")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 0,
	id = "RNGModifier_branchbank_letter",
	title = "RNGModifier_branchbank_letter_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_branchbank_letter",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_letter_1",
		"RNGModifier_letter_2",
		"RNGModifier_letter_3",
		"RNGModifier_letter_4",
		"RNGModifier_letter_5",
		"RNGModifier_letter_6",
		"RNGModifier_letter_7",
		"RNGModifier_letter_8",
		"RNGModifier_letter_9",
		"RNGModifier_letter_10",
		"RNGModifier_letter_11",
		"RNGModifier_letter_12",
		"RNGModifier_letter_13",
		"RNGModifier_letter_14",
		"RNGModifier_letter_15",
		"RNGModifier_letter_16",
		"RNGModifier_letter_17",
		"RNGModifier_letter_18",
		"RNGModifier_letter_19",
		"RNGModifier_letter_20",
		"RNGModifier_letter_21",
		"RNGModifier_letter_22",
		"RNGModifier_letter_23",
		"RNGModifier_letter_24"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_letter"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})

MenuCallbackHandler.RNGModifier_branchbank_deposit_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_deposit_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_branchbank_deposit_box",
	title = "RNGModifier_branchbank_deposit_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_branchbank_deposit_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_branchbank_deposit_box_1",
		"RNGModifier_branchbank_deposit_box_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_deposit_box"),
	menu_id = "RNGModifier_branchbank_Options_Menu"
})