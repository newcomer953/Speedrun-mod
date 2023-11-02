_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "welcome_to_the_jungle_2"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_welcome_to_the_jungle_2_server = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_server")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_welcome_to_the_jungle_2_server",
	title = "RNGModifier_welcome_to_the_jungle_2_server_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_welcome_to_the_jungle_2_server",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_welcome_to_the_jungle_2_server_001",
		"RNGModifier_welcome_to_the_jungle_2_server_002",
		"RNGModifier_welcome_to_the_jungle_2_server_003"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_server"),
	menu_id = "RNGModifier_welcome_to_the_jungle_2_Options_Menu"
})
MenuCallbackHandler.RNGModifier_welcome_to_the_jungle_2_plane = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_plane")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_welcome_to_the_jungle_2_plane",
	title = "RNGModifier_welcome_to_the_jungle_2_plane_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_welcome_to_the_jungle_2_plane",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_welcome_to_the_jungle_2_plane_1",
		"RNGModifier_welcome_to_the_jungle_2_plane_2",
		"RNGModifier_welcome_to_the_jungle_2_plane_3"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_plane"),
	menu_id = "RNGModifier_welcome_to_the_jungle_2_Options_Menu"
})


MenuCallbackHandler.RNGModifier_welcome_to_the_jungle_2_engine = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_engine")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_welcome_to_the_jungle_2_engine",
	title = "RNGModifier_welcome_to_the_jungle_2_engine_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_welcome_to_the_jungle_2_engine",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_number_4_use_1",
		"RNGModifier_number_4_use_2",
		"RNGModifier_number_4_use_5",
		"RNGModifier_number_4_use_6",
		"RNGModifier_number_4_use_7",
		"RNGModifier_number_4_use_8",
		"RNGModifier_number_4_use_9",
		"RNGModifier_number_4_use_11",
		"RNGModifier_number_4_use_12"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_engine"),
	menu_id = "RNGModifier_welcome_to_the_jungle_2_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_welcome_to_the_jungle_2_pickup = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_pickup")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_welcome_to_the_jungle_2_pickup",
	title = "RNGModifier_welcome_to_the_jungle_2_pickup_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_welcome_to_the_jungle_2_pickup",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_welcome_to_the_jungle_2_pickup_1",
		"RNGModifier_welcome_to_the_jungle_2_pickup_2",
		"RNGModifier_welcome_to_the_jungle_2_pickup_3",
		"RNGModifier_welcome_to_the_jungle_2_pickup_4"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_pickup"),
	menu_id = "RNGModifier_welcome_to_the_jungle_2_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_welcome_to_the_jungle_2_flare = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_flare")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = GetPriority(),
	id = "RNGModifier_welcome_to_the_jungle_2_flare",
	title = "RNGModifier_welcome_to_the_jungle_2_flare_title",
	desc = "RNGModifier_welcome_to_the_jungle_2_flare_desc",
	callback = "RNGModifier_welcome_to_the_jungle_2_flare",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_welcome_to_the_jungle_2_flare_1",
		"RNGModifier_welcome_to_the_jungle_2_flare_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_flare"),
	menu_id = "RNGModifier_welcome_to_the_jungle_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_welcome_to_the_jungle_2_pickup = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_pickup")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_pickup")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_welcome_to_the_jungle_2_pickup",
	title = "RNGModifier_welcome_to_the_jungle_2_pickup_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_welcome_to_the_jungle_2_pickup",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_pickup")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

