_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "pines"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_pines_no_heli_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_heli_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_heli_delay")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	id = "RNGModifier_pines_no_heli_delay",
	title = "RNGModifier_pines_no_heli_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pines_no_heli_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_heli_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pines_random_santa_location = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_random_santa_location")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_random_santa_location")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	id = "RNGModifier_pines_random_santa_location",
	title = "RNGModifier_pines_random_santa_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pines_random_santa_location",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_random_santa_location")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pines_random_escape_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_escape_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pines_random_escape_location",
	title = "RNGModifier_pines_random_escape_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pines_random_escape_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pines_random_escape_location_1",
		"RNGModifier_pines_random_escape_location_2",
		"RNGModifier_pines_random_escape_location2_1",
		"RNGModifier_pines_random_escape_location2_2"
	},
	value = RNGModifier:SafeGetData("pines", "_random_escape_location"),
	menu_id = "RNGModifier_pines_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_pines_random_escape_location2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_escape_location2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pines_random_escape_location2",
	title = "RNGModifier_pines_random_escape_location2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pines_random_escape_location2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pines_random_escape_location2_1",
		"RNGModifier_pines_random_escape_location2_2"
	},
	value = RNGModifier:SafeGetData("pines", "_random_escape_location2"),
	menu_id = "RNGModifier_pines_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_pines_random_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pines_random_door",
	title = "RNGModifier_pines_random_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pines_random_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pines_random_door_1",
		"RNGModifier_pines_random_door_2"
	},
	value = RNGModifier:SafeGetData("pines", "_random_door"),
	menu_id = "RNGModifier_pines_Options_Menu"
})