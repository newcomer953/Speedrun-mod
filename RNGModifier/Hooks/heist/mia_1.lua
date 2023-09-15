_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "mia_1"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_mia_1_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_mia_1_spawn",
	title = "RNGModifier_mia_1_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("mia_1", "_spawn"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_gascan_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_A")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mia_1_gascan_A",
	title = "RNGModifier_mia_1_gascan_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_gascan_A",
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
		"RNGModifier_number_4_use_17"
	},
	value = RNGModifier:SafeGetData("mia_1", "_gascan_A"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_gascan_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_B")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mia_1_gascan_B",
	title = "RNGModifier_mia_1_gascan_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_gascan_B",
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
		"RNGModifier_number_4_use_17"
	},
	value = RNGModifier:SafeGetData("mia_1", "_gascan_B"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_gascan_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_C")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mia_1_gascan_C",
	title = "RNGModifier_mia_1_gascan_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_gascan_C",
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
		"RNGModifier_number_4_use_17"
	},
	value = RNGModifier:SafeGetData("mia_1", "_gascan_C"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_gascan_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_D")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mia_1_gascan_D",
	title = "RNGModifier_mia_1_gascan_D_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_gascan_D",
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
		"RNGModifier_number_4_use_17"
	},
	value = RNGModifier:SafeGetData("mia_1", "_gascan_D"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_gascan_E = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_E")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mia_1_gascan_E",
	title = "RNGModifier_mia_1_gascan_E_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_gascan_E",
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
		"RNGModifier_number_4_use_17"
	},
	value = RNGModifier:SafeGetData("mia_1", "_gascan_E"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_gascan_F = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_F")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mia_1_gascan_F",
	title = "RNGModifier_mia_1_gascan_F_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_gascan_F",
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
		"RNGModifier_number_4_use_17"
	},
	value = RNGModifier:SafeGetData("mia_1", "_gascan_F"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_gascan_G = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_G")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mia_1_gascan_G",
	title = "RNGModifier_mia_1_gascan_G_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_gascan_G",
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
		"RNGModifier_number_4_use_17"
	},
	value = RNGModifier:SafeGetData("mia_1", "_gascan_G"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_gascan_H = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_H")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_mia_1_gascan_H",
	title = "RNGModifier_mia_1_gascan_H_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_gascan_H",
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
		"RNGModifier_number_4_use_17"
	},
	value = RNGModifier:SafeGetData("mia_1", "_gascan_H"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_barcode = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_barcode")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -3,
	id = "RNGModifier_mia_1_barcode",
	title = "RNGModifier_mia_1_barcode_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_barcode",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mia_1_barcode_1",
		"RNGModifier_mia_1_barcode_2",
		"RNGModifier_mia_1_barcode_3",
		"RNGModifier_mia_1_barcode_4",
		"RNGModifier_mia_1_barcode_5"
	},
	value = RNGModifier:SafeGetData("mia_1", "_barcode"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_hatch = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hatch")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -4,
	id = "RNGModifier_mia_1_hatch",
	title = "RNGModifier_mia_1_hatch_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_hatch",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5"
	},
	value = RNGModifier:SafeGetData("mia_1", "_hatch"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_winch = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_winch")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -4.1,
	id = "RNGModifier_mia_1_winch",
	title = "RNGModifier_mia_1_winch_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_winch",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("mia_1", "_winch"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_crowbar_top = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_top")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -5.1,
	id = "RNGModifier_mia_1_crowbar_top",
	title = "RNGModifier_mia_1_crowbar_top_title",
	desc = "RNGModifier_mia_1_crowbar_desc",
	callback = "RNGModifier_mia_1_crowbar_top",
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
		"RNGModifier_number_4_use_13"
	},
	value = RNGModifier:SafeGetData("mia_1", "_crowbar_top"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_crowbar_basement = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_basement")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5.2,
	id = "RNGModifier_mia_1_crowbar_basement",
	title = "RNGModifier_mia_1_crowbar_basement_title",
	desc = "RNGModifier_mia_1_crowbar_desc",
	callback = "RNGModifier_mia_1_crowbar_basement",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("mia_1", "_crowbar_basement"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_crate_content = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crate_content")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -6,
	id = "RNGModifier_mia_1_crate_content",
	title = "RNGModifier_mia_1_crate_content_title",
	desc = "RNGModifier_mia_1_crate_content_desc",
	callback = "RNGModifier_mia_1_crate_content",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mia_1_crate_content_1",
		"RNGModifier_mia_1_crate_content_2",
		"RNGModifier_mia_1_crate_content_3",
		"RNGModifier_mia_1_crate_content_4",
		"RNGModifier_mia_1_crate_content_5",
		"RNGModifier_mia_1_crate_content_6"
	},
	value = RNGModifier:SafeGetData("mia_1", "_crate_content"),
	menu_id = "RNGModifier_mia_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_1_reader_time = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_reader_time")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_reader_time")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -7,
	id = "RNGModifier_mia_1_reader_time",
	title = "RNGModifier_mia_1_reader_time_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_1_reader_time",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_reader_time")) == 1 and true or false,
	menu_id = "RNGModifier_mia_1_Options_Menu"
})