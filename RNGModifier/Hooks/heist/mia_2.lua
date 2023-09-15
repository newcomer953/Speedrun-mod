_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "mia_2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_mia_2_c4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_mia_2_c4",
	title = "RNGModifier_mia_2_c4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_c4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mia_2_c4_1",
		"RNGModifier_mia_2_c4_2",
		"RNGModifier_mia_2_c4_3"
	},
	value = RNGModifier:SafeGetData("mia_2", "_c4"),
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_2_path_second = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_path_second")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.1,
	id = "RNGModifier_mia_2_path_second",
	title = "RNGModifier_mia_2_path_second_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_path_second",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_3",
		"RNGModifier_direction_1"
	},
	value = RNGModifier:SafeGetData("mia_2", "_path_second"),
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_2_path_third = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_path_third")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.2,
	id = "RNGModifier_mia_2_path_third",
	title = "RNGModifier_mia_2_path_third_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_path_third",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData("mia_2", "_path_third"),
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_2_no_ambush = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_ambush")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_ambush")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -3,
	id = "RNGModifier_mia_2_no_ambush",
	title = "RNGModifier_mia_2_no_ambush_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_no_ambush",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_ambush")) == 1 and true or false,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_2_circuit_breaker = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_circuit_breaker")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -4,
	id = "RNGModifier_mia_2_circuit_breaker",
	title = "RNGModifier_mia_2_circuit_breaker_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_circuit_breaker",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("mia_2", "_circuit_breaker"),
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_2_vault = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -5,
	id = "RNGModifier_mia_2_vault",
	title = "RNGModifier_mia_2_vault_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_vault",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mia_2_vault_1",
		"RNGModifier_mia_2_vault_2",
		"RNGModifier_mia_2_vault_3"
	},
	value = RNGModifier:SafeGetData("mia_2", "_vault"),
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_2_heli_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_heli_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_heli_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = -6,
	id = "RNGModifier_mia_2_heli_delay",
	title = "RNGModifier_mia_2_heli_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_heli_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_heli_delay")) == 1 and true or false,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_2_drill = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_drill")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -7,
	id = "RNGModifier_mia_2_drill",
	title = "RNGModifier_mia_2_drill_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_drill",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("mia_2", "_drill"),
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mia_2_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = -8,
	id = "RNGModifier_mia_2_escape",
	title = "RNGModifier_mia_2_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mia_2_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mia_2_escape_1",
		"RNGModifier_mia_2_escape_2"
	},
	value = RNGModifier:SafeGetData("mia_2", "_escape"),
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})