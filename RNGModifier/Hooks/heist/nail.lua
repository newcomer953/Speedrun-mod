_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "nail"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_nail_cook_order = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cook_order")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_nail_cook_order",
	title = "RNGModifier_nail_cook_order_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nail_cook_order",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_nail_cook_order_1",
		"RNGModifier_nail_cook_order_2",
		"RNGModifier_nail_cook_order_3",
		"RNGModifier_nail_cook_order_4",
		"RNGModifier_nail_cook_order_5",
		"RNGModifier_nail_cook_order_6"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_cook_order"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_mu_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_mu_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.1,
	id = "RNGModifier_nail_spawn_mu_1",
	title = "RNGModifier_nail_spawn_mu_1_title",
	desc = "RNGModifier_nail_spawn_mu_desc",
	callback = "RNGModifier_nail_spawn_mu_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_mu_1"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_mu_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_mu_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.2,
	id = "RNGModifier_nail_spawn_mu_2",
	title = "RNGModifier_nail_spawn_mu_2_title",
	desc = "RNGModifier_nail_spawn_mu_desc",
	callback = "RNGModifier_nail_spawn_mu_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_mu_2"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_mu_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_mu_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.3,
	id = "RNGModifier_nail_spawn_mu_3",
	title = "RNGModifier_nail_spawn_mu_3_title",
	desc = "RNGModifier_nail_spawn_mu_desc",
	callback = "RNGModifier_nail_spawn_mu_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_mu_3"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_cs_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_cs_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.4,
	id = "RNGModifier_nail_spawn_cs_1",
	title = "RNGModifier_nail_spawn_cs_1_title",
	desc = "RNGModifier_nail_spawn_cs_desc",
	callback = "RNGModifier_nail_spawn_cs_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_cs_1"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_cs_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_cs_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.5,
	id = "RNGModifier_nail_spawn_cs_2",
	title = "RNGModifier_nail_spawn_cs_2_title",
	desc = "RNGModifier_nail_spawn_cs_desc",
	callback = "RNGModifier_nail_spawn_cs_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_cs_2"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_cs_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_cs_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.6,
	id = "RNGModifier_nail_spawn_cs_3",
	title = "RNGModifier_nail_spawn_cs_3_title",
	desc = "RNGModifier_nail_spawn_cs_desc",
	callback = "RNGModifier_nail_spawn_cs_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_cs_3"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_hcl_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_hcl_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.7,
	id = "RNGModifier_nail_spawn_hcl_1",
	title = "RNGModifier_nail_spawn_hcl_1_title",
	desc = "RNGModifier_nail_spawn_hcl_desc",
	callback = "RNGModifier_nail_spawn_hcl_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_hcl_1"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_hcl_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_hcl_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.8,
	id = "RNGModifier_nail_spawn_hcl_2",
	title = "RNGModifier_nail_spawn_hcl_2_title",
	desc = "RNGModifier_nail_spawn_hcl_desc",
	callback = "RNGModifier_nail_spawn_hcl_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_hcl_2"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_spawn_hcl_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn_hcl_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2.9,
	id = "RNGModifier_nail_spawn_hcl_3",
	title = "RNGModifier_nail_spawn_hcl_3_title",
	desc = "RNGModifier_nail_spawn_hcl_desc",
	callback = "RNGModifier_nail_spawn_hcl_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn_hcl_3"),
	menu_id = "RNGModifier_nail_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nail_zipline = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_zipline")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3,
	id = "RNGModifier_nail_zipline",
	title = "RNGModifier_nail_zipline_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nail_zipline",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_nail_zipline_1",
		"RNGModifier_nail_zipline_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_zipline"),
	menu_id = "RNGModifier_nail_Options_Menu"
})