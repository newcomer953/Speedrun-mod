_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "roberts"
local _bool = true
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_roberts_logic_chance_011 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_logic_chance_011")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_logic_chance_011")
	end
	RNGModifier:Save()
end
_bool = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_logic_chance_011")) == 1 and true or false
MenuHelper:AddToggle({
	id = "RNGModifier_roberts_logic_chance_011",
	title = "RNGModifier_roberts_logic_chance_011_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_roberts_logic_chance_011",
	value = _bool,
	menu_id = "RNGModifier_roberts_Options_Menu"
})
_bool = nil

MenuCallbackHandler.RNGModifier_roberts_logic_chance_012 = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_logic_chance_012")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_logic_chance_012")
	end
	RNGModifier:Save()
end
_bool = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_logic_chance_012")) == 1 and true or false
MenuHelper:AddToggle({
	id = "RNGModifier_roberts_logic_chance_012",
	title = "RNGModifier_roberts_logic_chance_012_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_roberts_logic_chance_012",
	value = _bool,
	menu_id = "RNGModifier_roberts_Options_Menu"
})
_bool = nil

MenuCallbackHandler.RNGModifier_roberts_rand_drop_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rand_drop_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_roberts_rand_drop_location",
	title = "RNGModifier_roberts_rand_drop_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_roberts_rand_drop_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_rand_drop_location"),
	menu_id = "RNGModifier_roberts_Options_Menu"
})

MenuCallbackHandler.RNGModifier_roberts_blackmailer = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blackmailer")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_roberts_blackmailer",
	title = "RNGModifier_roberts_blackmailer_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_roberts_blackmailer",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_blackmailer"),
	menu_id = "RNGModifier_roberts_Options_Menu"
})

MenuCallbackHandler.RNGModifier_roberts_bain_lie = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bain_lie")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_roberts_bain_lie",
	title = "RNGModifier_roberts_bain_lie_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_roberts_bain_lie",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_bain_lie"),
	menu_id = "RNGModifier_roberts_Options_Menu"
})

MenuCallbackHandler.RNGModifier_roberts_best_money = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_best_money")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 0,
	id = "RNGModifier_roberts_best_money",
	title = "RNGModifier_roberts_best_money_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_roberts_best_money",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_best_money"),
	menu_id = "RNGModifier_roberts_Options_Menu"
})

MenuCallbackHandler.RNGModifier_roberts_cop = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_cop")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_cop")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_roberts_cop",
	title = "RNGModifier_roberts_cop_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_roberts_cop",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_cop")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})