if _G.RNGModifier then 
	return 
end
_G.RNGModifier = {}
RNGModifier._path = ModPath
RNGModifier._save_path = SavePath .. "RNGModifier_SaveFile.txt"
RNGModifier._data = RNGModifier._data or {["Version"] = "Unknown"}
for i, mod in pairs(BLT.Mods.mods) do
	local _dump = tostring(json.encode(mod.json_data))
	if _dump:find('RNGModifier') then
		RNGModifier._data = {
			["Version"] = tostring(mod.version)
		}		
		break
	end
end
RNGModifier._menu_id = "RNGModifier_menu_id"
RNGModifier._menu_Heist_id = "RNGModifier_menu_Heist_id"
RNGModifier._menu_All_id = "RNGModifier_menu_All_id"
RNGModifier._menu_Current_Heist_id = "RNGModifier_menu_Current_Heist_id"
RNGModifier._heistlist = {
	"branchbank",
	"roberts",
	"jewelry_store",
	"sand",
	"bex",
	"des",
	"pex",
	"fish",
	"moon",
	"chca",
	"help",
	"arm_fac",
	"arm_par",
	"arm_und",
	"arm_cro",
	"arm_hcm",
	"four_stores",
	"deep",
	"cage",
	"welcome_to_the_jungle_1",
	"welcome_to_the_jungle_1_night",
	"welcome_to_the_jungle_2",
	"big",
	"born",
	"chew",
	"red2",
	"corp",
	"pines",
	"framing_frame_3",
	"friend",
	"crojob3",
	"crojob3_night",
	"crojob2",
	"watchdogs_1",
	"watchdogs_1_night",
	"watchdogs_2",
	"watchdogs_2_day",
	"escape_overpass",
	"escape_overpass_night",
	"escape_garage",
	"escape_street",
	"escape_park",
	"escape_park_day",
	"escape_cafe",
	"escape_cafe_day",
	"shoutout_raid",
	"bph",
	"dinner",
	"nmh",
	"fex",
	"mex",
	"hox_2",
	"hox_1",
	"hox_3",
	"mia_1",
	"mia_2",
	"cane",
	"mus",
	"rat",
	"arena",
	"jolly",
	"election_day_1",
	"election_day_2",
	"election_day_3",
	"election_day_3_skip1",
	"election_day_3_skip2",
	"firestarter_1",
	"firestarter_2",
	"firestarter_3",
	"arm_for",
	"gallery",
	"framing_frame_1",
	"framing_frame_2",
	"alex_1",
	"alex_2",
	"pbr",
	"pbr2",
	"wwh",
	"dah",
	"glace",
	"chill_combat",
	"hvh",
	"rvd1",
	"rvd2",
	"brb",
	"family",
	"dark",
	"alex_3",
	"spa",
	"man",
	"pal",
	"kenaz",
	"kosugi",
	"nightclub",
	"tag",
	"vit",
	"pent",
	"sah",
	"chas",
	"peta",
	"peta2",
	"run",
	"nail",
	"mad",
	"flat",
	"ranc",
	"ukrainian_job",
	"trai",
	"mex_cooking"
}

RNGModifier._heist_submenu = {
	mex_coke = {"mex", "RNGModifier_mex_coke_choice_Options_Menu"},
	pbr2_small_money_1 = {"pbr2", "RNGModifier_pbr2_small_choices_1_Options_Menu"},
	pbr2_small_money_2 = {"pbr2", "RNGModifier_pbr2_small_choices_2_Options_Menu"},
	pbr2_small_money_3 = {"pbr2", "RNGModifier_pbr2_small_choices_3_Options_Menu"},
	pbr2_small_money_4 = {"pbr2", "RNGModifier_pbr2_small_choices_4_Options_Menu"},
	pbr2_small_money_5 = {"pbr2", "RNGModifier_pbr2_small_choices_5_Options_Menu"},
	peta_goat_random = {"peta", "RNGModifier_peta_goat_random_Options_Menu"}
}

for _, _heist in pairs(RNGModifier._heistlist) do
	if tweak_data.levels[_heist] and tweak_data.levels[_heist].name_id then
		RNGModifier._data[_heist] = {
			["name_id"] = tweak_data.levels[_heist].name_id
		}
	end
end

function RNGModifier:SafeGetData(_heist, _table1)
	if not _heist or not self._data or not self._data[_heist] then
		return
	end
	return self._data[_heist][_table1] or nil
end

function RNGModifier:SafeSetData(_value, _heist, _table1)
	self._data = self._data or {}
	self._data[_heist] = self._data[_heist] or {}
	self._data[_heist][_table1] = _value
end

function RNGModifier:SafeGetOpt(_heist, _table1)
	return self:SafeGetData(_heist, _table1) or 0
end

function RNGModifier:Save()
	local BTM_bomb_crate_A = self:SafeGetData("pbr", "_bomb_crate_A")
	local BTM_bomb_crate_B = self:SafeGetData("pbr", "_bomb_crate_B")
	if BTM_bomb_crate_A ~= 0 and BTM_bomb_crate_A == BTM_bomb_crate_B then
		self:SafeSetData(0, "pbr", "_bomb_crate_A")
	end

	local F2_securitybox_A = self:SafeGetData("firestarter_2", "_securitybox_A")
	local F2_securitybox_B = self:SafeGetData("firestarter_2", "_securitybox_B")
	local F2_securitybox_C = self:SafeGetData("firestarter_2", "_securitybox_C")
	if F2_securitybox_A ~= 0 and F2_securitybox_A == F2_securitybox_B == F2_securitybox_C then
		self:SafeSetData(0, "firestarter_2", "_securitybox_A")
	end
	local DARK_train_A = self:SafeGetData("dark", "_train_A")
	local DARK_train_B = self:SafeGetData("dark", "_train_B")
	local DARK_train_C = self:SafeGetData("dark", "_train_C")
	if DARK_train_A ~= 0 and DARK_train_A == DARK_train_B == DARK_train_C then
		self:SafeSetData(0, "dark", "_train_A")
	end
	local FF3_spawnRandomHarrdDrive_A = self:SafeGetData("framing_frame_3", "_spawnRandomHarrdDrive_A")
	local FF3_spawnRandomHarrdDrive_B = self:SafeGetData("framing_frame_3", "_spawnRandomHarrdDrive_B")
	if FF3_spawnRandomHarrdDrive_A ~= 0 and FF3_spawnRandomHarrdDrive_A == FF3_spawnRandomHarrdDrive_B then
		self:SafeSetData(0, "framing_frame_3", "_spawnRandomHarrdDrive_A")
	end
	local SAH_cpair_A = self:SafeGetData("sah", "_cpair_A")
	local SAH_cpair_B = self:SafeGetData("sah", "_cpair_B")
	if SAH_cpair_A ~= 0 and SAH_cpair_A == SAH_cpair_B then
		self:SafeSetData(0, "sah", "_cpair_A")
	end
	local SAH_bpair_A = self:SafeGetData("sah", "_bpair_A")
	local SAH_bpair_B = self:SafeGetData("sah", "_bpair_B")
	if SAH_bpair_A ~= 0 and SAH_bpair_A == SAH_bpair_B then
		self:SafeSetData(0, "sah", "_bpair_A")
	end
	local SAH_rpair_A = self:SafeGetData("sah", "_rpair_A")
	local SAH_rpair_B = self:SafeGetData("sah", "_rpair_B")
	if SAH_rpair_A ~= 0 and SAH_rpair_A == SAH_rpair_B then
		self:SafeSetData(0, "sah", "_rpair_A")
	end
	
	local Dock_bomb_case_A = self:SafeGetData("crojob2", "_bomb_case_A")
	local Dock_bomb_case_B = self:SafeGetData("crojob2", "_bomb_case_B")
	local Dock_bomb_case_C = self:SafeGetData("crojob2", "_bomb_case_C")
	local Dock_bomb_case_D = self:SafeGetData("crojob2", "_bomb_case_D")
	if Dock_bomb_case_A ~= 0 and Dock_bomb_case_A == Dock_bomb_case_B == Dock_bomb_case_C == Dock_bomb_case_D then
		self:SafeSetData(0, "crojob2", "_bomb_case_A")
	end

	local red2_box_A = self:SafeGetData("red2", "_box_A")
	local red2_box_B = self:SafeGetData("red2", "_box_B")
	if red2_box_A ~= 0 and red2_box_A == red2_box_B then
		self:SafeSetData(0, "red2", "_box_A")
	end
	local fish_disable_money_A = self:SafeGetData("fish", "_disable_money_A")
	local fish_disable_money_B = self:SafeGetData("fish", "_disable_money_B")
	local fish_disable_money_C = self:SafeGetData("fish", "_disable_money_C")
	if fish_disable_money_A ~= 0 and fish_disable_money_A == fish_disable_money_B == fish_disable_money_C then
		self:SafeSetData(0, "fish", "_disable_money_A")
	end
	local tag_boxes_A = self:SafeGetData("tag", "_boxes_A")
	local tag_boxes_B = self:SafeGetData("tag", "_boxes_B")
	local tag_boxes_C = self:SafeGetData("tag", "_boxes_C")
	if tag_boxes_A ~= 0 and tag_boxes_A == tag_boxes_B == tag_boxes_C then
		self:SafeSetData(0, "tag", "_boxes_A")
	end
	local tag_boxes1_A = self:SafeGetData("tag", "_boxes1_A")
	local tag_boxes1_B = self:SafeGetData("tag", "_boxes1_B")
	local tag_boxes1_C = self:SafeGetData("tag", "_boxes1_C")
	if tag_boxes1_A ~= 0 and tag_boxes1_A == tag_boxes1_B == tag_boxes1_C then
		self:SafeSetData(0, "tag", "_boxes1_A")
	end
	local kosugi_painting_A = self:SafeGetData("kosugi", "_painting_A")
	local kosugi_painting_B = self:SafeGetData("kosugi", "_painting_B")
	if kosugi_painting_A ~= 0 and kosugi_painting_A == kosugi_painting_B then
		self:SafeSetData(0, "kosugi", "_painting_A")
	end
	local kosugi_money_A = self:SafeGetData("kosugi", "_money_A")
	local kosugi_money_B = self:SafeGetData("kosugi", "_money_B")
	if kosugi_money_A ~= 0 and kosugi_money_A == kosugi_money_B then
		self:SafeSetData(0, "kosugi", "_money_A")
	end
	local kosugi_cocaine_A = self:SafeGetData("kosugi", "_cocaine_A")
	local kosugi_cocaine_B = self:SafeGetData("kosugi", "_cocaine_B")
	if kosugi_cocaine_A ~= 0 and kosugi_cocaine_A == kosugi_cocaine_B then
		self:SafeSetData(0, "kosugi", "_cocaine_A")
	end
	local kosugi_weapon_A = self:SafeGetData("kosugi", "_weapon_A")
	local kosugi_weapon_B = self:SafeGetData("kosugi", "_weapon_B")
	if kosugi_weapon_A ~= 0 and kosugi_weapon_A == kosugi_weapon_B then
		self:SafeSetData(0, "kosugi", "_weapon_A")
	end

	local pal_crowbar_A = self:SafeGetData("pal", "_crowbar_A")
	local pal_crowbar_B = self:SafeGetData("pal", "_crowbar_B")
	local pal_crowbar_C = self:SafeGetData("pal", "_crowbar_C")
	if pal_crowbar_A ~= 0 and pal_crowbar_A == pal_crowbar_B == pal_crowbar_C then
		self:SafeSetData(0, "pal", "_crowbar_A")
	end
	local HOX3_keycard_A = self:SafeGetData("hox_3", "_keycard_A")
	local HOX3_keycard_B = self:SafeGetData("hox_3", "_keycard_B")
	local HOX3_keycard_C = self:SafeGetData("hox_3", "_keycard_C")
	if HOX3_keycard_A ~= 0 and HOX3_keycard_A == HOX3_keycard_B == HOX3_keycard_C then
		self:SafeSetData(0, "hox_3", "_keycard_A")
	end
	local HOX3_evidence_A = self:SafeGetData("hox_3", "_evidence_A")
	local HOX3_evidence_B = self:SafeGetData("hox_3", "_evidence_B")
	local HOX3_evidence_C = self:SafeGetData("hox_3", "_evidence_C")
	if HOX3_evidence_A ~= 0 and HOX3_evidence_A == HOX3_evidence_B == HOX3_evidence_C then
		self:SafeSetData(0, "hox_3", "_evidence_A")
	end
	local HOX3_boost_A = self:SafeGetData("hox_3", "_boost_A")
	local HOX3_boost_B = self:SafeGetData("hox_3", "_boost_B")
	if HOX3_boost_A ~= 0 and HOX3_boost_A == HOX3_boost_B then
		self:SafeSetData(0, "hox_3", "_boost_A")
	end
	local wwh_hostage_A = self:SafeGetData("wwh", "_hostage_A")
	local wwh_hostage_B = self:SafeGetData("wwh", "_hostage_B")
	local wwh_hostage_C = self:SafeGetData("wwh", "_hostage_C")
	local wwh_hostage_D = self:SafeGetData("wwh", "_hostage_D")
	if wwh_hostage_A ~= 0 and wwh_hostage_A == wwh_hostage_B == wwh_hostage_C == wwh_hostage_D == wwh_hostage_E then
		self:SafeSetData(0, "wwh", "_hostage_A")
	end
	local M1_gascan_A = self:SafeGetData("mia_1", "_gascan_A")
	local M1_gascan_B = self:SafeGetData("mia_1", "_gascan_B")
	local M1_gascan_C = self:SafeGetData("mia_1", "_gascan_C")
	local M1_gascan_D = self:SafeGetData("mia_1", "_gascan_D")
	local M1_gascan_E = self:SafeGetData("mia_1", "_gascan_E")
	local M1_gascan_F = self:SafeGetData("mia_1", "_gascan_F")
	local M1_gascan_G = self:SafeGetData("mia_1", "_gascan_G")
	local M1_gascan_H = self:SafeGetData("mia_1", "_gascan_H")
	if M1_gascan_A ~= 0 and M1_gascan_A == M1_gascan_B == M1_gascan_C == M1_gascan_D == M1_gascan_E == M1_gascan_F == M1_gascan_G == M1_gascan_H then
		self:SafeSetData(0, "mia_1", "_gascan_A")
	end

	local SR_crowbar_A = self:SafeGetData("shoutout_raid", "_crowbar_A")
	local SR_crowbar_B = self:SafeGetData("shoutout_raid", "_crowbar_B")
	if SR_crowbar_A ~= 0 and SR_crowbar_A == SR_crowbar_B then
		self:SafeSetData(0, "shoutout_raid", "_crowbar_A")
	end
	local HOX2_select_excursion_A = self:SafeGetData("hox_2", "_select_excursion_A")
	local HOX2_select_excursion_B = self:SafeGetData("hox_2", "_select_excursion_B")
	local HOX2_select_excursion_C = self:SafeGetData("hox_2", "_select_excursion_C")
	if HOX2_select_excursion_A ~= 0 and HOX2_select_excursion_A == HOX2_select_excursion_B or HOX2_select_excursion_A == HOX2_select_excursion_C then
		self:SafeSetData(0, "hox_2", "_select_excursion_A")
	end
	if HOX2_select_excursion_B ~= 0 and HOX2_select_excursion_B == HOX2_select_excursion_C then
		self:SafeSetData(0, "hox_2", "_select_excursion_B")
	end
	for _, _heist in pairs(self._heistlist) do
		if tweak_data.levels[_heist] and tweak_data.levels[_heist].name_id then
			self._data[_heist] = self._data[_heist] or {}
			self._data[_heist]["name_id"] = tweak_data.levels[_heist].name_id
		end
	end
	local _file = io.open(self._save_path, "w+")
	if _file then
		_file:write(json.encode(self._data))
		_file:close()
	end
end

function RNGModifier:Load()
	local _file = io.open(self._save_path, "r")
	local _data = {}
	if _file then
		_data = json.decode(_file:read("*all" ))
		_file:close()
	end
	if not _data or not _file or tostring(self._data["Version"]) < tostring(_data["Version"]) then -- this will break if version number count will change digits amount, but good enough for now
		self:Save()
	else
		local version = self._data["Version"]
		self._data = _data
		self._data["Version"] = version
	end
end

RNGModifier:Load()

Hooks:Add('LocalizationManagerPostInit', 'LocalizationManagerPostInit_RNGModifier', function(self)
	self:load_localization_file(RNGModifier._path..'Loc/EN.json', false)
end)

Hooks:Add("MenuManagerSetupCustomMenus", "MenuManagerSetupCustomMenus_RNGModifier", function(menu_manager, nodes)
	MenuHelper:NewMenu(RNGModifier._menu_id)
	MenuHelper:NewMenu(RNGModifier._menu_Heist_id)
	MenuHelper:NewMenu(RNGModifier._menu_All_id)
	MenuHelper:NewMenu(RNGModifier._menu_Current_Heist_id)
	
	for _, _heist in pairs(RNGModifier._heistlist) do
		if tweak_data.levels[_heist] and tweak_data.levels[_heist].name_id then
			MenuHelper:NewMenu("RNGModifier_".. _heist .."_Options_Menu")
		end
	end
	
	for _, _heist in pairs(RNGModifier._heist_submenu) do
		if tweak_data.levels[_heist[1]] and tweak_data.levels[_heist[1]].name_id then
			MenuHelper:NewMenu(_heist[2])
		end
	end
end)

function get_contractor_from_level_id(level_id)
	for job_id, job_data in pairs(tweak_data.narrative.jobs) do
		for _, stage in ipairs(tweak_data.narrative:job_chain(job_id)) do
			if stage.level_id == nil then -- it should mean that it's a list of stages?
				for _, stage in ipairs(stage) do
					if stage.level_id == level_id and job_data.contact then
						return job_data.contact
					end
				end
			elseif stage.level_id == level_id and job_data.contact then
				return job_data.contact
			end
		end
	end
end

Hooks:Add("MenuManagerBuildCustomMenus", "MenuManagerBuildCustomMenus_RNGModifier", function(menu_manager, nodes)
	nodes[RNGModifier._menu_id] = MenuHelper:BuildMenu(RNGModifier._menu_id)
	nodes[RNGModifier._menu_All_id] = MenuHelper:BuildMenu(RNGModifier._menu_All_id)
	MenuHelper:AddMenuItem(nodes["blt_options"], RNGModifier._menu_id, "RNGModifier_menu_title", "RNGModifier_menu_desc")
	MenuHelper:AddMenuItem(nodes[RNGModifier._menu_id], RNGModifier._menu_All_id, "RNGModifier_menu_All_title", "RNGModifier_empty_desc")
	
	nodes[RNGModifier._menu_Heist_id] = MenuHelper:BuildMenu(RNGModifier._menu_Heist_id)
	MenuHelper:AddMenuItem(nodes[RNGModifier._menu_id], RNGModifier._menu_Heist_id, "RNGModifier_menu_Heist_title", "RNGModifier_empty_desc")
	
	for index, _heist in pairs(RNGModifier._heistlist) do
		if tweak_data.levels[_heist] and tweak_data.levels[_heist].name_id then
			local _new = "RNGModifier_".. _heist .."_Options_Menu"
			nodes[_new] = MenuHelper:BuildMenu(_new)
			local contact = get_contractor_from_level_id(_heist) or "dallas"
			local contact_menu = "RNGModifier_contact_".. contact .."_Options_Menu"
			if not nodes[contact_menu] then
				MenuHelper:NewMenu(contact_menu)
				nodes[contact_menu] = MenuHelper:BuildMenu(contact_menu)
				MenuHelper:AddMenuItem(nodes[RNGModifier._menu_Heist_id], contact_menu, tweak_data.narrative.contacts[contact].name_id, "RNGModifier_empty_desc")
			end
			MenuHelper:AddMenuItem(nodes[contact_menu], _new, tweak_data.levels[_heist].name_id, "RNGModifier_empty_desc")
		end
	end	
	
	for _, _heist in pairs(RNGModifier._heist_submenu) do
		if tweak_data.levels[_heist[1]] and tweak_data.levels[_heist[1]].name_id and nodes["RNGModifier_" .. _heist[1] .. "_Options_Menu"] then
			local _new = _heist[2]
			nodes[_new] = MenuHelper:BuildMenu(_new)
			MenuHelper:AddMenuItem(nodes[_heist[1]], _new, _new .. "_title", _new .. "_desc")
		end
	end
	
	--Add current heist menu
	if Global.job_manager and Global.job_manager.current_job and Global.game_settings.level_id then		
		local _heist = "RNGModifier_".. Global.game_settings.level_id .."_Options_Menu"
		
		if nodes[_heist] then
			nodes[RNGModifier._menu_Current_Heist_id] = MenuHelper:BuildMenu(RNGModifier._menu_Current_Heist_id)
			MenuHelper:AddMenuItem(nodes[RNGModifier._menu_id], RNGModifier._menu_Current_Heist_id, "RNGModifier_menu_Current_Heist_title", "RNGModifier_empty_desc")
			MenuHelper:AddMenuItem(nodes[RNGModifier._menu_Current_Heist_id], _heist, tweak_data.levels[Global.game_settings.level_id].name_id, "RNGModifier_empty_desc")
		end
	end
end)

Hooks:Add("MenuManagerPopulateCustomMenus", "MenuManagerPopulateCustomMenus_RNGModifier", function(menu_manager, nodes)
	for _, _heist in pairs(RNGModifier._heistlist) do
		if tweak_data.levels[_heist] and tweak_data.levels[_heist].name_id then
			dofile(RNGModifier._path .. "Hooks/heist/".. _heist ..".lua")
		end
	end
	
	MenuCallbackHandler.RNGModifier_all_of_all_chancechange = function(self, item)
		RNGModifier:SafeSetData(item:value(), "all_of_all", "_chancechange")
		RNGModifier:Save()
	end
	MenuHelper:AddMultipleChoice({
		id = "RNGModifier_all_of_all_chancechange",
		title = "RNGModifier_all_of_all_chancechange_title",
		desc = "RNGModifier_empty_desc",
		callback = "RNGModifier_all_of_all_chancechange",
		items = {
			"RNGModifier_Default_One_Item",
			"RNGModifier_all_of_all_chancechange_1",
			"RNGModifier_all_of_all_chancechange_2",
			"RNGModifier_all_of_all_chancechange_3",
			"RNGModifier_all_of_all_chancechange_4",
			"RNGModifier_all_of_all_chancechange_5",
			"RNGModifier_all_of_all_chancechange_6",
			"RNGModifier_all_of_all_chancechange_7",
			"RNGModifier_all_of_all_chancechange_8"
		},
		value = RNGModifier:SafeGetData("all_of_all", "_chancechange"),
		menu_id = RNGModifier._menu_All_id
	})
	
	MenuCallbackHandler.RNGModifier_all_of_all_randomchange = function(self, item)
		RNGModifier:SafeSetData(item:value(), "all_of_all", "_randomchange")
		RNGModifier:Save()
	end
	MenuHelper:AddMultipleChoice({
		id = "RNGModifier_all_of_all_randomchange",
		title = "RNGModifier_all_of_all_randomchange_title",
		desc = "RNGModifier_empty_desc",
		callback = "RNGModifier_all_of_all_randomchange",
		items = {
			"RNGModifier_Default_One_Item",
			"RNGModifier_all_of_all_randomchange_1",
			"RNGModifier_all_of_all_randomchange_2",
			"RNGModifier_all_of_all_randomchange_3",
			"RNGModifier_all_of_all_randomchange_4"
		},
		value = RNGModifier:SafeGetData("all_of_all", "_randomchange"),
		menu_id = RNGModifier._menu_All_id
	})
	
	MenuCallbackHandler.RNGModifier_all_of_all_firstspawn = function(self, item)
		RNGModifier:SafeSetData(item:value(), "all_of_all", "_firstspawn")
		RNGModifier:Save()
	end
	MenuHelper:AddMultipleChoice({
		id = "RNGModifier_all_of_all_firstspawn",
		title = "RNGModifier_all_of_all_firstspawn_title",
		desc = "RNGModifier_all_of_all_firstspawn_desc",
		callback = "RNGModifier_all_of_all_firstspawn",
		items = {
			"RNGModifier_Default_One_Item",
			"RNGModifier_number_4_use_1",
			"RNGModifier_number_4_use_2",
			"RNGModifier_number_4_use_3",
			"RNGModifier_number_4_use_4"
		},
		value = RNGModifier:SafeGetData("all_of_all", "_firstspawn"),
		menu_id = RNGModifier._menu_All_id
	})
end)