local locfile = ModPath .. "Loc/EN.json"
Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_RNGModifier", function(loc)
	LocalizationManager:load_localization_file(locfile)
end)