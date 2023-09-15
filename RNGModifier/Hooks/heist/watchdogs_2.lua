_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "watchdogs_2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_watchdogs_2_gate = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_gate")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_gate")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_watchdogs_2_gate",
	title = "RNGModifier_watchdogs_2_gate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_watchdogs_2_gate",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_gate")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_watchdogs_2_boat = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boat")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_watchdogs_2_boat",
	title = "RNGModifier_watchdogs_2_boat_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_watchdogs_2_boat",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_watchdogs_2_boat_001",
		"RNGModifier_watchdogs_2_boat_002",
		"RNGModifier_watchdogs_2_boat_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_boat"),
	menu_id = "RNGModifier_watchdogs_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_watchdogs_2_delay = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_delay")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_delay")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_watchdogs_2_delay",
	title = "RNGModifier_watchdogs_2_delay_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_watchdogs_2_delay",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_delay")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_watchdogs_2_heli = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_heli")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_heli")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_watchdogs_2_heli",
	title = "RNGModifier_watchdogs_2_heli_title",
	desc = "RNGModifier_watchdogs_2_heli_desc",
	callback = "RNGModifier_watchdogs_2_heli",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_heli")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})