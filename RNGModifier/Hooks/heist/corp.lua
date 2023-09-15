_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "corp"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_corp_neo_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_neo_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_neo_code",
	title = "RNGModifier_corp_neo_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_corp_neo_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_neo_code_1",
		"RNGModifier_corp_neo_code_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_neo_code"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

MenuCallbackHandler.RNGModifier_corp_correct_computer = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_correct_computer")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_correct_computer",
	title = "RNGModifier_corp_correct_computer_title",
	desc = "RNGModifier_corp_correct_computer_desc",
	callback = "RNGModifier_corp_correct_computer",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_computer_1",
		"RNGModifier_corp_computer_2",
		"RNGModifier_corp_computer_3",
		"RNGModifier_corp_computer_4",
		"RNGModifier_corp_computer_5",
		"RNGModifier_corp_computer_6",
		"RNGModifier_corp_computer_7",
		"RNGModifier_corp_computer_8",
		"RNGModifier_corp_computer_9",
		"RNGModifier_corp_computer_10",
		"RNGModifier_corp_computer_11",
		"RNGModifier_corp_computer_12",
		"RNGModifier_corp_computer_13",
		"RNGModifier_corp_computer_14",
		"RNGModifier_corp_computer_15",
		"RNGModifier_corp_computer_16",
		"RNGModifier_corp_computer_17",
		"RNGModifier_corp_computer_18",
		"RNGModifier_corp_computer_19",
		"RNGModifier_corp_computer_20",
		"RNGModifier_corp_computer_21",
		"RNGModifier_corp_computer_22",
		"RNGModifier_corp_computer_23",
		"RNGModifier_corp_computer_24"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_correct_computer"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

MenuCallbackHandler.RNGModifier_corp_doc_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_doc_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_doc_1",
	title = "RNGModifier_corp_doc_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_corp_doc_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_doc_1",
		"RNGModifier_corp_doc_2",
		"RNGModifier_corp_doc_3",
		"RNGModifier_corp_doc_4",
		"RNGModifier_corp_doc_5",
		"RNGModifier_corp_doc_6",
		"RNGModifier_corp_doc_7",
		"RNGModifier_corp_doc_8",
		"RNGModifier_corp_doc_9",
		"RNGModifier_corp_doc_10",
		"RNGModifier_corp_doc_11",
		"RNGModifier_corp_doc_12",
		"RNGModifier_corp_doc_13",
		"RNGModifier_corp_doc_14",
		"RNGModifier_corp_doc_15",
		"RNGModifier_corp_doc_16"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_doc_1"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

MenuCallbackHandler.RNGModifier_corp_doc_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_doc_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_doc_2",
	title = "RNGModifier_corp_doc_2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_corp_doc_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_doc_1",
		"RNGModifier_corp_doc_2",
		"RNGModifier_corp_doc_3",
		"RNGModifier_corp_doc_4",
		"RNGModifier_corp_doc_5",
		"RNGModifier_corp_doc_6",
		"RNGModifier_corp_doc_7",
		"RNGModifier_corp_doc_8",
		"RNGModifier_corp_doc_9",
		"RNGModifier_corp_doc_10",
		"RNGModifier_corp_doc_11",
		"RNGModifier_corp_doc_12",
		"RNGModifier_corp_doc_13",
		"RNGModifier_corp_doc_14",
		"RNGModifier_corp_doc_15",
		"RNGModifier_corp_doc_16"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_doc_2"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

MenuCallbackHandler.RNGModifier_corp_safe = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_safe")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_safe",
	title = "RNGModifier_corp_safe_title",
	desc = "RNGModifier_corp_safe_desc",
	callback = "RNGModifier_corp_safe",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_safe_1",
		"RNGModifier_corp_safe_2",
		"RNGModifier_corp_safe_3",
		"RNGModifier_corp_safe_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_safe"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

MenuCallbackHandler.RNGModifier_corp_phone = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_phone")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_phone",
	title = "RNGModifier_corp_phone_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_corp_phone",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_phone_1",
		"RNGModifier_corp_phone_2",
		"RNGModifier_corp_phone_3",
		"RNGModifier_corp_phone_4",
		"RNGModifier_corp_phone_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_phone"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

MenuCallbackHandler.RNGModifier_corp_keycard_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_keycard_1",
	title = "RNGModifier_corp_keycard_1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_corp_keycard_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_keycard_1",
		"RNGModifier_corp_keycard_2",
		"RNGModifier_corp_keycard_3",
		"RNGModifier_corp_keycard_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard_1"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

MenuCallbackHandler.RNGModifier_corp_keycard_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_keycard_2",
	title = "RNGModifier_corp_keycard_2_title",
	desc = "RNGModifier_corp_keycard_2_desc",
	callback = "RNGModifier_corp_keycard_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_keycard_1",
		"RNGModifier_corp_keycard_2",
		"RNGModifier_corp_keycard_3",
		"RNGModifier_corp_keycard_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard_2"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_corp_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_corp_keycard",
	title = "RNGModifier_corp_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_corp_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_keycard_1",
		"RNGModifier_corp_keycard_2",
		"RNGModifier_corp_keycard_3",
		"RNGModifier_corp_keycard_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_keycard"),
	menu_id = "RNGModifier_corp_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_corp_security_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_security_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_corp_security_room",
	title = "RNGModifier_corp_security_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_corp_security_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_corp_security_room_1",
		"RNGModifier_corp_security_room_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_security_room"),
	menu_id = "RNGModifier_corp_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_corp_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_corp_test",
	title = "RNGModifier_corp_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_corp_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_test"),
	menu_id = "RNGModifier_corp_Options_Menu"
})]]