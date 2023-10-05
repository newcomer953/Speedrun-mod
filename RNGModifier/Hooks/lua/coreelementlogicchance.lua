local path = ModPath
core:module("CoreElementLogicChance")
core:import("CoreMissionScriptElement")
ElementLogicChance = ElementLogicChance or class(CoreMissionScriptElement.MissionScriptElement)
dofile("mods/RNGModifier/Base.lua")

_G.RNGModifier = _G.RNGModifier or {}

RNGModifier = _G.RNGModifier or {}

if not RNGModifier  then
	return
end

if not RNGModifier._tmp_data then
	RNGModifier._tmp_data = {}
end
local _tmp_data = RNGModifier._tmp_data

RNGModifier_ElementLogicChance_on_executed = RNGModifier_ElementLogicChance_on_executed or ElementLogicChance.on_executed

--Convenient function to get multiple choice value
local GetMultipleChoiceValue = function(level_id, value_name)
	return (RNGModifier:SafeGetData(level_id, value_name) or 0) - 1
end

--Convenient function to get checkbox value
local GetCheckboxValue = function(level_id, value_name)
	return tonumber(RNGModifier:SafeGetData(level_id, value_name)) == 1 and true or false
end

function ElementLogicChance:on_executed(...)
	local roll = math.random(100)
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		local _chancechange = RNGModifier:SafeGetData("all_of_all", "_chancechange") or 0
		_chancechange = _chancechange - 1
		if _chancechange > 0 then
			local _chancechange_list = {0, 1, 25, 50, 75, 100, 99999999, -99999999}
			self._chance = _chancechange_list[_chancechange]
		elseif _level_id == "rvd1" then
			if self._id == 100736 then
				local gate_choice = (RNGModifier:SafeGetData(_level_id, "_gate_choice") or 0) - 1
				if gate_choice > 0 then
					_tmp_data[_level_id] = _tmp_data[_level_id] or {}
					_tmp_data[_level_id].gate_choice = true
					self._chance = 0
				end
			end
		elseif _level_id == "hvh" then
			if self._id == 100070 then
				local _rnd_world = RNGModifier:SafeGetData(_level_id, "_rnd_world") or 0
				_rnd_world = _rnd_world - 1
				if _rnd_world > 0 then
					self._chance = 999
				end
			end
		elseif _level_id == "family" then
			if self._id == 104842 then
				local _chance_of_door = GetCheckboxValue(_level_id, "_chance_of_door")
				if _chance_of_door then
					self._chance = 999
				
				end
			end
		elseif _level_id == "glace" then
			if self._id == 100616 then
				local _logic_chance_001 = RNGModifier:SafeGetData(_level_id, "_logic_chance_001") or 0 
				_logic_chance_001 = _logic_chance_001 - 1
				if _logic_chance_001 == 1 then
					self._chance = 999
				end
			end
		--[[elseif _level_id == "corp" then
			local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = self._chance
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
		elseif _level_id == "brb" then
			if self._id == 100640 then
				local _winch_chance = RNGModifier:SafeGetData(_level_id, "_winch_chance") or 0
				_winch_chance = _winch_chance - 1
				if _winch_chance == 1 then
					self._chance = 999
				elseif _winch_chance == 2 then
					self._chance = -999
				end
			end
		elseif _level_id == "gallery" or _level_id == "framing_frame_1" then
			if self._id == 103825 then
				local _no_car = GetCheckboxValue(_level_id, "_no_car")
				if _no_car then
					self._chance = 100
				end
			end
		elseif _level_id == "framing_frame_2" then
			if self._id == 101781 then
				local _chanceForAAmbush = RNGModifier:SafeGetData(_level_id, "_chanceForAAmbush") or 0
				if _chanceForAAmbush <= 0 then 
				
				elseif _chanceForAAmbush == 1 then 
					self._chance = 999
				end
			elseif self._id == 101141 then
				local _fence = RNGModifier:SafeGetData(_level_id, "_fence") or 0
				if _fence > 0 then
					self._chance = 999
				end
			end
		elseif _level_id == "alex_2" then
			if self._id == 104515 then
				local _chance_of_fbi_interrupt = GetCheckboxValue(_level_id, "_chance_of_fbi_interrupt")
				if _chance_of_fbi_interrupt then 
					self._chance = 999
				
				end
			elseif self._id == 100338 then
				local _no_escape = GetCheckboxValue(_level_id, "_no_escape")
				if _no_escape then
					self._chance = 0
				
				end
			end
		elseif _level_id == "nmh" then
			if self._id == 103011 then
				local _correct_paper = GetCheckboxValue(_level_id, "_correct_paper")
				if _correct_paper then 
					self._chance = 999
				end
			elseif self._id == 103011 then
				local _escape = (RNGModifier:SafeGetData(_level_id, "_escape") or 0) - 1
				if _escape == 1 then 
					self._chance = 999
				elseif _escape == 2 then
					self._chance == -999
				end
			elseif self._editor_name == "chance_28" and self._values.instance_name and self._values.instance_name:find("nmh_fuge_00") then
				local _blood_chance = GetCheckboxValue(_level_id, "_blood_chance")
				if _blood_chance then 
					self._chance = 999
				end
			end
		elseif _level_id == "roberts" then
			if self._id == 105708 then
				local _logic_chance_011 = RNGModifier:SafeGetData(_level_id, "_logic_chance_011") or 0
				if _logic_chance_011 == 0 then 
				
				else
					self._chance = 999
				end
				local _logic_chance_012 = RNGModifier:SafeGetData(_level_id, "_logic_chance_012") or 0
				if (_logic_chance_012 == 0 and math.random(100) < 3) or _logic_chance_012 == 1 then 
					local element = self:get_mission_element(105746)
					if element then
						element:on_executed(...)
					end
				end
			elseif self._id == 106343 or self._id == 106344 then
				local _cop = GetCheckboxValue(_level_id, "_cop")
				if _cop then
					self._chance = 100
				else
					self._chance = 0
				end
			elseif self._id == 105137 then
				local _blackmailer = RNGModifier:SafeGetData(_level_id, "_blackmailer") or 0
				_blackmailer = _blackmailer - 1
				if _blackmailer == 1 then
					self._chance = -999
				elseif _blackmailer == 2 then
					self._chance = 999
				end
			elseif self._id == 106005 then
				local _bain_lie = RNGModifier:SafeGetData(_level_id, "_bain_lie") or 0
				_bain_lie = _bain_lie - 1
				if _bain_lie == 1 then
					self._chance = 999
				elseif _bain_lie == 2 then
					self._chance = -999
				end
			end
		elseif _level_id == "welcome_to_the_jungle_1" or _level_id == "welcome_to_the_jungle_1_night" then
			if self._id == 103270 then
				local _chanceOfTrade10 = RNGModifier:SafeGetData("welcome_to_the_jungle_1", "_chanceOfTrade10") or 0
				if _chanceOfTrade10 == 0 then 
				
				else
					self._chance = 999
				end
			end
		elseif _level_id == "big" then
			if self._id == 104494 then
				local _chance_to_work = RNGModifier:SafeGetData(_level_id, "_chance_to_work") or 0
				if _chance_to_work == 0 then 
				
				else
					self._chance = 999
				end
			elseif self._id == 103719 then
				local _shortcut = RNGModifier:SafeGetData("big", "_shortcut") or 0
				if _shortcut == 0 then
				
				else
					self._chance = 0
				end
			elseif self._id == 101648 then
				--Force vault to have two inner floors
				local double_vault_floor = (RNGModifier:SafeGetData(_level_id, "_double_vault_floor") or 0) - 1
				if double_vault_floor == 1 then
					self._chance = 0
				elseif double_vault_floor == 2 then
					self._chance = 100
				end
			end
		elseif _level_id == "dah" then
			if self._id == 104079 or self._id == 104082 or self._id == 101467 then
				local _red_diamond_success = RNGModifier:SafeGetData(_level_id, "_red_diamond_success") or 0
				if _red_diamond_success == 0 then 
				
				else
					self._chance = 99999999
				end
			end
		elseif _level_id == "dark" then
			if self._id == 100683 then
				local _hd_upper_lower = RNGModifier:SafeGetData(_level_id, "_hd_upper_lower") or 0
				if _hd_upper_lower == 2 then
					self._chance = 999				
				elseif _hd_upper_lower == 3 then
					self._chance = -999
				end
			elseif self._id == 100370 then
				local _keycard_upper_lower = RNGModifier:SafeGetData(_level_id, "_keycard_upper_lower") or 0
				if _keycard_upper_lower == 2 then
					self._chance = 999				
				elseif _keycard_upper_lower == 3 then
					self._chance = -999
				end
			elseif self._id == 100657 then
				local _thermite_upper_lower = RNGModifier:SafeGetData(_level_id, "_thermite_upper_lower") or 0
				if _thermite_upper_lower == 2 then
					self._chance = 999				
				elseif _thermite_upper_lower == 3 then
					self._chance = -999
				end
			elseif self._id == 100464 then
				local _blowtorch_upper_lower = RNGModifier:SafeGetData(_level_id, "_blowtorch_upper_lower") or 0
				if _blowtorch_upper_lower == 2 then
					self._chance = 999				
				elseif _blowtorch_upper_lower == 3 then
					self._chance = -999
				end
			end
		elseif _level_id == "pal" then
			if self._id == 100604 then
				local _boobytrap_chance = RNGModifier:SafeGetData(_level_id, "_boobytrap_chance") or 0
				if _boobytrap_chance == 2 then
					self._chance = 999
				elseif _boobytrap_chance == 3 then
					self._chance = -999				
				end
			elseif self._editor_name == "open_or_closed" and self._values.instance_name and self._values.instance_name == "sub_white_door_b_001" or self._values.instance_name == "sub_white_door_b_002" or self._values.instance_name == "sub_white_door_b_003" or self._values.instance_name == "sub_white_door_b_004" or self._values.instance_name == "sub_white_door_b_005" then
				local _open_door = GetCheckboxValue(_level_id, "_open_door")
				if _open_door then
					self._chance = 100
				else
					self._chance = 0
				end
			end
		elseif _level_id == "man" then
			if self._id == 102943 then
				local _roof_or_fall = RNGModifier:SafeGetData(_level_id,"_roof_or_fall") or 0
				if _roof_or_fall == 2 then
					self._chance = 999
				elseif _roof_or_fall == 3 then
					self._chance = -999
				end
			elseif self._id == 101645 then
				local _balcony  = RNGModifier:SafeGetData(_level_id,"_balcony") or 0
				if _balcony == 2 then
					self._chance = 999 
				elseif _balcony == 3 then
					self._chance = -999
				end
			elseif self._id == 102721 then
				local _wall = GetCheckboxValue(_level_id, "_wall")
				if _wall then
					self._chance = 0
				
				end
			end
		elseif _level_id == "jolly" then
			if self._id == 100127 then
				local _lower_van_spawn = RNGModifier:SafeGetData(_level_id,"_lower_van_spawn") or 1
				if _lower_van_spawn > 1 then
					self._chance = 0
				end
			end
		elseif _level_id == "mex" then
			if self._id == 101702 then
				local _chance_diffusible = RNGModifier:SafeGetData(_level_id,"_chance_diffusible") or 0
				if _chance_diffusible == 0 then
				
				else
					self._chance = -999 
				end
			elseif self._id == 102681 then
				local one_refuel = tonumber(RNGModifier:SafeGetData(_level_id, "_one_refuel")) == 1 and true or false
				
				if one_refuel and self._chance == 50 then
					self._chance = 0
				end
			elseif self._id == 101811 then
				local _chance_red_door_opened = tonumber(RNGModifier:SafeGetData(_level_id, "_chance_red_door_opened")) == 1 and true or false
				
				if _chance_red_door_opened and self._chance == 95 then
					self._chance = 0
				end
			end
		elseif _level_id == "mia_2" then
			if self._id == 101964 or self._id == 101981 or self._id == 101982 or self._id == 102002 or self._id == 102003 or self._id == 102004 then
				local _no_ambush = tonumber(RNGModifier:SafeGetData(_level_id, "_no_ambush")) == 1
				if _no_ambush then
					self._chance = 0
				end
			end
		elseif _level_id == "nightclub" then
			if self._id == 103869 then
				local _logic_chance_009 = RNGModifier:SafeGetData(_level_id, "_logic_chance_009") or 0
				if _logic_chance_009 == 2 then
					self._chance = 999
				elseif _logic_chance_009 == 3 then
					self._chance = -999				
				end
			end
		elseif _level_id == "spa" then
			if self._id == 101307 then
				local _escape = RNGModifier:SafeGetData(_level_id, "_escape") or 0
				if _escape == 2 then
					self._chance = 999
				elseif _escape == 3 then
					self._chance = -999				
				end
			end
		elseif _level_id == "tag" then
			if self._id == 101653 then
				local _chance_basement_escape = RNGModifier:SafeGetData(_level_id, "_chance_basement_escape") or 0
				if _chance_basement_escape == 2 then
					self._chance = 999		
				elseif _chance_basement_escape == 3 then
					self._chance = -999				
				end
			elseif self._id == 100625 then
				local _chance_keycard = RNGModifier:SafeGetData(_level_id, "_chance_keycard") or 0
				if _chance_keycard == 2 then
					self._chance = 999
				elseif _chance_keycard == 3 then
					self._chance = -999
				end
			elseif self._id == 101194 then
				local _fbi_meeting1 = RNGModifier:SafeGetData(_level_id, "_fbi_meeting1") or 0
				if _fbi_meeting1 == 2 then
					self._chance = 999
				elseif _fbi_meeting1 == 3 then
					self._chance = -999
				end
			elseif self._id == 100136 then
				local _fbi_meeting2 = RNGModifier:SafeGetData(_level_id, "_fbi_meeting2") or 0
				if _fbi_meeting2 == 2 then
					self._chance = 999
				elseif _fbi_meeting2 == 3 then
					self._chance = -999
				end
			end
		elseif _level_id == "arm_for" then
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = self._chance
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end ]]--
			if self._id == 104977 then
				local _chance_boat_or_truck = GetCheckboxValue(_level_id, "_chance_boat_or_truck")
				if _chance_boat_or_truck then
					self._chance = 100
				end
			elseif self._editor_name == "chance_easy" or self._editor_name == "chance_hard" or self._editor_name == "chance_ovkdw" then
				local _chance_for_hack = GetCheckboxValue(_level_id, "_chance_for_hack")
				if _chance_for_hack then
					self._chance = -999
				end
			end
		elseif _level_id == "arm_cro" or _level_id == "arm_fac" or _level_id == "arm_hcm" or _level_id == "arm_par" then
			if self._id == 100228 then
				local _jewelry = RNGModifier:SafeGetData(_level_id, "_loot") or 0
				if _jewelry > 0 then
					self._chance = 0
				end
			end
		elseif _level_id == "firestarter_2" then
			--[[if self._id == 101757 then
				local _hackbox = RNGModifier:SafeGetData(_level_id, "_hackbox") or 0
				if _hackbox == 1 then
					self._chance = 999
				end
			elseif self._id == 102624 then]]
			if self._id == 102624 then
				local _no_fence = (RNGModifier:SafeGetData(_level_id, "_no_fence") or 0) - 1
				if _no_fence == 1 then
					self._chance = 999
				end
			end
		elseif _level_id == "firestarter_3" then
			if self._id == 100195 or self._id == 100196 then
				local _vault_gate = RNGModifier:SafeGetData(_level_id,"_vault_gate")
				if _vault_gate == 2 then
					self._chance = 0
				end
			end
		elseif _level_id == "branchbank" then
			if self._id == 100195 or self._id == 100196 then
				local _vault_gate = RNGModifier:SafeGetData(_level_id,"_vault_gate")
				if _vault_gate == 2 then
					self._chance = 0
				end
			elseif self._id == 104515 then
				local _deposit = RNGModifier:SafeGetData(_level_id,"_deposit")
				if _deposit == 2 then
					self._chance = 0
				elseif _deposit == 3 then
					self._chance = 999
				end			
			end
		elseif _level_id == "election_day_1" then
			if self._id == 104564 then
				local _chance_of_container = RNGModifier:SafeGetData(_level_id, "_chance_of_container") or 0
				if _chance_of_container == 2 then
					self._chance = -999
				end
			end
		elseif _level_id == "election_day_2" then
			if self._id == 102497 then
				--Setting up choices
				if not _tmp_data[_level_id] then
					_tmp_data[_level_id] = {}
				end
				
				if not _tmp_data[_level_id]["machines_1_to_8"] then
					_tmp_data[_level_id]["machines_1_to_8"] = {}
					_tmp_data[_level_id]["machines_9_to_16"] = {}
					_tmp_data[_level_id]["machines_17_to_20"] = {}
					_tmp_data[_level_id]["machines_21_to_24"] = {}
					_tmp_data[_level_id]["machines_25_to_28"] = {}
					_tmp_data[_level_id]["machines_29_to_32"] = {}
					_tmp_data[_level_id]["machines_33_to_40"] = {}
					_tmp_data[_level_id]["machines_41_to_44"] = {}
					_tmp_data[_level_id]["machines_45_to_50"] = {}
					
					_tmp_data[_level_id]["machines_1_to_16"] = {}
					_tmp_data[_level_id]["machines_17_to_50"] = {}
					
					local cage_machine_option_str = {"_machine_cage_1","_machine_cage_2"}
					
					for i, option_str in ipairs(cage_machine_option_str) do
						local option_value = (RNGModifier:SafeGetData(_level_id, option_str) or 0) - 1
						
						if option_value >= 1 and option_value <= 8 and not table.contains(_tmp_data[_level_id]["machines_1_to_8"], option_value) and #_tmp_data[_level_id]["machines_1_to_8"] < 2 then
							table.insert(_tmp_data[_level_id]["machines_1_to_8"], option_value)
							table.insert(_tmp_data[_level_id]["machines_1_to_16"], option_value)
						elseif option_value >= 9 and option_value <= 16 and not table.contains(_tmp_data[_level_id]["machines_9_to_16"], option_value) and #_tmp_data[_level_id]["machines_9_to_16"] < 2  then
							table.insert(_tmp_data[_level_id]["machines_9_to_16"], option_value - 8)
							table.insert(_tmp_data[_level_id]["machines_1_to_16"], option_value)
						end
					end
					
					local machine_option_str = {"_machine_1","_machine_2","_machine_3","_machine_4","_machine_5","_machine_6"}
					
					for i, option_str in ipairs(machine_option_str) do
						local option_value = (RNGModifier:SafeGetData(_level_id, option_str) or 0) - 1
						local offset = 16
						
						if option_value >= 17 - offset and option_value <= 20 - offset and not table.contains(_tmp_data[_level_id]["machines_17_to_20"], option_value) and #_tmp_data[_level_id]["machines_17_to_20"] < 2  then
							table.insert(_tmp_data[_level_id]["machines_17_to_20"], option_value)
							table.insert(_tmp_data[_level_id]["machines_17_to_50"], option_value)
						elseif option_value >= 21 - offset and option_value <= 24 - offset and not table.contains(_tmp_data[_level_id]["machines_21_to_24"], option_value) and #_tmp_data[_level_id]["machines_21_to_24"] < 2 then
							table.insert(_tmp_data[_level_id]["machines_21_to_24"], option_value - 4)
							table.insert(_tmp_data[_level_id]["machines_17_to_50"], option_value)
						elseif option_value >= 25 - offset and option_value <= 28 - offset and not table.contains(_tmp_data[_level_id]["machines_25_to_28"], option_value) and #_tmp_data[_level_id]["machines_25_to_28"] < 2 then
							table.insert(_tmp_data[_level_id]["machines_25_to_28"], option_value - 8)
							table.insert(_tmp_data[_level_id]["machines_17_to_50"], option_value)
						elseif option_value >= 29 - offset and option_value <= 32 - offset and not table.contains(_tmp_data[_level_id]["machines_29_to_32"], option_value) and #_tmp_data[_level_id]["machines_29_to_32"] < 1 then
							table.insert(_tmp_data[_level_id]["machines_29_to_32"], option_value - 12)
							table.insert(_tmp_data[_level_id]["machines_17_to_50"], option_value)
						elseif option_value >= 33 - offset and option_value <= 40 - offset and not table.contains(_tmp_data[_level_id]["machines_33_to_40"], option_value) and #_tmp_data[_level_id]["machines_33_to_40"] < 5 then
							table.insert(_tmp_data[_level_id]["machines_33_to_40"], option_value - 16)
							table.insert(_tmp_data[_level_id]["machines_17_to_50"], option_value)
						elseif option_value >= 41 - offset and option_value <= 44 - offset and not table.contains(_tmp_data[_level_id]["machines_41_to_44"], option_value) and #_tmp_data[_level_id]["machines_41_to_44"] < 2 then
							table.insert(_tmp_data[_level_id]["machines_41_to_44"], option_value - 24)
							table.insert(_tmp_data[_level_id]["machines_17_to_50"], option_value)
						elseif option_value >= 45 - offset and option_value <= 50 - offset and not table.contains(_tmp_data[_level_id]["machines_45_to_50"], option_value) and #_tmp_data[_level_id]["machines_45_to_50"] < 2 then
							table.insert(_tmp_data[_level_id]["machines_45_to_50"], option_value - 28)
							table.insert(_tmp_data[_level_id]["machines_17_to_50"], option_value)
						end
					end
				end
				
				--Fail this roll if 1 to 8 is used
				if #_tmp_data[_level_id]["machines_1_to_8"] > 0 then
					self._chance = 0
				end
				
				--[[local _chance_of_jackpot = RNGModifier:SafeGetData(_level_id, "_chance_of_jackpot") or 0
				if _chance_of_jackpot == 2 then
					self._chance = 999
				end]]
			elseif self._id == 103889 then
				--Fail this roll if 9 to 16 is used
				if #_tmp_data[_level_id]["machines_9_to_16"] > 0 then
					self._chance = 0
				end
			end
			
		elseif _level_id == "election_day_3" or _level_id == "election_day_3_skip1"  or _level_id == "election_day_3_skip2" then
			if self._id == 103562 then
				local _chance_of_crash = RNGModifier:SafeGetData(_level_id, "_chance_of_crash") or 0
				if _chance_of_crash > 0 then
					self._chance = -999
				end
			elseif self._id == 104602 then
				local _vault_chance = (RNGModifier:SafeGetData(_level_id, "_vault_chance") or 0) - 1
				if _vault_chance == 1 then
					self._chance = 999
				elseif _vault_chance == 2 then
					self._chance = -999
				end
			elseif self._id == 104527 then
				local _murphys_law = RNGModifier:SafeGetData(_level_id, "_murphys_law") or 0
				if _murphys_law > 0 then					
					self._chance = -999
				end
			elseif self._id == 104564 then
				local _murphys_law = RNGModifier:SafeGetData(_level_id, "_murphys_law") or 0
				if _murphys_law > 0 then
					self._chance = -999
				end
			end
		elseif _level_id == "ukrainian_job" then
			if self._id == 101566 then
				local _escape_chance = RNGModifier:SafeGetData(_level_id, "_escape_chance") or 0
				if _escape_chance > 0 then
					self._chance = 999
				end
			elseif table.contains({103498,102139,103094,103038}, self._id) then
				local _event_chance = RNGModifier:SafeGetData(_level_id, "_event_chance") or 0
				if _event_chance > 0 then
					self._chance = -999
				end
			elseif self._id == 103585 then
				local _event_chance = RNGModifier:SafeGetData(_level_id, "_event_chance") or 0
				if _event_chance > 0 then
					self._chance = 999
				end
			end
		elseif _level_id == "jewelry_store" then
			if self._id == 101430 then
				local _escape_chance = RNGModifier:SafeGetData(_level_id, "_escape_chance") or 0
				if _escape_chance > 0 then
					self._chance = 999
				end
			elseif self._id == 102543 or self._id == 102421 then
				local _money_chance = RNGModifier:SafeGetData(_level_id, "_money_chance") or 0
				if _money_chance > 0 then
					self._chance = 999
				end
			end
		elseif _level_id == "shoutout_raid" then
			if self._id == 100326 then
				local _70_chance = RNGModifier:SafeGetData(_level_id, "_70_chance") or 0
				if _70_chance == 2 then
					self._chance = -999
				elseif _70_chance == 3 then
					self._chance = 999
				end
			end
		
		elseif _level_id == "red2" then
			if self._id == 102556 then
				local _chance_correct_code = RNGModifier:SafeGetData(_level_id, "_chance_correct_code") or 0
				if _chance_correct_code == 1 then
					self._chance = 999
				end
			end			
		elseif _level_id == "des" then
			if self._id == 108693 then
				local _computer_hack = RNGModifier:SafeGetData(_level_id, "_computer_hack") or 0
				if _computer_hack > 0 then
					self._chance = 999
				end
			end
		elseif _level_id == "pbr" then
			if self._id == 102313 or self._id == 102316 or self._id == 102317 then
				local _big_satellite = RNGModifier:SafeGetData(_level_id, "_big_satellite")
				if _big_satellite == 2 then
					self._chance = 999
				elseif _big_satellite == 3 then
					self._chance = -999
				end
			end
		elseif _level_id == "pbr2" then
			if self._id == 100757 or self._id == 100963 then
				--Active street option if any pallet option is used
				if GetMultipleChoiceValue(_level_id, "_pallet_1") > 0
				or GetMultipleChoiceValue(_level_id, "_pallet_2") > 0
				or GetMultipleChoiceValue(_level_id, "_broken_pallet") > 0 then
					self._chance = 0
				end
			elseif self._id == 100966 then
				local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
				local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
				self._chance = pallet_1 == 5 and 100 or pallet_2 == 5 and 100 or 0
			elseif self._id == 100968 then
				local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
				local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
				self._chance = pallet_1 >= 13 and pallet_1 <= 14 and 100 or pallet_2 >= 13 and pallet_2 <= 14 and 100 or 0
			end
		elseif _level_id == "chas" then
			if self._id == 103327 then
				local _keycard_special = (RNGModifier:SafeGetData(_level_id, "_keycard_special") or 0) - 1
				if _keycard_special > 0 then
					self._chance = 100
				end
			elseif self._values.instance_name then
				if self._values.instance_name == "chas_vault_gate_blowtorch_001" and self._editor_name == "chance_to_open" then
					local _key_success = (RNGModifier:SafeGetData(_level_id, "_key_success") or 0) - 1
					if _key_success > 0 then self._chance = 100	end
				end
			end
		elseif _level_id == "watchdogs_2" or _level_id == "watchdogs_2_day" then
			if self._id == 101485 then
				local _gate = GetCheckboxValue(_level_id, "_gate")
				if _gate then
					self._chance = 0
				
				end
			elseif self._id == 103300 then
				local _heli = GetCheckboxValue(_level_id, "_heli")
				if _heli then
					self._chance = 0
				
				end
			end
		elseif _level_id == "four_stores" then
			if self._id == 102550 or self._id == 102089 then
				local _ATM = GetCheckboxValue(_level_id, "_ATM")
				if _ATM then
					self._chance = 0				
				end
			end
		elseif _level_id == "hox_2" then
			if self._id == 103538 then
				local entrances = (RNGModifier:SafeGetData(_level_id, "_entrances") or 0) - 1
				if entrances > 0 then
					if entrances == 6 then self._chance = 100 else self._chance = 0 end
				end
			elseif self._id == 101568 then
				local entrances = (RNGModifier:SafeGetData(_level_id, "_entrances") or 0) - 1
				if entrances > 0 then
					if entrances == 1 and self._chance == 40 then self._chance = 100 else self._chance = 0 end
				end
			elseif self._id == 102029 then
				local corridor_block = (RNGModifier:SafeGetData(_level_id, "_corridor_block") or 0) - 1
				if corridor_block > 0 then
					if corridor_block == 1 then self._chance = 100 elseif corridor_block == 2 then self._chance = 0 end
				end
			elseif self._id == 101746 then
				--[[local extra_keycard_chance = (RNGModifier:SafeGetData(_level_id, "_extra_keycard_chance") or 0) - 1
				if extra_keycard_chance > 0 then
					if extra_keycard_chance == 1 then self._chance = 100 end
				end]]
				local extra_keycard = (RNGModifier:SafeGetData(_level_id, "_extra_keycard") or 0) - 1
				if extra_keycard > 0 then self._chance = 100 end
			end
		elseif _level_id == "born" then
			if self._id == 101332 then
				local _tool_chance = GetCheckboxValue(_level_id, "_tool_chance")
				if _tool_chance then
					self._chance = 100
				end
			elseif self._id == 100731 then
				local _objective = GetMultipleChoiceValue(_level_id, "_objective")
				local _objective_two = GetMultipleChoiceValue(_level_id, "_objective_two")
				
				if _objective == 3 or _objective_two == 3 then
					self._chance = 100
				end
					
				local _soda = GetCheckboxValue(_level_id, "_soda")
				if _soda then
					self._chance = -999
				end
			end
		--[[local _test1 = RNGModifier:SafeGetData(_level_id, "_test1") or 0
			_test1 = _test1 - 1
			if _test1 > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = self._chance
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
		elseif _level_id == "deep" then
			if self._id == 101073 then
				local _no_event = GetCheckboxValue(_level_id, "_no_event")
				if _no_event then
					self._chance = 0
				end
			end
		elseif _level_id == "rat" then
			if self._id == 100494 then
				local _no_cooking_delay = GetCheckboxValue(_level_id, "_no_cooking_delay")
				if _no_cooking_delay then
					self._chance = 100
				end
			end
		elseif _level_id == "alex_1" then
			if self._id == 100494 then
				local _no_cooking_delay = GetCheckboxValue(_level_id, "_no_cooking_delay")
				if _no_cooking_delay then
					self._chance = 100
				end
			elseif self._id == 101440 then
				local _no_escape = GetCheckboxValue(_level_id, "_no_escape")
				if _no_escape then
					self._chance = 0
				end
			end
			
		elseif _level_id == "crojob2" then
			if self._id == 100484 or self._id == 100526 or self._id == 100510 or self._id == 100533 then
				local _open_doors = GetCheckboxValue(_level_id, "_open_doors")
				if _open_doors then
					self._chance = 0
				end
			end
			
		elseif _level_id == "hox_3" then
			if self._id == 103347 then
				local _fake_boss = RNGModifier:SafeGetData(_level_id, "_fake_boss") or 0
				if _fake_boss > 0 then
					self._chance = -999
				end
			elseif self._id == 101782 then
				local _code = (RNGModifier:SafeGetData(_level_id,"_code") or 0) - 1
				if _code == 1 then
					self._chance = -999
				elseif _code == 2 then
					self._chance = 100
				end
			elseif self._id == 102227 then
				--[[local _fence = RNGModifier:SafeGetData(_level_id,"_fence") or 0 
				if _fence == 1 then
					self._chance = -999
				elseif _fence == 2 then
					self._chance = 999
				end]]
				
				if _tmp_data[_level_id]["fence_choices"] and #_tmp_data[_level_id]["fence_choices"] > 0 then
					if _tmp_data[_level_id]["fence_choices"][1] <= 4 then
						self._chance = 100
					else
						self._chance = 0
					end
				end
			end
		end
	end
	return RNGModifier_ElementLogicChance_on_executed(self, ...)
end

local RNGModifier_ElementLogicChanceOperator_on_executed = ElementLogicChanceOperator.on_executed

function ElementLogicChanceOperator:on_executed(...)
	if not self._values.enabled then
		return
	end
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		local _chance = 0
		if _level_id == "alex_3" then
			if self._id == 100325 then
				local _logic_chance_operator_002 = RNGModifier:SafeGetData(_level_id, "_logic_chance_operator_002") or 0
				if _logic_chance_operator_002 == 2 then
					_chance = -999			
				elseif _logic_chance_operator_002 == 3 then
					_chance = 999
				end
				if _chance ~= 0 then
					for _, id in ipairs(self._values.elements) do
						local element = self:get_mission_element(id)
						if element then
							element:chance_operation_set_chance(_chance)
						end
					end
					ElementLogicChanceOperator.super.on_executed(self, instigator)
					return
				end
			end			
		elseif _level_id == "pal" then
			local _boobytrap_chance = RNGModifier:SafeGetData(_level_id, "_boobytrap_chance") or 0
			if _boobytrap_chance == 1 then
			
			else
				if self._id == 101542 or self._id == 102295 or self._id == 102297 or self._id == 102298 or self._id == 102299 then
					return
				end
			end
		end
	end
	RNGModifier_ElementLogicChanceOperator_on_executed(self, ...)
end