_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "bph"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_bph_thermite = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_thermite")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_bph_thermite",
	title = "RNGModifier_bph_thermite_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_bph_thermite",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bph_thermite_1",
		"RNGModifier_bph_thermite_2",
		"RNGModifier_bph_thermite_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_thermite"),
	menu_id = "RNGModifier_bph_Options_Menu"
})

MenuCallbackHandler.RNGModifier_bph_bain = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bain")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_bph_bain",
	title = "RNGModifier_bph_bain_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_bph_bain",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bph_bain_1",
		"RNGModifier_bph_bain_2",
		"RNGModifier_bph_bain_3",
		"RNGModifier_bph_bain_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_bain"),
	menu_id = "RNGModifier_bph_Options_Menu"
})

MenuCallbackHandler.RNGModifier_bph_l_or_c = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_l_or_c")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_bph_l_or_c",
	title = "RNGModifier_bph_l_or_c_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_bph_l_or_c",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bph_l_or_c_1",
		"RNGModifier_bph_l_or_c_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_l_or_c"),
	menu_id = "RNGModifier_bph_Options_Menu"
})

MenuCallbackHandler.RNGModifier_bph_hackbox = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hackbox")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_bph_hackbox",
	title = "RNGModifier_bph_hackbox_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_bph_hackbox",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bph_hackbox_1",
		"RNGModifier_bph_hackbox_2",
		"RNGModifier_bph_hackbox_3",
		"RNGModifier_bph_hackbox_4",
		"RNGModifier_bph_hackbox_5",
		"RNGModifier_bph_hackbox_6",
		"RNGModifier_bph_hackbox_7"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_hackbox"),
	menu_id = "RNGModifier_bph_Options_Menu"
})

