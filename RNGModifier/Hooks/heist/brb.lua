_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "brb"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_brb_Pick_Escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_Pick_Escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_brb_Pick_Escape",
	title = "RNGModifier_brb_Pick_Escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_brb_Pick_Escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_brb_Pick_Escape_1",
		"RNGModifier_brb_Pick_Escape_2"
	},
	value = RNGModifier:SafeGetData("brb", "_Pick_Escape"),
	menu_id = "RNGModifier_brb_Options_Menu"
})

MenuCallbackHandler.RNGModifier_brb_start = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_start")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_brb_start",
	title = "RNGModifier_brb_start_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_brb_start",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_brb_start_1",
		"RNGModifier_brb_start_2",
		"RNGModifier_brb_start_3"
	},
	value = RNGModifier:SafeGetData("brb", "_start"),
	menu_id = "RNGModifier_brb_Options_Menu"
})

MenuCallbackHandler.RNGModifier_brb_pick_prevault_entry = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_prevault_entry")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_brb_pick_prevault_entry",
	title = "RNGModifier_brb_pick_prevault_entry_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_brb_pick_prevault_entry",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_brb_pick_prevault_entry_1",
		"RNGModifier_brb_pick_prevault_entry_2",
		"RNGModifier_brb_pick_prevault_entry_3"
	},
	value = RNGModifier:SafeGetData("brb", "_pick_prevault_entry"),
	menu_id = "RNGModifier_brb_Options_Menu"
})

MenuCallbackHandler.RNGModifier_brb_pick_where_winch_spawns = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_where_winch_spawns")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_brb_pick_where_winch_spawns",
	title = "RNGModifier_brb_pick_where_winch_spawns_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_brb_pick_where_winch_spawns",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_brb_pick_where_winch_spawns_1",
		"RNGModifier_brb_pick_where_winch_spawns_2"
	},
	value = RNGModifier:SafeGetData("brb", "_pick_where_winch_spawns"),
	menu_id = "RNGModifier_brb_Options_Menu"
})

MenuCallbackHandler.RNGModifier_brb_vault_door_equipment = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_door_equipment")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_brb_vault_door_equipment",
	title = "RNGModifier_brb_vault_door_equipment_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_brb_vault_door_equipment",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("brb", "_vault_door_equipment"),
	menu_id = "RNGModifier_brb_Options_Menu"
})


MenuCallbackHandler.RNGModifier_brb_winch_chance = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_winch_chance")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_brb_winch_chance",
	title = "RNGModifier_brb_winch_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_brb_winch_chance",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("brb", "_winch_chance"),
	menu_id = "RNGModifier_brb_Options_Menu"
})

MenuCallbackHandler.RNGModifier_brb_equipment = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_equipment")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_brb_equipment",
	title = "RNGModifier_brb_equipment_title",
	desc = "RNGModifier_brb_equipment_desc",
	callback = "RNGModifier_brb_equipment",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_brb_equipment_1",
		"RNGModifier_brb_equipment_2",
		"RNGModifier_brb_equipment_3",
		"RNGModifier_brb_equipment_4",
		"RNGModifier_brb_equipment_5"
	},
	value = RNGModifier:SafeGetData("brb", "_equipment"),
	menu_id = "RNGModifier_brb_Options_Menu"
})

MenuCallbackHandler.RNGModifier_brb_vault = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_brb_vault",
	title = "RNGModifier_brb_vault_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_brb_vault",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_brb_vault_1",
		"RNGModifier_brb_vault_2"
	},
	value = RNGModifier:SafeGetData("brb", "_vault"),
	menu_id = "RNGModifier_brb_Options_Menu"
})

MenuCallbackHandler.RNGModifier_brb_no_thermite_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_thermite_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_thermite_delay")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	id = "RNGModifier_brb_no_thermite_delay",
	title = "RNGModifier_brb_no_thermite_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_brb_no_thermite_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_thermite_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})