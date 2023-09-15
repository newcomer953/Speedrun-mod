_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "peta2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_peta2_drop = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_drop")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_peta2_drop",
	title = "RNGModifier_peta2_drop_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta2_drop",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta2_goat_1",
		"RNGModifier_peta2_goat_2",
		"RNGModifier_peta2_goat_3"
	},
	value = RNGModifier:SafeGetData("peta2", "_drop"),
	menu_id = "RNGModifier_peta2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta2_cage = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cage")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_peta2_cage",
	title = "RNGModifier_peta2_cage_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta2_cage",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_peta2_goat_1",
		"RNGModifier_peta2_goat_2",
		"RNGModifier_peta2_goat_3"
	},
	value = RNGModifier:SafeGetData("peta2", "_cage"),
	menu_id = "RNGModifier_peta2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta2_roadblock1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_roadblock1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_peta2_roadblock1",
	title = "RNGModifier_peta2_roadblock1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta2_roadblock1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData("peta2", "_roadblock1"),
	menu_id = "RNGModifier_peta2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_peta2_roadblock2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_roadblock2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_peta2_roadblock2",
	title = "RNGModifier_peta2_roadblock2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_peta2_roadblock2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData("peta2", "_roadblock2"),
	menu_id = "RNGModifier_peta2_Options_Menu"
})