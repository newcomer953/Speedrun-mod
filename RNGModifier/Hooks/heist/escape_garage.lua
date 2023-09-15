_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "escape_garage"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_escape_garage_esc = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_esc")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_escape_garage_esc",
	title = "RNGModifier_escape_garage_esc_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_escape_garage_esc",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_escape_garage_esc_1",
		"RNGModifier_escape_garage_esc_2"
	},
	value = RNGModifier:SafeGetData(_Current_Heist, "_esc"),
	menu_id = "RNGModifier_escape_garage_Options_Menu"
})

