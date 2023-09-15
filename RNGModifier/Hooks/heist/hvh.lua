_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Curret_Heist = "hvh"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Curret_Heist] = RNGModifier._data[_Curret_Heist] or {}

MenuCallbackHandler.RNGModifier_hvh_rnd_world = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Curret_Heist, "_rnd_world")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hvh_rnd_world",
	title = "RNGModifier_hvh_rnd_world_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hvh_rnd_world",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hvh_rnd_world_1",
		"RNGModifier_hvh_rnd_world_2",
		"RNGModifier_hvh_rnd_world_3",
		"RNGModifier_hvh_rnd_world_4"
	},
	value = RNGModifier:SafeGetData("hvh", "_rnd_world"),
	menu_id = "RNGModifier_hvh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hvh_civ = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Curret_Heist, "_civ")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hvh_civ",
	title = "RNGModifier_hvh_civ_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_hvh_civ",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_hvh_civ_1"
	},
	value = RNGModifier:SafeGetData("hvh", "_civ"),
	menu_id = "RNGModifier_hvh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hvh_cop_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Curret_Heist, "_cop_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hvh_cop_1",
	title = "RNGModifier_hvh_cop_1_title",
	desc = "RNGModifier_hvh_cop_desc",
	callback = "RNGModifier_hvh_cop_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1", 
		"RNGModifier_number_4_use_2", 
		"RNGModifier_number_4_use_3", 
		"RNGModifier_number_4_use_4", 
		"RNGModifier_number_4_use_5", 
		"RNGModifier_number_4_use_6", 
		"RNGModifier_number_4_use_7", 
		"RNGModifier_number_4_use_8", 
		"RNGModifier_number_4_use_9", 
		"RNGModifier_number_4_use_10",
		"RNGModifier_number_4_use_11",
		"RNGModifier_number_4_use_12",
		"RNGModifier_number_4_use_13",
		"RNGModifier_number_4_use_14",
		"RNGModifier_number_4_use_15",
		"RNGModifier_number_4_use_16",
		"RNGModifier_number_4_use_17",
		"RNGModifier_number_4_use_18",
		"RNGModifier_number_4_use_19",
		"RNGModifier_number_4_use_20",
		"RNGModifier_number_4_use_21",
		"RNGModifier_number_4_use_22"

	},
	value = RNGModifier:SafeGetData("hvh", "_cop_1"),
	menu_id = "RNGModifier_hvh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_hvh_cop_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Curret_Heist, "_cop_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_hvh_cop_2",
	title = "RNGModifier_hvh_cop_2_title",
	desc = "RNGModifier_hvh_cop_desc",
	callback = "RNGModifier_hvh_cop_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1", 
		"RNGModifier_number_4_use_2", 
		"RNGModifier_number_4_use_3", 
		"RNGModifier_number_4_use_4", 
		"RNGModifier_number_4_use_5", 
		"RNGModifier_number_4_use_6", 
		"RNGModifier_number_4_use_7", 
		"RNGModifier_number_4_use_8", 
		"RNGModifier_number_4_use_9", 
		"RNGModifier_number_4_use_10",
		"RNGModifier_number_4_use_11",
		"RNGModifier_number_4_use_12",
		"RNGModifier_number_4_use_13",
		"RNGModifier_number_4_use_14",
		"RNGModifier_number_4_use_15",
		"RNGModifier_number_4_use_16",
		"RNGModifier_number_4_use_17",
		"RNGModifier_number_4_use_18",
		"RNGModifier_number_4_use_19",
		"RNGModifier_number_4_use_20",
		"RNGModifier_number_4_use_21",
		"RNGModifier_number_4_use_22"

	},
	value = RNGModifier:SafeGetData("hvh", "_cop_2"),
	menu_id = "RNGModifier_hvh_Options_Menu"
})