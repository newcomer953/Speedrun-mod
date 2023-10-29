_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "nmh"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_nmh_best_cameras = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_best_cameras")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_best_cameras")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_nmh_best_cameras",
	title = "RNGModifier_nmh_best_cameras_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nmh_best_cameras",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_best_cameras")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nmh_correct_paper = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_correct_paper")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_correct_paper")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_nmh_correct_paper",
	title = "RNGModifier_nmh_correct_paper_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nmh_correct_paper",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_correct_paper")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nmh_phone = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_phone")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_phone")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_nmh_phone",
	title = "RNGModifier_nmh_phone_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nmh_phone",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_phone")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nmh_patient = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_patient")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_nmh_patient",
	title = "RNGModifier_nmh_patient_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nmh_patient",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_nmh_patient_1",
		"RNGModifier_nmh_patient_2",
		"RNGModifier_nmh_patient_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_patient"),
	menu_id = "RNGModifier_nmh_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nmh_blood_chance = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_blood_chance")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_blood_chance")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_nmh_blood_chance",
	title = "RNGModifier_nmh_blood_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nmh_blood_chance",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_blood_chance")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nmh_box = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_box")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_box")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_nmh_box",
	title = "RNGModifier_nmh_box_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nmh_box",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_box")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nmh_nopower = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_nopower")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_nopower")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_nmh_nopower",
	title = "RNGModifier_nmh_nopower_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nmh_nopower",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_nopower")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_nmh_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_nmh_escape",
	title = "RNGModifier_nmh_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_nmh_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_nmh_escape_1",
		"RNGModifier_nmh_escape_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape"),
	menu_id = "RNGModifier_nmh_Options_Menu"
})