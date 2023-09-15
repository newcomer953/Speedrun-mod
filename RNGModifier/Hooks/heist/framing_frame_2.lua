_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "framing_frame_2"
local _bool = true
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_framing_frame_2_chanceForAAmbush = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_chanceForAAmbush")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_chanceForAAmbush")
	end
	RNGModifier:Save()
end
_bool = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_chanceForAAmbush")) == 1 and true or false
MenuHelper:AddToggle({
	id = "RNGModifier_framing_frame_2_chanceForAAmbush",
	title = "RNGModifier_framing_frame_2_chanceForAAmbush_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_2_chanceForAAmbush",
	value = _bool,
	menu_id = "RNGModifier_framing_frame_2_Options_Menu"
})
_bool = nil

MenuCallbackHandler.RNGModifier_framing_frame_2_fence = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_fence")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_fence")
	end
	RNGModifier:Save()
end
_bool = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_fence")) == 1 and true or false
MenuHelper:AddToggle({
	id = "RNGModifier_framing_frame_2_fence",
	title = "RNGModifier_framing_frame_2_fence_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_framing_frame_2_fence",
	value = _bool,
	menu_id = "RNGModifier_framing_frame_2_Options_Menu"
})