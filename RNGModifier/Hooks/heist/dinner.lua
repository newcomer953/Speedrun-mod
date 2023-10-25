_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "dinner"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_dinner_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_keycard",
	title = "RNGModifier_dinner_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_keycard_1",
		"RNGModifier_dinner_keycard_2",
		"RNGModifier_dinner_keycard_3",
		"RNGModifier_dinner_keycard_4",
		"RNGModifier_dinner_keycard_5",
		"RNGModifier_dinner_keycard_6",
		"RNGModifier_dinner_keycard_7",
		"RNGModifier_dinner_keycard_8"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_gascan_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_gascan_1",
	title = "RNGModifier_dinner_gascan_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_gascan_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_gascan_1",
		"RNGModifier_dinner_gascan_2",
		"RNGModifier_dinner_gascan_3",
		"RNGModifier_dinner_gascan_4",
		"RNGModifier_dinner_gascan_5",
		"RNGModifier_dinner_gascan_6",
		"RNGModifier_dinner_gascan_7",
		"RNGModifier_dinner_gascan_8"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gascan_1"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_gascan_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_gascan_2",
	title = "RNGModifier_dinner_gascan_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_gascan_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_gascan_1",
		"RNGModifier_dinner_gascan_2",
		"RNGModifier_dinner_gascan_3",
		"RNGModifier_dinner_gascan_4",
		"RNGModifier_dinner_gascan_5",
		"RNGModifier_dinner_gascan_6",
		"RNGModifier_dinner_gascan_7",
		"RNGModifier_dinner_gascan_8"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gascan_2"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_gascan_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_gascan_3",
	title = "RNGModifier_dinner_gascan_3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_gascan_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_gascan_1",
		"RNGModifier_dinner_gascan_2",
		"RNGModifier_dinner_gascan_3",
		"RNGModifier_dinner_gascan_4",
		"RNGModifier_dinner_gascan_5",
		"RNGModifier_dinner_gascan_6",
		"RNGModifier_dinner_gascan_7",
		"RNGModifier_dinner_gascan_8"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gascan_3"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_gascan_4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gascan_4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_gascan_4",
	title = "RNGModifier_dinner_gascan_4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_gascan_4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_gascan_1",
		"RNGModifier_dinner_gascan_2",
		"RNGModifier_dinner_gascan_3",
		"RNGModifier_dinner_gascan_4",
		"RNGModifier_dinner_gascan_5",
		"RNGModifier_dinner_gascan_6",
		"RNGModifier_dinner_gascan_7",
		"RNGModifier_dinner_gascan_8"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_gascan_4"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape",
	title = "RNGModifier_dinner_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape_1",
		"RNGModifier_dinner_escape_2",
		"RNGModifier_dinner_escape_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_dinner_escape001 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape001")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape001",
	title = "RNGModifier_dinner_escape001_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape001",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape001_1",
		"RNGModifier_dinner_escape001_2",
		"RNGModifier_dinner_escape001_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape001"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape001_path1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape001_path1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape001_path1",
	title = "RNGModifier_dinner_escape001_path1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape001_path1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape001_path1_1",
		"RNGModifier_dinner_escape001_path1_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape001_path1"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape001_path2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape001_path2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape001_path2",
	title = "RNGModifier_dinner_escape001_path2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape001_path2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape001_path2_1",
		"RNGModifier_dinner_escape001_path2_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape001_path2"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape001_path3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape001_path3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape001_path3",
	title = "RNGModifier_dinner_escape001_path3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape001_path3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape001_path3_1",
		"RNGModifier_dinner_escape001_path3_2",
		"RNGModifier_dinner_escape001_path3_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape001_path3"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_dinner_escape003 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape003")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape003",
	title = "RNGModifier_dinner_escape003_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape003",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape003_1",
		"RNGModifier_dinner_escape003_2",
		"RNGModifier_dinner_escape003_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape003"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape003_path1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape003_path1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape003_path1",
	title = "RNGModifier_dinner_escape003_path1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape003_path1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape003_path1_1",
		"RNGModifier_dinner_escape003_path1_2",
		"RNGModifier_dinner_escape003_path1_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape003_path1"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape003_path2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape003_path2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape003_path2",
	title = "RNGModifier_dinner_escape003_path2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape003_path2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape003_path2_1",
		"RNGModifier_dinner_escape003_path2_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape003_path2"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape003_path3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape003_path3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape003_path3",
	title = "RNGModifier_dinner_escape003_path3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape003_path3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape003_path3_1",
		"RNGModifier_dinner_escape003_path3_2",
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape003_path3"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_dinner_escape002 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape002")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape002",
	title = "RNGModifier_dinner_escape002_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape002",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape002_1",
		"RNGModifier_dinner_escape002_2",
		"RNGModifier_dinner_escape002_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape002"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape002_path1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape002_path1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape002_path1",
	title = "RNGModifier_dinner_escape002_path1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape002_path1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape002_path1_1",
		"RNGModifier_dinner_escape002_path1_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape002_path1"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape002_path2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape002_path2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape002_path2",
	title = "RNGModifier_dinner_escape002_path2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape002_path2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape002_path2_1",
		"RNGModifier_dinner_escape002_path2_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape002_path2"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dinner_escape002_path3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape002_path3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dinner_escape002_path3",
	title = "RNGModifier_dinner_escape002_path3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dinner_escape002_path3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dinner_escape002_path3_1",
		"RNGModifier_dinner_escape002_path3_2",
		"RNGModifier_dinner_escape002_path3_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_escape002_path3"),
	menu_id = "RNGModifier_dinner_Options_Menu"
})]]

