_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "framing_frame_3"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_framing_frame_3_spawnRandomVault = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnRandomVault")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_framing_frame_3_spawnRandomVault",
	title = "RNGModifier_framing_frame_3_spawnRandomVault_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_3_spawnRandomVault",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_framing_frame_3_spawnRandomVault_001",
		"RNGModifier_framing_frame_3_spawnRandomVault_002",
		"RNGModifier_framing_frame_3_spawnRandomVault_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnRandomVault"),
	menu_id = "RNGModifier_framing_frame_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_framing_frame_3_spawnRandomHarrdDrive_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnRandomHarrdDrive_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_framing_frame_3_spawnRandomHarrdDrive_A",
	title = "RNGModifier_framing_frame_3_spawnRandomHarrdDrive_A_title",
	desc = "RNGModifier_framing_frame_3_spawnRandomHarrdDrive_desc",
	callback = "RNGModifier_framing_frame_3_spawnRandomHarrdDrive_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_spawnRandomHarrdDrive_1",
		"RNGModifier_spawnRandomHarrdDrive_2",
		"RNGModifier_spawnRandomHarrdDrive_3",
		"RNGModifier_spawnRandomHarrdDrive_4",
		"RNGModifier_spawnRandomHarrdDrive_5",
		"RNGModifier_spawnRandomHarrdDrive_6",
		"RNGModifier_spawnRandomHarrdDrive_7",
		"RNGModifier_spawnRandomHarrdDrive_8",
		"RNGModifier_spawnRandomHarrdDrive_9",
		"RNGModifier_spawnRandomHarrdDrive_10"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnRandomHarrdDrive_A"),
	menu_id = "RNGModifier_framing_frame_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_framing_frame_3_spawnRandomHarrdDrive_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnRandomHarrdDrive_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_framing_frame_3_spawnRandomHarrdDrive_B",
	title = "RNGModifier_framing_frame_3_spawnRandomHarrdDrive_B_title",
	desc = "RNGModifier_framing_frame_3_spawnRandomHarrdDrive_desc",
	callback = "RNGModifier_framing_frame_3_spawnRandomHarrdDrive_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_spawnRandomHarrdDrive_1",
		"RNGModifier_spawnRandomHarrdDrive_2",
		"RNGModifier_spawnRandomHarrdDrive_3",
		"RNGModifier_spawnRandomHarrdDrive_4",
		"RNGModifier_spawnRandomHarrdDrive_5",
		"RNGModifier_spawnRandomHarrdDrive_6",
		"RNGModifier_spawnRandomHarrdDrive_7",
		"RNGModifier_spawnRandomHarrdDrive_8",
		"RNGModifier_spawnRandomHarrdDrive_9",
		"RNGModifier_spawnRandomHarrdDrive_10"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnRandomHarrdDrive_B"),
	menu_id = "RNGModifier_framing_frame_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_framing_frame_3_SpawnRandomPhone = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_SpawnRandomPhone")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_framing_frame_3_SpawnRandomPhone",
	title = "RNGModifier_framing_frame_3_SpawnRandomPhone_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_3_SpawnRandomPhone",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_SpawnRandomPhone_1",
		"RNGModifier_SpawnRandomPhone_2",
		"RNGModifier_SpawnRandomPhone_3",
		"RNGModifier_SpawnRandomPhone_4",
		"RNGModifier_SpawnRandomPhone_5",
		"RNGModifier_SpawnRandomPhone_6",
		"RNGModifier_SpawnRandomPhone_7",
		"RNGModifier_SpawnRandomPhone_8"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_SpawnRandomPhone"),
	menu_id = "RNGModifier_framing_frame_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_framing_frame_3_spawnRandomPads = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnRandomPads")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_framing_frame_3_spawnRandomPads",
	title = "RNGModifier_framing_frame_3_spawnRandomPads_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_3_spawnRandomPads",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_spawnRandomPads_1",
		"RNGModifier_spawnRandomPads_2",
		"RNGModifier_spawnRandomPads_3",
		"RNGModifier_spawnRandomPads_4",
		"RNGModifier_spawnRandomPads_5",
		"RNGModifier_spawnRandomPads_6",
		"RNGModifier_spawnRandomPads_7",
		"RNGModifier_spawnRandomPads_8"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnRandomPads"),
	menu_id = "RNGModifier_framing_frame_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_framing_frame_3_spawnRandomLaptop = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawnRandomLaptop")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_framing_frame_3_spawnRandomLaptop",
	title = "RNGModifier_framing_frame_3_spawnRandomLaptop_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_3_spawnRandomLaptop",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_spawnRandomLaptop_1",
		"RNGModifier_spawnRandomLaptop_2",
		"RNGModifier_spawnRandomLaptop_3",
		"RNGModifier_spawnRandomLaptop_4",
		"RNGModifier_spawnRandomLaptop_5",
		"RNGModifier_spawnRandomLaptop_6",
		"RNGModifier_spawnRandomLaptop_7",
		"RNGModifier_spawnRandomLaptop_8"

	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawnRandomLaptop"),
	menu_id = "RNGModifier_framing_frame_3_Options_Menu"
})


MenuCallbackHandler.RNGModifier_framing_frame_3_block = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_block")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_framing_frame_3_block",
	title = "RNGModifier_framing_frame_3_block_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_3_block",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_framing_frame_3_spawnRandomVault_001",
		"RNGModifier_framing_frame_3_spawnRandomVault_002",
		"RNGModifier_framing_frame_3_spawnRandomVault_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_block"),
	menu_id = "RNGModifier_framing_frame_3_Options_Menu"
})