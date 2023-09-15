_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "hox_1"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_hox_1_logic_random_002 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_002")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 100,
	id = "RNGModifier_hox_1_logic_random_002",
	title = "RNGModifier_hox_1_logic_random_002_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_1_logic_random_002",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_1_logic_random_002_001",
		"RNGModifier_hox_1_logic_random_002_002",
		"RNGModifier_hox_1_logic_random_002_003",
		"RNGModifier_hox_1_logic_random_002_004"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_002"),
	menu_id = "RNGModifier_hox_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_1_logic_random_003 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_003")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_hox_1_logic_random_003",
	title = "RNGModifier_hox_1_logic_random_003_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_1_logic_random_003",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_1_logic_random_003_001",
		"RNGModifier_hox_1_logic_random_003_002"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_003"),
	menu_id = "RNGModifier_hox_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_1_logic_random_004 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_004")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_hox_1_logic_random_004",
	title = "RNGModifier_hox_1_logic_random_004_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_1_logic_random_004",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_1_logic_random_004_001",
		"RNGModifier_hox_1_logic_random_004_002",
		"RNGModifier_hox_1_logic_random_004_003",
		"RNGModifier_hox_1_logic_random_004_004"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_004"),
	menu_id = "RNGModifier_hox_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_1_logic_random_005 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_005")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_hox_1_logic_random_005",
	title = "RNGModifier_hox_1_logic_random_005_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_1_logic_random_005",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_1_logic_random_005_001",
		"RNGModifier_hox_1_logic_random_005_002"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_005"),
	menu_id = "RNGModifier_hox_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_1_logic_random_006 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_006")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_hox_1_logic_random_006",
	title = "RNGModifier_hox_1_logic_random_006_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_1_logic_random_006",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_1_logic_random_006_001",
		"RNGModifier_hox_1_logic_random_006_002",
		"RNGModifier_hox_1_logic_random_006_003",
		"RNGModifier_hox_1_logic_random_006_004"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_006"),
	menu_id = "RNGModifier_hox_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_1_logic_random_007 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_007")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 96,
	id = "RNGModifier_hox_1_logic_random_007",
	title = "RNGModifier_hox_1_logic_random_007_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hox_1_logic_random_007",
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
		"RNGModifier_number_4_use_10"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_logic_random_007"),
	menu_id = "RNGModifier_hox_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_1_blocker_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blocker_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 98,
	id = "RNGModifier_hox_1_blocker_1",
	title = "RNGModifier_hox_1_blocker_1_title",
	desc = "RNGModifier_hox_1_blocker_desc",
	callback = "RNGModifier_hox_1_blocker_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_1_blocker_1",
		"RNGModifier_hox_1_blocker_2",
		"RNGModifier_hox_1_blocker_3",
		"RNGModifier_hox_1_blocker_4",
		"RNGModifier_hox_1_blocker_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_blocker_1"),
	menu_id = "RNGModifier_hox_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hox_1_blocker_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blocker_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 97,
	id = "RNGModifier_hox_1_blocker_2",
	title = "RNGModifier_hox_1_blocker_2_title",
	desc = "RNGModifier_hox_1_blocker_desc",
	callback = "RNGModifier_hox_1_blocker_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hox_1_blocker_1",
		"RNGModifier_hox_1_blocker_2",
		"RNGModifier_hox_1_blocker_3",
		"RNGModifier_hox_1_blocker_4",
		"RNGModifier_hox_1_blocker_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_blocker_2"),
	menu_id = "RNGModifier_hox_1_Options_Menu"
})