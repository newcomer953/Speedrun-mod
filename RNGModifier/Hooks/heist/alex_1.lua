_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "alex_1"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_alex_1_escape_time = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape_time")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_alex_1_escape_time",
	title = "RNGModifier_alex_1_escape_time_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_1_escape_time",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape_time"),
	menu_id = "RNGModifier_alex_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_alex_1_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_alex_1_escape",
	title = "RNGModifier_alex_1_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_1_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_alex_1_escape_1",
		"RNGModifier_alex_1_escape_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape"),
	menu_id = "RNGModifier_alex_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_alex_1_cook_order = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cook_order")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_alex_1_cook_order",
	title = "RNGModifier_nail_cook_order_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_1_cook_order",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_nail_cook_order_1",
		"RNGModifier_nail_cook_order_2",
		"RNGModifier_nail_cook_order_3",
		"RNGModifier_nail_cook_order_4",
		"RNGModifier_nail_cook_order_5",
		"RNGModifier_nail_cook_order_6"
	},
	value = RNGModifier:SafeGetData("alex_1", "_cook_order"),
	menu_id = "RNGModifier_alex_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_alex_1_no_cooking_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_cooking_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_cooking_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_alex_1_no_cooking_delay",
	title = "RNGModifier_rat_no_cooking_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_1_no_cooking_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_cooking_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_alex_1_best_ingredients = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_best_ingredients")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_best_ingredients")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_alex_1_best_ingredients",
	title = "RNGModifier_rat_best_ingredients_title",
	desc = "RNGModifier_rat_best_ingredients_desc",
	callback = "RNGModifier_alex_1_best_ingredients",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_best_ingredients")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})
