_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "run"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_run_random_gas = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_random_gas")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_random_gas")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_run_random_gas",
	title = "RNGModifier_run_random_gas_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_run_random_gas",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_random_gas")) == 1 and true or false,
	menu_id = "RNGModifier_run_Options_Menu"
})

MenuCallbackHandler.RNGModifier_run_gascan_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_run_gascan_1",
	title = "RNGModifier_run_gascan_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_run_gascan_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_run_gascan_1",
		"RNGModifier_run_gascan_2",
		"RNGModifier_run_gascan_3",
		"RNGModifier_run_gascan_4",
		"RNGModifier_run_gascan_5",
		"RNGModifier_run_gascan_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gascan_1"),
	menu_id = "RNGModifier_run_Options_Menu"
})

MenuCallbackHandler.RNGModifier_run_gascan_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_run_gascan_2",
	title = "RNGModifier_run_gascan_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_run_gascan_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_run_gascan_1",
		"RNGModifier_run_gascan_2",
		"RNGModifier_run_gascan_3",
		"RNGModifier_run_gascan_4",
		"RNGModifier_run_gascan_5",
		"RNGModifier_run_gascan_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gascan_2"),
	menu_id = "RNGModifier_run_Options_Menu"
})

MenuCallbackHandler.RNGModifier_run_gascan_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_run_gascan_3",
	title = "RNGModifier_run_gascan_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_run_gascan_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_run_gascan_1",
		"RNGModifier_run_gascan_2",
		"RNGModifier_run_gascan_3",
		"RNGModifier_run_gascan_4",
		"RNGModifier_run_gascan_5",
		"RNGModifier_run_gascan_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gascan_3"),
	menu_id = "RNGModifier_run_Options_Menu"
})

MenuCallbackHandler.RNGModifier_run_gascan_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_run_gascan_4",
	title = "RNGModifier_run_gascan_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_run_gascan_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_run_gascan_1",
		"RNGModifier_run_gascan_2",
		"RNGModifier_run_gascan_3",
		"RNGModifier_run_gascan_4",
		"RNGModifier_run_gascan_5",
		"RNGModifier_run_gascan_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gascan_4"),
	menu_id = "RNGModifier_run_Options_Menu"
})
