_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "pbr2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_pbr2_pallet_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pallet_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_pallet_1",
	title = "RNGModifier_pbr2_pallet_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_pallet_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr2_pallet_1",
		"RNGModifier_pbr2_pallet_2",
		"RNGModifier_pbr2_pallet_3",
		"RNGModifier_pbr2_pallet_4",
		"RNGModifier_pbr2_pallet_5",
		"RNGModifier_pbr2_pallet_6",
		"RNGModifier_pbr2_pallet_7",
		"RNGModifier_pbr2_pallet_8",
		"RNGModifier_pbr2_pallet_9",
		"RNGModifier_pbr2_pallet_10",
		"RNGModifier_pbr2_pallet_11",
		"RNGModifier_pbr2_pallet_12",
		"RNGModifier_pbr2_pallet_13",
		"RNGModifier_pbr2_pallet_14",
		"RNGModifier_pbr2_pallet_15",
		"RNGModifier_pbr2_pallet_16",
		"RNGModifier_pbr2_pallet_17",
		"RNGModifier_pbr2_pallet_18",
		"RNGModifier_pbr2_pallet_19",
		"RNGModifier_pbr2_pallet_20",
		"RNGModifier_pbr2_pallet_21"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pallet_1"),
	menu_id = "RNGModifier_pbr2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr2_pallet_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pallet_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_pallet_2",
	title = "RNGModifier_pbr2_pallet_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_pallet_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr2_pallet_1",
		"RNGModifier_pbr2_pallet_2",
		"RNGModifier_pbr2_pallet_3",
		"RNGModifier_pbr2_pallet_4",
		"RNGModifier_pbr2_pallet_5",
		"RNGModifier_pbr2_pallet_6",
		"RNGModifier_pbr2_pallet_7",
		"RNGModifier_pbr2_pallet_8",
		"RNGModifier_pbr2_pallet_9",
		"RNGModifier_pbr2_pallet_10",
		"RNGModifier_pbr2_pallet_11",
		"RNGModifier_pbr2_pallet_12",
		"RNGModifier_pbr2_pallet_13",
		"RNGModifier_pbr2_pallet_14",
		"RNGModifier_pbr2_pallet_15",
		"RNGModifier_pbr2_pallet_16",
		"RNGModifier_pbr2_pallet_17",
		"RNGModifier_pbr2_pallet_18",
		"RNGModifier_pbr2_pallet_19",
		"RNGModifier_pbr2_pallet_20",
		"RNGModifier_pbr2_pallet_21"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pallet_2"),
	menu_id = "RNGModifier_pbr2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr2_broken_pallet = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_broken_pallet")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_broken_pallet",
	title = "RNGModifier_pbr2_broken_pallet_title",
	desc = "RNGModifier_pbr2_broken_pallet_desc",
	callback = "RNGModifier_pbr2_broken_pallet",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr2_broken_pallet_1",
		"RNGModifier_pbr2_broken_pallet_2",
		"RNGModifier_pbr2_broken_pallet_3",
		"RNGModifier_pbr2_broken_pallet_4",
		"RNGModifier_pbr2_broken_pallet_5",
		"RNGModifier_pbr2_broken_pallet_6",
		"RNGModifier_pbr2_broken_pallet_7",
		"RNGModifier_pbr2_broken_pallet_8",
		"RNGModifier_pbr2_broken_pallet_9",
		"RNGModifier_pbr2_broken_pallet_10"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_broken_pallet"),
	menu_id = "RNGModifier_pbr2_Options_Menu"
})

local small_money_menu_id_1 = RNGModifier._heist_submenu.pbr2_small_money_1[2]
local small_money_menu_id_2 = RNGModifier._heist_submenu.pbr2_small_money_2[2]
local small_money_menu_id_3 = RNGModifier._heist_submenu.pbr2_small_money_3[2]
local small_money_menu_id_4 = RNGModifier._heist_submenu.pbr2_small_money_4[2]
local small_money_menu_id_5 = RNGModifier._heist_submenu.pbr2_small_money_5[2]

MenuHelper:AddButton({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_money_1_Menu_Button",
	title = small_money_menu_id_1 .. "_title",
	desc = small_money_menu_id_1 .. "_desc",
	next_node = small_money_menu_id_1,
	menu_id = "RNGModifier_pbr2_Options_Menu"
})

MenuHelper:AddButton({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_money_2_Menu_Button",
	title = small_money_menu_id_2 .. "_title",
	desc = small_money_menu_id_2 .. "_desc",
	next_node = small_money_menu_id_2,
	menu_id = "RNGModifier_pbr2_Options_Menu"
})

MenuHelper:AddButton({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_money_3_Menu_Button",
	title = small_money_menu_id_3 .. "_title",
	desc = small_money_menu_id_3 .. "_desc",
	next_node = small_money_menu_id_3,
	menu_id = "RNGModifier_pbr2_Options_Menu"
})

MenuHelper:AddButton({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_money_4_Menu_Button",
	title = small_money_menu_id_4 .. "_title",
	desc = small_money_menu_id_4 .. "_desc",
	next_node = small_money_menu_id_4,
	menu_id = "RNGModifier_pbr2_Options_Menu"
})

MenuHelper:AddButton({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_money_5_Menu_Button",
	title = small_money_menu_id_5 .. "_title",
	desc = small_money_menu_id_5 .. "_desc",
	next_node = small_money_menu_id_5,
	menu_id = "RNGModifier_pbr2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_1 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_1")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_1")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_1",
	title = "RNGModifier_pbr2_small_choices_fastfood_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_1",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_1")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_2 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_2")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_2")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_2",
	title = "RNGModifier_pbr2_small_choices_fastfood_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_2",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_2")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_3 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_3")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_3")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_3",
	title = "RNGModifier_pbr2_small_choices_fastfood_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_3",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_3")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_4 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_4")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_4")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_4",
	title = "RNGModifier_pbr2_small_choices_fastfood_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_4",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_4")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_5 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_5")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_5")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_5",
	title = "RNGModifier_pbr2_small_choices_fastfood_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_5",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_5")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_6 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_6")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_6")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_6",
	title = "RNGModifier_pbr2_small_choices_fastfood_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_6",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_6")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_7 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_7")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_7")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_7",
	title = "RNGModifier_pbr2_small_choices_fastfood_7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_7",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_7")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_8 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_8")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_8")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_8",
	title = "RNGModifier_pbr2_small_choices_fastfood_8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_8",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_8")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_9 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_9")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_9")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_9",
	title = "RNGModifier_pbr2_small_choices_fastfood_9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_9",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_9")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_10 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_10")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_10")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_10",
	title = "RNGModifier_pbr2_small_choices_fastfood_10_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_10",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_10")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_11 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_11")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_11")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_11",
	title = "RNGModifier_pbr2_small_choices_fastfood_11_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_11",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_11")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_12 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_12")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_12")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_12",
	title = "RNGModifier_pbr2_small_choices_fastfood_12_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_12",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_12")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_13 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_13")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_13")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_13",
	title = "RNGModifier_pbr2_small_choices_fastfood_13_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_13",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_13")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_14 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_14")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_14")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_fastfood_14",
	title = "RNGModifier_pbr2_small_choices_fastfood_14_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_fastfood_14",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_fastfood_14")) == 1 and true or false,
	menu_id = small_money_menu_id_1
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_fastfood_15 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_fastfood_15")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_fastfood_15")
	end
	RNGModifier:Save()
end

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_1 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_1")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_1")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_1",
	title = "RNGModifier_pbr2_small_choices_car_dealer_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_1",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_1")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_2 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_2")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_2")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_2",
	title = "RNGModifier_pbr2_small_choices_car_dealer_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_2",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_2")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_3 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_3")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_3")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_3",
	title = "RNGModifier_pbr2_small_choices_car_dealer_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_3",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_3")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_4 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_4")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_4")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_4",
	title = "RNGModifier_pbr2_small_choices_car_dealer_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_4",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_4")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_5 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_5")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_5")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_5",
	title = "RNGModifier_pbr2_small_choices_car_dealer_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_5",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_5")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_6 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_6")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_6")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_6",
	title = "RNGModifier_pbr2_small_choices_car_dealer_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_6",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_6")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_7 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_7")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_7")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_7",
	title = "RNGModifier_pbr2_small_choices_car_dealer_7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_7",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_7")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_8 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_8")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_8")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_8",
	title = "RNGModifier_pbr2_small_choices_car_dealer_8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_8",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_8")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_9 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_9")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_9")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_9",
	title = "RNGModifier_pbr2_small_choices_car_dealer_9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_9",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_9")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_10 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_10")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_10")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_10",
	title = "RNGModifier_pbr2_small_choices_car_dealer_10_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_10",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_10")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_11 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_11")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_11")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_11",
	title = "RNGModifier_pbr2_small_choices_car_dealer_11_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_11",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_11")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_12 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_12")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_12")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_12",
	title = "RNGModifier_pbr2_small_choices_car_dealer_12_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_12",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_12")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_13 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_13")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_13")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_13",
	title = "RNGModifier_pbr2_small_choices_car_dealer_13_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_13",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_13")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_14 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_14")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_14")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_14",
	title = "RNGModifier_pbr2_small_choices_car_dealer_14_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_14",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_14")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_car_dealer_15 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_car_dealer_15")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_car_dealer_15")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_car_dealer_15",
	title = "RNGModifier_pbr2_small_choices_car_dealer_15_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_car_dealer_15",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_car_dealer_15")) == 1 and true or false,
	menu_id = small_money_menu_id_2
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_1 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_1")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_1")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_1",
	title = "RNGModifier_pbr2_small_choices_gas_station_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_1",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_1")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_2 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_2")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_2")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_2",
	title = "RNGModifier_pbr2_small_choices_gas_station_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_2",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_2")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_3 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_3")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_3")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_3",
	title = "RNGModifier_pbr2_small_choices_gas_station_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_3",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_3")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_4 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_4")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_4")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_4",
	title = "RNGModifier_pbr2_small_choices_gas_station_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_4",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_4")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_5 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_5")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_5")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_5",
	title = "RNGModifier_pbr2_small_choices_gas_station_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_5",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_5")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_6 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_6")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_6")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_6",
	title = "RNGModifier_pbr2_small_choices_gas_station_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_6",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_6")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_7 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_7")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_7")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_7",
	title = "RNGModifier_pbr2_small_choices_gas_station_7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_7",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_7")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_8 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_8")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_8")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_8",
	title = "RNGModifier_pbr2_small_choices_gas_station_8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_8",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_8")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_9 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_9")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_9")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_9",
	title = "RNGModifier_pbr2_small_choices_gas_station_9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_9",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_9")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_10 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_10")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_10")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_10",
	title = "RNGModifier_pbr2_small_choices_gas_station_10_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_10",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_10")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_11 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_11")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_11")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_11",
	title = "RNGModifier_pbr2_small_choices_gas_station_11_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_11",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_11")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_12 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_12")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_12")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_12",
	title = "RNGModifier_pbr2_small_choices_gas_station_12_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_12",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_12")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_13 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_13")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_13")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_13",
	title = "RNGModifier_pbr2_small_choices_gas_station_13_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_13",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_13")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_14 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_14")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_14")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_14",
	title = "RNGModifier_pbr2_small_choices_gas_station_14_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_14",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_14")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_gas_station_15 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_gas_station_15")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_gas_station_15")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_gas_station_15",
	title = "RNGModifier_pbr2_small_choices_gas_station_15_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_gas_station_15",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_gas_station_15")) == 1 and true or false,
	menu_id = small_money_menu_id_3
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_1 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_1")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_1")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_1",
	title = "RNGModifier_pbr2_small_choices_hardware_store_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_1",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_1")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_2 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_2")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_2")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_2",
	title = "RNGModifier_pbr2_small_choices_hardware_store_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_2",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_2")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_3 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_3")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_3")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_3",
	title = "RNGModifier_pbr2_small_choices_hardware_store_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_3",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_3")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_4 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_4")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_4")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_4",
	title = "RNGModifier_pbr2_small_choices_hardware_store_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_4",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_4")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_5 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_5")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_5")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_5",
	title = "RNGModifier_pbr2_small_choices_hardware_store_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_5",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_5")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_6 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_6")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_6")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_6",
	title = "RNGModifier_pbr2_small_choices_hardware_store_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_6",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_6")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_7 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_7")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_7")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_7",
	title = "RNGModifier_pbr2_small_choices_hardware_store_7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_7",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_7")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_8 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_8")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_8")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_8",
	title = "RNGModifier_pbr2_small_choices_hardware_store_8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_8",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_8")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_9 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_9")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_9")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_9",
	title = "RNGModifier_pbr2_small_choices_hardware_store_9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_9",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_9")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_10 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_10")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_10")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_10",
	title = "RNGModifier_pbr2_small_choices_hardware_store_10_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_10",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_10")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_11 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_11")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_11")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_11",
	title = "RNGModifier_pbr2_small_choices_hardware_store_11_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_11",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_11")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_12 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_12")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_12")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_12",
	title = "RNGModifier_pbr2_small_choices_hardware_store_12_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_12",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_12")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_13 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_13")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_13")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_13",
	title = "RNGModifier_pbr2_small_choices_hardware_store_13_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_13",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_13")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_14 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_14")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_14")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_14",
	title = "RNGModifier_pbr2_small_choices_hardware_store_14_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_14",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_14")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_hardware_store_15 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_hardware_store_15")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_hardware_store_15")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_hardware_store_15",
	title = "RNGModifier_pbr2_small_choices_hardware_store_15_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_hardware_store_15",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_hardware_store_15")) == 1 and true or false,
	menu_id = small_money_menu_id_4
})


MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_1 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_1")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_1")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_1",
	title = "RNGModifier_pbr2_small_choices_street_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_1",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_1")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_2 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_2")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_2")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_2",
	title = "RNGModifier_pbr2_small_choices_street_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_2",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_2")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_3 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_3")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_3")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_3",
	title = "RNGModifier_pbr2_small_choices_street_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_3",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_3")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_4 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_4")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_4")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_4",
	title = "RNGModifier_pbr2_small_choices_street_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_4",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_4")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_5 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_5")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_5")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_5",
	title = "RNGModifier_pbr2_small_choices_street_5_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_5",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_5")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_6 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_6")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_6")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_6",
	title = "RNGModifier_pbr2_small_choices_street_6_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_6",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_6")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_7 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_7")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_7")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_7",
	title = "RNGModifier_pbr2_small_choices_street_7_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_7",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_7")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_8 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_8")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_8")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_8",
	title = "RNGModifier_pbr2_small_choices_street_8_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_8",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_8")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_9 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_9")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_9")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_9",
	title = "RNGModifier_pbr2_small_choices_street_9_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_9",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_9")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_10 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_10")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_10")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_10",
	title = "RNGModifier_pbr2_small_choices_street_10_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_10",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_10")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_11 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_11")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_11")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_11",
	title = "RNGModifier_pbr2_small_choices_street_11_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_11",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_11")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_12 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_12")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_12")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_12",
	title = "RNGModifier_pbr2_small_choices_street_12_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_12",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_12")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_13 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_13")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_13")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_13",
	title = "RNGModifier_pbr2_small_choices_street_13_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_13",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_13")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_14 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_14")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_14")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_14",
	title = "RNGModifier_pbr2_small_choices_street_14_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_14",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_14")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})
MenuCallbackHandler.RNGModifier_pbr2_small_choices_street_15 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_small_choices_street_15")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_small_choices_street_15")
	end
	RNGModifier:Save()
end

MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_small_choices_street_15",
	title = "RNGModifier_pbr2_small_choices_street_15_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_small_choices_street_15",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_small_choices_street_15")) == 1 and true or false,
	menu_id = small_money_menu_id_5
})

MenuCallbackHandler.RNGModifier_pbr2_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_pbr2_escape",
	title = "RNGModifier_pbr2_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pbr2_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pbr2_escape_1",
		"RNGModifier_pbr2_escape_2",
		"RNGModifier_pbr2_escape_3",
		"RNGModifier_pbr2_escape_4"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape"),
	menu_id = "RNGModifier_pbr2_Options_Menu"
})