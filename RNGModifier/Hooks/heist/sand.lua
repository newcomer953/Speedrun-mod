_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "sand"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_sand_1st_IT_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_1st_IT_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 100,
	id = "RNGModifier_sand_1st_IT_room",
	title = "RNGModifier_sand_1st_IT_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sand_1st_IT_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_1st_IT_room_1",
		"RNGModifier_sand_1st_IT_room_2"
	},
	value = RNGModifier:SafeGetData("sand", "_1st_IT_room"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99.1,
	id = "RNGModifier_sand_door",
	title = "RNGModifier_sand_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sand_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_door_1",
		"RNGModifier_sand_door_2"
	},
	value = RNGModifier:SafeGetData("sand", "_door"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_keypad_reader = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keypad_reader")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_sand_keypad_reader",
	title = "RNGModifier_sand_keypad_reader_title",
	desc = "RNGModifier_sand_keypad_reader_desc",
	callback = "RNGModifier_sand_keypad_reader",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_keypad_reader_1",
		"RNGModifier_sand_keypad_reader_2",
		"RNGModifier_sand_keypad_reader_3"
	},
	value = RNGModifier:SafeGetData("sand", "_keypad_reader"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_vlad = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vlad")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 98,
	id = "RNGModifier_sand_vlad",
	title = "RNGModifier_sand_vlad_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sand_vlad",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_vlad_1",
		"RNGModifier_sand_vlad_2",
		"RNGModifier_sand_vlad_3"
	},
	value = RNGModifier:SafeGetData("sand", "_vlad"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_container_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_container_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 97,
	id = "RNGModifier_sand_container_B",
	title = "RNGModifier_sand_container_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sand_container_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_container_B_1",
		"RNGModifier_container_B_2"
	},
	value = RNGModifier:SafeGetData("sand", "_container_B"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_blowtorch_warehouse = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blowtorch_warehouse")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 96,
	id = "RNGModifier_sand_blowtorch_warehouse",
	title = "RNGModifier_sand_blowtorch_warehouse_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sand_blowtorch_warehouse",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_blowtorch_warehouse_1",
		"RNGModifier_sand_blowtorch_warehouse_2",
		"RNGModifier_sand_blowtorch_warehouse_3"
	},
	value = RNGModifier:SafeGetData("sand", "_blowtorch_warehouse"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_blowtorch_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blowtorch_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 95,
	id = "RNGModifier_sand_blowtorch_spawn",
	title = "RNGModifier_sand_blowtorch_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sand_blowtorch_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_blowtorch_spawn_1",
		"RNGModifier_blowtorch_spawn_2",
		"RNGModifier_blowtorch_spawn_3",
		"RNGModifier_blowtorch_spawn_4"
	},
	value = RNGModifier:SafeGetData("sand", "_blowtorch_spawn"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_crane = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crane")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 94,
	id = "RNGModifier_sand_crane",
	title = "RNGModifier_sand_crane_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sand_crane",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_crane_1",
		"RNGModifier_sand_crane_2",
		"RNGModifier_sand_crane_3"
	},
	value = RNGModifier:SafeGetData("sand", "_crane"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_2nd_IT_room = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_2nd_IT_room")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 93,
	id = "RNGModifier_sand_2nd_IT_room",
	title = "RNGModifier_sand_2nd_IT_room_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_sand_2nd_IT_room",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_2nd_IT_room_1",
		"RNGModifier_sand_2nd_IT_room_2",
		"RNGModifier_sand_2nd_IT_room_3",
		"RNGModifier_sand_2nd_IT_room_4"
	},
	value = RNGModifier:SafeGetData("sand", "_2nd_IT_room"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_doc = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_doc")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 92,
	id = "RNGModifier_sand_doc",
	title = "RNGModifier_sand_doc_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sand_doc",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_doc_1",
		"RNGModifier_sand_doc_2",
		"RNGModifier_sand_doc_3",
		"RNGModifier_sand_doc_4",
		"RNGModifier_sand_doc_8",
		"RNGModifier_sand_doc_7",
		"RNGModifier_sand_doc_6",
		"RNGModifier_sand_doc_5"
	},
	value = RNGModifier:SafeGetData("sand", "_doc"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_fuel = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_fuel")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 91,
	id = "RNGModifier_sand_fuel",
	title = "RNGModifier_sand_fuel_title",
	desc = "RNGModifier_pairs_desc",
	callback = "RNGModifier_sand_fuel",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_sand_fuel_1",
		"RNGModifier_sand_fuel_2",
		"RNGModifier_sand_fuel_3"
	},
	value = RNGModifier:SafeGetData("sand", "_fuel"),
	menu_id = "RNGModifier_sand_Options_Menu"
})

MenuCallbackHandler.RNGModifier_sand_chinese_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_chinese_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_sand_chinese_code",
	title = "RNGModifier_sand_chinese_code_title",
	desc = "RNGModifier_bpairs_desc",
	callback = "RNGModifier_sand_chinese_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_0",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_3",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9"
	},
	value = RNGModifier:SafeGetData("sand", "_chinese_code"),
	menu_id = "RNGModifier_sand_Options_Menu"
})
