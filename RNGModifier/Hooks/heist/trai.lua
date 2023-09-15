_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "trai"
local _bool = true
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_trai_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_trai_spawn",
	title = "RNGModifier_trai_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_spawn_1",
		"RNGModifier_trai_spawn_2",
		"RNGModifier_trai_spawn_3"
	},
	value = RNGModifier:SafeGetData("trai", "_spawn"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_electric_box = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_electric_box")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1.1,
	id = "RNGModifier_trai_electric_box",
	title = "RNGModifier_trai_electric_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_electric_box",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_electric_box_1",
		"RNGModifier_trai_electric_box_2",
		"RNGModifier_trai_electric_box_3"
	},
	value = RNGModifier:SafeGetData("trai", "_electric_box"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_walkie_talkie = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_walkie_talkie")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_trai_walkie_talkie",
	title = "RNGModifier_trai_walkie_talkie_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_walkie_talkie",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_walkie_talkie_1",
		"RNGModifier_trai_walkie_talkie_2",
		"RNGModifier_trai_walkie_talkie_3",
		"RNGModifier_trai_walkie_talkie_4",
		"RNGModifier_trai_walkie_talkie_5"
		
	},
	value = RNGModifier:SafeGetData("trai", "_walkie_talkie"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3,
	id = "RNGModifier_trai_code",
	title = "RNGModifier_trai_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_code_1"
	},
	value = RNGModifier:SafeGetData("trai", "_code"),
	menu_id = "RNGModifier_trai_Options_Menu"
})
MenuCallbackHandler.RNGModifier_trai_console = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_console")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -6,
	id = "RNGModifier_trai_console",
	title = "RNGModifier_trai_console_title",
	desc = "RNGModifier_trai_console_desc",
	callback = "RNGModifier_trai_console",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_console_1",
		"RNGModifier_trai_console_2",
		"RNGModifier_trai_console_3",
		"RNGModifier_trai_console_4",
		"RNGModifier_trai_console_5",
		"RNGModifier_trai_console_6",
		"RNGModifier_trai_console_7",
		"RNGModifier_trai_console_8",
		"RNGModifier_trai_console_9"
	},
	value = RNGModifier:SafeGetData("trai", "_console"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_msc_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_msc_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -6.5,
	id = "RNGModifier_trai_msc_code",
	title = "RNGModifier_trai_msc_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_msc_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_msc_code_1"
	},
	value = RNGModifier:SafeGetData("trai", "_msc_code"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_pc = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pc")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4,
	id = "RNGModifier_trai_pc",
	title = "RNGModifier_trai_pc_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_pc",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_pc_1",
		"RNGModifier_trai_pc_2",
		"RNGModifier_trai_pc_3",
		"RNGModifier_trai_pc_4"
	},
	value = RNGModifier:SafeGetData("trai", "_pc"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_blowtorch1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blowtorch1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.1,
	id = "RNGModifier_trai_blowtorch1",
	title = "RNGModifier_trai_blowtorch1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_blowtorch1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_blowtorch_1",
		"RNGModifier_trai_blowtorch_2",
		"RNGModifier_trai_blowtorch_3"
	},
	value = RNGModifier:SafeGetData("trai", "_blowtorch1"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_blowtorch2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blowtorch2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4.1,
	id = "RNGModifier_trai_blowtorch2",
	title = "RNGModifier_trai_blowtorch2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_blowtorch2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_blowtorch_1",
		"RNGModifier_trai_blowtorch_2",
		"RNGModifier_trai_blowtorch_3"
	},
	value = RNGModifier:SafeGetData("trai", "_blowtorch2"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_wagon_set = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wagon_set")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7,
	id = "RNGModifier_trai_wagon_set",
	title = "RNGModifier_trai_wagon_set_title",
	desc = "RNGModifier_trai_wagon_set_desc",
	callback = "RNGModifier_trai_wagon_set",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_wagon_set_1",
		"RNGModifier_trai_wagon_set_2",
		"RNGModifier_trai_wagon_set_3",
		"RNGModifier_trai_wagon_set_4"
	},
	value = RNGModifier:SafeGetData("trai", "_wagon_set"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_company = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_company")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5,
	id = "RNGModifier_trai_company",
	title = "RNGModifier_trai_company_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_company",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_company_1",
		"RNGModifier_trai_company_2",
		"RNGModifier_trai_company_3"
	},
	value = RNGModifier:SafeGetData("trai", "_company"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_trai_rfid = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.9,
	id = "RNGModifier_trai_rfid",
	title = "RNGModifier_trai_rfid_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid"),
	menu_id = "RNGModifier_trai_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_trai_rfid1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.1,
	id = "RNGModifier_trai_rfid1",
	title = "RNGModifier_trai_rfid1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid1"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_rfid2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.2,
	id = "RNGModifier_trai_rfid2",
	title = "RNGModifier_trai_rfid2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid2"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_rfid3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.3,
	id = "RNGModifier_trai_rfid3",
	title = "RNGModifier_trai_rfid3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid3"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_rfid4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.4,
	id = "RNGModifier_trai_rfid4",
	title = "RNGModifier_trai_rfid4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid4"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_rfid5 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid5")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.5,
	id = "RNGModifier_trai_rfid5",
	title = "RNGModifier_trai_rfid5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid5",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid5"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_rfid6 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid6")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.6,
	id = "RNGModifier_trai_rfid6",
	title = "RNGModifier_trai_rfid6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid6",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid6"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_rfid7 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid7")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.7,
	id = "RNGModifier_trai_rfid7",
	title = "RNGModifier_trai_rfid7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid7",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid7"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_rfid8 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid8")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.8,
	id = "RNGModifier_trai_rfid8",
	title = "RNGModifier_trai_rfid8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid8",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid8"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_rfid9 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rfid9")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -7.9,
	id = "RNGModifier_trai_rfid9",
	title = "RNGModifier_trai_rfid9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_rfid9",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_trai_rfid_1",
		"RNGModifier_trai_rfid_2",
		"RNGModifier_trai_rfid_3",
		"RNGModifier_trai_rfid_4"
	},
	value = RNGModifier:SafeGetData("trai", "_rfid9"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_wire = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wire")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8,
	id = "RNGModifier_trai_wire",
	title = "RNGModifier_trai_wire_title",
	desc = "RNGModifier_trai_wire_desc",
	callback = "RNGModifier_trai_wire",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData("trai", "_wire"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_trai_wire1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wire1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8,
	id = "RNGModifier_trai_wire1",
	title = "RNGModifier_trai_wire1_title",
	desc = "RNGModifier_trai_wire1_desc",
	callback = "RNGModifier_trai_wire1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("trai", "_wire1"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_wire2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wire2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8.1,
	id = "RNGModifier_trai_wire2",
	title = "RNGModifier_trai_wire2_title",
	desc = "RNGModifier_trai_wire2_desc",
	callback = "RNGModifier_trai_wire2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("trai", "_wire2"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_wire3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wire3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8.2,
	id = "RNGModifier_trai_wire3",
	title = "RNGModifier_trai_wire3_title",
	desc = "RNGModifier_trai_wire3_desc",
	callback = "RNGModifier_trai_wire3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("trai", "_wire3"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_wire4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wire4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8.3,
	id = "RNGModifier_trai_wire4",
	title = "RNGModifier_trai_wire4_title",
	desc = "RNGModifier_trai_wire4_desc",
	callback = "RNGModifier_trai_wire4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("trai", "_wire4"),
	menu_id = "RNGModifier_trai_Options_Menu"
})

MenuCallbackHandler.RNGModifier_trai_wire5 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wire5")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -8.4,
	id = "RNGModifier_trai_wire5",
	title = "RNGModifier_trai_wire5_title",
	desc = "RNGModifier_trai_wire5_desc",
	callback = "RNGModifier_trai_wire5",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("trai", "_wire5"),
	menu_id = "RNGModifier_trai_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_trai_turn_table = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_turn_table")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -9,
	id = "RNGModifier_trai_turn_table",
	title = "RNGModifier_trai_turn_table_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_trai_turn_table",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("trai", "_turn_table"),
	menu_id = "RNGModifier_trai_Options_Menu"
})