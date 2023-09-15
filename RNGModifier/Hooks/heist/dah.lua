_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "dah"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_dah_randomize_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_randomize_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	priority = GetPriority(),
	id = "RNGModifier_dah_randomize_spawn",
	title = "RNGModifier_dah_randomize_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_randomize_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_randomize_spawn_1",
		"RNGModifier_dah_randomize_spawn_2",
		"RNGModifier_dah_randomize_spawn_3"
	},
	value = RNGModifier:SafeGetData("dah", "_randomize_spawn"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_rnd_Security_Rooms = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_rnd_Security_Rooms")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dah_rnd_Security_Rooms",
	title = "RNGModifier_dah_rnd_Security_Rooms_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_rnd_Security_Rooms",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_rnd_Security_Rooms_1",
		"RNGModifier_dah_rnd_Security_Rooms_2",
		"RNGModifier_dah_rnd_Security_Rooms_3",
		"RNGModifier_dah_rnd_Security_Rooms_4",
		"RNGModifier_dah_rnd_Security_Rooms_5"
	},
	value = RNGModifier:SafeGetData("dah", "_rnd_Security_Rooms"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_Randomize_Hackboxes = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_Randomize_Hackboxes")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dah_Randomize_Hackboxes",
	title = "RNGModifier_dah_Randomize_Hackboxes_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_Randomize_Hackboxes",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_Randomize_Hackboxes_1",
		"RNGModifier_dah_Randomize_Hackboxes_2",
		"RNGModifier_dah_Randomize_Hackboxes_3",
		"RNGModifier_dah_Randomize_Hackboxes_4",
		"RNGModifier_dah_Randomize_Hackboxes_5",
		"RNGModifier_dah_Randomize_Hackboxes_6",
		"RNGModifier_dah_Randomize_Hackboxes_7",
		"RNGModifier_dah_Randomize_Hackboxes_8",
		"RNGModifier_dah_Randomize_Hackboxes_9"
	},
	value = RNGModifier:SafeGetData("dah", "_Randomize_Hackboxes"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_heli_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_heli_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dah_heli_escape",
	title = "RNGModifier_dah_heli_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_heli_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_heli_escape_1",
		"RNGModifier_dah_heli_escape_2"
	},
	value = RNGModifier:SafeGetData("dah", "_heli_escape"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_kc_civ = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_kc_civ")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dah_kc_civ",
	title = "RNGModifier_dah_kc_civ_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_kc_civ",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_kc_civ_1",
		"RNGModifier_dah_kc_civ_2",
		"RNGModifier_dah_kc_civ_3",
		"RNGModifier_dah_kc_civ_4",
		"RNGModifier_dah_kc_civ_5",
		"RNGModifier_dah_kc_civ_6",
		"RNGModifier_dah_kc_civ_7"
	},
	value = RNGModifier:SafeGetData("dah", "_kc_civ"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_red_laptop = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_red_laptop")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dah_red_laptop",
	title = "RNGModifier_dah_red_laptop_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_red_laptop",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_laptop_1",
		"RNGModifier_dah_laptop_2",
		"RNGModifier_dah_laptop_3",
		"RNGModifier_dah_laptop_4",
		"RNGModifier_dah_laptop_5",
		"RNGModifier_dah_laptop_6",
		"RNGModifier_dah_laptop_7",
		"RNGModifier_dah_laptop_8"
	},
	value = RNGModifier:SafeGetData("dah", "_red_laptop"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_blue_laptop = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_blue_laptop")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dah_blue_laptop",
	title = "RNGModifier_dah_blue_laptop_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_blue_laptop",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_laptop_1",
		"RNGModifier_dah_laptop_2",
		"RNGModifier_dah_laptop_3",
		"RNGModifier_dah_laptop_4",
		"RNGModifier_dah_laptop_5",
		"RNGModifier_dah_laptop_6",
		"RNGModifier_dah_laptop_7",
		"RNGModifier_dah_laptop_8"
	},
	value = RNGModifier:SafeGetData("dah", "_blue_laptop"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_green_laptop = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_green_laptop")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dah_green_laptop",
	title = "RNGModifier_dah_green_laptop_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_green_laptop",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_laptop_1",
		"RNGModifier_dah_laptop_2",
		"RNGModifier_dah_laptop_3",
		"RNGModifier_dah_laptop_4",
		"RNGModifier_dah_laptop_5",
		"RNGModifier_dah_laptop_6",
		"RNGModifier_dah_laptop_7",
		"RNGModifier_dah_laptop_8"
	},
	value = RNGModifier:SafeGetData("dah", "_green_laptop"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_laptop_code = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_laptop_code")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_dah_laptop_code",
	title = "RNGModifier_dah_laptop_code_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_dah_laptop_code",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_dah_laptop_code_1",
		"RNGModifier_dah_laptop_code_2"
	},
	value = RNGModifier:SafeGetData("dah", "_laptop_code"),
	menu_id = "RNGModifier_dah_Options_Menu"
})

MenuCallbackHandler.RNGModifier_dah_red_diamond_success = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_red_diamond_success")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_red_diamond_success")
	end
	RNGModifier:Save()
end
_bool = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_red_diamond_success")) == 1 and true or false
MenuHelper:AddToggle({
	id = "RNGModifier_dah_red_diamond_success",
	title = "RNGModifier_dah_red_diamond_success_title",
	desc = "RNGModifier_dah_red_diamond_success_desc",
	callback = "RNGModifier_dah_red_diamond_success",
	value = _bool,
	menu_id = "RNGModifier_dah_Options_Menu"
})
_bool = nil