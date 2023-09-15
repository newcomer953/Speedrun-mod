_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "spa"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}

MenuCallbackHandler.RNGModifier_spa_briefcase = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_briefcase")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 100,
	id = "RNGModifier_spa_briefcase",
	title = "RNGModifier_spa_briefcase_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_spa_briefcase",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_spa_briefcase_1",
		"RNGModifier_spa_briefcase_2",
		"RNGModifier_spa_briefcase_3",
		"RNGModifier_spa_briefcase_4",
		"RNGModifier_spa_briefcase_5"
	},
	value = RNGModifier:SafeGetData("spa", "_briefcase"),
	menu_id = "RNGModifier_spa_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_spa_ammo = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_ammo")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99.1,
	id = "RNGModifier_spa_ammo",
	title = "RNGModifier_spa_ammo_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_spa_ammo",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_spa_briefcase_1",
		"RNGModifier_spa_briefcase_2",
		"RNGModifier_spa_briefcase_3",
		"RNGModifier_spa_briefcase_4",
		"RNGModifier_spa_briefcase_5"
	},
	value = RNGModifier:SafeGetData("spa", "_ammo"),
	menu_id = "RNGModifier_spa_Options_Menu"
})]]

MenuCallbackHandler.RNGModifier_spa_crowbar = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_crowbar")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 99,
	id = "RNGModifier_spa_crowbar",
	title = "RNGModifier_spa_crowbar_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_spa_crowbar",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_spa_crowbar_1",
		"RNGModifier_spa_crowbar_2",
		"RNGModifier_spa_crowbar_3",
		"RNGModifier_spa_crowbar_4",
		"RNGModifier_spa_crowbar_5",
		"RNGModifier_spa_crowbar_6"
	},
	value = RNGModifier:SafeGetData("spa", "_crowbar"),
	menu_id = "RNGModifier_spa_Options_Menu"
})

MenuCallbackHandler.RNGModifier_spa_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	priority = 98,
	id = "RNGModifier_spa_escape",
	title = "RNGModifier_spa_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_spa_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_spa_escape_1",
		"RNGModifier_spa_escape_2"
	},
	value = RNGModifier:SafeGetData("spa", "_escape"),
	menu_id = "RNGModifier_spa_Options_Menu"
})


