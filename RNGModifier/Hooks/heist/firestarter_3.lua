_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "firestarter_3"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_firestarter_3_logic_random_026 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_random_026")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_3_logic_random_026",
	title = "RNGModifier_firestarter_3_logic_random_026_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_firestarter_3_logic_random_026",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_firestarter_3_logic_random_026_1",
		"RNGModifier_firestarter_3_logic_random_026_2"
	},
	value = RNGModifier:SafeGetData("firestarter_3", "_logic_random_026"),
	menu_id = "RNGModifier_firestarter_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_firestarter_3_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_3_escape",
	title = "RNGModifier_firestarter_3_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_firestarter_3_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_firestarter_3_escape_1",
		"RNGModifier_firestarter_3_escape_2",
		"RNGModifier_firestarter_3_escape_3"
	},
	value = RNGModifier:SafeGetData("firestarter_3", "_escape"),
	menu_id = "RNGModifier_firestarter_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_firestarter_3_vault = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_3_vault",
	title = "RNGModifier_firestarter_3_vault_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_firestarter_3_vault",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_firestarter_3_vault_1",
		"RNGModifier_firestarter_3_vault_2"
	},
	value = RNGModifier:SafeGetData("firestarter_3", "_vault"),
	menu_id = "RNGModifier_firestarter_3_Options_Menu"
})



MenuCallbackHandler.RNGModifier_firestarter_3_outside_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_outside_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_3_outside_door",
	title = "RNGModifier_outside_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_firestarter_3_outside_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_outside_door_1",
		"RNGModifier_outside_door_2",
		"RNGModifier_outside_door_3",
		"RNGModifier_outside_door_4"
	},
	value = RNGModifier:SafeGetData("firestarter_3", "_outside_door"),
	menu_id = "RNGModifier_firestarter_3_Options_Menu"
})

MenuCallbackHandler.RNGModifier_firestarter_3_vault_gate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_gate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_firestarter_3_vault_gate",
	title = "RNGModifier_firestarter_3_vault_gate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_firestarter_3_vault_gate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("firestarter_3", "_vault_gate"),
	menu_id = "RNGModifier_firestarter_3_Options_Menu"
})