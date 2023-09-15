_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "glace"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_glace_random_correct_bus = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_correct_bus")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_glace_random_correct_bus",
	title = "RNGModifier_glace_random_correct_bus_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_glace_random_correct_bus",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_glace_random_correct_bus_1",
		"RNGModifier_glace_random_correct_bus_2",
		"RNGModifier_glace_random_correct_bus_3",
		"RNGModifier_glace_random_correct_bus_4",
	},
	value = RNGModifier:SafeGetData("glace", "_random_correct_bus"),
	menu_id = "RNGModifier_glace_Options_Menu"
})

MenuCallbackHandler.RNGModifier_glace_logic_chance_001 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_logic_chance_001")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_glace_logic_chance_001",
	title = "RNGModifier_glace_logic_chance_001_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_glace_logic_chance_001",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_glace_logic_chance_001_1"
	},
	value = RNGModifier:SafeGetData("glace", "_logic_chance_001"),
	menu_id = "RNGModifier_glace_Options_Menu"
})

MenuCallbackHandler.RNGModifier_glace_no_plane_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_plane_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_plane_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_glace_no_plane_delay",
	title = "RNGModifier_glace_no_plane_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_glace_no_plane_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_plane_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})