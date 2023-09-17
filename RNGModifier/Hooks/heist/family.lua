_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "family"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_family_rand_keypad = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rand_keypad")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_family_rand_keypad",
	title = "RNGModifier_family_rand_keypad_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_family_rand_keypad",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_family_rand_keypad_1",
		"RNGModifier_family_rand_keypad_2",
		"RNGModifier_family_rand_keypad_3",
		"RNGModifier_family_rand_keypad_4"
	},
	value = RNGModifier:SafeGetData("family", "_rand_keypad"),
	menu_id = "RNGModifier_family_Options_Menu"
})

MenuCallbackHandler.RNGModifier_family_best_diamonds = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_best_diamonds")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_family_best_diamonds",
	title = "RNGModifier_family_best_diamonds_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_family_best_diamonds",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_family_best_diamonds_1"
	},
	value = RNGModifier:SafeGetData("family", "_best_diamonds"),
	menu_id = "RNGModifier_family_Options_Menu"
})


--[[MenuCallbackHandler.RNGModifier_family_chance_of_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_chance_of_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_family_chance_of_door",
	title = "RNGModifier_family_chance_of_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_family_chance_of_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("family", "_chance_of_door"),
	menu_id = "RNGModifier_family_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_family_chance_of_door = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_chance_of_door")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_chance_of_door")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_family_chance_of_door",
	title = "RNGModifier_family_chance_of_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_family_chance_of_door",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_chance_of_door")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})