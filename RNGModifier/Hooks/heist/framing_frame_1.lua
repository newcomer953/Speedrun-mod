_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "framing_frame_1"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

local _priority = -1

function GetPriority()
	local current_priority = _priority
	_priority = _priority - 1
	return current_priority
end

MenuCallbackHandler.RNGModifier_framing_frame_1_painting = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_painting")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_painting")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_framing_frame_1_painting",
	title = "RNGModifier_framing_frame_1_painting_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_1_painting",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_painting")) == 1 and true or false,
	menu_id = "RNGModifier_framing_frame_1_Options_Menu"
})

MenuCallbackHandler.RNGModifier_framing_frame_1_no_car = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_car")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_car")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	priority = GetPriority(),
	id = "RNGModifier_framing_frame_1_no_car",
	title = "RNGModifier_framing_frame_1_no_car_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_1_no_car",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_car")) == 1 and true or false,
	menu_id = "RNGModifier_framing_frame_1_Options_Menu"
})


