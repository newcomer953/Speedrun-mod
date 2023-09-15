_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "jewelry_store"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_jewelry_store_3bags_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_3bags_A")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = 10.5,
	id = "RNGModifier_jewelry_store_3bags_A",
	title = "RNGModifier_jewelry_store_3bags_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_3bags_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_001",
		"RNGModifier_jewelry_store_3bags_002",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_009"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_3bags_A"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_3bags_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_3bags_B")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = 10.4,
	id = "RNGModifier_jewelry_store_3bags_B",
	title = "RNGModifier_jewelry_store_3bags_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_3bags_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_002",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_009"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_3bags_B"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_3bags_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_3bags_C")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = 10.3,
	id = "RNGModifier_jewelry_store_3bags_C",
	title = "RNGModifier_jewelry_store_3bags_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_3bags_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_009"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_3bags_C"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_3bags_D = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_3bags_D")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	priority = 10.2,
	id = "RNGModifier_jewelry_store_3bags_D",
	title = "RNGModifier_jewelry_store_3bags_D_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_3bags_D",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_009"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_3bags_D"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_jewelry_store_5bags_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_5bags_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9.2,
	id = "RNGModifier_jewelry_store_5bags_A",
	title = "RNGModifier_jewelry_store_5bags_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_5bags_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_009",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_002",
		"RNGModifier_jewelry_store_3bags_001"	
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_5bags_A"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_5bags_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_5bags_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_jewelry_store_5bags_B",
	title = "RNGModifier_jewelry_store_5bags_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_5bags_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_002",
		"RNGModifier_jewelry_store_3bags_001"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_5bags_B"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_7bags = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_7bags")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_jewelry_store_7bags",
	title = "RNGModifier_jewelry_store_7bags_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_7bags",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_009",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_002",
		"RNGModifier_jewelry_store_3bags_001"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_7bags"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_jewelry_store_7special_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_7special_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7.3,
	id = "RNGModifier_jewelry_store_7special_A",
	title = "RNGModifier_jewelry_store_7special_A_title",
	desc = "RNGModifier_jewelry_store_7special_desc",
	callback = "RNGModifier_jewelry_store_7special_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_009",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_002",
		"RNGModifier_jewelry_store_3bags_001"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_7special_A"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_7special_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_7special_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7.2,
	id = "RNGModifier_jewelry_store_7special_B",
	title = "RNGModifier_jewelry_store_7special_B_title",
	desc = "RNGModifier_jewelry_store_7special_desc",
	callback = "RNGModifier_jewelry_store_7special_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_009",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_002",
		"RNGModifier_jewelry_store_3bags_001"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_7special_B"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_7special_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_7special_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7,
	id = "RNGModifier_jewelry_store_7special_C",
	title = "RNGModifier_jewelry_store_7special_C_title",
	desc = "RNGModifier_jewelry_store_7special_desc",
	callback = "RNGModifier_jewelry_store_7special_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_3bags_009",
		"RNGModifier_jewelry_store_3bags_008",
		"RNGModifier_jewelry_store_3bags_007",
		"RNGModifier_jewelry_store_3bags_006",
		"RNGModifier_jewelry_store_3bags_005",
		"RNGModifier_jewelry_store_3bags_004",
		"RNGModifier_jewelry_store_3bags_003",
		"RNGModifier_jewelry_store_3bags_002",
		"RNGModifier_jewelry_store_3bags_001"
		                                 
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_7special_C"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_jewelry_store_normal = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_normal")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_jewelry_store_normal",
	title = "RNGModifier_jewelry_store_normal_title",
	desc = "RNGModifier_jewelry_store_normal_desc",
	callback = "RNGModifier_jewelry_store_normal",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_normal_1",
		"RNGModifier_jewelry_store_normal_2",
		"RNGModifier_jewelry_store_normal_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_normal"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_overkill = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_overkill")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11,
	id = "RNGModifier_jewelry_store_overkill",
	title = "RNGModifier_jewelry_store_overkill_title",
	desc = "RNGModifier_jewelry_store_overkill_desc",
	callback = "RNGModifier_jewelry_store_overkill",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_overkill_1",
		"RNGModifier_jewelry_store_overkill_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_overkill"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_jewelry_store_escape_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_escape_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_escape_chance")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_jewelry_store_escape_chance",
	title = "RNGModifier_jewelry_store_escape_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_escape_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_escape_chance")) == 1 and true or false,
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_money_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_money_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_money_chance")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_jewelry_store_money_chance",
	title = "RNGModifier_jewelry_store_money_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_money_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_money_chance")) == 1 and true or false,
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

MenuCallbackHandler.RNGModifier_jewelry_store_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 6,
	id = "RNGModifier_jewelry_store_escape",
	title = "RNGModifier_jewelry_store_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_jewelry_store_escape_1",
		"RNGModifier_jewelry_store_escape_2",
		"RNGModifier_jewelry_store_escape_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_jewelry_store_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_jewelry_store_test",
	title = "RNGModifier_jewelry_store_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_jewelry_store_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_test"),
	menu_id = "RNGModifier_jewelry_store_Options_Menu"
})]]