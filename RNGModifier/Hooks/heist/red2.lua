_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "red2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_red2_keycard = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_keycard")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_keycard",
	title = "RNGModifier_red2_keycard_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_keycard",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_red2_keycard_1",
		"RNGModifier_red2_keycard_2",
		"RNGModifier_red2_keycard_3",
		"RNGModifier_red2_keycard_4",
		"RNGModifier_red2_keycard_5"
	},
	value = RNGModifier:SafeGetData("red2", "_keycard"),
	menu_id = "RNGModifier_red2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_red2_computer = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_computer")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_computer",
	title = "RNGModifier_red2_computer_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_computer",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_red2_computer_1",
		"RNGModifier_red2_computer_2",
		"RNGModifier_red2_computer_3",
		"RNGModifier_red2_computer_4"
	},
	value = RNGModifier:SafeGetData("red2", "_computer"),
	menu_id = "RNGModifier_red2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_red2_server = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_server",
	title = "RNGModifier_red2_server_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_server",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_red2_server_1",
		"RNGModifier_red2_server_2"
	},
	value = RNGModifier:SafeGetData("red2", "_server"),
	menu_id = "RNGModifier_red2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_red2_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_spawn",
	title = "RNGModifier_red2_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_red2_spawn_1",
		"RNGModifier_red2_spawn_2"
	},
	value = RNGModifier:SafeGetData("red2", "_spawn"),
	menu_id = "RNGModifier_red2_Options_Menu"
})



MenuCallbackHandler.RNGModifier_red2_gate = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_gate")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_gate",
	title = "RNGModifier_red2_gate_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_gate",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_red2_gate_1",
		"RNGModifier_red2_gate_2"
	},
	value = RNGModifier:SafeGetData("red2", "_gate"),
	menu_id = "RNGModifier_red2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_red2_box_A = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_A")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_box_A",
	title = "RNGModifier_red2_box_A_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_box_A",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_red2_box_A_1",
		"RNGModifier_red2_box_A_2",
		"RNGModifier_red2_box_A_3",
		"RNGModifier_red2_box_A_4",
		"RNGModifier_red2_box_A_5",
		"RNGModifier_red2_box_A_6",
		"RNGModifier_red2_box_A_7",
		"RNGModifier_red2_box_A_8"
		
	},
	value = RNGModifier:SafeGetData("red2", "_box_A"),
	menu_id = "RNGModifier_red2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_red2_box_B = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_box_B")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_box_B",
	title = "RNGModifier_red2_box_B_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_box_B",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_red2_box_B_1",
		"RNGModifier_red2_box_B_2",
		"RNGModifier_red2_box_B_3",
		"RNGModifier_red2_box_B_4",
		"RNGModifier_red2_box_B_5",
		"RNGModifier_red2_box_B_6",
		"RNGModifier_red2_box_B_7",
		"RNGModifier_red2_box_B_8"
		
	},
	value = RNGModifier:SafeGetData("red2", "_box_B"),
	menu_id = "RNGModifier_red2_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_red2_chance_correct_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_chance_correct_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_chance_correct_code",
	title = "RNGModifier_red2_chance_correct_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_chance_correct_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
		
	},
	value = RNGModifier:SafeGetData("red2", "_chance_correct_code"),
	menu_id = "RNGModifier_red2_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_red2_chance_correct_code = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_chance_correct_code")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_chance_correct_code")
	end
	RNGModifier:Save()
end
_bool = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_chance_correct_code")) == 1 and true or false
MenuHelper:AddToggle({
	id = "RNGModifier_red2_chance_correct_code",
	title = "RNGModifier_red2_chance_correct_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_chance_correct_code",
	value = _bool,
	menu_id = "RNGModifier_red2_Options_Menu"
})
_bool = nil

MenuCallbackHandler.RNGModifier_red2_bo = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_bo")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_red2_bo",
	title = "RNGModifier_red2_bo_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_red2_bo",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_red2_bo_1",
		"RNGModifier_red2_bo_2",
		"RNGModifier_red2_bo_3",
		"RNGModifier_red2_bo_4",
		"RNGModifier_red2_bo_5",
		"RNGModifier_red2_bo_6",
		"RNGModifier_red2_bo_7",
		"RNGModifier_red2_bo_8"
		
	},
	value = RNGModifier:SafeGetData("red2", "_bo"),
	menu_id = "RNGModifier_red2_Options_Menu"
})