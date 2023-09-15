_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "flat"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_flat_entrance = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_entrance")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_flat_entrance",
	title = "RNGModifier_flat_entrance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_flat_entrance",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_flat_entrance_1",
		"RNGModifier_flat_entrance_2"
	},
	value = RNGModifier:SafeGetData("flat", "_entrance"),
	menu_id = "RNGModifier_flat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_flat_chavez = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_chavez")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_flat_chavez",
	title = "RNGModifier_flat_chavez_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_flat_chavez",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_flat_chavez_1",
		"RNGModifier_flat_chavez_2",
		"RNGModifier_flat_chavez_3",
		"RNGModifier_flat_chavez_4"
	},
	value = RNGModifier:SafeGetData("flat", "_chavez"),
	menu_id = "RNGModifier_flat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_flat_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_flat_door",
	title = "RNGModifier_flat_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_flat_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_flat_door_1",
		"RNGModifier_flat_door_2",
		"RNGModifier_flat_door_3"
	},
	value = RNGModifier:SafeGetData("flat", "_door"),
	menu_id = "RNGModifier_flat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_flat_sniper = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_sniper")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_flat_sniper",
	title = "RNGModifier_flat_sniper_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_flat_sniper",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_flat_sniper_1",
		"RNGModifier_flat_sniper_2",
		"RNGModifier_flat_sniper_3",
		"RNGModifier_flat_sniper_4",
		"RNGModifier_flat_sniper_5",
		"RNGModifier_flat_sniper_6",
		"RNGModifier_flat_sniper_7",
		"RNGModifier_flat_sniper_8",
		"RNGModifier_flat_sniper_9",
		"RNGModifier_flat_sniper_10",
		"RNGModifier_flat_sniper_11",
		"RNGModifier_flat_sniper_12",
		"RNGModifier_flat_sniper_13",
		"RNGModifier_flat_sniper_14",
		"RNGModifier_flat_sniper_15"
	},
	value = RNGModifier:SafeGetData("flat", "_sniper"),
	menu_id = "RNGModifier_flat_Options_Menu"
})

MenuCallbackHandler.RNGModifier_flat_no_sniper_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_sniper_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_sniper_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_flat_no_sniper_delay",
	title = "RNGModifier_flat_no_sniper_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_flat_no_sniper_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_sniper_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_flat_c4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_c4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_flat_c4",
	title = "RNGModifier_flat_c4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_flat_c4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_flat_c4_1",
		"RNGModifier_flat_c4_2"
	},
	value = RNGModifier:SafeGetData("flat", "_c4"),
	menu_id = "RNGModifier_flat_Options_Menu"
})