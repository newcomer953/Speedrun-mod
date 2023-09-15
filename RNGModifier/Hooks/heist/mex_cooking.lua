_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "mex_cooking"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_mex_cooking_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_mex_cooking_spawn",
	title = "RNGModifier_mex_cooking_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_cooking_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_cooking_spawn_1",
		"RNGModifier_mex_cooking_spawn_2",
		"RNGModifier_mex_cooking_spawn_3"
	},
	value = RNGModifier:SafeGetData("mex_cooking", "_spawn"),
	menu_id = "RNGModifier_mex_cooking_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_cooking_lab = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_lab")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_mex_cooking_lab",
	title = "RNGModifier_mex_cooking_lab_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_cooking_lab",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_mex_cooking_lab_1",
		"RNGModifier_mex_cooking_lab_2"
	},
	value = RNGModifier:SafeGetData("mex_cooking", "_lab"),
	menu_id = "RNGModifier_mex_cooking_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_cooking_ingredient_truck = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_ingredient_truck")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_mex_cooking_ingredient_truck",
	title = "RNGModifier_mex_cooking_ingredient_truck_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_cooking_ingredient_truck",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5"
	},
	value = RNGModifier:SafeGetData("mex_cooking", "_ingredient_truck"),
	menu_id = "RNGModifier_mex_cooking_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_cooking_cook_order = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cook_order")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_mex_cooking_cook_order",
	title = "RNGModifier_nail_cook_order_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_cooking_cook_order",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_nail_cook_order_1",
		"RNGModifier_nail_cook_order_2",
		"RNGModifier_nail_cook_order_3",
		"RNGModifier_nail_cook_order_4",
		"RNGModifier_nail_cook_order_5",
		"RNGModifier_nail_cook_order_6"
	},
	value = RNGModifier:SafeGetData("mex_cooking", "_cook_order"),
	menu_id = "RNGModifier_mex_cooking_Options_Menu"
})

MenuCallbackHandler.RNGModifier_mex_cooking_no_cooking_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_cooking_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_cooking_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_mex_cooking_no_cooking_delay",
	title = "RNGModifier_mex_cooking_no_cooking_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_mex_cooking_no_cooking_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_cooking_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})