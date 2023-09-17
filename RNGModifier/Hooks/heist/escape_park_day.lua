_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "escape_park_day"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_escape_park_day_esc = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_esc")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_escape_park_day_esc",
	title = "RNGModifier_escape_park_day_esc_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_escape_park_day_esc",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_escape_park_esc_1",
		"RNGModifier_escape_park_esc_2",
		"RNGModifier_escape_park_esc_3",
		"RNGModifier_escape_park_esc_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_esc"),
	menu_id = "RNGModifier_escape_park_day_Options_Menu"
})

MenuCallbackHandler.RNGModifier_escape_park_day_wait_time = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_wait_time")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_wait_time")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_escape_park_day_wait_time",
	title = "RNGModifier_escape_park_day_wait_time_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_escape_park_day_wait_time",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_wait_time")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_escape_park_day_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_escape_park_day_spawn",
	title = "RNGModifier_escape_park_day_spawn_title",
	desc = "RNGModifier_escape_spawn_desc",
	callback = "RNGModifier_escape_park_day_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn"),
	menu_id = "RNGModifier_escape_park_day_Options_Menu"
})