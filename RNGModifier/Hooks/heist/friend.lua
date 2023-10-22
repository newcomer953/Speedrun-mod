_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "friend"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_friend_usb_boss = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_usb_boss")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_usb_boss",
	title = "RNGModifier_friend_usb_boss_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_friend_usb_boss",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_usb_boss_001",
		"RNGModifier_friend_usb_boss_002",
		"RNGModifier_friend_usb_boss_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_usb_boss"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_laptop_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laptop_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_laptop_location",
	title = "RNGModifier_friend_laptop_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_friend_laptop_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_laptop_location_001",
		"RNGModifier_friend_laptop_location_002"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_laptop_location"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_hackboxes_1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hackboxes_1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_hackboxes_1",
	title = "RNGModifier_friend_hackboxes_1_title",
	desc = "RNGModifier_friend_hackboxes_desc",
	callback = "RNGModifier_friend_hackboxes_1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_hackboxes_001",
		"RNGModifier_friend_hackboxes_002",
		"RNGModifier_friend_hackboxes_003",
		"RNGModifier_friend_hackboxes_004",
		"RNGModifier_friend_hackboxes_005",
		"RNGModifier_friend_hackboxes_006",
		"RNGModifier_friend_hackboxes_007",
		"RNGModifier_friend_hackboxes_008",
		"RNGModifier_friend_hackboxes_009",
		"RNGModifier_friend_hackboxes_010",
		"RNGModifier_friend_hackboxes_011",
		"RNGModifier_friend_hackboxes_012"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_hackboxes_1"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_hackboxes_2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hackboxes_2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_hackboxes_2",
	title = "RNGModifier_friend_hackboxes_2_title",
	desc = "RNGModifier_friend_hackboxes_desc",
	callback = "RNGModifier_friend_hackboxes_2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_hackboxes_001",
		"RNGModifier_friend_hackboxes_002",
		"RNGModifier_friend_hackboxes_003",
		"RNGModifier_friend_hackboxes_004",
		"RNGModifier_friend_hackboxes_005",
		"RNGModifier_friend_hackboxes_006",
		"RNGModifier_friend_hackboxes_007",
		"RNGModifier_friend_hackboxes_008",
		"RNGModifier_friend_hackboxes_009",
		"RNGModifier_friend_hackboxes_010",
		"RNGModifier_friend_hackboxes_011",
		"RNGModifier_friend_hackboxes_012"
		
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_hackboxes_2"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_hackboxes_3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hackboxes_3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_hackboxes_3",
	title = "RNGModifier_friend_hackboxes_3_title",
	desc = "RNGModifier_friend_hackboxes_desc",
	callback = "RNGModifier_friend_hackboxes_3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_hackboxes_001",
		"RNGModifier_friend_hackboxes_002",
		"RNGModifier_friend_hackboxes_003",
		"RNGModifier_friend_hackboxes_004",
		"RNGModifier_friend_hackboxes_005",
		"RNGModifier_friend_hackboxes_006",
		"RNGModifier_friend_hackboxes_007",
		"RNGModifier_friend_hackboxes_008",
		"RNGModifier_friend_hackboxes_009",
		"RNGModifier_friend_hackboxes_010",
		"RNGModifier_friend_hackboxes_011",
		"RNGModifier_friend_hackboxes_012"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_hackboxes_3"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_door",
	title = "RNGModifier_friend_door_title",
	desc = "RNGModifier_friend_door_desc",
	callback = "RNGModifier_friend_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_door_001",
		"RNGModifier_friend_door_002",
		"RNGModifier_friend_door_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_door"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_button = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_button")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_button",
	title = "RNGModifier_friend_button_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_friend_button",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_button_001",
		"RNGModifier_friend_button_002",
		"RNGModifier_friend_button_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_button"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_coke_mic = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_coke_mic")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_coke_mic")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_friend_coke_mic",
	title = "RNGModifier_friend_coke_mic_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_friend_coke_mic",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_coke_mic")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_coke = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_coke")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_coke",
	title = "RNGModifier_friend_coke_title",
	desc = "RNGModifier_friend_rightcoke_desc",
	callback = "RNGModifier_friend_coke",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_coke_001",
		"RNGModifier_friend_coke_002",
		"RNGModifier_friend_coke_003",
		"RNGModifier_friend_coke_004",
		"RNGModifier_friend_coke_005",
		"RNGModifier_friend_coke_006",
		"RNGModifier_friend_coke_007",
		"RNGModifier_friend_coke_008",
		"RNGModifier_friend_coke_009",
		"RNGModifier_friend_coke_0010",
		"RNGModifier_friend_coke_0011",
		"RNGModifier_friend_coke_0012",
		"RNGModifier_friend_coke_0013",
		"RNGModifier_friend_coke_0014",
		"RNGModifier_friend_coke_0015",
		"RNGModifier_friend_coke_0016",
		"RNGModifier_friend_coke_0017",
		"RNGModifier_friend_coke_0018",
		"RNGModifier_friend_coke_0019",
		"RNGModifier_friend_coke_0020"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_coke"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_random_phone_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_random_phone_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_random_phone_location",
	title = "RNGModifier_friend_random_phone_location_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_friend_random_phone_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_random_phone_location_001",
		"RNGModifier_friend_random_phone_location_002",
		"RNGModifier_friend_random_phone_location_003",
		"RNGModifier_friend_random_phone_location_004",
		"RNGModifier_friend_random_phone_location_005"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_random_phone_location"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

MenuCallbackHandler.RNGModifier_friend_pick_rand_escape_vehicle = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pick_rand_escape_vehicle")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_friend_pick_rand_escape_vehicle",
	title = "RNGModifier_friend_pick_rand_escape_vehicle_title",
	desc = "RNGModifier_friend_pick_rand_escape_vehicle_desc",
	callback = "RNGModifier_friend_pick_rand_escape_vehicle",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_friend_pick_rand_escape_vehicle_001",
		"RNGModifier_friend_pick_rand_escape_vehicle_002",
		"RNGModifier_friend_pick_rand_escape_vehicle_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pick_rand_escape_vehicle"),
	menu_id = "RNGModifier_friend_Options_Menu"
})

