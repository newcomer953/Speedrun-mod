_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "rvd2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_rvd2_hack = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hack")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_rvd2_hack",
	title = "RNGModifier_rvd2_hack_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rvd2_hack",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_rvd2_hack_1",
		"RNGModifier_rvd2_hack_2"
	},
	value = RNGModifier:SafeGetData("rvd2", "_hack"),
	menu_id = "RNGModifier_rvd2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rvd2_vehicle = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vehicle")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_rvd2_vehicle",
	title = "RNGModifier_rvd2_vehicle_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rvd2_vehicle",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_rvd2_vehicle_1",
		"RNGModifier_rvd2_vehicle_2"
	},
	value = RNGModifier:SafeGetData("rvd2", "_vehicle"),
	menu_id = "RNGModifier_rvd2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_rvd2_vault_event = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_vault_event")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_vault_event")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_rvd2_vault_event",
	title = "RNGModifier_rvd2_vault_event_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_rvd2_vault_event",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_vault_event")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})