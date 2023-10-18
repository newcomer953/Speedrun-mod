_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "fish"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_fish_color = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_color")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 20,
	id = "RNGModifier_fish_color",
	title = "RNGModifier_fish_color_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_color",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_color_1",
		"RNGModifier_fish_color_2",
		"RNGModifier_fish_color_3",
		"RNGModifier_fish_color_4",
		"RNGModifier_fish_color_5"
	},
	value = RNGModifier:SafeGetData("fish", "_color"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_laptop1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laptop1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 19,
	id = "RNGModifier_fish_laptop1",
	title = "RNGModifier_fish_laptop1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_laptop1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_laptop1_1",
		"RNGModifier_fish_laptop1_2",
		"RNGModifier_fish_laptop1_3",
		"RNGModifier_fish_laptop1_4",
		"RNGModifier_fish_laptop1_5",
		"RNGModifier_fish_laptop1_6",
		"RNGModifier_fish_laptop1_7",
		"RNGModifier_fish_laptop1_8"
	},
	value = RNGModifier:SafeGetData("fish", "_laptop1"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_fish_laptop2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laptop2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 19,
	id = "RNGModifier_fish_laptop2",
	title = "RNGModifier_fish_laptop2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_laptop2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_laptop2_1",
		"RNGModifier_fish_laptop2_2"
	},
	value = RNGModifier:SafeGetData("fish", "_laptop2"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_laptop3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laptop3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 19,
	id = "RNGModifier_fish_laptop3",
	title = "RNGModifier_fish_laptop3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_laptop3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_laptop3_1",
		"RNGModifier_fish_laptop3_2"
	},
	value = RNGModifier:SafeGetData("fish", "_laptop3"),
	menu_id = "RNGModifier_fish_Options_Menu"
})]]


MenuCallbackHandler.RNGModifier_fish_end = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_end")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 7,
	id = "RNGModifier_fish_end",
	title = "RNGModifier_fish_end_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_end",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("fish", "_end"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_book = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_book")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 18,
	id = "RNGModifier_fish_book",
	title = "RNGModifier_fish_book_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_book",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_book_1",
		"RNGModifier_fish_book_2",
		"RNGModifier_fish_book_3",
		"RNGModifier_fish_book_4"
	},
	value = RNGModifier:SafeGetData("fish", "_book"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_book_money = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_book_money")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 18,
	id = "RNGModifier_fish_book_money",
	title = "RNGModifier_fish_book_money_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_book_money",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_book_money_1",
		"RNGModifier_fish_book_money_2",
		"RNGModifier_fish_book_money_3",
		"RNGModifier_fish_book_money_4"
	},
	value = RNGModifier:SafeGetData("fish", "_book_money"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_fish_desk = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_desk")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_fish_desk",
	title = "RNGModifier_fish_desk_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_desk",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_desk_1",
		"RNGModifier_fish_desk_2",
		"RNGModifier_fish_desk_3",
		"RNGModifier_fish_desk_4",
		"RNGModifier_fish_desk_5"
	},
	value = RNGModifier:SafeGetData("fish", "_desk"),
	menu_id = "RNGModifier_fish_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_fish_desk_blue = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_desk_blue")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_fish_desk_blue",
	title = "RNGModifier_fish_desk_blue_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_desk_blue",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_desk_blue_1",
		"RNGModifier_fish_desk_blue_2",
		"RNGModifier_fish_desk_blue_3",
		"RNGModifier_fish_desk_blue_4",
		"RNGModifier_fish_desk_blue_5"
	},
	value = RNGModifier:SafeGetData("fish", "_desk_blue"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_desk_green = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_desk_green")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_fish_desk_green",
	title = "RNGModifier_fish_desk_green_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_desk_green",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_desk_green_1",
		"RNGModifier_fish_desk_green_2",
		"RNGModifier_fish_desk_green_3",
		"RNGModifier_fish_desk_green_4",
		"RNGModifier_fish_desk_green_5"
	},
	value = RNGModifier:SafeGetData("fish", "_desk_green"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_desk_red = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_desk_red")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_fish_desk_red",
	title = "RNGModifier_fish_desk_red_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_desk_red",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_desk_red_1",
		"RNGModifier_fish_desk_red_2",
		"RNGModifier_fish_desk_red_3"
	},
	value = RNGModifier:SafeGetData("fish", "_desk_red"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_desk_white = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_desk_white")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_fish_desk_white",
	title = "RNGModifier_fish_desk_white_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_desk_white",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_desk_white_1",
		"RNGModifier_fish_desk_white_2",
		"RNGModifier_fish_desk_white_3",
		"RNGModifier_fish_desk_white_4",
		"RNGModifier_fish_desk_white_5"
	},
	value = RNGModifier:SafeGetData("fish", "_desk_white"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_desk_yellow = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_desk_yellow")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 17,
	id = "RNGModifier_fish_desk_yellow",
	title = "RNGModifier_fish_desk_yellow_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_desk_yellow",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_desk_yellow_1",
		"RNGModifier_fish_desk_yellow_2",
		"RNGModifier_fish_desk_yellow_3"
	},
	value = RNGModifier:SafeGetData("fish", "_desk_yellow"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_cigar = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_cigar")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 16,
	id = "RNGModifier_fish_cigar",
	title = "RNGModifier_fish_cigar_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_cigar",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_cigar_1",
		"RNGModifier_fish_cigar_2",
		"RNGModifier_fish_cigar_3",
		"RNGModifier_fish_cigar_4"
	},
	value = RNGModifier:SafeGetData("fish", "_cigar"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15.1,
	id = "RNGModifier_fish_room",
	title = "RNGModifier_fish_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_4",
		"RNGModifier_number_4_use_3"
	},
	value = RNGModifier:SafeGetData("fish", "_room"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_room_money = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_room_money")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 15,
	id = "RNGModifier_fish_room_money",
	title = "RNGModifier_fish_room_money_title",
	desc = "RNGModifier_fish_room_money_desc",
	callback = "RNGModifier_fish_room_money",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_room_money_1",
		"RNGModifier_fish_room_money_2",
		"RNGModifier_fish_room_money_3"
	},
	value = RNGModifier:SafeGetData("fish", "_room_money"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_fish_lifeboat = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_lifeboat")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_fish_lifeboat",
	title = "RNGModifier_fish_lifeboat_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_lifeboat",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_lifeboat_1",
		"RNGModifier_fish_lifeboat_2",
		"RNGModifier_fish_lifeboat_3",
		"RNGModifier_fish_lifeboat_4",
		"RNGModifier_fish_lifeboat_5"
	},
	value = RNGModifier:SafeGetData("fish", "_lifeboat"),
	menu_id = "RNGModifier_fish_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_fish_boat_blue = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boat_blue")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_fish_boat_blue",
	title = "RNGModifier_fish_boat_blue_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_boat_blue",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_boat_blue_1",
		"RNGModifier_fish_boat_blue_2",
		"RNGModifier_fish_boat_blue_3"
	},
	value = RNGModifier:SafeGetData("fish", "_boat_blue"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_boat_green = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boat_green")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_fish_boat_green",
	title = "RNGModifier_fish_boat_green_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_boat_green",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_boat_green_1",
		"RNGModifier_fish_boat_green_2"
	},
	value = RNGModifier:SafeGetData("fish", "_boat_green"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_boat_red = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boat_red")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_fish_boat_red",
	title = "RNGModifier_fish_boat_red_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_boat_red",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_boat_red_1",
		"RNGModifier_fish_boat_red_2"
	},
	value = RNGModifier:SafeGetData("fish", "_boat_red"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_boat_white = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boat_white")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_fish_boat_white",
	title = "RNGModifier_fish_boat_white_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_boat_white",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_boat_white_1",
		"RNGModifier_fish_boat_white_2"
	},
	value = RNGModifier:SafeGetData("fish", "_boat_white"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_boat_yellow = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_boat_yellow")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 14,
	id = "RNGModifier_fish_boat_yellow",
	title = "RNGModifier_fish_boat_yellow_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_boat_yellow",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_boat_yellow_1",
		"RNGModifier_fish_boat_yellow_2"
	},
	value = RNGModifier:SafeGetData("fish", "_boat_yellow"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_fridge = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fridge")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 13,
	id = "RNGModifier_fish_fridge",
	title = "RNGModifier_fish_fridge_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_fridge",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_fridge_1",
		"RNGModifier_fish_fridge_2",
		"RNGModifier_fish_fridge_3",
		"RNGModifier_fish_fridge_4"
	},
	value = RNGModifier:SafeGetData("fish", "_fridge"),
	menu_id = "RNGModifier_fish_Options_Menu"
})


MenuCallbackHandler.RNGModifier_fish_aqua = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_aqua")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_fish_aqua",
	title = "RNGModifier_fish_aqua_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_aqua",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_aqua_1",
		"RNGModifier_fish_aqua_2",
		"RNGModifier_fish_aqua_3"
	},
	value = RNGModifier:SafeGetData("fish", "_aqua"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_disable_money_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_disable_money_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11.3,
	id = "RNGModifier_fish_disable_money_A",
	title = "RNGModifier_fish_disable_money_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_disable_money_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_disable_money_1",
		"RNGModifier_fish_disable_money_2",
		"RNGModifier_fish_disable_money_3",
		"RNGModifier_fish_disable_money_4",
		"RNGModifier_fish_disable_money_5",
		"RNGModifier_fish_disable_money_6",
		"RNGModifier_fish_disable_money_7"
	},
	value = RNGModifier:SafeGetData("fish", "_disable_money_A"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_disable_money_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_disable_money_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11.2,
	id = "RNGModifier_fish_disable_money_B",
	title = "RNGModifier_fish_disable_money_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_disable_money_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_disable_money_1",
		"RNGModifier_fish_disable_money_2",
		"RNGModifier_fish_disable_money_3",
		"RNGModifier_fish_disable_money_4",
		"RNGModifier_fish_disable_money_5",
		"RNGModifier_fish_disable_money_6",
		"RNGModifier_fish_disable_money_7"
	},
	value = RNGModifier:SafeGetData("fish", "_disable_money_B"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_disable_money_C = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_disable_money_C")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 11.1,
	id = "RNGModifier_fish_disable_money_C",
	title = "RNGModifier_fish_disable_money_C_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_disable_money_C",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_disable_money_1",
		"RNGModifier_fish_disable_money_2",
		"RNGModifier_fish_disable_money_3",
		"RNGModifier_fish_disable_money_4",
		"RNGModifier_fish_disable_money_5",
		"RNGModifier_fish_disable_money_6",
		"RNGModifier_fish_disable_money_7"
	},
	value = RNGModifier:SafeGetData("fish", "_disable_money_C"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_fish_hide = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_hide")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 12,
	id = "RNGModifier_fish_hide",
	title = "RNGModifier_fish_hide_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_hide",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("fish", "_hide"),
	menu_id = "RNGModifier_fish_Options_Menu"
})]]



MenuCallbackHandler.RNGModifier_fish_valve1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_fish_valve1",
	title = "RNGModifier_fish_valve1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_valve1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_valve_front",
		"RNGModifier_valve_left",
		"RNGModifier_valve_back",
		"RNGModifier_valve_right"
	},
	value = RNGModifier:SafeGetData("fish", "_valve1"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_valve2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_fish_valve2",
	title = "RNGModifier_fish_valve2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_valve2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_valve_front",
		"RNGModifier_valve_left",
		"RNGModifier_valve_back",
		"RNGModifier_valve_right"
	},
	value = RNGModifier:SafeGetData("fish", "_valve2"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_valve3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_fish_valve3",
	title = "RNGModifier_fish_valve3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_valve3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_valve_back",
		"RNGModifier_valve_left",
		"RNGModifier_valve_front",
		"RNGModifier_valve_right"
	},
	value = RNGModifier:SafeGetData("fish", "_valve3"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_valve4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_valve4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 9,
	id = "RNGModifier_fish_valve4",
	title = "RNGModifier_fish_valve4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_valve4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_valve_front",
		"RNGModifier_valve_left",
		"RNGModifier_valve_back",
		"RNGModifier_valve_right"
	},
	value = RNGModifier:SafeGetData("fish", "_valve4"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_server_rack = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server_rack")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 10,
	id = "RNGModifier_fish_server_rack",
	title = "RNGModifier_fish_server_rack_title",
	desc = "RNGModifier_server_rack_desc",
	callback = "RNGModifier_fish_server_rack",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_server_rack_1",
		"RNGModifier_server_rack_2"
	},
	value = RNGModifier:SafeGetData("fish", "_server_rack"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_button1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_button1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_fish_button1",
	title = "RNGModifier_fish_button1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_button1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_button_1",
		"RNGModifier_fish_button_2",
		"RNGModifier_fish_button_3",
		"RNGModifier_fish_button_4"
	},  
	value = RNGModifier:SafeGetData("fish", "_button1"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_button2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_button2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_fish_button2",
	title = "RNGModifier_fish_button2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_button2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_button_1",
		"RNGModifier_fish_button_2",
		"RNGModifier_fish_button_3",
		"RNGModifier_fish_button_4"
	},  
	value = RNGModifier:SafeGetData("fish", "_button2"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_button3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_button3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_fish_button3",
	title = "RNGModifier_fish_button3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_button3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_button_1",
		"RNGModifier_fish_button_2",
		"RNGModifier_fish_button_3",
		"RNGModifier_fish_button_4"
	},  
	value = RNGModifier:SafeGetData("fish", "_button3"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_button4 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_button4")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 8,
	id = "RNGModifier_fish_button4",
	title = "RNGModifier_fish_button4_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_button4",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_button_1",
		"RNGModifier_fish_button_2",
		"RNGModifier_fish_button_3",
		"RNGModifier_fish_button_4"
	},  
	value = RNGModifier:SafeGetData("fish", "_button4"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_server1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -1,
	id = "RNGModifier_fish_server1",
	title = "RNGModifier_fish_server1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_server1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_server_1",
		"RNGModifier_fish_server_2",
		"RNGModifier_fish_server_3",
		"RNGModifier_fish_server_4"
	},  
	value = RNGModifier:SafeGetData("fish", "_server1"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_server2 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server2")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -2,
	id = "RNGModifier_fish_server2",
	title = "RNGModifier_fish_server2_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_server2",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_server_1",
		"RNGModifier_fish_server_2",
		"RNGModifier_fish_server_3",
		"RNGModifier_fish_server_4"
	},  
	value = RNGModifier:SafeGetData("fish", "_server2"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

MenuCallbackHandler.RNGModifier_fish_server3 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server3")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = -3,
	id = "RNGModifier_fish_server3",
	title = "RNGModifier_fish_server3_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_server3",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_fish_server_1",
		"RNGModifier_fish_server_2",
		"RNGModifier_fish_server_3",
		"RNGModifier_fish_server_4"
	},  
	value = RNGModifier:SafeGetData("fish", "_server3"),
	menu_id = "RNGModifier_fish_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_fish_test = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_fish_test",
	title = "RNGModifier_fish_test_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_test",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData("fish", "_test"),
	menu_id = "RNGModifier_fish_Options_Menu"
})]]

--[[MenuCallbackHandler.RNGModifier_fish_test1 = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_test1")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_fish_test1",
	title = "RNGModifier_fish_test1_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_fish_test1",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1"
	},
	value = RNGModifier:SafeGetData("fish", "_test1"),
	menu_id = "RNGModifier_fish_Options_Menu"
})]]