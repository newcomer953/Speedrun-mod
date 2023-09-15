_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "ukrainian_job"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_ukrainian_job_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 1,
	id = "RNGModifier_ukrainian_job_escape",
	title = "RNGModifier_ukrainian_job_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_ukrainian_job_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_ukrainian_job_escape_1",
		"RNGModifier_ukrainian_job_escape_2",
		"RNGModifier_ukrainian_job_escape_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape"),
	menu_id = "RNGModifier_ukrainian_job_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ukrainian_job_tiara = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_tiara")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 3,
	id = "RNGModifier_ukrainian_job_tiara",
	title = "RNGModifier_ukrainian_job_tiara_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_ukrainian_job_tiara",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_direction_1",
		"RNGModifier_direction_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_tiara"),
	menu_id = "RNGModifier_ukrainian_job_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ukrainian_job_escape_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_escape_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_escape_chance")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_ukrainian_job_escape_chance",
	title = "RNGModifier_ukrainian_job_escape_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_ukrainian_job_escape_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_escape_chance")) == 1 and true or false,
	menu_id = "RNGModifier_ukrainian_job_Options_Menu"
})

MenuCallbackHandler.RNGModifier_ukrainian_job_event_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_event_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_event_chance")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_ukrainian_job_event_chance",
	title = "RNGModifier_ukrainian_job_event_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_ukrainian_job_event_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_event_chance")) == 1 and true or false,
	menu_id = "RNGModifier_ukrainian_job_Options_Menu"
})