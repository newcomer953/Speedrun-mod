_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "rat"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_rat_chose_methlab_position = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_chose_methlab_position")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_rat_chose_methlab_position",
	title = "RNGModifier_rat_chose_methlab_position_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_chose_methlab_position",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_rat_chose_methlab_position_1",
		"RNGModifier_rat_chose_methlab_position_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_chose_methlab_position"),
	menu_id = "RNGModifier_rat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_cook_order = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cook_order")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_rat_cook_order",
	title = "RNGModifier_nail_cook_order_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_cook_order",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_nail_cook_order_1",
		"RNGModifier_nail_cook_order_2",
		"RNGModifier_nail_cook_order_3",
		"RNGModifier_nail_cook_order_4",
		"RNGModifier_nail_cook_order_5",
		"RNGModifier_nail_cook_order_6"
	},
	value = RNGModifier:SafeGetData("rat", "_cook_order"),
	menu_id = "RNGModifier_rat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_no_cooking_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_cooking_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_cooking_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_rat_no_cooking_delay",
	title = "RNGModifier_rat_no_cooking_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_no_cooking_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_cooking_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_best_ingredients = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_best_ingredients")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_best_ingredients")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_rat_best_ingredients",
	title = "RNGModifier_rat_best_ingredients_title",
	desc = "RNGModifier_rat_best_ingredients_desc",
	callback = "RNGModifier_rat_best_ingredients",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_best_ingredients")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_escape_position = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape_position")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_rat_escape_position",
	title = "RNGModifier_rat_escape_position_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_escape_position",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_rat_escape_position_1",
		"RNGModifier_rat_escape_position_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape_position"),
	menu_id = "RNGModifier_rat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_escape_time = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape_time")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_rat_escape_time",
	title = "RNGModifier_rat_escape_time_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_escape_time",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape_time"),
	menu_id = "RNGModifier_rat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_shortened_rearrival = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_shortened_rearrival")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_shortened_rearrival")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_rat_shortened_rearrival",
	title = "RNGModifier_rat_shortened_rearrival_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_shortened_rearrival",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_shortened_rearrival")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_van_stays_longer = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_van_stays_longer")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_van_stays_longer")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_rat_van_stays_longer",
	title = "RNGModifier_rat_van_stays_longer_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_van_stays_longer",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_van_stays_longer")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_random_flare = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_flare")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_rat_random_flare",
	title = "RNGModifier_rat_random_flare_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_random_flare",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_rat_random_flare_1",
		"RNGModifier_rat_random_flare_2",
		"RNGModifier_rat_random_flare_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_flare"),
	menu_id = "RNGModifier_rat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_shorter_flare_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_shorter_flare_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_shorter_flare_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_rat_shorter_flare_delay",
	title = "RNGModifier_rat_shorter_flare_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_shorter_flare_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_shorter_flare_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rat_shorter_ingredient_arrival = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_shorter_ingredient_arrival")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_shorter_ingredient_arrival")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_rat_shorter_ingredient_arrival",
	title = "RNGModifier_rat_shorter_ingredient_arrival_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rat_shorter_ingredient_arrival",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_shorter_ingredient_arrival")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})


