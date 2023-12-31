_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Current_Heist = "alex_2"
local _bool = true
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Current_Heist] = RNGModifier._data[_Current_Heist] or {}


MenuCallbackHandler.RNGModifier_alex_2_chance_of_fbi_interrupt = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_chance_of_fbi_interrupt")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_chance_of_fbi_interrupt")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_alex_2_chance_of_fbi_interrupt",
	title = "RNGModifier_alex_2_chance_of_fbi_interrupt_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_2_chance_of_fbi_interrupt",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_chance_of_fbi_interrupt")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_alex_2_escape = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_escape")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	id = "RNGModifier_alex_2_escape",
	title = "RNGModifier_alex_2_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_2_escape",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifieralex_2_escape_1",
		"RNGModifieralex_2_escape_2"
	},
	value = RNGModifier:SafeGetData("alex_2", "_escape"),
	menu_id = "RNGModifier_alex_2_Options_Menu"
})


MenuCallbackHandler.RNGModifier_alex_2_intel = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_intel")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_intel")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_alex_2_intel",
	title = "RNGModifier_alex_2_intel_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_2_intel",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_intel")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

MenuCallbackHandler.RNGModifier_alex_2_no_escape = function(self, item)
	if tostring(item:value()) == "on" then
		RNGModifier:SafeSetData(1, _Current_Heist, "_no_escape")
	else
		RNGModifier:SafeSetData(0, _Current_Heist, "_no_escape")
	end
	RNGModifier:Save()
end
MenuHelper:AddToggle({
	id = "RNGModifier_alex_2_no_escape",
	title = "RNGModifier_alex_1_no_escape_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_2_no_escape",
	value = tonumber(RNGModifier:SafeGetData(_Current_Heist, "_no_escape")) == 1,
	menu_id = "RNGModifier_" .. _Current_Heist .. "_Options_Menu"
})

--[[MenuCallbackHandler.RNGModifier_alex_2_intel = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_intel")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	id = "RNGModifier_alex_2_intel",
	title = "RNGModifier_alex_2_intel_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_2_intel",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true"
	},
	value = RNGModifier:SafeGetData("alex_2", "_intel"),
	menu_id = "RNGModifier_alex_2_Options_Menu"
})

MenuCallbackHandler.RNGModifier_alex_2_chance_of_fbi_interrupt = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Current_Heist, "_chance_of_fbi_interrupt")
	RNGModifier:Save()
end

MenuHelper:AddMultipleChoice({
	id = "RNGModifier_alex_2_chance_of_fbi_interrupt",
	title = "RNGModifier_alex_2_chance_of_fbi_interrupt_title",
	desc = "RNGModifier_empty_desc",
	callback = "RNGModifier_alex_2_chance_of_fbi_interrupt",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_bool_4_true",
		"RNGModifier_bool_4_false"
	},
	value = RNGModifier:SafeGetData("alex_2", "_chance_of_fbi_interrupt"),
	menu_id = "RNGModifier_alex_2_Options_Menu"
})

]]