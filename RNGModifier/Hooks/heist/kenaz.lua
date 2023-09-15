_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "kenaz"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}


MenuCallbackHandler.RNGModifier_kenaz_archive = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_archive")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10,
	id = "RNGModifier_kenaz_archive",
	title = "RNGModifier_kenaz_archive_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_archive",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kenaz_archive_1",
		"RNGModifier_kenaz_archive_2",
		"RNGModifier_kenaz_archive_3"
	},
	value = RNGModifier:SafeGetData("kenaz", "_archive"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_blueprint = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blueprint")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_kenaz_blueprint",
	title = "RNGModifier_kenaz_blueprint_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_blueprint",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kenaz_blueprint_1",
		"RNGModifier_kenaz_blueprint_2",
		"RNGModifier_kenaz_blueprint_3",
		"RNGModifier_kenaz_blueprint_4",
		"RNGModifier_kenaz_blueprint_5",
		"RNGModifier_kenaz_blueprint_6",
		"RNGModifier_kenaz_blueprint_7",
		"RNGModifier_kenaz_blueprint_8",
		"RNGModifier_kenaz_blueprint_9",
		"RNGModifier_kenaz_blueprint_10",
		"RNGModifier_kenaz_blueprint_11",
		"RNGModifier_kenaz_blueprint_12"
		
	},
	value = RNGModifier:SafeGetData("kenaz", "_blueprint"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_computer = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_computer")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8.2,
	id = "RNGModifier_kenaz_computer",
	title = "RNGModifier_kenaz_computer_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_computer",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kenaz_computer_1",
		"RNGModifier_kenaz_computer_2",
		"RNGModifier_kenaz_computer_3",
		"RNGModifier_kenaz_computer_4"
	},
	value = RNGModifier:SafeGetData("kenaz", "_computer"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_locker_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_locker_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8.2,
	id = "RNGModifier_kenaz_locker_room",
	title = "RNGModifier_kenaz_locker_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_locker_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kenaz_locker_room_1",
		"RNGModifier_kenaz_locker_room_2",
		"RNGModifier_kenaz_locker_room_3",
		"RNGModifier_kenaz_locker_room_4",
		"RNGModifier_kenaz_locker_room_5",
		"RNGModifier_kenaz_locker_room_6"
	},
	value = RNGModifier:SafeGetData("kenaz", "_locker_room"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_bottle = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bottle")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 4,
	id = "RNGModifier_kenaz_bottle",
	title = "RNGModifier_kenaz_bottle_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_bottle",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kenaz_bottle_1",
		"RNGModifier_kenaz_bottle_2",
		"RNGModifier_kenaz_bottle_3",
		"RNGModifier_kenaz_bottle_4"
	},
	value = RNGModifier:SafeGetData("kenaz", "_bottle"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_hotel = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hotel")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 5,
	id = "RNGModifier_kenaz_hotel",
	title = "RNGModifier_kenaz_hotel_title",
	desc = "RNGModifier_kenaz_hotel_desc",
	callback = "RNGModifier_kenaz_hotel",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8"
	},
	value = RNGModifier:SafeGetData("kenaz", "_hotel"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_gambler = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gambler")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 3,
	id = "RNGModifier_kenaz_gambler",
	title = "RNGModifier_kenaz_gambler_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_gambler",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kenaz_gambler_1",
		"RNGModifier_kenaz_gambler_2"
	},
	value = RNGModifier:SafeGetData("kenaz", "_gambler"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_blue = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_kenaz_blue",
	title = "RNGModifier_kenaz_blue_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_blue",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_0",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("kenaz", "_blue"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_green = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7,
	id = "RNGModifier_kenaz_green",
	title = "RNGModifier_kenaz_green_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_green",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_0"

	},
	value = RNGModifier:SafeGetData("kenaz", "_green"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_red = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 6,
	id = "RNGModifier_kenaz_red",
	title = "RNGModifier_kenaz_red_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_red",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_0",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_2"
	},
	value = RNGModifier:SafeGetData("kenaz", "_red"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 2,
	id = "RNGModifier_kenaz_escape",
	title = "RNGModifier_kenaz_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_kenaz_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kenaz_escape_1",
		"RNGModifier_kenaz_escape_2"
	},
	value = RNGModifier:SafeGetData("kenaz", "_escape"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})

MenuCallbackHandler.RNGModifier_kenaz_bottle_location = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bottle_location")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 1,
	id = "RNGModifier_kenaz_bottle_location",
	title = "RNGModifier_kenaz_bottle_location_title",
	desc = "RNGModifier_kenaz_bottle_location_desc",
	callback = "RNGModifier_kenaz_bottle_location",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_kenaz_bottle_location_1",
		"RNGModifier_kenaz_bottle_location_2",
		"RNGModifier_kenaz_bottle_location_3",
		"RNGModifier_kenaz_bottle_location_4"
	},
	value = RNGModifier:SafeGetData("kenaz", "_bottle_location"),
	menu_id = "RNGModifier_kenaz_Options_Menu"
})


