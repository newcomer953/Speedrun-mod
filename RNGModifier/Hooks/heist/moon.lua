_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "moon"
local _bool = true
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_moon_objective_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_objective_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 19.2,
	id = "RNGModifier_moon_objective_1",
	title = "RNGModifier_moon_objective_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_objective_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_objective_001",
		"RNGModifier_moon_objective_002",
		"RNGModifier_moon_objective_003",
		"RNGModifier_moon_objective_004",
		"RNGModifier_moon_objective_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_objective_1"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_objective_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_objective_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 18.2,
	id = "RNGModifier_moon_objective_2",
	title = "RNGModifier_moon_objective_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_objective_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_objective_001",
		"RNGModifier_moon_objective_002",
		"RNGModifier_moon_objective_003",
		"RNGModifier_moon_objective_004",
		"RNGModifier_moon_objective_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_objective_2"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_objective_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_objective_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17.2,
	id = "RNGModifier_moon_objective_3",
	title = "RNGModifier_moon_objective_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_objective_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_objective_001",
		"RNGModifier_moon_objective_002",
		"RNGModifier_moon_objective_003",
		"RNGModifier_moon_objective_004",
		"RNGModifier_moon_objective_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_objective_3"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_storage_shoe = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_storage_shoe")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11,
	id = "RNGModifier_moon_storage_shoe",
	title = "RNGModifier_moon_storage_shoe_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_storage_shoe",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_storage_shoe_001",
		"RNGModifier_moon_storage_shoe_002",
		"RNGModifier_moon_storage_shoe_003",
		"RNGModifier_moon_storage_shoe_004",
		"RNGModifier_moon_storage_shoe_005",
		"RNGModifier_moon_storage_shoe_006"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_storage_shoe"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_bag_toy = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bag_toy")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15.5,
	id = "RNGModifier_moon_bag_toy",
	title = "RNGModifier_moon_bag_toy_title",
	desc = "RNGModifier_moon_bag_toy_desc",
	callback = "RNGModifier_moon_bag_toy",
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
		"RNGModifier_number_4_use_12"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_bag_toy"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_gift_toy = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gift_toy")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15.4,
	id = "RNGModifier_moon_gift_toy",
	title = "RNGModifier_moon_gift_toy_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_gift_toy",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_gift_toy_001",
		"RNGModifier_moon_gift_toy_002",
		"RNGModifier_moon_gift_toy_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gift_toy"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_pick_gift_toy = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_gift_toy")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15.3,
	id = "RNGModifier_moon_pick_gift_toy",
	title = "RNGModifier_moon_pick_gift_toy_title",
	desc = "RNGModifier_moon_pick_gift_toy_desc",
	callback = "RNGModifier_moon_pick_gift_toy",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_pick_gift_toy_001",
		"RNGModifier_moon_pick_gift_toy_002"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pick_gift_toy"),
	menu_id = "RNGModifier_moon_Options_Menu"
})


MenuCallbackHandler.RNGModifier_moon_upper_toy_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_upper_toy_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15,
	id = "RNGModifier_moon_upper_toy_1",
	title = "RNGModifier_moon_upper_toy_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_upper_toy_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_upper_toy_001",
		"RNGModifier_moon_upper_toy_002",
		"RNGModifier_moon_upper_toy_003",
		"RNGModifier_moon_upper_toy_004",
		"RNGModifier_moon_upper_toy_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_upper_toy_1"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_upper_toy_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_upper_toy_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_moon_upper_toy_2",
	title = "RNGModifier_moon_upper_toy_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_upper_toy_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_upper_toy_001",
		"RNGModifier_moon_upper_toy_002",
		"RNGModifier_moon_upper_toy_003",
		"RNGModifier_moon_upper_toy_004",
		"RNGModifier_moon_upper_toy_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_upper_toy_2"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_below_toy_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_below_toy_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 13,
	id = "RNGModifier_moon_below_toy_1",
	title = "RNGModifier_moon_below_toy_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_below_toy_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_below_toy_001",
		"RNGModifier_moon_below_toy_002",
		"RNGModifier_moon_below_toy_003",
		"RNGModifier_moon_below_toy_004",
		"RNGModifier_moon_below_toy_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_below_toy_1"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_below_toy_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_below_toy_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_moon_below_toy_2",
	title = "RNGModifier_moon_below_toy_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_below_toy_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_below_toy_001",
		"RNGModifier_moon_below_toy_002",
		"RNGModifier_moon_below_toy_003",
		"RNGModifier_moon_below_toy_004",
		"RNGModifier_moon_below_toy_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_below_toy_2"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_toy_choices = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_toy_choices")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16,
	id = "RNGModifier_moon_toy_choices",
	title = "RNGModifier_moon_toy_choices_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_toy_choices",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_toy_choices_001",
		"RNGModifier_moon_toy_choices_002"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_toy_choices"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_shoe_choices = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_shoe_choices")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11,
	id = "RNGModifier_moon_shoe_choices",
	title = "RNGModifier_moon_shoe_choices_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_shoe_choices",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_shoe_choices_001",
		"RNGModifier_moon_shoe_choices_002"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_shoe_choices"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_pick_c4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_c4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 1,
	id = "RNGModifier_moon_pick_c4",
	title = "RNGModifier_moon_pick_c4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_pick_c4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_pick_c4_001",
		"RNGModifier_moon_pick_c4_002"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pick_c4"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_wine_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_wine_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_moon_wine_1",
	title = "RNGModifier_moon_wine_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_wine_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_wine_1",
		"RNGModifier_moon_wine_2",
		"RNGModifier_moon_wine_3",
		"RNGModifier_moon_wine_4",
		"RNGModifier_moon_wine_5",
		"RNGModifier_moon_wine_6",
		"RNGModifier_moon_wine_7",
		"RNGModifier_moon_wine_8",
		"RNGModifier_moon_wine_9",
		"RNGModifier_moon_wine_10",
		"RNGModifier_moon_wine_11",
		"RNGModifier_moon_wine_12",
		"RNGModifier_moon_wine_13",
		"RNGModifier_moon_wine_14",
		"RNGModifier_moon_wine_15",
		"RNGModifier_moon_wine_16",
		"RNGModifier_moon_wine_17",
		"RNGModifier_moon_wine_18"	
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_wine_1"),
	menu_id = "RNGModifier_moon_Options_Menu"
})

MenuCallbackHandler.RNGModifier_moon_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 20,
	id = "RNGModifier_moon_spawn",
	title = "RNGModifier_moon_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_moon_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_moon_spawn_1",
		"RNGModifier_moon_spawn_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn"),
	menu_id = "RNGModifier_moon_Options_Menu"
})
