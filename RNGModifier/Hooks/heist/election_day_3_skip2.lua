_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "election_day_3_skip2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_election_day_3_skip2_spawn = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_spawn")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_election_day_3_skip2_spawn",
	title = "RNGModifier_election_day_3_skip2_spawn_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_election_day_3_skip2_spawn",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_election_day_3_skip2_spawn_1",
		"RNGModifier_election_day_3_skip2_spawn_2",
		"RNGModifier_election_day_3_skip2_spawn_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_spawn"),
	menu_id = "RNGModifier_election_day_3_skip2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_election_day_3_skip2_door = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_door")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_election_day_3_skip2_door",
	title = "RNGModifier_election_day_3_skip2_door_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_election_day_3_skip2_door",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_election_day_3_skip2_door_1",
		"RNGModifier_election_day_3_skip2_door_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_door"),
	menu_id = "RNGModifier_election_day_3_skip2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_election_day_3_skip2_pc = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pc")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_election_day_3_skip2_pc",
	title = "RNGModifier_election_day_3_skip2_pc_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_election_day_3_skip2_pc",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_election_day_3_skip2_pc_1",
		"RNGModifier_election_day_3_skip2_pc_2",
		"RNGModifier_election_day_3_skip2_pc_3",
		"RNGModifier_election_day_3_skip2_pc_4",
		"RNGModifier_election_day_3_skip2_pc_5"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pc"),
	menu_id = "RNGModifier_election_day_3_skip2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_election_day_3_skip2_chance_of_crash = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_chance_of_crash")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_chance_of_crash")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_election_day_3_skip2_chance_of_crash",
	title = "RNGModifier_election_day_3_skip2_chance_of_crash_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_election_day_3_skip2_chance_of_crash",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_chance_of_crash")) == 1 and true or false,
	menu_id = "RNGModifier_election_day_3_skip2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_election_day_3_skip2_vault_chance = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_vault_chance")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_election_day_3_skip2_vault_chance",
	title = "RNGModifier_election_day_3_skip2_vault_chance_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_election_day_3_skip2_vault_chance",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_election_day_3_skip2_vault_chance_1",
		"RNGModifier_election_day_3_skip2_vault_chance_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_vault_chance"),
	menu_id = "RNGModifier_election_day_3_skip2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_election_day_3_skip2_elevator = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_elevator")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_elevator")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_election_day_3_skip2_elevator",
	title = "RNGModifier_election_day_3_skip2_elevator_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_election_day_3_skip2_elevator",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_elevator")) == 1 and true or false,
	menu_id = "RNGModifier_election_day_3_skip2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_election_day_3_skip2_van = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_van")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_election_day_3_skip2_van",
	title = "RNGModifier_election_day_3_skip2_van_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_election_day_3_skip2_van",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_election_day_3_skip2_van_1",
		"RNGModifier_election_day_3_skip2_van_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_van"),
	menu_id = "RNGModifier_election_day_3_skip2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_election_day_3_skip2_murphys_law = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_murphys_law")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_murphys_law")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_election_day_3_skip2_murphys_law",
	title = "RNGModifier_election_day_3_skip2_murphys_law_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_election_day_3_skip2_murphys_law",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_murphys_law")) == 1 and true or false,
	menu_id = "RNGModifier_election_day_3_skip2_Options_Menu"
})