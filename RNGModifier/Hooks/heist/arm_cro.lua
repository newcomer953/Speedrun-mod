_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "arm_cro"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_arm_cro_rand_truck_amount = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rand_truck_amount")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_cro_rand_truck_amount",
	title = "RNGModifier_arm_rand_truck_amount_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_cro_rand_truck_amount",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("arm_cro", "_rand_truck_amount"),
	menu_id = "RNGModifier_arm_cro_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arm_cro_esc = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_esc")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_cro_esc",
	title = "RNGModifier_arm_esc_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_cro_esc",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arm_cro_esc_1",
		"RNGModifier_arm_cro_esc_2"
	},
	value = RNGModifier:SafeGetData("arm_cro", "_esc"),
	menu_id = "RNGModifier_arm_cro_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arm_cro_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_cro_spawn",
	title = "RNGModifier_arm_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_cro_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arm_cro_spawn_1",
		"RNGModifier_arm_cro_spawn_2",
		"RNGModifier_arm_cro_spawn_3",
		"RNGModifier_arm_cro_spawn_4"
	},
	value = RNGModifier:SafeGetData("arm_cro", "_spawn"),
	menu_id = "RNGModifier_arm_cro_Options_Menu"
})
--[[
MenuCallbackHandler.RNGModifier_arm_cro_jewelry = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_jewelry")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_cro_jewelry",
	title = "RNGModifier_arm_jewelry_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_cro_jewelry",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
		
	},
	value = RNGModifier:SafeGetData("arm_cro", "_jewelry"),
	menu_id = "RNGModifier_arm_cro_Options_Menu"
})
]]
MenuCallbackHandler.RNGModifier_arm_cro_loot = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_loot")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_cro_loot",
	title = "RNGModifier_arm_loot_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_cro_loot",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arm_loot_1",
		"RNGModifier_arm_loot_2"
	},
	value = RNGModifier:SafeGetData("arm_cro", "_loot"),
	menu_id = "RNGModifier_arm_cro_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arm_cro_time = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_time")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_cro_time",
	title = "RNGModifier_arm_time_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_cro_time",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arm_time_1",
		"RNGModifier_arm_time_2", 
		"RNGModifier_arm_time_3", 
		"RNGModifier_arm_time_4"  
	},
	value = RNGModifier:SafeGetData("arm_cro", "_time"),
	menu_id = "RNGModifier_arm_cro_Options_Menu"
})