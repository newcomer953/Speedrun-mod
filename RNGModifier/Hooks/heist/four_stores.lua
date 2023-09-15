_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "four_stores"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_four_stores_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_four_stores_escape",
	title = "RNGModifier_four_stores_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_four_stores_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_four_stores_escape_1",
		"RNGModifier_four_stores_escape_2"
	},
	value = RNGModifier:SafeGetData("four_stores", "_escape"),
	menu_id = "RNGModifier_four_stores_Options_Menu"
})

MenuCallbackHandler.RNGModifier_four_stores_time = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_time")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_four_stores_time",
	title = "RNGModifier_four_stores_time_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_four_stores_time",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_four_stores_time_1",
		"RNGModifier_four_stores_time_2",
		"RNGModifier_four_stores_time_3"
	},
	value = RNGModifier:SafeGetData("four_stores", "_time"),
	menu_id = "RNGModifier_four_stores_Options_Menu"
})

MenuCallbackHandler.RNGModifier_four_stores_ATM = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_ATM")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_ATM")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_four_stores_ATM",
	title = "RNGModifier_four_stores_ATM_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_four_stores_ATM",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_ATM")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})
MenuCallbackHandler.RNGModifier_four_stores_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_four_stores_spawn",
	title = "RNGModifier_four_stores_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_four_stores_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_four_stores_spawn_1",
		"RNGModifier_four_stores_spawn_2"
	},
	value = RNGModifier:SafeGetData("four_stores", "_spawn"),
	menu_id = "RNGModifier_four_stores_Options_Menu"
})

MenuCallbackHandler.RNGModifier_four_stores_time_easy = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_time_easy")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_four_stores_time_easy",
	title = "RNGModifier_four_stores_time_easy_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_four_stores_time_easy",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_four_stores_time_easy_1",
		"RNGModifier_four_stores_time_easy_2",
		"RNGModifier_four_stores_time_easy_3",
		"RNGModifier_four_stores_time_easy_4",
		"RNGModifier_four_stores_time_easy_5",
		"RNGModifier_four_stores_time_easy_6",
		"RNGModifier_four_stores_time_easy_7",
		"RNGModifier_four_stores_time_easy_8",
		"RNGModifier_four_stores_time_easy_9",
		"RNGModifier_four_stores_time_easy_10",
		"RNGModifier_four_stores_time_easy_11",
		"RNGModifier_four_stores_time_easy_12"

	},
	value = RNGModifier:SafeGetData("four_stores", "_time_easy"),
	menu_id = "RNGModifier_four_stores_Options_Menu"
})

MenuCallbackHandler.RNGModifier_four_stores_cashregister_money = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cashregister_money")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_four_stores_cashregister_money",
	title = "RNGModifier_four_stores_cashregister_money_title",
	desc = "RNGModifier_four_stores_cashregister_money_desc",
	callback = "RNGModifier_four_stores_cashregister_money",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_four_stores_cashregister_money1a",
		"RNGModifier_four_stores_cashregister_money1b",
		"RNGModifier_four_stores_cashregister_money1c",
		"RNGModifier_four_stores_cashregister_money2a",
		"RNGModifier_four_stores_cashregister_money2b",
		"RNGModifier_four_stores_cashregister_money2c",
		"RNGModifier_four_stores_cashregister_money3"

	},
	value = RNGModifier:SafeGetData("four_stores", "_cashregister_money"),
	menu_id = "RNGModifier_four_stores_Options_Menu"
})