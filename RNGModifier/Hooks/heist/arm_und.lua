_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "arm_und"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_arm_und_rand_truck_amount = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rand_truck_amount")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_und_rand_truck_amount",
	title = "RNGModifier_arm_rand_truck_amount_title",
	desc = "RNGModifier_arm_rand_truck_amount_desc",
	callback = "RNGModifier_arm_und_rand_truck_amount",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_4"
	},
	value = RNGModifier:SafeGetData("arm_und", "_rand_truck_amount"),
	menu_id = "RNGModifier_arm_und_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arm_und_esc = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_esc")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_und_esc",
	title = "RNGModifier_arm_esc_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_und_esc",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arm_und_esc_1",
		"RNGModifier_arm_und_esc_2",
		"RNGModifier_arm_und_esc_3",
		"RNGModifier_arm_und_esc_4"
	},
	value = RNGModifier:SafeGetData("arm_und", "_esc"),
	menu_id = "RNGModifier_arm_und_Options_Menu"
})


MenuCallbackHandler.RNGModifier_arm_und_loot = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_loot")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_und_loot",
	title = "RNGModifier_arm_loot_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_und_loot",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arm_und_loot_1",
		"RNGModifier_arm_und_loot_2",
		"RNGModifier_arm_und_loot_3"
		
	},
	value = RNGModifier:SafeGetData("arm_und", "_loot"),
	menu_id = "RNGModifier_arm_und_Options_Menu"
})

MenuCallbackHandler.RNGModifier_arm_und_time = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_time")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_und_time",
	title = "RNGModifier_arm_time_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_arm_und_time",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arm_time_4",
		"RNGModifier_arm_time_3", 
		"RNGModifier_arm_time_2", 
		"RNGModifier_arm_time_1"  
	},
	value = RNGModifier:SafeGetData("arm_und", "_time"),
	menu_id = "RNGModifier_arm_und_Options_Menu"
})