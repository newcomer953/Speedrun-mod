_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "pal"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_pal_boobytrap_chance = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boobytrap_chance")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pal_boobytrap_chance",
	title = "RNGModifier_pal_boobytrap_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_boobytrap_chance",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("pal", "_boobytrap_chance"),
	menu_id = "RNGModifier_pal_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pal_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pal_spawn",
	title = "RNGModifier_pal_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pal_spawn_1",
		"RNGModifier_pal_spawn_2",
		"RNGModifier_pal_spawn_3",
		"RNGModifier_pal_spawn_4"
	},
	value = RNGModifier:SafeGetData("pal", "_spawn"),
	menu_id = "RNGModifier_pal_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pal_hoe = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hoe")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pal_hoe",
	title = "RNGModifier_pal_hoe_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_hoe",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pal_hoe_1",
		"RNGModifier_pal_hoe_2",
		"RNGModifier_pal_hoe_3",
		"RNGModifier_pal_hoe_4"
	},
	value = RNGModifier:SafeGetData("pal", "_hoe"),
	menu_id = "RNGModifier_pal_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pal_crowbar_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pal_crowbar_A",
	title = "RNGModifier_pal_crowbar_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_crowbar_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pal_crowbar_1",
		"RNGModifier_pal_crowbar_2",
		"RNGModifier_pal_crowbar_3",
		"RNGModifier_pal_crowbar_4",
		"RNGModifier_pal_crowbar_5",
		"RNGModifier_pal_crowbar_6",
		"RNGModifier_pal_crowbar_7",
		"RNGModifier_pal_crowbar_8"
	},
	value = RNGModifier:SafeGetData("pal", "_crowbar_A"),
	menu_id = "RNGModifier_pal_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pal_crowbar_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pal_crowbar_B",
	title = "RNGModifier_pal_crowbar_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_crowbar_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pal_crowbar_1",
		"RNGModifier_pal_crowbar_2",
		"RNGModifier_pal_crowbar_3",
		"RNGModifier_pal_crowbar_4",
		"RNGModifier_pal_crowbar_5",
		"RNGModifier_pal_crowbar_6",
		"RNGModifier_pal_crowbar_7",
		"RNGModifier_pal_crowbar_8"
	},
	value = RNGModifier:SafeGetData("pal", "_crowbar_B"),
	menu_id = "RNGModifier_pal_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pal_crowbar_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pal_crowbar_C",
	title = "RNGModifier_pal_crowbar_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_crowbar_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pal_crowbar_1",
		"RNGModifier_pal_crowbar_2",
		"RNGModifier_pal_crowbar_3",
		"RNGModifier_pal_crowbar_4",
		"RNGModifier_pal_crowbar_5",
		"RNGModifier_pal_crowbar_6",
		"RNGModifier_pal_crowbar_7",
		"RNGModifier_pal_crowbar_8"
	},
	value = RNGModifier:SafeGetData("pal", "_crowbar_C"),
	menu_id = "RNGModifier_pal_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pal_valve = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pal_valve",
	title = "RNGModifier_pal_valve_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_valve",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pal_valve_1",
		"RNGModifier_pal_valve_2",
		"RNGModifier_pal_valve_3"
	},
	value = RNGModifier:SafeGetData("pal", "_valve"),
	menu_id = "RNGModifier_pal_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pal_manhole = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_manhole")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_pal_manhole",
	title = "RNGModifier_pal_manhole_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_manhole",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_pal_manhole_1",
		"RNGModifier_pal_manhole_2"
	},
	value = RNGModifier:SafeGetData("pal", "_manhole"),
	menu_id = "RNGModifier_pal_Options_Menu"
})

MenuCallbackHandler.RNGModifier_pal_open_door = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_open_door")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_open_door")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_pal_open_door",
	title = "RNGModifier_pal_open_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_pal_open_door",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_open_door")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})