_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "chew"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_chew_random_flatbed = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_flatbed")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_chew_random_flatbed",
	title = "RNGModifier_chew_random_flatbed_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chew_random_flatbed",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"		
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_flatbed"),
	menu_id = "RNGModifier_chew_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chew_random_gondola = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_gondola")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_chew_random_gondola",
	title = "RNGModifier_chew_random_gondola_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chew_random_gondola",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"		
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_gondola"),
	menu_id = "RNGModifier_chew_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chew_random_tanker = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_tanker")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_chew_random_tanker",
	title = "RNGModifier_chew_random_tanker_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chew_random_tanker",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"		
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_tanker"),
	menu_id = "RNGModifier_chew_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chew_random_boxcar = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_boxcar")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_chew_random_boxcar",
	title = "RNGModifier_chew_random_boxcar_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chew_random_boxcar",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6"		
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_boxcar"),
	menu_id = "RNGModifier_chew_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_chew_random_last = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_last")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_chew_random_last",
	title = "RNGModifier_chew_random_last_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chew_random_last",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5"		
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_last"),
	menu_id = "RNGModifier_chew_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_chew_random_last_set = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_last_set")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_chew_random_last_set",
	title = "RNGModifier_chew_random_last_set_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chew_random_last_set",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chew_random_last_set_1",
		"RNGModifier_chew_random_last_set_2",
		"RNGModifier_chew_random_last_set_3",
		"RNGModifier_chew_random_last_set_4"		
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_last_set"),
	menu_id = "RNGModifier_chew_Options_Menu"
})

MenuCallbackHandler.RNGModifier_chew_boxcar_blocker = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boxcar_blocker")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_chew_boxcar_blocker",
	title = "RNGModifier_chew_boxcar_blocker_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_chew_boxcar_blocker",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_chew_boxcar_blocker_1",
		"RNGModifier_chew_boxcar_blocker_2"		
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_boxcar_blocker"),
	menu_id = "RNGModifier_chew_Options_Menu"
})