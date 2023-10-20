core:module("CoreElementRandom")
core:import("CoreMissionScriptElement")
core:import("CoreTable")
ElementRandom = ElementRandom or class(CoreMissionScriptElement.MissionScriptElement)
dofile("mods/RNGModifier/Base.lua")

_G.RNGModifier = _G.RNGModifier or {}
RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end

if not RNGModifier._tmp_data then
	RNGModifier._tmp_data = {}
end
local _tmp_data = RNGModifier._tmp_data

--Convenient function to get multiple choice value
local GetMultipleChoiceValue = function(level_id, value_name)
	return (RNGModifier:SafeGetData(level_id, value_name) or 0) - 1
end

--Convenient function to get checkbox value
local GetCheckboxValue = function(level_id, value_name)
	return tonumber(RNGModifier:SafeGetData(level_id, value_name)) == 1 and true or false
end

function ElementRandom:_get_random_elements()
	local PickRandomFromList = function(r, na)
		local pr = RNGModifier:SafeGetData(tostring(Global.game_settings.level_id), na) or 0
		pr = pr - 1
		if pr > 0 then
			return pr
		end
		return r
	end
	local t = {}
	local rand = math.random(#self._unused_randoms)
	
	--This function is to prevent impossible RNG
	local GetIndexFromChoice = function(choice)
		if not choice or choice < 1 then return math.random(#self._unused_randoms) end
		
		--log("Choice:",choice)
		for i, option_value in ipairs(self._unused_randoms) do
			--log("Option_value:",option_value)
			if option_value == choice then
				--log("Match")
				return i
			end
		end
		
		--log("No match, impossible prevented")
		return math.random(#self._unused_randoms)
	end
	
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		local _randomchange = RNGModifier:SafeGetData("all_of_all", "_randomchange") or 0
		_randomchange = _randomchange - 1
		if _randomchange > 0 then
			if _randomchange == 1 then
				rand = 1
				
			elseif _randomchange == 2 then
				rand = #self._unused_randoms
				
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand

				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)


			elseif _randomchange == 3 then
				rand = GetIndexFromChoice(math.round((#self._unused_randoms)/2)+1)
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand

				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			elseif _randomchange == 4 then
				_tmp_data["all_of_all"] = _tmp_data["all_of_all"] or {}
				_tmp_data["all_of_all"]._randomchange = _tmp_data["all_of_all"]._randomchange or 0
				_tmp_data["all_of_all"]._randomchange = _tmp_data["all_of_all"]._randomchange + 1
				rand = (_tmp_data["all_of_all"]._randomchange)%(#self._unused_randoms) + 1
			end
		elseif _level_id == "nail" then
			if self._id == 101848 then --MU drop
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id]["spawn_mu"] then
					_tmp_data[_level_id]["spawn_mu"] = {}
					_tmp_data[_level_id]["spawn_cs"] = {}
					_tmp_data[_level_id]["spawn_hcl"] = {}
					
					local _ingredients = { "mu", "cs", "hcl" }
					for _index, _ingredient in ipairs(_ingredients) do
						for _i = 1, 3 do
							local _value = (RNGModifier:SafeGetData(_level_id, "_spawn_" .. _ingredient .. "_" .. _i) or 0) - 1
							
							--Fixing the order, CS only
							if _ingredient == "cs" then
								if _value == 1 then _value = 2
								elseif _value == 2 then _value = 1
								end
							end
							
							if _value > 0 then
								if not table.contains(_tmp_data[_level_id]["spawn_" .. _ingredient], _value) then
									table.insert(_tmp_data[_level_id]["spawn_" .. _ingredient], _value)
								end
							end
						end
					end
				end
				
				if #_tmp_data[_level_id]["spawn_mu"] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id]["spawn_mu"], 1))
				end
			elseif self._id == 101849 then --CS drop
				if #_tmp_data[_level_id]["spawn_cs"] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id]["spawn_cs"], 1))
				end
			elseif self._id == 101850 then --HCL drop
				if #_tmp_data[_level_id]["spawn_hcl"] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id]["spawn_hcl"], 1))
				end
			elseif self._id == 101807 then --Ingredient order
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].cook_order then
					_tmp_data[_level_id].cook_order = {}
					local _set = {{1,2,3},{1,3,2},{2,1,3},{2,3,1},{3,1,2},{3,2,1}}
					local _value = (RNGModifier:SafeGetData(_level_id, "_cook_order") or 0) - 1
					if _value > 0 then
						_tmp_data[_level_id].cook_order = _set[_value]
						_tmp_data[_level_id].cook_tracker = 1
					end					
				end
				
				if #_tmp_data[_level_id].cook_order > 0 then
					--log("Order: " .. _tmp_data[_level_id].cook_order[1] .. "," .. _tmp_data[_level_id].cook_order[2] .. "," .. _tmp_data[_level_id].cook_order[3])
					--log("Tracker, Value: " .. _tmp_data[_level_id].cook_tracker .. ", " .. _tmp_data[_level_id].cook_order[_tmp_data[_level_id].cook_tracker])
					rand = GetIndexFromChoice(_tmp_data[_level_id].cook_order[_tmp_data[_level_id].cook_tracker])
					_tmp_data[_level_id].cook_tracker = (_tmp_data[_level_id].cook_tracker % 3) + 1
				end
			elseif self._id == 100720 then
				rand = GetIndexFromChoice((RNGModifier:SafeGetData(_level_id, "_zipline") or 0) - 1)
			end
		elseif _level_id == "branchbank" then
			if self._id == 100726 then
				local _randVaultDoor = RNGModifier:SafeGetData(_level_id, "_randVaultDoor") or 1
				if _randVaultDoor == 1 then 
				
				elseif _randVaultDoor == 2 then 
					rand = 2
				elseif _randVaultDoor == 3 then 
					rand = 1
				end
			elseif self._id == 102237 then
				rand = PickRandomFromList(rand, "_outside_door")
			elseif self._id == 105112 then
				local _logic_random_026 = RNGModifier:SafeGetData(_level_id, "_logic_random_026") or 1
				if _logic_random_026 == 1 then 
				
				elseif _logic_random_026 == 2 then 
					rand = 1
				elseif _logic_random_026 == 3 then 
					rand = 2
				end
			elseif self._id == 104743 then
				local _logic_random_024 = RNGModifier:SafeGetData(_level_id, "_logic_random_024") or 1
				if _logic_random_024 == 1 then 
				
				elseif _logic_random_024 == 2 then 
					rand = 1
				elseif _logic_random_024 == 3 then 
					rand = 2
				elseif _logic_random_024 == 4 then 
					rand = 3
				end
			elseif self._id == 104306 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_number"))
			elseif self._id == 104307 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_letter"))
			end
			
			
		elseif _level_id == "arm_fac" then
			if self._id == 100028 then
				--[[local _truck_spawn = RNGModifier:SafeGetData(_level_id, "_rand_truck_amount") or 0
				if _truck_spawn > 2 then
					_truck_spawn = _truck_spawn + 2 
				end
				_truck_spawn = _truck_spawn - 1
				rand = _truck_spawn]]
				rand = PickRandomFromList(rand,"_truck_spawn")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand,"_esc")
			elseif self._id == 101631 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 100110 then
				rand = PickRandomFromList(rand,"_loot")
			elseif self._id == 100208 then
				rand = PickRandomFromList(rand,"_time")
			end
			
			
		elseif _level_id == "arm_par" then
			if self._id == 100028 then
				--[[local _truck_spawn = RNGModifier:SafeGetData(_level_id, "_rand_truck_amount") or 0
				if _truck_spawn > 2 then
					_truck_spawn = _truck_spawn + 2 
				end
				_truck_spawn = _truck_spawn - 1
				rand = _truck_spawn]]
				rand = PickRandomFromList(rand,"_truck_spawn")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand,"_esc")
			elseif self._id == 100110 then
				rand = PickRandomFromList(rand,"_loot")
			elseif self._id == 101336 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 100207 then
				rand = PickRandomFromList(rand,"_time")	
			end
			
			
		elseif _level_id == "arm_und" then
			if self._id == 100028 then
				--[[local _truck_spawn = RNGModifier:SafeGetData(_level_id, "_rand_truck_amount") or 0
				if _truck_spawn > 2 then
					_truck_spawn = _truck_spawn + 2 
				end
				_truck_spawn = _truck_spawn - 1
				rand = _truck_spawn]]
				rand = PickRandomFromList(rand,"_truck_spawn")
			elseif self._id == 100453 then
				rand = PickRandomFromList(rand,"_loot")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand,"_esc")
			elseif self._id == 100207 then
				rand = PickRandomFromList(rand,"_time")
			end
			
			
		elseif _level_id == "arm_cro" then
			if self._id == 100028 then
				--[[local _truck_spawn = RNGModifier:SafeGetData(_level_id, "_rand_truck_amount") or 0
				if _truck_spawn > 2 then
					_truck_spawn = _truck_spawn + 2 
				end
				_truck_spawn = _truck_spawn - 1
				rand = _truck_spawn]]
				rand = PickRandomFromList(rand,"_truck_spawn")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand,"_esc")
			elseif self._id == 100229 then
				rand = PickRandomFromList(rand,"_loot")
			elseif self._id == 101625 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 101879 then
				rand = PickRandomFromList(rand,"_time")
			end
			
			
		elseif _level_id == "arm_hcm" then
			if self._id == 100028 then
				--[[local _truck_spawn = RNGModifier:SafeGetData(_level_id, "_rand_truck_amount") or 0
				if _truck_spawn > 2 then
					_truck_spawn = _truck_spawn + 2 
				end
				_truck_spawn = _truck_spawn - 1
				rand = _truck_spawn]]
				rand = PickRandomFromList(rand,"_truck_spawn")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand,"_esc")
			elseif self._id == 100229 then
				rand = PickRandomFromList(rand,"_loot")
			elseif self._id == 100009 then
				rand = PickRandomFromList(rand,"_time")
			end
			
		elseif _level_id == "escape_overpass" or _level_id == "escape_overpass_night" then
			if self._id == 101976 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_esc"))
			elseif self._id == 100470 then
				local wait_time = GetCheckboxValue(_level_id, "_wait_time")
				if wait_time then rand = 1 end
			elseif self._id == 101984 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_spawn"))
			end	
			
		elseif _level_id == "escape_garage" then
			if self._id == 102408 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_esc"))
			end	
			
		elseif _level_id == "escape_street" then
			if self._id == 101956 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_esc"))
			elseif self._id == 101960 then
				local wait_time = GetCheckboxValue(_level_id, "_wait_time")
				if wait_time then rand = 2 end
			end	
			
		elseif _level_id == "escape_park" or _level_id == "escape_park_day" then
			if self._id == 100210 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_esc"))
			elseif self._id == 101106 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_spawn"))
			elseif self._id == 102447 then
				local wait_time = GetCheckboxValue(_level_id, "_wait_time")
				if wait_time then rand = 1 end
			end	
		
		elseif _level_id == "escape_cafe" or _level_id == "escape_cafe_day" then
			if self._id == 100253 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_esc"))
			elseif self._id == 100942 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_spawn"))
			elseif self._id == 100245 then
				local wait_time = GetCheckboxValue(_level_id, "_wait_time")
				if wait_time then rand = 1 end
			end	
			
		elseif _level_id == "cage" then
			if self._id == 104929 then
				rand = PickRandomFromList(rand, "_pick1_correct_computer")
			elseif self._id == 102384 then
				rand = PickRandomFromList(rand, "_choose_storage")
			elseif self._id == 102326 then
				rand = PickRandomFromList(rand, "_manager")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			end
			
		elseif _level_id == "fex" then
			if self._id == 144705 then
				rand = PickRandomFromList(rand, "_guard_keycard")
			elseif self._id == 100968 then
				rand = PickRandomFromList(rand, "_inner_sanctum")
			elseif self._id == 101409 then
				local _lever = (RNGModifier:SafeGetData(_level_id, "_lever") or 0) - 1
				if _lever == 1  then 
					rand = 1
				elseif _lever == 2 then 
					rand = 14
				end
			elseif self._id == 101280 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				local best_symbols = tonumber(RNGModifier:SafeGetData(_level_id, "_best_symbols")) == 1 and true or false
				if best_symbols then
					_tmp_data[_level_id]["best_symbols"] = rand	
						
					if _tmp_data[_level_id]["best_symbols"] then 
						rand = GetIndexFromChoice(5)
					end	
				end
			elseif self._id == 101293 then
				if _tmp_data[_level_id]["best_symbols"] then 
					rand = GetIndexFromChoice(5)
				end
			elseif self._id == 101294  then
				if _tmp_data[_level_id]["best_symbols"] then 
					rand = GetIndexFromChoice(6)
				end
			elseif self._id == 101295 then
				if _tmp_data[_level_id]["best_symbols"] then 
					rand = GetIndexFromChoice(7)
				end
			end	
			
		elseif _level_id == "corp" then
			if self._id == 101033 then
				local correct_computer = GetMultipleChoiceValue(_level_id, "_correct_computer")
				if correct_computer > 0 then
					local correct_computer_offset = {24,20,2,9,22,23,8,11,21,19,18,17,12,13,14,15,16,10,7,1,5,6,3,4}
					rand = correct_computer_offset[correct_computer]
				end
			elseif self._id == 100645 then
				local correct_computer = GetMultipleChoiceValue(_level_id, "_correct_computer")
				if correct_computer > 0 then
					local correct_computer_offset = {23,20,9,7,21,22,6,10,19,18,17,16,11,12,13,14,15,8,5,24,3,4,1,2}
					rand = GetIndexFromChoice(correct_computer_offset[correct_computer])
				end
			elseif self._id == 100972 then
				rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_phone"))
			elseif self._id == 100962 then
				rand = PickRandomFromList(rand, "_safe")
			elseif self._id == 101927 then
				rand = PickRandomFromList(rand, "_security_room")
			elseif self._id == 101642 then

				local keycard_1 = GetMultipleChoiceValue(_level_id, "_keycard_1")
				local keycard_2 = GetMultipleChoiceValue(_level_id, "_keycard_2")
				
				for i, choice in ipairs(self._unused_randoms) do
					if keycard_1 > 0 and choice == keycard_1 or keycard_2 > 0 and choice == keycard_2 then
						rand = i
						break
					end
				end
				
			elseif table.contains({101079,101081,101082,101083}, self._id) then
				local neo_code = GetMultipleChoiceValue(_level_id, "_neo_code")
				
				--1 digit options is 1 to 9, then 0
				--other digits are 0, then 1 to 9
				
				if neo_code == 1 then --0000
					if self._id == 101079 then
						rand = 10
					else
						rand = 1
					end
				elseif neo_code == 2 then --9999
					if self._id == 101079 then
						rand = 9
					else
						rand = 10
					end
				end
			end
			--[[local _neo_code = RNGModifier:SafeGetData(_level_id, "_neo_code") or 0
			_neo_code = _neo_code - 1
				if _neo_code == 1 then
					local _id_fix = self._id
					if table.contains({101081,101082,101083},_id_fix) then
						rand = 1
					elseif _id_fix == 101079 then
						rand = 10
					end
				elseif _neo_code > 1 then
					local _id_fix = self._id
					if table.contains({101081,101082,101083},_id_fix) then
						rand = 10
					elseif _id_fix == 101079 then
						rand = 9
					end
				end
			]]
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
		elseif _level_id == "chas" then
			if self._id == 100126 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 101109 then
				rand = PickRandomFromList(rand,"_alarm_box")
			elseif self._id == 102485 then
				rand = PickRandomFromList(rand,"_keycard_locker")
			elseif self._id == 142130 then
				rand = PickRandomFromList(rand,"_right_keycard")
			elseif self._id == 145055 then
				rand = PickRandomFromList(rand,"_left_keycard")
			elseif self._id == 103330 then
				rand = PickRandomFromList(rand,"_keycard_special")
			elseif self._id == 102403 then
				rand = PickRandomFromList(rand,"_keycard_warehouse")
			--[[elseif self._id == 101823 then
				rand = PickRandomFromList(rand,"_code")
			elseif self._id == 102028 or self._id == 102029 or self._id == 102030 or self._id == 102031 then
				local _notepad_4th = GetMultipleChoiceValue(_level_id, "_notepad_4th")
				if _notepad_4th == 1 then -- Notepad 4th all 0
					rand = 1
				end								
			elseif self._id == 101902 or self._id == 101903 or self._id == 101904 or self._id == 101905 then
				local _notepad_2nd = GetMultipleChoiceValue(_level_id, "_notepad_2nd")
				if _notepad_2nd == 1 then -- Notepad 2nd all 0
					rand = 1
				end				
			elseif self._id == 101859 or self._id == 101860 or self._id == 101861 or self._id == 101862 then
				local _notepad_1st = GetMultipleChoiceValue(_level_id, "_notepad_1st")
				if _notepad_1st == 1 then -- Notepad 1st all 0
					rand = 1
				end]]			
			elseif self._id == 102401 then
				rand = PickRandomFromList(rand,"_crowbar_auction")
			elseif self._id == 102402 then
				rand = PickRandomFromList(rand,"_crowbar_warehouse")
			elseif self._id == 101325 then
				rand = PickRandomFromList(rand,"_blue_wire")
			elseif self._id == 101324 then
				rand = PickRandomFromList(rand,"_green_wire")
			elseif self._id == 101323 then
				rand = PickRandomFromList(rand,"_red_wire")
			elseif self._id == 101326 then
				rand = PickRandomFromList(rand,"_yellow_wire")
			elseif self._id == 136592 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["randomize_laser_colors"] = _tmp_data[_level_id]["randomize_laser_colors"] or 0
				_tmp_data[_level_id]["randomize_laser_colors"] = _tmp_data[_level_id]["randomize_laser_colors"] + 1
				if _tmp_data[_level_id]["randomize_laser_colors"] == 1 then
					local _laser_color_A = RNGModifier:SafeGetData(_level_id, "_laser_color_A") or 0
					_laser_color_A = _laser_color_A - 1
					if _laser_color_A > 0 then
						rand = _laser_color_A
					end
				else
					local _laser_color_B = RNGModifier:SafeGetData(_level_id, "_laser_color_B") or 0
					_laser_color_B = _laser_color_B - 1
					if _laser_color_B > 0 then
						rand = _laser_color_B
					end
				end
			elseif self._id == 100211 then
				rand = PickRandomFromList(rand,"_dragon_crate")
			elseif self._id == 101111 then
				rand = PickRandomFromList(rand,"_security_room")
			end
			
			local _notepad_code = GetCheckboxValue(_level_id, "_notepad_code")
			if _notepad_code then
				if self._id == 101951 then	-- Notepad 3rd 1st = 0
					rand = 10
				elseif table.contains({101859,101860,101861,101862,101902,101903,101904,101905,101952,101953,101954,102028,102029,102030,102031,101823}, self._id) then
					rand = 1
				end
			end	
			
			--[[local _notepad_3rd = GetMultipleChoiceValue(_level_id, "_notepad_3rd")
			if _notepad_3rd == 1 then
				if self._id == 101951 then	-- Notepad 3rd 1st = 0
					rand = 10
				elseif self._id == 101952 or self._id == 101953 or self._id == 101954 then
					rand = 1
				end
			end]]	
			
		elseif _level_id == "framing_frame_1" or _level_id == "gallery" then
			if self._id == 100515 then							
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
					if not _tmp_data[_level_id].painting then
						_tmp_data[_level_id].painting = {}						
						local best_painting = (RNGModifier:SafeGetData(_level_id,"_painting") or 0)
						--local correct_painting = {41,42,39,43,40,46}
						if best_painting > 0 then _tmp_data[_level_id].painting = {41,42,39,43,40,46} end													
					end
					
					if _tmp_data[_level_id].painting and #_tmp_data[_level_id].painting > 0 then
						local painting = table.remove(_tmp_data[_level_id].painting, 0)
						rand = painting
					end
			elseif self._id == 103414 then
				rand = 1
			end		
		elseif _level_id == "framing_frame_3" then
			if self._id == 105506 then
				rand = PickRandomFromList(rand, "_chooseServerRoom")
			end
			if self._id == 100697 then
			
				local _spawnRandomHarrdDrive_A = (RNGModifier:SafeGetData(_level_id, "_spawnRandomHarrdDrive_A") or 0) - 1
				local _spawnRandomHarrdDrive_B = (RNGModifier:SafeGetData(_level_id, "_spawnRandomHarrdDrive_B") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _spawnRandomHarrdDrive_A or choice == _spawnRandomHarrdDrive_B then
						rand = i
						break
					end
				end
			end
			if self._id == 100714 then
				rand = PickRandomFromList(rand, "_SpawnRandomPhone")
			elseif self._id == 100784 then
				rand = PickRandomFromList(rand, "_spawnRandomPads")
			elseif self._id == 104086 then
				rand = PickRandomFromList(rand, "_spawnRandomLaptop")
			elseif self._id == 100461 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_spawnRandomVault"))
			elseif self._id == 103893 then
				rand = PickRandomFromList(rand, "_block")
			end
			
		elseif _level_id == "help" then
			if self._id == 100854 then
				rand = PickRandomFromList(rand, "_c4")
			elseif self._id == 100016 then
				rand = PickRandomFromList(rand, "_next_wheel")
			end
			
		elseif _level_id == "friend" then
			if self._id == 100825 then
				rand = PickRandomFromList(rand, "_pick_rand_escape_vehicle")
			elseif self._id == 102772 then
				rand = PickRandomFromList(rand, "_random_phone_location")
			elseif self._id == 100331 then
				rand = PickRandomFromList(rand, "_laptop_location")
			elseif self._id == 100326 then
				rand = PickRandomFromList(rand, "_usb_boss")
			elseif self._id == 102517 then
				rand = PickRandomFromList(rand, "_coke")
			elseif self._id == 102725 then
				rand = PickRandomFromList(rand, "_coke_mic")
			elseif self._id == 102049 then
				rand = PickRandomFromList(rand, "_button")
			elseif self._id == 102087 then
				rand = PickRandomFromList(rand, "_door")
			end
			
			
		elseif _level_id == "watchdogs_1" or _level_id == "watchdogs_1_night" then
			if self._id == 100770 then
				rand = PickRandomFromList(rand, "_chooseLootVehicle")
			elseif self._id == 102854 then
				rand = PickRandomFromList(rand, "_chooseRandomChopper")
			elseif self._id == 101217 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_chopper_time"))
			end
			
		elseif _level_id == "watchdogs_2" or _level_id == "watchdogs_2_day" then
			if self._id == 101552 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_boat"))
			elseif self._id == 101116 then
				local delay = GetCheckboxValue(_level_id, "_delay")
				if delay then rand = 4 end
			end
			
		elseif _level_id == "hox_2" then
			if self._id == 104518 then
				_tmp_data["hox_2"] = _tmp_data["hox_2"] or {}
				_tmp_data["hox_2"]["_rnd_excursion"] = _tmp_data["hox_2"]["_rnd_excursion"] or 0
				_tmp_data["hox_2"]["_rnd_excursion"] = _tmp_data["hox_2"]["_rnd_excursion"] + 1
				local _rnd_excursion = _tmp_data["hox_2"]["_rnd_excursion"]
				local _eID = {}
				for _, _name in pairs({"_select_excursion_A", "_select_excursion_B", "_select_excursion_C"}) do
					local _var = RNGModifier:SafeGetData("hox_2", _name) or 0
					if _var > 1 then
						table.insert(_eID, (RNGModifier:SafeGetData("hox_2", _name) - 1))
					end
				end
				_rnd_excursion = _eID[_rnd_excursion]
				if type(_rnd_excursion) == 'number' and _rnd_excursion > 0 then
					_rnd_excursion = table.index_of(self._unused_randoms, _rnd_excursion)
					if _rnd_excursion > 0 then
						rand = _rnd_excursion
					end
				end
			elseif self._id == 104419 then
				rand = PickRandomFromList(rand, "_select_random_powerbox")
			elseif self._values.instance_name and self._values.instance_name:find("hox_fbi_it_office_00") and self._editor_name == "random" then
				rand = PickRandomFromList(rand, "_server")
			elseif self._id == 104943 or (self._editor_name == "enable_random" and self._id == 133550) then
				--Testimony
				local use_closest_testimony_shelf = tonumber(RNGModifier:SafeGetData(_level_id, "_testimony_shelf")) == 1 and true or false
				if use_closest_testimony_shelf then rand = 2 end
			elseif self._id == 101410 then
				local first_evidence_correct = tonumber(RNGModifier:SafeGetData(_level_id, "_correct_evidence")) == 1 and true or false
				if first_evidence_correct then rand = 1 end
			elseif self._id == 105161 then
				--Easy evidence part 1
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id]["easy_evidence_1"] then
					local easy_evidence = (RNGModifier:SafeGetData(_level_id, "_easy_evidence") or 0) - 1
					if easy_evidence > 0 then
						local easy_evidence_offset = {15,10,9}
						rand = easy_evidence_offset[easy_evidence]
						_tmp_data[_level_id]["easy_evidence_1"] = true
					end
				end
			elseif self._editor_name == "set_random_evidence" then
				--Easy evidence part 2
				local easy_evidence = (RNGModifier:SafeGetData(_level_id, "_easy_evidence") or 0) - 1
				if easy_evidence > 0 then
					local easy_evidence_offset = {2,4,4}
					rand = easy_evidence_offset[easy_evidence]
				end
			elseif self._id == 101837 then
				--Server location part 1
				local server_location = (RNGModifier:SafeGetData(_level_id, "_server_location") or 0) - 1
				if server_location > 0 then
					if server_location <= 4 then rand = 1 else rand = 2 end
				end
			elseif self._id == 104635 then
				--Server location part 2
				local server_location = (RNGModifier:SafeGetData(_level_id, "_server_location") or 0) - 1
				if server_location > 0 then
					if server_location > 4 then
						server_location = server_location - 4
					end
					rand = server_location
				end
			elseif self._id == 101825 then
				--Entrances, when 3
				local entrances = (RNGModifier:SafeGetData(_level_id, "_entrances") or 0) - 1
				if entrances > 0 then
					local entrances_offset = {2,1,4,3}
					rand = GetIndexFromChoice(entrances_offset[entrances - 1])
				end
			elseif self._id == 101469 then
				--Keycard 1 At spawn
				local keycard_1 = (RNGModifier:SafeGetData(_level_id, "_keycard_1") or 0) - 1
				if keycard_1 > 0 then
					rand = GetIndexFromChoice(keycard_1 + 6)
				end
			elseif self._id == 102075 then
				--Keycard 2 At Operation room (Hoxton)				
				if _tmp_data[_level_id] and _tmp_data[_level_id]["extra_keycard"] then
					local extra_keycard = (RNGModifier:SafeGetData(_level_id, "_extra_keycard") or 0) - 1
					if extra_keycard > 0 then rand = GetIndexFromChoice(extra_keycard) end
				else
					rand = PickRandomFromList(rand,"_keycard_2")
				end
			elseif self._id == 102132 then
				--Force spawn keycard 3 at Forencis, near Hoxton
				local explore_keycard = tonumber(RNGModifier:SafeGetData(_level_id, "_explore_keycard")) == 1 and true or false
				if explore_keycard then rand = 3 end
			elseif self._id == 102131 then
				--Keycard 3 Forencis
				local keycard_3 = (RNGModifier:SafeGetData(_level_id, "_keycard_3") or 0) - 1
				if keycard_3 > 0 then rand = GetIndexFromChoice(keycard_3) end
			elseif self._id == 102219 then
				--Extra keycard spawn in Operation room (Hoxton area)
				local extra_keycard = (RNGModifier:SafeGetData(_level_id, "_extra_keycard") or 0) - 1
				if extra_keycard > 0 then
					rand = 5
					_tmp_data[_level_id] = _tmp_data[_level_id] or {}
					_tmp_data[_level_id]["extra_keycard"] = true
				end 		
			end
		elseif _level_id == "hox_1" then
			if self._id == 102597 then
				rand = PickRandomFromList(rand, "_logic_random_002")
			elseif self._id == 102613 then
				rand = PickRandomFromList(rand, "_logic_random_005")
			elseif self._id == 102598 then
				rand = PickRandomFromList(rand, "_logic_random_003")
			elseif self._id == 102617 then
				rand = PickRandomFromList(rand, "_logic_random_006")
			elseif self._id == 102603 then
				rand = PickRandomFromList(rand, "_logic_random_004")
			elseif self._id == 101519 then
				rand = PickRandomFromList(rand, "_logic_random_007")
			elseif self._id == 101820 then
				local blocker_1 = (RNGModifier:SafeGetData(_level_id, "_blocker_1") or 0) - 1
				if blocker_1 > 0 then rand = GetIndexFromChoice(blocker_1) end
			elseif self._id == 101821 then
				local blocker_2 = (RNGModifier:SafeGetData(_level_id, "_blocker_2") or 0) - 1
				if blocker_2 > 0 then rand = GetIndexFromChoice(blocker_2) end
			end
		elseif _level_id == "mus" then
			local _chamber_controller = RNGModifier:SafeGetData(_level_id, "_chamber_controller") or 0
			_chamber_controller = _chamber_controller - 1
			if _chamber_controller > 0 then
				local _id_fix = self._id - 33575
				if _id_fix == 100001 then
					rand = 3
				--elseif _id_fix == 100059 or _id_fix == 100081 or _id_fix == 100097 or _id_fix == 100111 or _id_fix == 100127 or _id_fix == 100143 or _id_fix == 100159 then --i003
				elseif table.contains({100059,100081,100097,100111,100127,100143,100159}, _id_fix) then
					rand = 1
				end
			end
			
			if self._id == 101437 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["pick_boxes"] = _tmp_data[_level_id]["pick_boxes"] or 0
				_tmp_data[_level_id]["pick_boxes"] = _tmp_data[_level_id]["pick_boxes"] + 1
				for i = 1, 5 do
					local _pick_boxes = (RNGModifier:SafeGetData(_level_id, "_spawnboxes_" .. i) or 0) - 1
					local _pick_boxes_right = _pick_boxes
					for j = 1, i do
						local _pick_boxes_index = (RNGModifier:SafeGetData(_level_id, "_spawnboxes_" .. j) or 0) - 1
						if _pick_boxes > _pick_boxes_index then
							_pick_boxes_right = _pick_boxes_right - 1
						end
					end
					if _tmp_data[_level_id]["pick_boxes"] == i then
						if _pick_boxes_right > 0 then
							rand = _pick_boxes_right
						end
					end
				end
			elseif self._id == 100232 then
				local _security = (RNGModifier:SafeGetData(_level_id, "_security") or 0) - 1
				if _security == 2 then
					local _spawnbox_A = (RNGModifier:SafeGetData(_level_id, "_spawnbox_A") or 0) - 1
					if _spawnbox_A > 0 then
						rand = _spawnbox_A
					end
				end
			elseif self._id == 100260 then
				local _security = (RNGModifier:SafeGetData(_level_id, "_security") or 0) - 1
				if _security == 1 then
					local _spawnbox_A = (RNGModifier:SafeGetData(_level_id, "_spawnbox_A") or 0) - 1
					if _spawnbox_A > 0 then
						rand = _spawnbox_A
					end
				end
			elseif self._id == 100756 then
				rand = PickRandomFromList(rand,"_security")
			elseif self._id == 101445 then
				rand = PickRandomFromList(rand,"_box_at_end")
			elseif self._id == 101446 then
				rand = PickRandomFromList(rand,"_box_at_courtyard")
			elseif self._id == 101448 then
				rand = PickRandomFromList(rand,"_box_at_exhibit")
			elseif self._id == 100609 then
				rand = PickRandomFromList(rand,"_box_at_left_side")
			elseif self._id == 101689 then
				rand = PickRandomFromList(rand,"_box_in_room_right")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			end
			--[[
			local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end
			]]
			
			
		elseif _level_id == "moon" then
			--_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
			--Enabling the objectives
			if self._id == 100238 then
				local objective_choice_1 = (RNGModifier:SafeGetData(_level_id, "_objective_1") or 0) - 1
				local objective_choice_2 = (RNGModifier:SafeGetData(_level_id, "_objective_2") or 0) - 1
				local objective_choice_3 = (RNGModifier:SafeGetData(_level_id, "_objective_3") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == objective_choice_1 or choice == objective_choice_2 or choice == objective_choice_3 then
						rand = i
						break
					end
				end
			--Choosing next objective
			elseif self._id == 100240 then
				--Initialize data once
				if not _tmp_data[_level_id] then
					_tmp_data[_level_id] = {}
					_tmp_data[_level_id].objective_order = {}
					
					local objective_choice_1 = (RNGModifier:SafeGetData(_level_id, "_objective_1") or 0) - 1
					local objective_choice_2 = (RNGModifier:SafeGetData(_level_id, "_objective_2") or 0) - 1
					local objective_choice_3 = (RNGModifier:SafeGetData(_level_id, "_objective_3") or 0) - 1
					if objective_choice_1 > 0 then
						table.insert(_tmp_data[_level_id].objective_order, objective_choice_1)
					end
					if objective_choice_2 > 0 then
						table.insert(_tmp_data[_level_id].objective_order, objective_choice_2)
					end
					if objective_choice_3 > 0 then
						table.insert(_tmp_data[_level_id].objective_order, objective_choice_3)
					end
				end
				
				local valid_choice
				
				for i, objective_choice in ipairs(_tmp_data[_level_id].objective_order) do
					for j, choice in ipairs(self._unused_randoms) do
						if objective_choice == choice then
							rand = j
							table.remove(_tmp_data[_level_id].objective_order, i)
							valid_choice = true
							break
						end
					end	
					
					if valid_choice then
						break
					end
				end
			elseif self._id == 105956 then
				
				local uppers_1 = (RNGModifier:SafeGetData(_level_id, "_upper_toy_1") or 0) - 1
				local uppers_2 = (RNGModifier:SafeGetData(_level_id, "_upper_toy_2") or 0) - 1
				local uppers_3 = (RNGModifier:SafeGetData(_level_id, "_upper_toy_3") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == uppers_1 or choice == uppers_2 or choice == uppers_3 then
						rand = i
						break
					end
				end
			elseif self._id == 100071 then
				
				local belows_1 = (RNGModifier:SafeGetData(_level_id, "_below_toy_1") or 0) - 1
				local belows_2 = (RNGModifier:SafeGetData(_level_id, "_below_toy_2") or 0) - 1
				local belows_3 = (RNGModifier:SafeGetData(_level_id, "_below_toy_3") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == belows_1 or choice == belows_2 or choice == belows_3 then
						rand = i
						break
					end
				end
			elseif self._id == 101344 then
				rand = PickRandomFromList(rand, "_toy_choices")
			elseif self._id == 101343 then
				rand = PickRandomFromList(rand, "_shoe_choices")
			elseif self._id == 100031 then
				rand = PickRandomFromList(rand, "_pick_c4")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 100384 then		
				local gift_1 = (RNGModifier:SafeGetData(_level_id, "_wine_1") or 0) - 1
				local gift_2 = gift_1
				if gift_1 < 7 and gift_1 > 0 then
					gift_2 = gift_2 + 10
				end
				local gift_3 = gift_2 - 7
				local gift_4 = gift_2 - 6
				local gift_5 = gift_2 - 5
				local gift_6 = gift_2 - 4
				local gift_7 = gift_2 - 3
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == gift_1 or choice == gift_2 or choice == gift_3 or choice == gift_4 or choice == gift_5 or choice == gift_6 or choice == gift_7 then
						rand = i
						break
					end
				end
			elseif self._id == 101399 then
				local _wine_check = (RNGModifier:SafeGetData(_level_id, "_wine_1") or 0) - 1
				if _wine_check > 0 then
					if _wine_check > 7 then 
						rand = 7
					else 
						rand = 1
					end
				end
			elseif self._id == 100487 then
				rand = PickRandomFromList(rand, "_storage_shoe")
			elseif self._id == 100763 then
				rand = PickRandomFromList(rand, "_bag_toy")
			elseif self._id == 101277 then
				rand = PickRandomFromList(rand, "_gift_toy")
			elseif self._id == 136811 then
				rand = PickRandomFromList(rand, "_pick_gift_toy")
			end
			local _toy_choices = RNGModifier:SafeGetData(_level_id, "_toy_choices") or 0
			_toy_choices = _toy_choices - 1
			if _toy_choices >= 0 then
				if self._id == 100660 or self._id == 101225 or self._id == 101235 then
					rand = 1
				end
			end
			
		elseif _level_id == "roberts" then
			if self._id == 101946 then
				rand = PickRandomFromList(rand, "_rand_drop_location")
			elseif self._id == 103700 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
				if not _tmp_data[_level_id].money then
					_tmp_data[_level_id].money = {}
					local best_money = (RNGModifier:SafeGetData(_level_id, "_best_money") or 0) - 1
					if best_money > 0 then
						_tmp_data[_level_id].money = {1,2,3,4,5,6,7}
					end
				end
				
				if _tmp_data[_level_id].money and #_tmp_data[_level_id].money > 0 then
					local _money = table.remove(_tmp_data[_level_id].money, 1)
					rand = GetIndexFromChoice(_money)
				end
			end
			
		elseif _level_id == "rat" then
			if self._id == 101127 then
				rand = PickRandomFromList(rand, "_escape_position")
			elseif self._id == 102206 then
				rand = PickRandomFromList(rand, "_random_flare")
			elseif self._id == 100337 then
				rand = PickRandomFromList(rand, "_chose_methlab_position")
			elseif self._id == 101979 then
				rand = PickRandomFromList(rand, "_escape_time")
			elseif self._id == 102317 then
				local _shortened_rearrival = GetCheckboxValue(_level_id, "_shortened_rearrival")
				if _shortened_rearrival then rand = 1 end
			elseif table.contains({102217,102224,102222,102223}, self._id) then
				local _van_stays_longer = GetCheckboxValue(_level_id, "_van_stays_longer")
				if _van_stays_longer then rand = 2 end
			elseif self._id == 100833 or self._id == 100911 then
				local _shorter_ingredient_arrival = GetCheckboxValue(_level_id, "_shorter_ingredient_arrival")
				if _shorter_ingredient_arrival then rand = 1 end
			elseif self._id == 100732 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].cook_order then
					_tmp_data[_level_id].cook_order = {}
					local _set = {{1,2,3},{1,3,2},{2,1,3},{2,3,1},{3,1,2},{3,2,1}}
					local _value = GetMultipleChoiceValue(_level_id, "_cook_order")
					if _value > 0 then
						_tmp_data[_level_id].cook_order = _set[_value]
						_tmp_data[_level_id].cook_tracker = 1
					end					
				end
				
				if #_tmp_data[_level_id].cook_order > 0 then
					--log("Order: " .. _tmp_data[_level_id].cook_order[1] .. "," .. _tmp_data[_level_id].cook_order[2] .. "," .. _tmp_data[_level_id].cook_order[3])
					--log("Tracker, Value: " .. _tmp_data[_level_id].cook_tracker .. ", " .. _tmp_data[_level_id].cook_order[_tmp_data[_level_id].cook_tracker])
					rand = GetIndexFromChoice(_tmp_data[_level_id].cook_order[_tmp_data[_level_id].cook_tracker])
					_tmp_data[_level_id].cook_tracker = (_tmp_data[_level_id].cook_tracker % 3) + 1
				end
			elseif self._id == 101205 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].best_ingredients then
					local _best_ingredients = GetCheckboxValue(_level_id, "_best_ingredients")
					if _best_ingredients then
						_tmp_data[_level_id].best_ingredients = {
							{1,2,3,6,7,8,11},
							{1,2,3,9,10,12,13},
							{2,6,7,8,9,10,11}
						}
					end
				end
				
				if _tmp_data[_level_id].best_ingredients and #_tmp_data[_level_id].best_ingredients > 0 and #_tmp_data[_level_id].best_ingredients[1] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].best_ingredients[1], 1))
				end
			elseif self._id == 101206 then
				if _tmp_data[_level_id].best_ingredients and #_tmp_data[_level_id].best_ingredients > 0 and #_tmp_data[_level_id].best_ingredients[2] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].best_ingredients[2], 1))
				end
			elseif self._id == 101207 then
				if _tmp_data[_level_id].best_ingredients and #_tmp_data[_level_id].best_ingredients > 0 and #_tmp_data[_level_id].best_ingredients[3] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].best_ingredients[3], 1))
				end
			end
		
		elseif _level_id == "alex_1" then
			if self._id == 101979 then
				rand = PickRandomFromList(rand, "_escape_time")
			elseif self._id == 101439 then
				rand = PickRandomFromList(rand, "_escape")
			elseif self._id == 100732 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].cook_order then
					_tmp_data[_level_id].cook_order = {}
					local _set = {{1,2,3},{1,3,2},{2,1,3},{2,3,1},{3,1,2},{3,2,1}}
					local _value = GetMultipleChoiceValue(_level_id, "_cook_order")
					if _value > 0 then
						_tmp_data[_level_id].cook_order = _set[_value]
						_tmp_data[_level_id].cook_tracker = 1
					end					
				end
				
				if #_tmp_data[_level_id].cook_order > 0 then
					--log("Order: " .. _tmp_data[_level_id].cook_order[1] .. "," .. _tmp_data[_level_id].cook_order[2] .. "," .. _tmp_data[_level_id].cook_order[3])
					--log("Tracker, Value: " .. _tmp_data[_level_id].cook_tracker .. ", " .. _tmp_data[_level_id].cook_order[_tmp_data[_level_id].cook_tracker])
					rand = GetIndexFromChoice(_tmp_data[_level_id].cook_order[_tmp_data[_level_id].cook_tracker])
					_tmp_data[_level_id].cook_tracker = (_tmp_data[_level_id].cook_tracker % 3) + 1
				end
			elseif self._id == 101205 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].best_ingredients then
					local _best_ingredients = GetCheckboxValue(_level_id, "_best_ingredients")
					if _best_ingredients then
						_tmp_data[_level_id].best_ingredients = {
							{1,2,3,6,7,8,11},
							{1,2,3,9,10,12,13},
							{2,6,7,8,9,10,11}
						}
					end
				end
				
				if _tmp_data[_level_id].best_ingredients and #_tmp_data[_level_id].best_ingredients > 0 and #_tmp_data[_level_id].best_ingredients[1] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].best_ingredients[1], 1))
				end
			elseif self._id == 101206 then
				if _tmp_data[_level_id].best_ingredients and #_tmp_data[_level_id].best_ingredients > 0 and #_tmp_data[_level_id].best_ingredients[2] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].best_ingredients[2], 1))
				end
			elseif self._id == 101207 then
				if _tmp_data[_level_id].best_ingredients and #_tmp_data[_level_id].best_ingredients > 0 and #_tmp_data[_level_id].best_ingredients[3] > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].best_ingredients[3], 1))
				end
			end
			
		elseif _level_id == "arena" then
			_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
			local _are_pyro_booth = RNGModifier:SafeGetData(_level_id, "_are_pyro_booth") or 0
			_are_pyro_booth = _are_pyro_booth - 1
			if _are_pyro_booth > 0 then
				local _id_fix = self._id 
				if _id_fix == 134971 then
					rand = 2,3
				end
			end
			
			if self._id == 103685 then
				_tmp_data[_level_id].booth_order = _tmp_data[_level_id].booth_order or {}
				_tmp_data[_level_id].booth_picked = _tmp_data[_level_id].booth_picked or {}
				_tmp_data[_level_id].c4_order = _tmp_data[_level_id].c4_order or {}
				_tmp_data[_level_id].c4_picked = _tmp_data[_level_id].c4_picked or {}
				_tmp_data[_level_id].c4_order_index = _tmp_data[_level_id].c4_order_index or 1
				
				for i = 1, 5 do
					-- Initialize booth and c4 room priorities
					local location = (RNGModifier:SafeGetData(_level_id, "_c4_room_" .. i) or 0) - 1
					local colour = nil
					local adjusted_c4_number = location
					
					if location >= 1 and location <= 7 then
						colour = "red"
					elseif location >= 8 and location <= 14 then
						colour = "blue"
						adjusted_c4_number = adjusted_c4_number - 7
					elseif location >= 15 and location <= 20 then
						colour = "green"
						adjusted_c4_number = adjusted_c4_number - 14
					else
						colour = "yellow"
						adjusted_c4_number = adjusted_c4_number - 20
					end
					
					if location > 0 then
						if not table.contains(_tmp_data[_level_id].booth_order, colour) then
							table.insert(_tmp_data[_level_id].booth_order, colour)
							--log("insert: " .. colour)
						end
						
						if not table.contains(_tmp_data[_level_id].c4_order, colour) then
							table.insert(_tmp_data[_level_id].c4_order, colour .. adjusted_c4_number)
							--log("  insert: " .. (colour .. adjusted_c4_number))
							--log("    location: " .. location)
						end
					end
				end
				
				local extra_booth = (RNGModifier:SafeGetData(_level_id, "_extra_booth_1") or 0) - 1
				for i = 1, 2 do
					--Extra booths if not picked with C4 locations
					local colour = nil
					
					if extra_booth == 1 then
						colour = "red"
					elseif extra_booth == 2 then
						colour = "blue"
					elseif extra_booth == 3 then
						colour = "green"
					else
						colour = "yellow"
					end
					
					if extra_booth > 0 then
						if not table.contains(_tmp_data[_level_id].booth_order, colour) then
							table.insert(_tmp_data[_level_id].booth_order, colour)
							--log("insert: " .. colour)
						end
					end
					
					extra_booth = (RNGModifier:SafeGetData(_level_id, "_extra_booth_2") or 0) - 1
				end				
				
				for _, booth_colour in ipairs(_tmp_data[_level_id].booth_order) do
					if booth_colour == "red" then
						--Capitol Hill Candy
						table.insert(_tmp_data[_level_id].booth_picked, booth_colour)
						rand = 1
						break
					elseif booth_colour == "blue" then
						--Red Squares
						table.insert(_tmp_data[_level_id].booth_picked, booth_colour)
						rand = 2
						break
					end
				end
			
			--Pick remainder booths
			elseif self._id == 103688 then
				local valid_choice
				for i, booth_colour in ipairs(_tmp_data[_level_id].booth_order) do
					for j, choice in ipairs(self._unused_randoms) do
						if choice == 1 and not table.contains(_tmp_data[_level_id].booth_picked, booth_colour) and booth_colour == "red" then
							--Capitol Hill Candy
							valid_choice = true
						elseif choice == 2 and not table.contains(_tmp_data[_level_id].booth_picked, booth_colour) and booth_colour == "blue" then
							--Red Squares
							valid_choice = true
						elseif choice == 3 and not table.contains(_tmp_data[_level_id].booth_picked, booth_colour) and booth_colour == "yellow" then
							--Yellow (2 stores, or left side)
							valid_choice = true
						elseif choice == 4 and not table.contains(_tmp_data[_level_id].booth_picked, booth_colour) and booth_colour == "green" then
							--Green (1 store, or right side)
							valid_choice = true
						end
						
						if valid_choice then
							--log("Remainder booth picked: " .. booth_colour)
							table.insert(_tmp_data[_level_id].booth_picked, booth_colour)
							rand = j
							break
						end
					end
					
					if valid_choice then
						table.remove(_tmp_data[_level_id].booth_order, i)
						break
					end
				end
			
			--Empty room spawns
			elseif self._id == 102957 or self._id == 104037 or self._id == 104038 or self._id == 104039 then	
				local colour
				local valid_choice
				
				if self._id == 102957 then
					colour = "red"
				elseif self._id == 104037 then
					colour = "blue"
				elseif self._id == 104038 then
					colour = "yellow"
				elseif self._id == 104039 then
					colour = "green"
				end
				
				for i, c4_room in ipairs(_tmp_data[_level_id].c4_order) do
					if colour == string.sub(c4_room, 0, string.len(c4_room) - 1) then
						for j, choice in ipairs(self._unused_randoms) do
							if (colour .. choice) == c4_room and not table.contains(_tmp_data[_level_id].c4_picked, c4_room) then
								--log("Choosing: " .. c4_room)
								valid_choice = true
								table.insert(_tmp_data[_level_id].c4_picked, booth_colour)
								rand = j
								break
							end
						end
					end
					
					if valid_choice then
						table.remove(_tmp_data[_level_id].c4_order, i)
						break
					end
				end
				
				--Unmask room has lower priority than c4 rooms and can get ignored
				if not valid_choice then
					local _unmask_room = (RNGModifier:SafeGetData(_level_id, "_unmask_room") or 0) - 1
					if _unmask_room > 0 then
						if _unmask_room >= 1 and _unmask_room <= 7 and colour == "red" then
							for i, choice in ipairs(self._unused_randoms) do
								if choice == _unmask_room then
									--log("Leftover red: " .. i .. ", " .. _unmask_room)
									rand = i
									break
								end
							end
						elseif _unmask_room >= 8 and _unmask_room <= 14 and colour == "blue" then
							for i, choice in ipairs(self._unused_randoms) do
								if choice == _unmask_room - 7 then
									--log("Leftover blue: " .. i .. ", " .. _unmask_room)
									rand = i
									break
								end
							end
						end
					end
				end
				
			--C4 room spawns
			elseif self._id == 103714 then
				local location = (RNGModifier:SafeGetData(_level_id, "_c4_room_" .. _tmp_data[_level_id].c4_order_index) or 0) - 1
				
				while location <= 0 and _tmp_data[_level_id].c4_order_index < 5 do
					_tmp_data[_level_id].c4_order_index = _tmp_data[_level_id].c4_order_index + 1
					location = (RNGModifier:SafeGetData(_level_id, "_c4_room_" .. _tmp_data[_level_id].c4_order_index) or 0) - 1
				end
				--log("Index: " .. _tmp_data[_level_id].c4_order_index)
				--log("  Location: " .. location)
				if location > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == location then
							--log("    C4 choice: " .. choice)
							rand = i
							break
						end
					end
				end
				_tmp_data[_level_id].c4_order_index = _tmp_data[_level_id].c4_order_index + 1	
			elseif self._id == 101311 then
				local _select_security_room = RNGModifier:SafeGetData(_level_id, "_select_security_room") or 0
				_select_security_room = _select_security_room - 1
				if _select_security_room <= 0 then
				elseif _select_security_room == 1 then
					rand = math.random(2,4)
				else
					rand = _select_security_room - 1					
				end
			--Unmask room
			elseif self._id == 108494 then
				local _unmask_room = (RNGModifier:SafeGetData(_level_id, "_unmask_room") or 0) - 1
				if _unmask_room > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == _unmask_room then
							--log("Unmask room: " .. i .. ", " .. choice)
							rand = i
							break
						end
					end
				end
			elseif self._id == 104780 then
				_tmp_data[_level_id].vault_order = _tmp_data[_level_id].vault_order or {}
				_tmp_data[_level_id].vault_picked = _tmp_data[_level_id].vault_picked or {}
				
				if #_tmp_data[_level_id].vault_order == 0 then
					for i = 1, 3 do
						-- Initialize vault order
						local location = (RNGModifier:SafeGetData(_level_id, "_vault_" .. i) or 0) - 1
						
						if location > 0 then
							if not table.contains(_tmp_data[_level_id].vault_order, location) then
								table.insert(_tmp_data[_level_id].vault_order, location)
								--log("insert vault: " .. location)
							end
						end
					end
				end
				
				if #_tmp_data[_level_id].vault_order > #_tmp_data[_level_id].vault_picked then
					local valid_choice
					for _, vault in ipairs(_tmp_data[_level_id].vault_order) do
						--log("vault: " .. vault)
						if not table.contains(_tmp_data[_level_id].vault_picked, vault) then
							for i, choice in ipairs(self._unused_randoms) do
								--log("i, choice: " .. i .. ", " .. choice)
								if choice == vault and not table.contains(_tmp_data[_level_id].vault_picked, vault) then
									--log("  insert: " .. vault)
									table.insert(_tmp_data[_level_id].vault_picked, vault)
									rand = i
									valid_choice = true
									break
								end
							end
						else
							--log("skipping")
						end
						
						if valid_choice then
							break
						end
					end
				else
					--Pad if vault choices left
					rand = math.random(#self._unused_randoms)
					--log("pad vault: " .. self._unused_randoms[rand])
					table.insert(_tmp_data[_level_id].vault_picked, self._unused_randoms[rand])
				end
				
				--Reorder vault picks to match 104781
				if #_tmp_data[_level_id].vault_picked == 4 then
					--Old Order:TopLeft,BottomLeft,Bottom,BottomRight,ParkingLot,TopRight
					--New Order:ParkingLot,TopRight,TopLeft,BottomLeft,Bottom,BottomRight
					
					--[[
					for i, vault in ipairs(_tmp_data[_level_id].vault_picked) do
						log("i old: " .. vault)
					end]]
					
					for i, vault in ipairs(_tmp_data[_level_id].vault_picked) do
						if vault <= 4 then
							vault = vault + 2
						else
							vault = vault - 4
						end
						_tmp_data[_level_id].vault_picked[i] = vault
					end
					
					--[[
					for i, vault in ipairs(_tmp_data[_level_id].vault_picked) do
						log(" i new: " .. vault)
					end]]
				end
			elseif self._id == 104781 then
				local valid_choice
				for i, vault_picked in ipairs(_tmp_data[_level_id].vault_picked) do
					for j, choice in ipairs(self._unused_randoms) do
						if choice == vault_picked then
							--log("choice: " .. choice)
							rand = j
							valid_choice = true
							break
						end
					end
					
					if valid_choice then
						table.remove(_tmp_data[_level_id].vault_picked, i)
						break
					end
				end
			elseif self._id == 102010 then
				rand = PickRandomFromList(rand,"_forklift")
			elseif self._editor_name == "pick_2_shelfs" then
				if #self._unused_randoms == 5 then
					rand = PickRandomFromList(rand, "_c4_shelf_A")
				else
					rand = PickRandomFromList(rand, "_c4_shelf_B")
				end
			end
			
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end ]]
			
		elseif _level_id == "red2" then
			if self._id == 100053 then
				local box_A = (RNGModifier:SafeGetData(_level_id, "_box_A") or 0) - 1
				local box_B = (RNGModifier:SafeGetData(_level_id, "_box_B") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == box_A or choice == box_B then
						rand = i
						break
					end
				end
			elseif self._id == 106497 then
				rand = PickRandomFromList(rand,"_keycard")
			elseif self._id == 101415 then
				rand = PickRandomFromList(rand,"_computer")
			elseif self._id == 105575 then
				rand = PickRandomFromList(rand,"_server")
			elseif self._id == 105802 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 105496 then
				rand = PickRandomFromList(rand,"_gate")
			elseif self._id == 106428 then
				rand = PickRandomFromList(rand,"_bo")
			end
			
			
		elseif _level_id == "cane" then
			if self._id == 100225 then
				rand = PickRandomFromList(rand,"_chimney")
			elseif self._id == 101337 then
				rand = PickRandomFromList(rand,"_pick")
			elseif self._id == 100490 then
				rand = PickRandomFromList(rand,"_elf1")
			elseif self._id == 102516 then
				rand = PickRandomFromList(rand,"_elf2")
			end
			
		elseif _level_id == "firestarter_2" then
			if self._id == 104539 then
				rand = PickRandomFromList(rand, "_randServerRoom")
			--[[elseif self._id == 106836 then
				local securitybox_1 = (RNGModifier:SafeGetData(_level_id, "_securitybox_A") or 0) - 1
				local securitybox_2 = (RNGModifier:SafeGetData(_level_id, "_securitybox_B") or 0) - 1
				local securitybox_3 = (RNGModifier:SafeGetData(_level_id, "_securitybox_C") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == securitybox_1 or choice == securitybox_2 or choice == securitybox_3 then
						rand = i
						break
					end
				end]]
			elseif self._id == 106835 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id].security_box = {}
			
				local _securitybox_A = (RNGModifier:SafeGetData(_level_id, "_securitybox_A") or 0) - 1
				local _securitybox_B = (RNGModifier:SafeGetData(_level_id, "_securitybox_B") or 0) - 1
				
				table.insert(_tmp_data[_level_id].security_box, _securitybox_A)
				table.insert(_tmp_data[_level_id].security_box, _securitybox_B)

				if _tmp_data[_level_id].security_box[1] > 0 and _tmp_data[_level_id].security_box[1] <= 5 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[1])
				elseif _tmp_data[_level_id].security_box[2] > 0 and _tmp_data[_level_id].security_box[2] <= 5 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[2])
				end
			elseif self._id == 106991 then
				if _tmp_data[_level_id].security_box[1] > 5 and _tmp_data[_level_id].security_box[1] <= 10 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[1] % 5)
				elseif _tmp_data[_level_id].security_box[2] > 5 and _tmp_data[_level_id].security_box[2] <= 10 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[2] % 5)
				end
			elseif self._id == 106992 then
				if _tmp_data[_level_id].security_box[1] > 10 and _tmp_data[_level_id].security_box[1] <= 15 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[1] % 5)
				elseif _tmp_data[_level_id].security_box[2] > 10 and _tmp_data[_level_id].security_box[2] <= 15 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[2] % 5)
				end
			elseif self._id == 106993 then
				if _tmp_data[_level_id].security_box[1] > 15 and _tmp_data[_level_id].security_box[1] <= 20 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[1] % 5)
				elseif _tmp_data[_level_id].security_box[2] > 15 and _tmp_data[_level_id].security_box[2] <= 20 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[2] % 5)
				end
			elseif self._id == 106995 then
				if _tmp_data[_level_id].security_box[1] > 20 and _tmp_data[_level_id].security_box[1] <= 25 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[1] % 5)
				elseif _tmp_data[_level_id].security_box[2] > 20 and _tmp_data[_level_id].security_box[2] <= 25 then
					rand = PickRandomFromList(_tmp_data[_level_id].security_box[2] % 5)
				end
			elseif self._id == 106836 then
				if #_tmp_data[_level_id].security_box > 0 then
					local choice = _tmp_data[_level_id].security_box[1]
					table.remove(_tmp_data[_level_id].security_box,1)
					
					if choice > 20 and choice <= 25 then
						choice = choice + 5
					end
					rand = GetIndexFromChoice(choice)
				end
			end
			
		elseif _level_id == "firestarter_3" then
			if self._id == 105112 then
				rand = PickRandomFromList(rand, "_logic_random_026")
			elseif self._id == 104743 then
				rand = PickRandomFromList(rand, "_escape")
			elseif self._id == 100726 then
				rand = PickRandomFromList(rand, "_vault")
			elseif self._id == 102237 then
				rand = PickRandomFromList(rand, "_outside_door")
			end
		
			
		elseif _level_id == "arm_for" then
			if self._id == 100126 then
				rand = PickRandomFromList(rand, "_pick_rand_spawn")
			elseif self._id == 104736 then
				rand = PickRandomFromList(rand, "_vault1")
			elseif self._id == 104737 then
				rand = PickRandomFromList(rand, "_vault2")
			elseif self._id == 104738 then
				rand = PickRandomFromList(rand, "_vault3")
			elseif self._id == 102480 then
				rand = PickRandomFromList(rand, "_turret")
			end
			
			
		elseif _level_id == "big" then
			--"6 cash close to entrance"
			--"6-cash" Step 1, keep track of which cage based on vault door for step 3
			--"6-cash" Step 2, if vault door 1, make cage 3 spawn. If vault door 2, make cage 7 spawn
			--"6-cash" Step 3, Make cash amount in select cage 6
			
			if self._id == 104589 then --Server room
				rand = PickRandomFromList(rand, "_logic_random_024")
			elseif self._id == 102551 then --Vault door			
				rand = PickRandomFromList(rand, "_rand_vault_door")
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
					_tmp_data[_level_id]["cage_option"] = rand
				
				--[["6-cash" Step 1, keep track of which cage based on vault door for step 3
				
					
					
				local six_cash_closest_cage = tonumber(RNGModifier:SafeGetData(_level_id, "_six_cash_closest_cage")) == 1 and true or false
				if six_cash_closest_cage then
					
					
					local money_option_offset = {{13,14,15,16,17,18}, {37,38,39,40,41,42}, {19,20,21,22,23,24}, {1,2,3,4,5,6}}
					_tmp_data[_level_id]["money_option"] = money_option_offset[rand]
				end]]
			elseif self._id == 101786 then
				
				--[[if _tmp_data[_level_id]["money_option"] > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == _tmp_data[_level_id]["money_option"][1] then
							rand = i
							break
						end
					end
					table.remove(_tmp_data[_level_id]["money_option"], 1)
				end]]								
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id]["money_option"] then
					_tmp_data[_level_id]["money_option"] = {}
					local set_of_money = (RNGModifier:SafeGetData(_level_id, "_six_cash_closest_cage") or 0) - 1
					if set_of_money == 1 then
						_tmp_data[_level_id]["money_option"] = {13,14,15,16,17,18} -- MID UP
					elseif set_of_money == 2 then
						_tmp_data[_level_id]["money_option"] = {37,38,39,40,41,42} -- THERMITE
					elseif set_of_money == 3 then
						_tmp_data[_level_id]["money_option"] = {19,20,21,22,23,24} -- FIRST BELOW
					elseif set_of_money == 4 then
						_tmp_data[_level_id]["money_option"] = {1,2,3,4,5,6} -- FIRST UP
					elseif set_of_money == 5 then
						_tmp_data[_level_id]["money_option"] = {7,8,9,10,11,12} -- SECOND UP
					elseif set_of_money == 6 then
						_tmp_data[_level_id]["money_option"] = {25,26,27,28,29,30} -- SECOND BELOW
					elseif set_of_money == 7 then
						_tmp_data[_level_id]["money_option"] = {31,32,33,34,35,36} -- MID BELOW
					end
				end
				
				if _tmp_data[_level_id]["money_option"] and #_tmp_data[_level_id]["money_option"] > 0 then
					local _money = table.remove(_tmp_data[_level_id]["money_option"], 1)
					rand = GetIndexFromChoice(_money)
				end
			elseif self._id == 101853 then
				
				--[[if _tmp_data[_level_id]["money_option"] > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == _tmp_data[_level_id]["money_option"][1] then
							rand = i
							break
						end
					end
					table.remove(_tmp_data[_level_id]["money_option"], 1)
				end]]								
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id]["gold_option"] then
					_tmp_data[_level_id]["gold_option"] = {}
					local set_of_gold = (RNGModifier:SafeGetData(_level_id, "_four_gold_closest_cage") or 0) - 1
					if set_of_gold == 1 then
						_tmp_data[_level_id]["gold_option"] = {9,10,11,12} -- MID UP
					elseif set_of_gold == 2 then
						_tmp_data[_level_id]["gold_option"] = {25,26,27,28} -- THERMITE
					elseif set_of_gold == 3 then
						_tmp_data[_level_id]["gold_option"] = {13,14,15,16} -- FIRST BELOW
					elseif set_of_gold == 4 then
						_tmp_data[_level_id]["gold_option"] = {1,2,3,4} -- FIRST UP
					elseif set_of_gold == 5 then
						_tmp_data[_level_id]["gold_option"] = {5,6,7,8} -- SECOND UP
					elseif set_of_gold == 6 then
						_tmp_data[_level_id]["gold_option"] = {17,18,19,20} -- SECOND BELOW
					elseif set_of_gold == 7 then
						_tmp_data[_level_id]["gold_option"] = {21,22,23,24} -- MID BELOW
					end
				end
				
				if _tmp_data[_level_id]["gold_option"] and #_tmp_data[_level_id]["gold_option"] > 0 then
					local _gold = table.remove(_tmp_data[_level_id]["gold_option"], 1)
					rand = GetIndexFromChoice(_gold)
				end
				
			elseif self._id == 101692 then -- TOP FLOOR RIGHT SIDE EITHER NO MID (2) OR WITH MID (3)
				if _tmp_data[_level_id]["cage_option"] then --When vault door 1 and upper vault floor only
					rand = GetIndexFromChoice(3)
				end
			elseif self._id == 101717 then
				if _tmp_data[_level_id]["cage_option"] then
					--if _tmp_data[_level_id]["cage_option"] > 0 then --When vault door 1 and both vault floors
						rand = GetIndexFromChoice(7)
					--end
				end
			elseif self._id == 101718 then
				if _tmp_data[_level_id]["cage_option"] then
					--if _tmp_data[_level_id]["cage_option"] and _tmp_data[_level_id]["cage_option"] > 0 then
						rand = GetIndexFromChoice(3)
					--end
				end
			elseif self._id == 101668 then
				if _tmp_data[_level_id]["cage_option"] then 
					rand = GetIndexFromChoice(3)
				end
			elseif self._id == 102317 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id]["walls"] then
					_tmp_data[_level_id]["walls"] = {}
					local walls = (RNGModifier:SafeGetData(_level_id, "_walls") or 0) - 1
					if walls then
						_tmp_data[_level_id]["walls"] = {4,5} -- MID UP
					end
				end
				if _tmp_data[_level_id]["walls"] and #_tmp_data[_level_id]["walls"] > 0 then
					local _walls = table.remove(_tmp_data[_level_id]["walls"], 1)
					rand = GetIndexFromChoice(_walls)
				end
			elseif self._id == 102219 then --Timelock
				rand = PickRandomFromList(rand, "_pick_rand_floor")
			elseif self._id == 100697 then --Camera room
				rand = PickRandomFromList(rand, "_rand_room")
			elseif self._id == 103874 then
				rand = PickRandomFromList(rand, "_keybox")
			elseif self._id == 102721 then
				rand = PickRandomFromList(rand, "_keycard")
			elseif self._id == 102540 then
				local _random_keycard = RNGModifier:SafeGetData(_level_id, "_random_keycard") or 0
				_random_keycard = _random_keycard - 1
				if _random_keycard > 0 then
					if _random_keycard == 1 then
						rand = 21
					elseif _random_keycard == 2 then
						rand = 22
					end
				end
			end
			
		elseif _level_id == "pines" then
			if self._id == 100203 then
				local _random_santa_location = GetCheckboxValue(_level_id, "_random_santa_location")
				if _random_santa_location then
					rand = 1
				end
			elseif self._id == 105098 then
				--rand = GetIndexFromChoice(PickRandomFromList(rand, "_random_escape_location"))
				local _random_escape_location = (RNGModifier:SafeGetData(_level_id, "_random_escape_location") or 0) - 1
				local offset1 = {1,2,3,3}
				rand = GetIndexFromChoice(offset1[_random_escape_location])
			elseif self._id == 104842 then
				local _random_escape_location = (RNGModifier:SafeGetData(_level_id, "_random_escape_location") or 0) - 1
				local offset2 = {0,0,1,2}
				rand = GetIndexFromChoice(offset2[_random_escape_location])
			elseif self._id == 103966 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_random_door"))
			end
			
		elseif _level_id == "wwh" then
			if self._id == 100099 then
				rand = PickRandomFromList(rand, "_random_captain_location")
			elseif self._id == 100183 then
				rand = PickRandomFromList(rand, "_random_tanker_location")
			elseif self._id == 101078 then
				rand = PickRandomFromList(rand, "_random_health_bag")
			elseif self._id == 101079 then
				rand = PickRandomFromList(rand, "_random_ammo_bag")
			elseif self._id == 101080 then
				rand = PickRandomFromList(rand, "_random_grenade_crate")
			elseif table.contains({100187,100188,100189}, self._id) then
				rand = PickRandomFromList(rand, "_random_pump")
			end
			
			
		elseif _level_id == "glace" then
			if self._id == 100074 then
				local _random_correct_bus = RNGModifier:SafeGetData(_level_id, "_random_correct_bus") or 0
				_random_correct_bus = _random_correct_bus - 1
				if _random_correct_bus > 0 then
					if _random_correct_bus == 1 then
						rand = 2
					elseif _random_correct_bus == 2 then
						rand = 3
					elseif _random_correct_bus == 3 then
						rand = 1
					elseif _random_correct_bus == 4 then
						rand = 4
					end
				end
			end
			
			
		elseif _level_id == "dah" then
			if self._id == 103929 then
				rand = PickRandomFromList(rand, "_randomize_spawn")
			elseif self._id == 101655 then
				rand = PickRandomFromList(rand, "_rnd_Security_Rooms")
			elseif self._id == 103088 then
				rand = PickRandomFromList(rand, "_Randomize_Hackboxes")
			elseif self._id == 103187 then
				rand = PickRandomFromList(rand, "_heli_escape")
			elseif self._id == 100446 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_kc_civ"))
			elseif self._id == 103052 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_red_laptop"))
			elseif self._id == 103053 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_blue_laptop"))
			elseif self._id == 103054 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_green_laptop"))
			end
			local _laptop_code = RNGModifier:SafeGetData(_level_id, "_laptop_code") or 0
			_laptop_code = _laptop_code - 1
			if _laptop_code == 1 then
				local _id_fix = self._id
				if table.contains({103267,103268,103269,100344,100427,100379}, _id_fix) then
					rand = 10
				end
			elseif _laptop_code == 2 then
				local _id_fix = self._id
				if table.contains({103267,103268,103269,100344,100427,100379}, _id_fix) then
					rand = 1
				end
			end
			
		elseif _level_id == "chill_combat" then
			if self._id == 101335 then
				rand = PickRandomFromList(rand, "_rnd_money_pile_loaction")
			end	
		
		elseif _level_id == "run" then
			if self._id == 100522 then
				local _random_gas = GetCheckboxValue(_level_id, "_random_gas")
				if _random_gas then
					rand = 1
				end
			elseif self._id == 100987 then
				
				local gascan_1 = (RNGModifier:SafeGetData(_level_id, "_gascan_1") or 0) - 1
				local gascan_2 = (RNGModifier:SafeGetData(_level_id, "_gascan_2") or 0) - 1
				local gascan_3 = (RNGModifier:SafeGetData(_level_id, "_gascan_3") or 0) - 1
				local gascan_4 = (RNGModifier:SafeGetData(_level_id, "_gascan_4") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == gascan_1 or choice == gascan_2 or choice == gascan_3 or choice == gascan_4 then
						rand = i
						break
					end
				end
			end	
		
		elseif _level_id == "flat" then
			if self._id == 102715 then
				rand = PickRandomFromList(rand, "_entrance")
			elseif self._id == 101882 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_chavez"))
			elseif self._id == 103455 then
				rand = PickRandomFromList(rand, "_door")
			elseif self._id == 100499 then
				rand = 2
			elseif self._id == 103618 then
				rand = 1
			elseif self._id == 103171 or self._id == 104575 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_sniper"))
			end
			local _c4 = (RNGModifier:SafeGetData(_level_id, "_c4") or 0) - 1
			if _c4 == 1 then
				local _id_fix = self._id
				if table.contains({101572,102261}, _id_fix) then
					rand = GetIndexFromChoice(1)
				elseif _id_fix == 102251 then
					rand = GetIndexFromChoice(2)
				end
			elseif _c4 == 2 then
				local _id_fix = self._id
				if table.contains({101572,102261}, _id_fix) then
					rand = GetIndexFromChoice(2)
				elseif _id_fix == 102251 then
					rand = GetIndexFromChoice(1)
				end
			end
			
		elseif _level_id == "hvh" then
			if self._id == 100319 then
				rand = PickRandomFromList(rand, "_rnd_world")
			elseif self._id == 101205 then
				local _civ = RNGModifier:SafeGetData(_level_id, "_civ") or 0
				_civ = _civ - 1
				if _civ > 0 then
					rand = 13
				end			
			elseif self._id == 101207 then
				local cop_1 = (RNGModifier:SafeGetData(_level_id, "_cop_1") or 0) - 1
				local cop_2 = (RNGModifier:SafeGetData(_level_id, "_cop_2") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == cop_1 or choice == cop_2 then
						rand = i
						break
					end
				end
			end			
			
		elseif _level_id == "rvd1" then
			if self._id == 101365 then
				rand = PickRandomFromList(rand, "_rnd_storage_unit_location")
			elseif self._id == 100903 then
				rand = PickRandomFromList(rand, "_rnd_left_briefcase_pos")
			elseif self._id == 101076 then
				rand = PickRandomFromList(rand, "_rnd_mid_briefcase_pos")
			elseif self._id == 101316 then
				rand = PickRandomFromList(rand, "_rnd_back_briefcase_pos")
			elseif self._id == 100294 then
				rand = PickRandomFromList(rand, "_random_escape_position")
			elseif self._id == 100424 then
				rand = PickRandomFromList(rand, "_saw")
			elseif self._id == 100300 then
				rand = PickRandomFromList(rand, "_cop")
			elseif self._id == 100730 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if _tmp_data[_level_id].gate_choice then
					rand = GetIndexFromChoice(3)
				end
			end
		elseif _level_id == "rvd2" then
			if self._id == 100442 then
				rand = PickRandomFromList(rand, "_hack")
			elseif self._id == 100581 then
				rand = PickRandomFromList(rand, "_vehicle")
			elseif self._id == 101115 then
				local _vault_event = GetCheckboxValue(_level_id, "_vault_event")
				if _vault_event then
					rand = 4
				end
			end			
		elseif _level_id == "brb" then
			if self._id == 100619 then
				rand = PickRandomFromList(rand, "_Pick_Escape")
			elseif self._id == 100320 then
				rand = PickRandomFromList(rand, "_pick_prevault_entry")
			elseif self._id == 100162 then
				rand = PickRandomFromList(rand, "_pick_where_winch_spawns")
			elseif self._id == 100592 then
				rand = PickRandomFromList(rand, "_vault_door_equipment")
			elseif self._id == 101952 then
				rand = PickRandomFromList(rand, "_start")
			elseif self._id == 102070 then
				rand = PickRandomFromList(rand, "_vault")
			end			
			
		elseif _level_id == "mex" then
			if self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 101956 then
				rand = PickRandomFromList(rand, "_red_door")
			elseif self._id == 101876 then
				rand = PickRandomFromList(rand, "_code")
			elseif self._id == 100210 then
				rand = PickRandomFromList(rand, "_code1")
			elseif self._id == 102037 then
				rand = PickRandomFromList(rand, "_code2")
			elseif self._id == 102049 then
				rand = PickRandomFromList(rand, "_code3")
			elseif self._id == 102050 then
				rand = PickRandomFromList(rand, "_code4")
			elseif self._id == 101156 then
				rand = PickRandomFromList(rand, "_entrance")
			elseif self._id == 102823 then
				rand = PickRandomFromList(rand, "_exit")
			elseif self._id == 102290 then
				rand = PickRandomFromList(rand, "_cam_mexico")
			elseif self._id == 102007 then
				rand = PickRandomFromList(rand, "_cam_usa")
			elseif self._id == 100708 then
				rand = PickRandomFromList(rand, "_objective")
				
				if rand == 3 then
				--Set up mandatory coke options
					_tmp_data[_level_id] = _tmp_data[_level_id] or {}
					_tmp_data[_level_id].coke_choice = {}

					for i = 1, 18 do
						local is_option_chosen = tonumber(RNGModifier:SafeGetData(_level_id, "_coke_choice_" .. i)) == 1 and true or false
						if is_option_chosen then
							table.insert(_tmp_data[_level_id].coke_choice, i)
						end
					end
				end
			--elseif self._id == 102159 then
				--rand = PickRandomFromList(rand, "_pump")
			elseif self._id == 102617 then
				rand = PickRandomFromList(rand, "_tank")
			elseif self._id == 100727 then
				rand = PickRandomFromList(rand, "_plane")
			elseif self._id == 100325 or self._id == 100470 or self._id == 100512 or self._id == 100966 then
				--Mandatory coke to hide
				local coke_count = 6
				if self._id == 100470 then coke_count = 8
				elseif self._id == 100512 then coke_count = 10
				elseif self._id == 100966 then coke_count = 12 end
				
				if (#_tmp_data[_level_id].coke_choice == coke_count) then
					for i, option_value in ipairs(self._unused_randoms) do
						if not table.contains(_tmp_data[_level_id].coke_choice, option_value) then
							rand = i						
							break
						end
					end
				end
			elseif self._id == 102189 then
				--Right hangar
				local _choice = (RNGModifier:SafeGetData(_level_id, "_hangar_coke") or 0) - 1
				if _choice > 0 then
					for i, option_value in ipairs(self._unused_randoms) do
						if option_value ~= _choice then
							rand = i
							break
						end
					end
				end
			elseif self._id == 102538 then
				--Left hangar
				local _choice = (RNGModifier:SafeGetData(_level_id, "_hangar_coke") or 0) - 1 - 6
				if _choice > 0 then
					for i, option_value in ipairs(self._unused_randoms) do
						if option_value ~= _choice then
							rand = i
							break
						end
					end
				end
			elseif self._id == 101008 then
				--Crowbar
				local _choice = (RNGModifier:SafeGetData(_level_id, "_crowbar") or 0) - 1
				if _choice > 0 then
					for i, option_value in ipairs(self._unused_randoms) do
						if option_value ~= _choice then
							rand = i
							break
						end
					end
				end
			elseif self._id == 102596 then
				--Gasoline
				local _choice = (RNGModifier:SafeGetData(_level_id, "_gasoline") or 0) - 1
				if _choice > 0 and _choice < 6 then rand = GetIndexFromChoice(_choice) end
			elseif self._id == 102583 then
				--Gasoline
				local _choice = (RNGModifier:SafeGetData(_level_id, "_gasoline") or 0) - 1 - 5
				if _choice > 0 then rand = GetIndexFromChoice(_choice) end
			elseif self._id == 101549 then
				--Opened door US
				local _choice = (RNGModifier:SafeGetData(_level_id, "_opened_door") or 0) - 1
				
				if _choice > 0 then
					local offset = {2,4,5,6,7,10,11}
					_choice = offset[_choice]
					
					for i, option_value in ipairs(self._unused_randoms) do
						if option_value ~= _choice then
							rand = i
							break
						end
					end
				end
			elseif self._id == 102303 then
				--Santanico open door
				local _choice = (RNGModifier:SafeGetData(_level_id, "_santanico_opened_door") or 0) - 1
				if _choice > 0 then rand = GetIndexFromChoice(_choice) end
			elseif self._editor_name == "random_switch" then
				if self._values.instance_name then
					if self._values.instance_name == "mex_plane_cessna_003" then
						local _choice = (RNGModifier:SafeGetData(_level_id, "_hangar1_switch") or 0) - 1
						if _choice > 0 then rand = GetIndexFromChoice(_choice) end
					elseif self._values.instance_name == "mex_plane_cessna_004" then
						local _choice = (RNGModifier:SafeGetData(_level_id, "_hangar2_switch") or 0) - 1
						if _choice > 0 then rand = GetIndexFromChoice(_choice) end
					end
				end
			end			
		elseif _level_id == "mex_cooking" then
			if self._id == 103591 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 102820 then
				rand = PickRandomFromList(rand, "_lab")
			elseif self._id == 103602 then
				rand = PickRandomFromList(rand, "_ingredient_truck")
			elseif self._values.instance_name and self._values.instance_name:find("methlab_generic_locke_dialogue_00") and self._editor_name == "random_ingredient" then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].cook_order then
					_tmp_data[_level_id].cook_order = {}
					local _set = {{1,2,3},{1,3,2},{2,1,3},{2,3,1},{3,1,2},{3,2,1}}
					local _value = GetMultipleChoiceValue(_level_id, "_cook_order")
					if _value > 0 then
						_tmp_data[_level_id].cook_order = _set[_value]
						_tmp_data[_level_id].cook_tracker = 1
					end					
				end
				
				if #_tmp_data[_level_id].cook_order > 0 then
					--log("Order: " .. _tmp_data[_level_id].cook_order[1] .. "," .. _tmp_data[_level_id].cook_order[2] .. "," .. _tmp_data[_level_id].cook_order[3])
					--log("Tracker, Value: " .. _tmp_data[_level_id].cook_tracker .. ", " .. _tmp_data[_level_id].cook_order[_tmp_data[_level_id].cook_tracker])
					rand = GetIndexFromChoice(_tmp_data[_level_id].cook_order[_tmp_data[_level_id].cook_tracker])
					_tmp_data[_level_id].cook_tracker = (_tmp_data[_level_id].cook_tracker % 3) + 1
				end
			end
		elseif _level_id == "family" then
			if self._id == 100028 then
				rand = PickRandomFromList(rand, "_rand_keypad")
			elseif self._id == 100194 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
				if not _tmp_data[_level_id].diamond then
					_tmp_data[_level_id].diamond = {}
					local best_diamonds = (RNGModifier:SafeGetData(_level_id, "_best_diamonds") or 0) - 1
					if best_diamonds > 0 then
						_tmp_data[_level_id].diamond = {1,2,3,5,7,8,9,18,19,21,23,24,25,26,27,39,40,45}
					end
				end
				
				if _tmp_data[_level_id].diamond and #_tmp_data[_level_id].diamond > 0 then
					local _diamond = table.remove(_tmp_data[_level_id].diamond, 1)
					rand = GetIndexFromChoice(_diamond)
				end
			end			
			
		elseif _level_id == "dark" then		
			
			if self._id == 101308 then
				rand = PickRandomFromList(rand, "_pick_type_vault1")
			elseif self._id == 101394 then
				local _pick_type_vault2 = (RNGModifier:SafeGetData(_level_id, "_pick_type_vault2") or 0) - 1
				if _pick_type_vault2 > 0 then rand = GetIndexFromChoice(_pick_type_vault2) end
			elseif self._id == 106025 then
				rand = PickRandomFromList(rand, "_pick_exit")
			elseif self._id == 105774 then
				local _pick_emp_train_1 = (RNGModifier:SafeGetData(_level_id, "_pick_emp_train_1") or 0) - 1
				if _pick_emp_train_1 > 0 then rand = _pick_emp_train_1 end
			elseif self._id == 105773 then
				local _pick_emp_train_2 = (RNGModifier:SafeGetData(_level_id, "_pick_emp_train_2") or 0) - 1
				if _pick_emp_train_2 > 0 then rand = GetIndexFromChoice(_pick_emp_train_2) end
			elseif self._id == 105796 then
				local _pick_murky_train_1 = (RNGModifier:SafeGetData(_level_id, "_pick_murky_train_1") or 0) - 1
				if _pick_murky_train_1 > 0 then rand = GetIndexFromChoice(_pick_murky_train_1) end
			elseif self._id == 105797 then
				local _pick_murky_train_2 = (RNGModifier:SafeGetData(_level_id, "_pick_murky_train_2") or 0) - 1
				if _pick_murky_train_2 > 0 then rand = GetIndexFromChoice(_pick_murky_train_2) end
			elseif self._id >= 105905 and self._id <= 105911 then
				--Blowtorch Train Rotation, 1/2 = Normal/Rotate 180
				rand = PickRandomFromList(rand, "_lock_emp")
			elseif self._id >= 105918 and self._id <= 105924 then
				--Keycard Train Rotation, 1/2 = Normal/Rotate 180
				rand = PickRandomFromList(rand, "_lock_emp_2nd")
			elseif self._editor_name == "Pick Panel" and self._values.instance_name and self._values.instance_name:find("train_int_murky_emp_00") then
				if self._values.instance_name == "train_int_murky_emp_001" then
					rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_panel_1"))
				elseif self._values.instance_name == "train_int_murky_emp_002" then
					rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_panel_2"))
				elseif self._values.instance_name == "train_int_murky_emp_003" then
					rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_panel_3"))
				elseif self._values.instance_name == "train_int_murky_emp_004" then
					rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_panel_4"))
				end
			--[[elseif self._id == 166551 then
				rand = PickRandomFromList(rand, "_panel_1")
			elseif self._id == 163551 then
				rand = PickRandomFromList(rand, "_panel_2")
			elseif self._id == 147776 then
				rand = PickRandomFromList(rand, "_panel_3")
			elseif self._id == 138776 then
				rand = PickRandomFromList(rand, "_panel_4")
			elseif self._editor_name:find("random_emp_train_position_00") then
				rand = 2]]
			--[[elseif self._editor_name == "Pick Panel" and self._values.instance_name and self._values.instance_name:find("train_int_murky_emp_00") then
				local _panel_1 = (RNGModifier:SafeGetData(_level_id, "_panel_1") or 0) - 1
				local _panel_2 = (RNGModifier:SafeGetData(_level_id, "_panel_2") or 0) - 1
				local _panel_3 = (RNGModifier:SafeGetData(_level_id, "_panel_3") or 0) - 1
				local _panel_4 = (RNGModifier:SafeGetData(_level_id, "_panel_4") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _panel_1 or choice == _panel_2 or choice == _panel_3 or choice == _panel_4 then
						rand = i
						break
					end
				end]]
			--[[elseif table.contains({105905,105906,105907,105908,105909,105910,105911}, self._id) then
				rand = PickRandomFromList(rand, "_lock_emp")
			elseif table.contains({105918,105919,105920,105921,105922,105923,105924}, self._id) then
				rand = PickRandomFromList(rand, "_lock_emp_2nd")]]
			elseif self._id == 101497 then
				rand = PickRandomFromList(rand, "_pick_thermite_upper")
			elseif self._id == 100664 then
				rand = PickRandomFromList(rand, "_pick_thermite_lower")
			elseif self._id == 100555 then
				rand = PickRandomFromList(rand, "_pick_blowtorch_lower")
			elseif self._id == 101561 then
				rand = PickRandomFromList(rand, "_pick_blowtorch_upper")
			elseif self._id == 106042 then
				rand = PickRandomFromList(rand, "_pick_hd_upper")
			elseif self._id == 100686 then
				rand = PickRandomFromList(rand, "_pick_hd_lower")
			elseif self._id == 100366 then
				rand = PickRandomFromList(rand, "_pick_keycard_upper")
			elseif self._id == 101862 then
				rand = PickRandomFromList(rand, "_pick_keycard_lower")
			elseif self._id == 106086 then
				rand = PickRandomFromList(rand, "_fence_spawn")
			elseif self._id == 106097 then
				rand = PickRandomFromList(rand, "_fence_back")
			elseif self._editor_name == "pick_bomb" and self._values.instance_name and self._values.instance_name:find("train_int_murky_emp_00") then
				local _pick_bomb1 = (RNGModifier:SafeGetData(_level_id, "_pick_bomb1") or 0) - 1
				local _pick_bomb2 = (RNGModifier:SafeGetData(_level_id, "_pick_bomb2") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _pick_bomb1 or choice == _pick_bomb2 then
						rand = i
						break
					end
				end
				--rand = GetIndexFromChoice(PickRandomFromList(rand, "_pick_bomb"))
			end	
			
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
			
		elseif _level_id == "kenaz" then
			if self._id == 100145 then
				rand = PickRandomFromList(rand,"_archive")
			elseif self._id == 140533 then
				rand = PickRandomFromList(rand,"_blueprint")
			elseif self._id == 100874 then
				rand = PickRandomFromList(rand,"_bottle")
			elseif self._id == 100129 then
				rand = PickRandomFromList(rand,"_hotel")
			elseif self._id == 100760 then
				rand = PickRandomFromList(rand,"_gambler")
			elseif self._id == 100332 then
				rand = PickRandomFromList(rand,"_blue")
			elseif self._id == 100329 then
				rand = PickRandomFromList(rand,"_green")
			elseif self._id == 100328 then
				rand = PickRandomFromList(rand,"_red")
			elseif self._id == 101177 then
				rand = PickRandomFromList(rand,"_escape")
			elseif self._id == 100808 then
				rand = PickRandomFromList(rand,"_bottle_location")
			elseif self._id == 141296 then
				rand = PickRandomFromList(rand,"_computer")
			elseif self._id == 151726 then
				rand = PickRandomFromList(rand,"_locker_room")
			end
			
		elseif _level_id == "spa" then
			if self._id == 100466 then
				rand = PickRandomFromList(rand,"_briefcase")
			elseif self._id == 106573 then
				rand = PickRandomFromList(rand,"_crowbar")
			end
			
		elseif _level_id == "kosugi" then
			if self._id == 101384 then
				local _call_blackhawk = GetCheckboxValue(_level_id, "_call_blackhawk")
				if _call_blackhawk then rand = 1
				else rand = 2 end
				--rand = PickRandomFromList(rand, "_call_blackhawk")
			elseif table.contains({100950,100944,100946,100941,100949,100947,100943,100942,100945}, self._id) then
				rand = PickRandomFromList(rand, "_loot")
			elseif self._id == 102821 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["random_paintings"] = _tmp_data[_level_id]["random_paintings"] or 0
				_tmp_data[_level_id]["random_paintings"] = _tmp_data[_level_id]["random_paintings"] + 1
				if _tmp_data[_level_id]["random_paintings"] == 1 then
					local _painting_A = RNGModifier:SafeGetData(_level_id, "_painting_A") or 0
					_painting_A = _painting_A - 1
					if _painting_A > 0 then
						rand = _painting_A
					end
				else
					local _painting_B = RNGModifier:SafeGetData(_level_id, "_painting_B") or 0
					_painting_B = _painting_B - 1
					if _painting_B > 0 then
						rand = _painting_B
					end
				end
			elseif self._id == 104031 then
				rand = PickRandomFromList(rand, "_paintingDW")
			elseif self._id == 103199 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["random_moneystacks"] = _tmp_data[_level_id]["random_moneystacks"] or 0
				_tmp_data[_level_id]["random_moneystacks"] = _tmp_data[_level_id]["random_moneystacks"] + 1
				if _tmp_data[_level_id]["random_moneystacks"] == 1 then
					local _money_A = RNGModifier:SafeGetData(_level_id, "_money_A") or 0
					_money_A = _money_A - 1
					if _money_A > 0 then
						rand = _money_A
					end
				else
					local _money_B = RNGModifier:SafeGetData(_level_id, "_money_B") or 0
					_money_B = _money_B - 1
					if _money_B > 0 then
						rand = _money_B
					end
				end
			elseif self._id == 100849 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["random_cocaine"] = _tmp_data[_level_id]["random_cocaine"] or 0
				_tmp_data[_level_id]["random_cocaine"] = _tmp_data[_level_id]["random_cocaine"] + 1
				if _tmp_data[_level_id]["random_cocaine"] == 1 then
					local _cocaine_A = RNGModifier:SafeGetData(_level_id, "_cocaine_A") or 0
					_cocaine_A = _cocaine_A - 1
					if _cocaine_A > 0 then
						rand = _cocaine_A
					end
				else
					local _cocaine_B = RNGModifier:SafeGetData(_level_id, "_cocaine_B") or 0
					_cocaine_B = _cocaine_B - 1
					if _cocaine_B > 0 then
						rand = _cocaine_B
					end
				end
			elseif self._id == 100896 then
				rand = PickRandomFromList(rand, "_server")
			elseif self._id == 101070 then
				local _gate = GetCheckboxValue(_level_id, "_gate")
				if _gate then rand = 1
				else rand = 2 end
				--rand = PickRandomFromList(rand, "_gate")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 100875 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["random_weapon_crates"] = _tmp_data[_level_id]["random_weapon_crates"] or 0
				_tmp_data[_level_id]["random_weapon_crates"] = _tmp_data[_level_id]["random_weapon_crates"] + 1
				if _tmp_data[_level_id]["random_weapon_crates"] == 1 then
					local _weapon_A = RNGModifier:SafeGetData(_level_id, "_weapon_A") or 0
					_weapon_A = _weapon_A - 1
					if _weapon_A > 0 then
						rand = _weapon_A
					end
				else
					local _weapon_B = RNGModifier:SafeGetData(_level_id, "_weapon_B") or 0
					_weapon_B = _weapon_B - 1
					if _weapon_B > 0 then
						rand = _weapon_B
					end
				end
			elseif self._id == 104030 then
				rand = PickRandomFromList(rand, "_weaponDW")
			elseif self._id == 102358 then
			
				local money_container_1 = (RNGModifier:SafeGetData(_level_id, "_money_container1") or 0) - 1
				local money_container_2 = (RNGModifier:SafeGetData(_level_id, "_money_container2") or 0) - 1
				local money_container_3 = (RNGModifier:SafeGetData(_level_id, "_money_container3") or 0) - 1
				local money_container_4 = (RNGModifier:SafeGetData(_level_id, "_money_container4") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == money_container_1 or choice == money_container_2 or choice == money_container_3 or choice == money_container_4 then
						rand = i
						break
					end
				end
				
			elseif self._id == 100404 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["random_crates"] = _tmp_data[_level_id]["random_crates"] or 0
				_tmp_data[_level_id]["random_crates"] = _tmp_data[_level_id]["random_crates"] + 1
				for i = 1, 6 do
					local _random_crate = (RNGModifier:SafeGetData(_level_id, "_crate_loc_" .. i) or 0) - 1
					local _random_crate_right = _random_crate
					for j = 1, i do
						local _random_crate_index = (RNGModifier:SafeGetData(_level_id, "_crate_loc_" .. j) or 0) - 1
						if _random_crate > _random_crate_index then
							_random_crate_right = _random_crate_right - 1
						end
					end
					if _tmp_data[_level_id]["random_crates"] == i then
						if _random_crate_right > 0 then
							rand = _random_crate_right
						end
					end
				end
			end
			
		elseif _level_id == "born" then
			if self._id == 101147 then
				rand = PickRandomFromList(rand, "_truck")
			elseif self._id == 100424 then
				rand = PickRandomFromList(rand, "_skull_room")
			elseif self._id == 100264 then
				rand = PickRandomFromList(rand, "_crate")
				--[[_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].crate then
					local crate = ((RNGModifier:SafeGetData(_level_id, "_crate") or 0) - 1)
					if crate > 0 then
						_tmp_data[_level_id].crate = crate
						rand = GetIndexFromChoice(crate)
					end
				end]]
			elseif self._id == 100835 or self._id == 100087 then
				rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_first_objective"))
			elseif self._id == 103045 then
				rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_engine"))
			elseif self._id == 100727 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].objective then
					_tmp_data[_level_id].objective = {}
					_tmp_data[_level_id].objective_sequence = {}
					
					local _objective = GetMultipleChoiceValue(_level_id, "_objective")
					local _objective_two = GetMultipleChoiceValue(_level_id, "_objective_two")
					table.insert(_tmp_data[_level_id].objective_sequence, _objective)
					table.insert(_tmp_data[_level_id].objective_sequence, _objective_two)
					
					local objective_offset = {1,2,0,3}
					if _objective == 0 then
						table.insert(_tmp_data[_level_id].objective, _objective)
					else
						table.insert(_tmp_data[_level_id].objective, objective_offset[_objective])
					end
					if _objective_two == 0 then
						table.insert(_tmp_data[_level_id].objective, _objective_two)
					else
						table.insert(_tmp_data[_level_id].objective, objective_offset[_objective_two])
					end
				end
				
				if _tmp_data[_level_id].objective and #_tmp_data[_level_id].objective > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].objective,1))
				end
			elseif self._id == 101466 then
				if #_tmp_data[_level_id].objective_sequence > 0 then
					local choice = table.remove(_tmp_data[_level_id].objective_sequence, 1)					
					rand = GetIndexFromChoice(choice)
					
					--For scenarios where player wants first big objective to be random but second to be fixed
					if choice == 0 and #_tmp_data[_level_id].objective_sequence > 0 and _tmp_data[_level_id].objective_sequence[1] ~= 0 then
						while rand == _tmp_data[_level_id].objective_sequence[1] do
							rand = GetIndexFromChoice(choice)
						end
					end
				end
			end
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
		elseif _level_id == "chew" then
			if self._id == 100829 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_random_flatbed"))
			elseif self._id == 100849 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_random_gondola"))
			elseif self._id == 100850 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_random_tanker"))
			elseif self._id == 100851 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_random_boxcar"))			
			elseif self._editor_name == "choose_random_cart" and self._values.instance_name and self._values.instance_name:find("chew_train_car_00") then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_random_last_set"))
			elseif table.contains({100255, 100254, 100256, 100257, 100258},self._id) then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_boxcar_blocker"))
			end
		elseif _level_id == "nightclub" then
			if self._id == 100875 then
				rand = PickRandomFromList(rand, "_randomize_escape")
			elseif self._id == 100632 then
				rand = PickRandomFromList(rand, "_logic_random_003")
			elseif self._id == 100568 then
				--One or two offices
				--Two offices must happen if "Front" cash safe is used
				local cash_safe = (RNGModifier:SafeGetData(_level_id, "_cash") or 0) - 1
				if cash_safe == 2 then
					rand = 2
				end
			elseif self._id == 100669 then
				--Cash safe, N + VH when two offices
				local cash_safe = (RNGModifier:SafeGetData(_level_id, "_cash") or 0) - 1
				if cash_safe == 1 or cash_safe == 2 then
					rand = cash_safe
				end
			elseif self._id == 102018 then
				--Cash safe, VH+ when two offices
				rand = PickRandomFromList(rand, "_cash")
			elseif self._id == 103934 then
				--Cash safe, VH+ when one office
				local cash_safe_offset = {2,0,1}
				local cash_safe = (RNGModifier:SafeGetData(_level_id, "_cash") or 0) - 1
				if cash_safe == 1 or cash_safe == 3 then
					rand = cash_safe_offset[cash_safe]
				end
			elseif self._id == 100152 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 103939 then
				rand = PickRandomFromList(rand, "_escape_time")
			elseif self._id == 104282 then
				local ovk_time = (RNGModifier:SafeGetData(_level_id, "_escape_time") or 0) - 1
				local ovk_offset = {3,1,2}
				if ovk_time > 0 then
					rand = ovk_offset[ovk_time]
				end
			end
			
			
		elseif _level_id == "tag" then
			local _tag_board = RNGModifier:SafeGetData(_level_id, "_tag_board") or 0
			_tag_board = _tag_board - 1
			if _tag_board > 0 then
				local _id_fix = self._id 
				if _id_fix == 140671 then
					rand = 2
				elseif _id_fix == 140071 then
					rand = 3
				elseif _id_fix == 140271 then
					rand = 3
				elseif _id_fix == 140871 then
					rand = 3 
				end
			end
			local _tag_office = RNGModifier:SafeGetData(_level_id, "_tag_office") or 0
			_tag_office = _tag_office - 1
			if _tag_office > 0 then
				local _id_fix = self._id 
				if _id_fix == 134652 then
					rand = 1
				elseif _id_fix == 135552 then
					rand = 1
				end
			end
			if self._id == 100123 then
				rand = PickRandomFromList(rand, "_randomize_office")
			elseif self._id == 100829 then
				rand = PickRandomFromList(rand, "_pad_code")
			elseif self._id == 101410 then
				rand = PickRandomFromList(rand, "_lure")
			elseif self._id == 100968 then
				rand = PickRandomFromList(rand, "_whiteboard")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			end
			if self._id == 100359 then
				
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id]["hack_boxes_A"] then
					_tmp_data[_level_id]["hack_boxes_A"] = {}
					
					local box_options = {"_boxes_A","_boxes_B","_boxes_C"}
					
					for i, box_option_str in ipairs(box_options) do
						local box_option = (RNGModifier:SafeGetData(_level_id, box_option_str) or 0) - 1
						if box_option > 0 and not table.contains(_tmp_data[_level_id]["hack_boxes_A"], box_option) then
							table.insert(_tmp_data[_level_id]["hack_boxes_A"], box_option)
						end
					end
				end
				
				if _tmp_data[_level_id]["hack_boxes_A"] and #_tmp_data[_level_id]["hack_boxes_A"] > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == _tmp_data[_level_id]["hack_boxes_A"][1] then
							rand = i
							break
						end
					end
					table.remove(_tmp_data[_level_id]["hack_boxes_A"],1)
				end
				
				--[[
				_tmp_data[_level_id]["start_randomization_boxes"] = _tmp_data[_level_id]["start_randomization_boxes"] or 0
				_tmp_data[_level_id]["start_randomization_boxes"] = _tmp_data[_level_id]["start_randomization_boxes"] + 1
				if _tmp_data[_level_id]["start_randomization_boxes"] == 1 then
					local _boxes_A = RNGModifier:SafeGetData(_level_id, "_boxes_A") or 0
					_boxes_A = _boxes_A - 1
					if _boxes_A > 0 then
						rand = _boxes_A
					end
				elseif _tmp_data[_level_id]["start_randomization_boxes"] == 2 then
					local _boxes_B = RNGModifier:SafeGetData(_level_id, "_boxes_B") or 0
					_boxes_B = _boxes_B - 2
					if _boxes_B > 0 then
						rand = _boxes_B
					end
				elseif _tmp_data[_level_id]["start_randomization_boxes"] == 3 then
					local _boxes_C = RNGModifier:SafeGetData(_level_id, "_boxes_C") or 0
					_boxes_C = _boxes_C - 3		
					if _boxes_C > 0 then
						rand = _boxes_C
					end
				end]]
			end
			if self._id == 100991 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id]["hack_boxes_B"] then
					_tmp_data[_level_id]["hack_boxes_B"] = {}
					
					local box_options = {"_boxes1_A","_boxes1_B","_boxes1_C"}
					
					for i, box_option_str in ipairs(box_options) do
						local box_option = (RNGModifier:SafeGetData(_level_id, box_option_str) or 0) - 1
						if box_option > 0 and not table.contains(_tmp_data[_level_id]["hack_boxes_B"], box_option) then
							table.insert(_tmp_data[_level_id]["hack_boxes_B"], box_option)
						end
					end
				end
				
				if _tmp_data[_level_id]["hack_boxes_B"] and #_tmp_data[_level_id]["hack_boxes_B"] > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == _tmp_data[_level_id]["hack_boxes_B"][1] then
							rand = i
							break
						end
					end
					table.remove(_tmp_data[_level_id]["hack_boxes_B"],1)
				end
				
				--[[
				_tmp_data[_level_id]["start_randomization_boxes001"] = _tmp_data[_level_id]["start_randomization_boxes001"] or 0
				_tmp_data[_level_id]["start_randomization_boxes001"] = _tmp_data[_level_id]["start_randomization_boxes001"] + 1
				if _tmp_data[_level_id]["start_randomization_boxes001"] == 1 then
					local _boxes1_A = RNGModifier:SafeGetData(_level_id, "_boxes1_A") or 0
					_boxes1_A = _boxes1_A - 1
					if _boxes1_A == 1 then
						rand = 1
					elseif _boxes1_A == 2 then
						rand = math.round((#self._unused_randoms)/3.5)
					elseif _boxes1_A == 3 then
						rand = math.round((#self._unused_randoms)/2.3)
					elseif _boxes1_A == 4 then
						rand = math.round((#self._unused_randoms)/1.75)
					elseif _boxes1_A == 5 then
						rand = math.round((#self._unused_randoms)/1.4)
					elseif _boxes1_A == 6 then
						rand = math.round((#self._unused_randoms)/1.17)
					elseif _boxes1_A == 7 then
						rand = #self._unused_randoms
					end
				elseif _tmp_data[_level_id]["start_randomization_boxes001"] == 2 then
					local _boxes1_B = RNGModifier:SafeGetData(_level_id, "_boxes1_B") or 0	
					_boxes1_B = _boxes1_B - 1
					if _boxes1_B == 1 then
						rand = 1
					elseif _boxes1_B == 2 then
						rand = math.round((#self._unused_randoms)/3.5)
					elseif _boxes1_B == 3 then
						rand = math.round((#self._unused_randoms)/2.3)
					elseif _boxes1_B == 4 then
						rand = math.round((#self._unused_randoms)/1.75)
					elseif _boxes1_B == 5 then
						rand = math.round((#self._unused_randoms)/1.4)
					elseif _boxes1_B == 6 then
						rand = math.round((#self._unused_randoms)/1.17)
					elseif _boxes1_B == 7 then
						rand = #self._unused_randoms
					end
				elseif _tmp_data[_level_id]["start_randomization_boxes001"] == 3 then
					local _boxes1_C = RNGModifier:SafeGetData(_level_id, "_boxes1_C") or 0
					_boxes1_C = _boxes1_C - 1
					if _boxes1_C == 1 then
						rand = 1
					elseif _boxes1_C == 2 then
						rand = math.round((#self._unused_randoms)/3.5)
					elseif _boxes1_C == 3 then
						rand = math.round((#self._unused_randoms)/2.3)
					elseif _boxes1_C == 4 then
						rand = math.round((#self._unused_randoms)/1.75)
					elseif _boxes1_C == 5 then
						rand = math.round((#self._unused_randoms)/1.4)
					elseif _boxes1_C == 6 then
						rand = math.round((#self._unused_randoms)/1.17)
					elseif _boxes1_C == 7 then
						rand = #self._unused_randoms
					end
				end]]
			end
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
			
		elseif  _level_id == "trai" then
			if self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 100549 then
				rand = PickRandomFromList(rand, "_walkie_talkie")
			elseif self._id == 102474 then
				rand = PickRandomFromList(rand, "_electric_box")
			elseif self._id == 100899 then
				rand = PickRandomFromList(rand, "_console")		
			elseif self._id == 100962 then
				rand = PickRandomFromList(rand, "_pc")
			elseif self._id == 103067 then
				local blowtorch_1 = (RNGModifier:SafeGetData(_level_id, "_blowtorch1") or 0) - 1
				local blowtorch_2 = (RNGModifier:SafeGetData(_level_id, "_blowtorch2") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == blowtorch_1 or choice == blowtorch_2 then
						rand = i
						break
					end
				end
			elseif table.contains({103008,103029,103030,103031,102271}, self._id) then
				rand = PickRandomFromList(rand, "_company")
			elseif self._id == 103000 then
				rand = PickRandomFromList(rand, "_wagon_set")
				
			--[[elseif self._id == 102109 or self._id == 102158 or self._id == 102179 or self._id == 102249 
			or self._id == 102214 or self._id == 102284 or self._id == 102319 or self._id == 102354 or self._id == 102389 then
				rand = PickRandomFromList(rand, "_rfid")]]
				
			elseif self._id == 102389 then
				rand = PickRandomFromList(rand, "_rfid1")
			elseif self._id == 102319 then
				rand = PickRandomFromList(rand, "_rfid2")
			elseif self._id == 102354 then
				rand = PickRandomFromList(rand, "_rfid3")
			elseif self._id == 102284 then
				rand = PickRandomFromList(rand, "_rfid4")
			elseif self._id == 102249 then
				rand = PickRandomFromList(rand, "_rfid5")
			elseif self._id == 102214 then
				rand = PickRandomFromList(rand, "_rfid6")
			elseif self._id == 102179 then
				rand = PickRandomFromList(rand, "_rfid7")
			elseif self._id == 102158 then
				rand = PickRandomFromList(rand, "_rfid8")
			elseif self._id == 102109 then
				rand = PickRandomFromList(rand, "_rfid9")
				
			--[[elseif self._id == 102411 or self._id == 102341 or self._id == 102306 or self._id == 102376 or self._id == 102271 
			or self._id == 102236 or self._id == 102201 or self._id == 102101 or self._id == 102166 then]]
			
			elseif table.contains({102411,102341,102306,102376,102271,102236,102201,102101,102166}, self._id) then						
				local _wire = RNGModifier:SafeGetData(_level_id, "_wire") or 0
				_wire = _wire - 1
					if _wire > 0 then
						rand = 1
					end
				
			--[[elseif self._id == 102101 or self._id == 102166 or self._id == 102236 then
				rand = PickRandomFromList(rand, "_wire1")
			elseif self._id == 102201 or self._id == 102306 then
				rand = PickRandomFromList(rand, "_wire2")
			elseif self._id == 102411 or self._id == 102376 then
				rand = PickRandomFromList(rand, "_wire3")
			elseif self._id == 102341 then
				rand = PickRandomFromList(rand, "_wire4")
			elseif self._id == 102271 then
				rand = PickRandomFromList(rand, "_wire5")]]
				
			--[[elseif self._id == 100792 or self._id == 100813 or self._id == 100892 then]]
			elseif table.contains({100792,100813,100892}, self._id) then
				local _turn_table = RNGModifier:SafeGetData(_level_id, "_turn_table") or 0
				_turn_table = _turn_table - 1
					if _turn_table > 0 then
						rand = 2
					end
			end
			
			local _code = RNGModifier:SafeGetData(_level_id, "_code") or 0
			_code = _code - 1
				if _code > 0 then
					if table.contains({101867,101869,101870,101871}, self._id) then
						rand = 1
					end
			end
			
			local _msc_code = RNGModifier:SafeGetData(_level_id, "_msc_code") or 0
			_msc_code = _msc_code - 1
				if _msc_code > 0 then
					local _id_fix = self._id
					if table.contains({101903,101904,101905,101906}, self._id) then
						rand = 1
					end
			end
			
		elseif  _level_id == "crojob2" then
			if self._id == 101137 then
				rand = PickRandomFromList(rand,"_radio")
			elseif self._id == 101153 then
				rand = PickRandomFromList(rand,"_computer_side")
			elseif self._id == 101698 then
				rand = PickRandomFromList(rand,"_keycard1")
			elseif self._id == 100142 then
				rand = PickRandomFromList(rand,"_keycard2")
			elseif self._id == 101268 then
				rand = PickRandomFromList(rand,"_keycard3")
			elseif self._id == 102611 then
				rand = PickRandomFromList(rand,"_captain_number")
			elseif self._id == 100545 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 104949 then
				rand = PickRandomFromList(rand,"_meth")
			elseif self._id == 100221 then
				rand = PickRandomFromList(rand,"_bomb")
			elseif self._id == 105471 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].doors then
					_tmp_data[_level_id].doors = {}
					
					local _door_1 = GetMultipleChoiceValue(_level_id, "_door_1")
					local _door_2 = GetMultipleChoiceValue(_level_id, "_door_2")
					
					if _door_1 > 0 then table.insert(_tmp_data[_level_id].doors, _door_1) end
					if _door_2 > 0 then table.insert(_tmp_data[_level_id].doors, _door_2) end
				end
				
				if _tmp_data[_level_id].doors and #_tmp_data[_level_id].doors > 0 then
					local choice = _tmp_data[_level_id].doors[1]
					table.remove(_tmp_data[_level_id].doors,1)
					
					rand = GetIndexFromChoice(choice)
				end
			elseif self._id == 100205 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["randomize_bomb_cases"] = _tmp_data[_level_id]["randomize_bomb_cases"] or 0
				_tmp_data[_level_id]["randomize_bomb_cases"] = _tmp_data[_level_id]["randomize_bomb_cases"] + 1
				if _tmp_data[_level_id]["randomize_bomb_cases"] == 1 then
					local _bomb_case_A = RNGModifier:SafeGetData(_level_id, "_bomb_case_A") or 0
					_bomb_case_A = _bomb_case_A - 1
					if _bomb_case_A > 0 then
						rand = _bomb_case_A
					end
				elseif _tmp_data[_level_id]["randomize_bomb_cases"] == 2 then
					local _bomb_case_B = RNGModifier:SafeGetData(_level_id, "_bomb_case_B") or 0
					_bomb_case_B = _bomb_case_B - 1
					if _bomb_case_B > 0 then
						rand = _bomb_case_B
					end
				elseif _tmp_data[_level_id]["randomize_bomb_cases"] == 3 then	
					local _bomb_case_C = RNGModifier:SafeGetData(_level_id, "_bomb_case_C") or 0
					_bomb_case_C = _bomb_case_C - 1
					if _bomb_case_C > 0 then
						rand = _bomb_case_C
					end
				elseif _tmp_data[_level_id]["randomize_bomb_cases"] == 4 then	
					local _bomb_case_D = RNGModifier:SafeGetData(_level_id, "_bomb_case_D") or 0
					_bomb_case_D = _bomb_case_D - 1
					if _bomb_case_D > 0 then
						rand = _bomb_case_D
					end
				end
			end
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
			
			
		elseif _level_id == "crojob3" or _level_id == "crojob3_night" then
			if self._id == 100166 then
				--Wagon spawn
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].wagon_choice then
					_tmp_data[_level_id].wagon_choice = {}
					for i = 1, 5 do
						local _choice = (RNGModifier:SafeGetData(_level_id, "_wagon_" .. tostring(i)) or 0) - 1
						if _choice > 0 then table.insert(_tmp_data[_level_id].wagon_choice, _choice) end
					end
				end
				
				if #_tmp_data[_level_id].wagon_choice > 0 then rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].wagon_choice, 1)) end
			elseif self._id == 100534 then
				rand = GetIndexFromChoice((RNGModifier:SafeGetData(_level_id, "_vault") or 0) - 1)
			elseif self._id == 103022 or self._id == 103055 then
				local _choice = (RNGModifier:SafeGetData(_level_id, "_c4") or 0) - 1
				if _choice > 0 and _choice <= 8 then
					rand = GetIndexFromChoice(_choice)
				end
			elseif self._id == 103258 then
				local _choice = (RNGModifier:SafeGetData(_level_id, "_c4") or 0) - 1 - 8
				if _choice > 0 then
					rand = GetIndexFromChoice(math.ceil(_choice / 2))
				end
			elseif self._editor_name:find("random_c4_pos_") and self._values.instance_name and self._values.instance_name:find("train_cargo_blocker_00") then
				local _choice = (RNGModifier:SafeGetData(_level_id, "_c4") or 0) - 1 - 8
				if _choice > 0 then
					rand = GetIndexFromChoice(((_choice+1) % 2) + 1)
				end
			elseif table.contains({104036, 104037, 104038, 104039}, self._id) then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_bomb_case"))
			end		
		elseif _level_id == "sah" then
			local _code = RNGModifier:SafeGetData(_level_id, "_code") or 0
			_code = _code - 1
			if _code > 0 then
				local _id_fix = self._id 
				if _id_fix == 148205 then
					rand = 10
				elseif _id_fix == 148300 or _id_fix == 148311 or _id_fix == 148322 then 
					rand = 10
				end
			end
			if self._id == 100825 then
				rand = PickRandomFromList(rand, "_pick_rand_escape")
			elseif self._id == 101239 then
				rand = PickRandomFromList(rand, "_spawn_rand_walker")
			elseif self._id == 106835 then
				rand = PickRandomFromList(rand, "_randomize_hackbox_pairs")
			elseif self._id == 101562 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["logic_random_002"] = _tmp_data[_level_id]["logic_random_002"] or 0
				_tmp_data[_level_id]["logic_random_002"] = _tmp_data[_level_id]["logic_random_002"] + 1
				if _tmp_data[_level_id]["logic_random_002"] == 1 then
					local _cpair_A = RNGModifier:SafeGetData(_level_id, "_cpair_A") or 0
					_cpair_A = _cpair_A - 1
					if _cpair_A > 0 then
						rand = _cpair_A
					end
				else
					local _cpair_B = RNGModifier:SafeGetData(_level_id, "_cpair_B") or 0
					_cpair_B = _cpair_B - 1
					if _cpair_B > 0 then
						rand = _cpair_B
					end
				end
			local _bpair_ON = RNGModifier:SafeGetData(_level_id, "_bpair_ON") or 0
			_bpair_ON = _bpair_ON - 1
			if _bpair_ON > 0 then
				local _id_fix = self._id 
				if _id_fix == 101567 then
					rand = 2
				end
			end
			elseif self._id == 101568 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["logic_random_003"] = _tmp_data[_level_id]["logic_random_003"] or 0
				_tmp_data[_level_id]["logic_random_003"] = _tmp_data[_level_id]["logic_random_003"] + 1
				if _tmp_data[_level_id]["logic_random_003"] == 1 then
					local _bpair_A = RNGModifier:SafeGetData(_level_id, "_bpair_A") or 0
					_bpair_A = _bpair_A - 1
					if _bpair_A > 0 then
						rand = _bpair_A
					end
				else
					local _bpair_B = RNGModifier:SafeGetData(_level_id, "_bpair_B") or 0
					_bpair_B = _bpair_B - 1
					if _bpair_B > 0 then
						rand = _bpair_B
					end
				end
			elseif self._id == 101569 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["logic_random_005"] = _tmp_data[_level_id]["logic_random_005"] or 0
				_tmp_data[_level_id]["logic_random_005"] = _tmp_data[_level_id]["logic_random_005"] + 1
				if _tmp_data[_level_id]["logic_random_005"] == 1 then
					local _rpair_A = RNGModifier:SafeGetData(_level_id, "_rpair_A") or 0
					_rpair_A = _rpair_A - 1
					if _rpair_A > 0 then
						rand = _rpair_A
					end
				else
					local _rpair_B = RNGModifier:SafeGetData(_level_id, "_rpair_B") or 0
					_rpair_B = _rpair_B - 1
					if _rpair_B > 0 then
						rand = _rpair_B
					end
				end
			elseif self._id == 101572 then
				rand = PickRandomFromList(rand,"_lpairs")
			elseif self._id == 100820 then
				rand = PickRandomFromList(rand,"_officeL")
			elseif self._id == 100822 then
				rand = PickRandomFromList(rand,"_officeR")
			elseif self._id == 100879 then
				rand = PickRandomFromList(rand,"_officeB")
			elseif self._id == 100928 then
				rand = PickRandomFromList(rand,"_officeC")
			elseif self._id == 100974 then
				rand = PickRandomFromList(rand,"_tool1")
			elseif self._id == 100975 then
				rand = PickRandomFromList(rand,"_tool2")
			elseif self._id == 100976 then
				rand = PickRandomFromList(rand,"_tool3")
			elseif self._id == 104036 then
				rand = PickRandomFromList(rand, "_randomize_vault")
			elseif self._id == 100967 then
				rand = PickRandomFromList(rand, "_randomize_breaker")
			elseif self._id == 101030 then
				rand = PickRandomFromList(rand, "_randomize_ziplines")
			elseif self._id == 100892 then
				rand = PickRandomFromList(rand, "_randomize_security_rooms")
			elseif self._id == 101197 then
				rand = PickRandomFromList(rand, "_randomzize_electrical_boxes")
			end
			
		elseif _level_id == "firestarter_1" then
			if self._id == 102208 then
				rand = PickRandomFromList(rand, "_ehangar")
			elseif self._id == 103396 then
				local hanger_1 = (RNGModifier:SafeGetData(_level_id, "_hangar_1") or 0) - 1
				local hanger_2 = (RNGModifier:SafeGetData(_level_id, "_hangar_2") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == hanger_1 or choice == hanger_2 then
						rand = i
						break
					end
				end
			elseif self._id == 102794 then
				rand = PickRandomFromList(rand, "_gas")
			elseif table.contains({101461,101469,101472,101473}, self._id) then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
				if not _tmp_data[_level_id].weapon then
					_tmp_data[_level_id].weapon = {}
					local weapon_set = (RNGModifier:SafeGetData(_level_id, "_weapon_set") or 0) - 1
					if weapon_set == 1 then
						_tmp_data[_level_id].weapon = {1,6,17,14,2,3,4,5,12,10,13,7}
					elseif weapon_set == 2 then
						_tmp_data[_level_id].weapon = {23,21,32,28,22,40,39,24,27,36,33,26}
					elseif weapon_set == 3 then
						_tmp_data[_level_id].weapon = {57,53,45,50,54,48,52,56,59,46,58,60}
					elseif weapon_set == 4 then
						_tmp_data[_level_id].weapon = {66,75,80,72,68,76,78,64,71,73,74,67}
					end
				end
				
				if _tmp_data[_level_id].weapon and #_tmp_data[_level_id].weapon > 0 then
					local _weapon = table.remove(_tmp_data[_level_id].weapon, 1)
					rand = GetIndexFromChoice(_weapon)
				end
			end
			local _eweapon_set = RNGModifier:SafeGetData(_level_id, "_eweapon_set") or 0
			_eweapon_set = _eweapon_set - 1
			local _id_fix = self._id
			if _eweapon_set == 1 then				
				if _id_fix == 100757 then
					_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
					if not _tmp_data[_level_id].eweapon then
						_tmp_data[_level_id].eweapon = {1,11,10,5,2,6,18,3,4,13,19,7}
					end
					
					if _tmp_data[_level_id].eweapon and #_tmp_data[_level_id].eweapon > 0 then
						local _weapon = table.remove(_tmp_data[_level_id].eweapon, 1)
						rand = GetIndexFromChoice(_weapon)
					end
				end
			elseif _eweapon_set == 2 then
				if _id_fix == 100750 then
					_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
					if not _tmp_data[_level_id].eweapon then
						_tmp_data[_level_id].eweapon = {5,15,10,18,19,16,1,20,17,4,11,7}
					end
					
					if _tmp_data[_level_id].eweapon and #_tmp_data[_level_id].eweapon > 0 then
						local _weapon = table.remove(_tmp_data[_level_id].eweapon, 1)
						rand = GetIndexFromChoice(_weapon)
					end
				end
			elseif _eweapon_set == 3 then
				if _id_fix == 100820 then
					_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
					if not _tmp_data[_level_id].eweapon then
						_tmp_data[_level_id].eweapon = {6,7,9,13,12,19,18,15,1,3,2,20}
					end
					
					if _tmp_data[_level_id].eweapon and #_tmp_data[_level_id].eweapon > 0 then
						local _weapon = table.remove(_tmp_data[_level_id].eweapon, 1)
						rand = GetIndexFromChoice(_weapon)
					end
				end
			elseif _eweapon_set == 4 then
				if _id_fix == 101285 then
					_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
					if not _tmp_data[_level_id].eweapon then
						_tmp_data[_level_id].eweapon = {2,16,20,18,19,17,3,11,14,4,13,7}
					end
					
					if _tmp_data[_level_id].eweapon and #_tmp_data[_level_id].eweapon > 0 then
						local _weapon = table.remove(_tmp_data[_level_id].eweapon, 1)
						rand = GetIndexFromChoice(_weapon)
					end
				end
			end
			--101725
		elseif _level_id == "hox_3" then
			if self._id == 101695 then
				local vault_location = (RNGModifier:SafeGetData(_level_id, "_panic_hector") or 0) - 1
				local vault_offset = {1,2,2,3,4,4,5,6,6}
				if vault_location > 0 then
					rand = vault_offset[vault_location]
				end
			elseif self._id == 101529 then
				--Boss location
				local boss_location = (RNGModifier:SafeGetData(_level_id, "_panic_hector") or 0) - 1
				local boss_offset = {4,4,5,3,3,6,2,2,1}
				if boss_location > 0 then
					boss_location = boss_offset[boss_location]
					for i, choice in ipairs(self._unused_randoms) do
						if choice == boss_location then
							rand = i
							break
						end
					end
				end
			elseif self._id == 102972 then
				rand = PickRandomFromList(rand,"_ladder")
			elseif self._id == 101441 then
				rand = PickRandomFromList(rand, "_alarm_box")
			elseif self._id == 101710 then
				local _code = (RNGModifier:SafeGetData(_level_id,"_code") or 0) - 1
				if _code == 2 then
					rand = 2
				end
			elseif self._id == 101899 or self._id == 102120 then
				local keycard_A = (RNGModifier:SafeGetData(_level_id, "_keycard_A") or 0) - 1
				local keycard_B = (RNGModifier:SafeGetData(_level_id, "_keycard_B") or 0) - 1
				local keycard_C = (RNGModifier:SafeGetData(_level_id, "_keycard_C") or 0) - 1
				
				--Keycard 12 is disabled so offsetting to match
				if keycard_A >= 12 then
					keycard_A = keycard_A + 1
				end
				
				if keycard_B >= 12 then
					keycard_B = keycard_B + 1
				end
				
				if keycard_C >= 12 then
					keycard_C = keycard_C + 1
				end
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == keycard_A or choice == keycard_B or choice == keycard_C then
						rand = i
						break
					end
				end
			elseif self._id == 101536 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id]["evidence_room"] then
					local evidence_A = (RNGModifier:SafeGetData(_level_id, "_evidence_A") or 0) - 1
					local evidence_B = (RNGModifier:SafeGetData(_level_id, "_evidence_B") or 0) - 1
					local evidence_C = (RNGModifier:SafeGetData(_level_id, "_evidence_C") or 0) - 1
					
					_tmp_data[_level_id]["evidence_room"] = {}
					_tmp_data[_level_id]["evidence_location"] = {}
					_tmp_data[_level_id]["evidence_amount"] = {}
					
					local evidence_room_offset = {1,1,2,2,3,3,3,4,4,4}
					local evidence_location_offset = {0,0,2,2,4,4,4,7,7,7}
					local evidence_amount_limit = {4,2,3,3,3,3,2,2,3,3}
					
					if evidence_A > 0 then
						table.insert(_tmp_data[_level_id]["evidence_room"], evidence_room_offset[evidence_A])
						table.insert(_tmp_data[_level_id]["evidence_location"], evidence_A - evidence_location_offset[evidence_A])
						
						local evidence_A_amount = (RNGModifier:SafeGetData(_level_id, "_evidence_A_amount") or 0) - 1
						
						if evidence_A_amount > 0 then
							table.insert(_tmp_data[_level_id]["evidence_amount"], {evidence_A, math.min(evidence_A_amount, evidence_amount_limit[evidence_A])})
						end
					end
					
					if evidence_B > 0 and not table.contains(_tmp_data[_level_id]["evidence_room"], evidence_room_offset[evidence_B]) then
						table.insert(_tmp_data[_level_id]["evidence_room"], evidence_room_offset[evidence_B])
						table.insert(_tmp_data[_level_id]["evidence_location"], evidence_B - evidence_location_offset[evidence_B])
						
						local evidence_B_amount = (RNGModifier:SafeGetData(_level_id, "_evidence_B_amount") or 0) - 1
						
						if evidence_B_amount > 0 then
							table.insert(_tmp_data[_level_id]["evidence_amount"], {evidence_B, math.min(evidence_B_amount, evidence_amount_limit[evidence_B])})
						end
					end
					
					if evidence_C > 0 and not table.contains(_tmp_data[_level_id]["evidence_room"], evidence_room_offset[evidence_C]) then
						table.insert(_tmp_data[_level_id]["evidence_room"], evidence_room_offset[evidence_C])
						table.insert(_tmp_data[_level_id]["evidence_location"], evidence_C - evidence_location_offset[evidence_C])
						
						local evidence_C_amount = (RNGModifier:SafeGetData(_level_id, "_evidence_C_amount") or 0) - 1
						
						if evidence_C_amount > 0 then
							table.insert(_tmp_data[_level_id]["evidence_amount"], {evidence_C, math.min(evidence_C_amount, evidence_amount_limit[evidence_C])})
						end
					end
				end
				
				if _tmp_data[_level_id]["evidence_room"] and #_tmp_data[_level_id]["evidence_room"] > 0 then
					
					--Remove option when overridden by FBI boss
					if not table.contains(self._unused_randoms, _tmp_data[_level_id]["evidence_room"][1]) then
						--log("remove: " .. _tmp_data[_level_id]["evidence_room"][1] .. "," .. _tmp_data[_level_id]["evidence_location"][1])
						table.remove(_tmp_data[_level_id]["evidence_room"],1)
						table.remove(_tmp_data[_level_id]["evidence_location"],1)
					end
					
					if #_tmp_data[_level_id]["evidence_room"] > 0 then
						for i, choice in ipairs(self._unused_randoms) do
							--log("i,choice,room: " .. i .. "," .. choice .. "," .. _tmp_data[_level_id]["evidence_room"][1])
							if choice == _tmp_data[_level_id]["evidence_room"][1] then
								rand = i
								--log("Found: " .. choice)
								table.remove(_tmp_data[_level_id]["evidence_room"],1)
								break
							end
						end
					end
				end
			elseif self._id == 101539 or self._id == 101540 or self._id == 101542 or self._id == 101630 then
				if _tmp_data[_level_id]["evidence_location"] and #_tmp_data[_level_id]["evidence_location"] > 0 then
					rand = _tmp_data[_level_id]["evidence_location"][1]
					--log(self._id .. " choice: " .. rand)
					table.remove(_tmp_data[_level_id]["evidence_location"],1)
				end
			elseif self._id == 101725 then
				--Number of evidences per location
				if #_tmp_data[_level_id]["evidence_amount"] > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == _tmp_data[_level_id]["evidence_amount"][1][1] then
							rand = i
							break							
						end
					end
					
					if _tmp_data[_level_id]["evidence_amount"][1][2] > 1 then
						_tmp_data[_level_id]["evidence_amount"][1][2] = _tmp_data[_level_id]["evidence_amount"][1][2] - 1
					else
						--Removing since at 0
						table.remove(_tmp_data[_level_id]["evidence_amount"],1)
					end
				end
			elseif self._id == 102141 then
				local rock_fence_setup = (RNGModifier:SafeGetData(_level_id, "_setupRF") or 0) - 1
				if rock_fence_setup > 0 then
					rand = 1
					local rock_fence_setup_options = { {1,2}, {3,4}, {1,4} }
					_tmp_data[_level_id]["rock_fence_setup"] = rock_fence_setup_options[rock_fence_setup]
					
					local rock_choice_1 = (RNGModifier:SafeGetData(_level_id, "_rock_1") or 0) - 1
					local rock_choice_2 = (RNGModifier:SafeGetData(_level_id, "_rock_2") or 0) - 1
					
					_tmp_data[_level_id]["rock_choices"] = {}
					
					if rock_choice_1 > 0 then
						table.insert(_tmp_data[_level_id]["rock_choices"], rock_choice_1)
					end
					
					if rock_choice_2 > 0 and rock_choice_1 ~= rock_choice_2 then
						table.insert(_tmp_data[_level_id]["rock_choices"], rock_choice_2)
					end
					
					local fence_choice_1 = (RNGModifier:SafeGetData(_level_id, "_fence_1") or 0) - 1
					local fence_choice_2 = (RNGModifier:SafeGetData(_level_id, "_fence_2") or 0) - 1
					
					_tmp_data[_level_id]["fence_choices"] = {}
					
					if fence_choice_1 > 0 then
						table.insert(_tmp_data[_level_id]["fence_choices"], fence_choice_1)
					end
					
					if fence_choice_2 > 0 and fence_choice_1 ~= fence_choice_2 then
						table.insert(_tmp_data[_level_id]["fence_choices"], fence_choice_2)
					end
				end
			elseif self._id == 102143 then
				--local boost_A = (RNGModifier:SafeGetData(_level_id, "_boost_A") or 0) - 1
				--local boost_B = (RNGModifier:SafeGetData(_level_id, "_boost_B") or 0) - 1
				
				if _tmp_data[_level_id]["rock_fence_setup"] and #_tmp_data[_level_id]["rock_fence_setup"] > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == _tmp_data[_level_id]["rock_fence_setup"][1] then
							rand = i
							table.remove(_tmp_data[_level_id]["rock_fence_setup"],1)
							break
						end
					end
				end
			elseif self._id == 102122 then
				--rand = PickRandomFromList(rand, "_rock")
				if _tmp_data[_level_id]["rock_choices"] and #_tmp_data[_level_id]["rock_choices"] > 0 then
					for i, choice in ipairs(self._unused_randoms) do
						if choice == _tmp_data[_level_id]["rock_choices"][1] then
							rand = i
							table.remove(_tmp_data[_level_id]["rock_choices"],1)
							break
						end
					end
				end
			elseif self._id == 102225 or self._id == 102226 then
				--rand = PickRandomFromList(rand, "_fenceL")
				
				if _tmp_data[_level_id]["fence_choices"] and #_tmp_data[_level_id]["fence_choices"] > 0 then
					local offset = 0
					if _tmp_data[_level_id]["fence_choices"][1] > 4 then
						offset = 4
					end
					for i, choice in ipairs(self._unused_randoms) do
						if choice == (_tmp_data[_level_id]["fence_choices"][1] - offset) then
							rand = i
							table.remove(_tmp_data[_level_id]["fence_choices"],1)
							break
						end
					end
				end
			--[[elseif self._id == 102226 then
				rand = PickRandomFromList(rand, "_fenceR")]]
			end
			
		elseif _level_id == "vit" then
			local _vit_bookshelf = RNGModifier:SafeGetData(_level_id, "_vit_bookshelf") or 0
			_vit_bookshelf = _vit_bookshelf - 1
			if _vit_bookshelf > 0 then
				local _id_fix = self._id 
				if _id_fix == 147898 then
					rand = 1
				elseif _id_fix == 150598 or _id_fix == 148798 or _id_fix == 151098 or _id_fix == 151398 or _id_fix == 151698 or _id_fix == 150298 or _id_fix == 148498 or _id_fix == 149698 or _id_fix == 149998 then
					rand = 1
				end
			end
			
			if self._id == 101264 then
				rand = PickRandomFromList(rand, "_vault_location")
			elseif self._id == 102949 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 101013 then
				rand = PickRandomFromList(rand, "_security_room")
			elseif self._id == 101168 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["2"] = _tmp_data[_level_id]["2"] or 0
				_tmp_data[_level_id]["2"] = _tmp_data[_level_id]["2"] + 1
				if _tmp_data[_level_id]["2"] == 1 then
					local _closedoor_A = RNGModifier:SafeGetData(_level_id, "_closedoor_A") or 0
					_closedoor_A = _closedoor_A - 1
					if _closedoor_A > 0 then
						rand = _closedoor_A
					end
				else
					local _closedoor_B = RNGModifier:SafeGetData(_level_id, "_closedoor_B") or 0
					_closedoor_B = _closedoor_B - 1
					if _closedoor_B > 0 then
						rand = _closedoor_B
					end
				end
			elseif self._id == 101042 then
				local _laptop_room = (RNGModifier:SafeGetData(_level_id, "_laptop_room") or 0) - 1
				if _laptop_room >= 1 and _laptop_room <= 3 then
					rand = 1
				elseif _laptop_room == 4 then
					rand = 2
				elseif _laptop_room >= 5 and _laptop_room <= 7 then
					rand = 3
				elseif _laptop_room > 7 then
					rand = _laptop_room - 4
				end
			elseif self._id == 101023 then
				local _laptop_room = (RNGModifier:SafeGetData(_level_id, "_laptop_room") or 0) - 1
				if _laptop_room >= 1 and _laptop_room <= 3 then
					rand = _laptop_room
				end
			elseif self._id == 101027 then
				local _laptop_room = (RNGModifier:SafeGetData(_level_id, "_laptop_room") or 0) - 1
				if _laptop_room >= 8 and _laptop_room <= 10 then
					rand = _laptop_room - 7
				end
			elseif self._id == 101040 then
				local _usb = (RNGModifier:SafeGetData(_level_id, "_usb") or 0) - 1
				if _usb >= 1 and _usb <= 2 then
					rand = 1
				elseif _usb >= 3 and _usb <= 4 then
					rand = _usb - 1
				elseif _usb >= 5 and _usb <= 6 then
					rand = 4
				elseif _usb >= 7 and _usb <= 9 then
					rand = 5
				elseif _usb > 9 then
					rand = 6
				end
			elseif self._id == 101531 then
				rand = PickRandomFromList(rand, "_usb")
			elseif self._id == 102783 then
				local _usb = (RNGModifier:SafeGetData(_level_id, "_usb") or 0) - 1
				if _usb >= 5 and _usb <= 6 then
					rand = _usb - 4
				end
			elseif self._id == 102788 then
				local _usb = (RNGModifier:SafeGetData(_level_id, "_usb") or 0) - 1
				if _usb >= 7 and _usb <= 9 then
					rand = _usb - 6
				end
			elseif self._id == 102795 then
				local _usb = (RNGModifier:SafeGetData(_level_id, "_usb") or 0) - 1
				if _usb > 9 then
					rand = _usb - 9
				end
			elseif self._id == 102621 then
				rand = PickRandomFromList(rand, "_first_number")
			elseif self._id == 102662 then
				rand = PickRandomFromList(rand, "_second_number")
			elseif self._id == 102663 then
				rand = PickRandomFromList(rand, "_third_number")
			elseif self._id == 102664 then
				rand = PickRandomFromList(rand, "_fourth_number")
			elseif self._id == 100206 then 
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["randomize_correct_wires"] = _tmp_data[_level_id]["randomize_correct_wires"] or 0
				_tmp_data[_level_id]["randomize_correct_wires"] = _tmp_data[_level_id]["randomize_correct_wires"] + 1
				if _tmp_data[_level_id]["randomize_correct_wires"] == 1 then
					local _wire_A = RNGModifier:SafeGetData(_level_id, "_wire_A") or 0
					_wire_A = _wire_A - 1
					if _wire_A > 0 then
						rand = _wire_A
					end
				else
					local _wire_B = RNGModifier:SafeGetData(_level_id, "_wire_B") or 0
					_wire_B = _wire_B - 1
					if _wire_B > 0 then
						rand = _wire_B
					end
				end 
			elseif self._id == 100786 then
				rand = PickRandomFromList(rand, "_red_wire_box")
			elseif self._id == 100910 then
				rand = PickRandomFromList(rand, "_green_wire_box")
			elseif self._id == 100911 then
				rand = PickRandomFromList(rand, "_blue_wire_box")
			elseif self._id == 100912 then
				rand = PickRandomFromList(rand, "_yellow_wire_box")
			elseif self._id == 100187 then
				rand = PickRandomFromList(rand, "_powerbox")
			elseif self._id == 102359 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_thermite"))
			end
			--[[elseif self._id == 101442 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_study"))]]
			
		elseif _level_id == "welcome_to_the_jungle_1" or _level_id == "welcome_to_the_jungle_1_night" then
			if self._id == 100321 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 102888 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_table_1"))
			elseif self._id == 102938 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_table_2"))
			elseif self._id == 102970 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_table_3"))
			elseif self._id == 101333 then
				rand = PickRandomFromList(rand,"_safe1")
			end
			
		elseif _level_id == "welcome_to_the_jungle_2" or _level_id == "welcome_to_the_jungle_2_night" then
			if self._id == 103718 then
				rand = PickRandomFromList(rand, "_engine")
			elseif self._id == 101916 then
				rand = PickRandomFromList(rand, "_server")
			elseif self._id == 103838 then
				rand = PickRandomFromList(rand, "_plane")
			elseif self._id == 100349 then
				rand = PickRandomFromList(rand, "_pickup")
			elseif self._id == 104426 then
				rand = PickRandomFromList(rand, "_flare")
			end		
			
		elseif _level_id == "jolly" then
			if self._id == 100401 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 100008 then
				--rand = PickRandomFromList(rand,"_lower_van_spawn")
				rand = GetIndexFromChoice((RNGModifier:SafeGetData(_level_id, "_lower_van_spawn") or 0) - 1)
			elseif self._id == 100126 then
				--rand = PickRandomFromList(rand,"_upper_van_spawn")
				rand = GetIndexFromChoice((RNGModifier:SafeGetData(_level_id, "_upper_van_spawn") or 0) - 1)
			elseif self._id == 101255 then
				rand = PickRandomFromList(rand,"_c4")
			end
			
		elseif _level_id == "four_stores" then
			if self._id == 101205 then
				rand = PickRandomFromList(rand,"_escape")
			elseif self._id == 103591 then
				rand = PickRandomFromList(rand,"_time")
			elseif self._id == 101106 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 102487 then
				rand = PickRandomFromList(rand,"_time_easy")
			end
			
		elseif _level_id == "pal" then
			if self._id == 100026 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 101152 then
				rand = PickRandomFromList(rand,"_valve")
			elseif self._id == 100931 then
				rand = PickRandomFromList(rand,"_hoe")
			elseif self._id == 101325 then
				rand = PickRandomFromList(rand,"_manhole")
			elseif self._id == 100127 then			
				local crowbar_1 = (RNGModifier:SafeGetData(_level_id, "_crowbar_A") or 0) - 1
				local crowbar_2 = (RNGModifier:SafeGetData(_level_id, "_crowbar_B") or 0) - 1
				local crowbar_3 = (RNGModifier:SafeGetData(_level_id, "_crowbar_C") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == crowbar_1 or choice == crowbar_2 or choice == crowbar_3 then
						rand = i
						break
					end
				end
			end
			
		elseif _level_id == "pbr" then
			if self._id == 100002 then
				rand = PickRandomFromList(rand,"_entrance")
			elseif self._id == 101482 then
				rand = GetIndexFromChoice((RNGModifier:SafeGetData(_level_id, "_tools") or 0) - 1)
			elseif self._id == 100013 then
				rand = PickRandomFromList(rand,"_gate1")
			elseif self._id == 100165 then
				rand = PickRandomFromList(rand,"_gate2")
			elseif self._id == 100170 then
				rand = PickRandomFromList(rand,"_gate3")
			elseif self._id == 100015 then
				rand = PickRandomFromList(rand,"_airlock_gate")
			elseif self._id == 100014 then
				rand = PickRandomFromList(rand,"_frontal_gate")
			elseif self._id == 100012 then
				rand = PickRandomFromList(rand,"_control_room1")
			elseif self._id == 100353 then
				rand = PickRandomFromList(rand,"_control_room2")
			elseif self._id == 100357 then
				rand = PickRandomFromList(rand,"_control_room3")
			elseif self._id == 101690 then
				rand = GetIndexFromChoice((RNGModifier:SafeGetData(_level_id, "_artifact") or 0) - 1)
				
			elseif table.contains({101060,101061,101062}, self._id) then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].loot then
					_tmp_data[_level_id].loot = {}
				
					local _server = (RNGModifier:SafeGetData(_level_id, "_server") or 0) - 1
					local _weapon = (RNGModifier:SafeGetData(_level_id, "_weapon") or 0) - 1
					local _painting = (RNGModifier:SafeGetData(_level_id, "_painting") or 0) - 1
					
					if _server > 0 then table.insert(_tmp_data[_level_id].loot, _server) end
					if _weapon > 0 then table.insert(_tmp_data[_level_id].loot, _weapon) end
					if _painting > 0 then table.insert(_tmp_data[_level_id].loot, _painting) end
				end
				
				if _tmp_data[_level_id].loot and #_tmp_data[_level_id].loot > 0 then
					local choice = _tmp_data[_level_id].loot[1]
					table.remove(_tmp_data[_level_id].loot,1)
					
					rand = GetIndexFromChoice(choice)
				end
			elseif self._id == 101350 then
				rand = PickRandomFromList(rand,"_deny")
			elseif self._id == 102314 then
				local _area_comm_A = (RNGModifier:SafeGetData(_level_id, "_area_comm_A") or 0) - 1
				local _area_comm_B = (RNGModifier:SafeGetData(_level_id, "_bomb_crate_B") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _area_comm_A or choice == _area_comm_B then
						rand = i
						break
					end
				end
			elseif self._id == 101374 then			
				local _area_comms_A = (RNGModifier:SafeGetData(_level_id, "_area_comms_A") or 0) - 1
				local _area_comms_B = (RNGModifier:SafeGetData(_level_id, "_area_comms_B") or 0) - 1
				local _area_comms_C = (RNGModifier:SafeGetData(_level_id, "_area_comms_C") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _area_comms_A or choice == _area_comms_B or choice == _area_comms_C then
						rand = i
						break
					end
				end
				
			elseif self._id == 101386 then
				rand = PickRandomFromList(rand,"_area_A")
			elseif self._id == 101387 then
				rand = PickRandomFromList(rand,"_area_B")
			elseif self._id == 101388 then
				rand = PickRandomFromList(rand,"_area_C")
			elseif self._id == 101389 then
				rand = PickRandomFromList(rand,"_area_D")
			elseif self._id == 101390 then
				rand = PickRandomFromList(rand,"_area_E")
			elseif self._id == 101367 then
				rand = PickRandomFromList(rand,"_helipad")
			elseif self._id == 101436 then				
				local _bomb_crate_A = (RNGModifier:SafeGetData(_level_id, "_bomb_crate_A") or 0) - 1
				local _bomb_crate_B = (RNGModifier:SafeGetData(_level_id, "_bomb_crate_B") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _bomb_crate_A or choice == _bomb_crate_B then
						rand = i
						break
					end
				end
			end
		
		elseif _level_id == "pbr2" then
			if self._id == 100759 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].pallet then
					--Regular pallets
					_tmp_data[_level_id].pallet = {}
					local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
					local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
					local pallet_offset = {1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,4,5,5,5,5}
					
					if pallet_1 > 0 then
						table.insert(_tmp_data[_level_id].pallet, pallet_offset[pallet_1])
					end
					
					if pallet_2 > 0 then
						table.insert(_tmp_data[_level_id].pallet, pallet_offset[pallet_2])
					end
					
					--Scattered cash
					_tmp_data[_level_id].small_choices_fastfood = {}
					_tmp_data[_level_id].small_choices_car_dealer = {}
					_tmp_data[_level_id].small_choices_gas_station = {}
					_tmp_data[_level_id].small_choices_hardware_store = {}
					_tmp_data[_level_id].small_choices_street = {}
					for i = 1, 15 do					
						local is_option_chosen = tonumber(RNGModifier:SafeGetData(_level_id, "_small_choices_fastfood_" .. i)) == 1 and true or false
						if is_option_chosen then
							table.insert(_tmp_data[_level_id].small_choices_fastfood, i)
						end			
					end						
					
					for i = 1, 15 do
						local is_option_chosen = tonumber(RNGModifier:SafeGetData(_level_id, "_small_choices_car_dealer_" .. i)) == 1 and true or false
						if is_option_chosen then
							table.insert(_tmp_data[_level_id].small_choices_car_dealer, i)
						end
					end
					
					for i = 1, 15 do
						local is_option_chosen = tonumber(RNGModifier:SafeGetData(_level_id, "_small_choices_gas_station_" .. i)) == 1 and true or false
						if is_option_chosen then
							table.insert(_tmp_data[_level_id].small_choices_gas_station, i)
						end
					end
					
					for i = 1, 15 do
						local is_option_chosen = tonumber(RNGModifier:SafeGetData(_level_id, "_small_choices_hardware_store_" .. i)) == 1 and true or false
						if is_option_chosen then
							table.insert(_tmp_data[_level_id].small_choices_hardware_store, i)
						end
					end
					
					for i = 1, 15 do
						local is_option_chosen = tonumber(RNGModifier:SafeGetData(_level_id, "_small_choices_street_" .. i)) == 1 and true or false
						if is_option_chosen then
							table.insert(_tmp_data[_level_id].small_choices_street, i)
						end
					end
				end
				
				if _tmp_data[_level_id].pallet and #_tmp_data[_level_id].pallet > 0 then
					rand = GetIndexFromChoice(table.remove(_tmp_data[_level_id].pallet, 1))
				end
			elseif self._id == 100719 then
				local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
				local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
				local pallet_choice = pallet_1 > 0 and pallet_1 <= 4 and pallet_1 or pallet_2 > 0 and pallet_2 <= 5 and pallet_2 or 0
				if pallet_choice > 0 then rand = pallet_choice end
			elseif self._id == 100727 then
				local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
				local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
				local pallet_choice = pallet_1 >= 6 and pallet_1 <= 8 and pallet_1 - 5 or pallet_2 >= 6 and pallet_2 <= 8 and pallet_2 - 5 or 0
				if pallet_choice > 0 then rand = pallet_choice end
			elseif self._id == 100735 then
				local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
				local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
				local pallet_choice = pallet_1 >= 9 and pallet_1 <= 12 and pallet_1 - 8 or pallet_2 >= 9 and pallet_2 <= 12 and pallet_2 - 8 or 0
				if pallet_choice > 0 then rand = pallet_choice end
			elseif self._id == 100867 then
				local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
				local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
				local pallet_choice = pallet_1 >= 15 and pallet_1 <= 17 and pallet_1 - 14 or pallet_2 >= 15 and pallet_2 <= 17 and pallet_2 - 14 or 0
				if pallet_choice > 0 then rand = pallet_choice end
			elseif self._id == 100868 then
				local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
				local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
				local pallet_choice = pallet_1 >= 13 and pallet_1 <= 14 and pallet_1 - 12 or pallet_2 >= 13 and pallet_2 <= 14 and pallet_2 - 12 or 0
				if pallet_choice > 0 then rand = pallet_choice end
			elseif self._id == 100751 then
				local pallet_1 = GetMultipleChoiceValue(_level_id, "_pallet_1")
				local pallet_2 = GetMultipleChoiceValue(_level_id, "_pallet_2")
				local pallet_choice = pallet_1 >= 18 and pallet_1 <= 21 and pallet_1 - 17 or pallet_2 >= 18 and pallet_2 <= 21 and pallet_2 - 17 or 0
				if pallet_choice > 0 then rand = pallet_choice end
			elseif self._id == 100965 then
				local broken_pallet = GetMultipleChoiceValue(_level_id, "_broken_pallet")
				if broken_pallet > 0 then
					local broken_pallet_offset = {1,1,2,2,3,3,4,4,5,5}
					broken_pallet = broken_pallet_offset[broken_pallet]
					rand = GetIndexFromChoice(broken_pallet)
				else
					rand = self._unused_randoms
				end
			elseif self._id == 100266 then
				local broken_pallet = GetMultipleChoiceValue(_level_id, "_broken_pallet")
				if broken_pallet >= 1 and broken_pallet <= 2 then rand = broken_pallet end
			elseif self._id == 100264 then
				local broken_pallet = GetMultipleChoiceValue(_level_id, "_broken_pallet") - 2
				if broken_pallet >= 1 and broken_pallet <= 2 then rand = broken_pallet end
			elseif self._id == 100261 then
				local broken_pallet = GetMultipleChoiceValue(_level_id, "_broken_pallet") - 4
				if broken_pallet >= 1 and broken_pallet <= 2 then rand = broken_pallet end
			elseif self._id == 100255 then
				local broken_pallet = GetMultipleChoiceValue(_level_id, "_broken_pallet") - 4
				if broken_pallet >= 1 and broken_pallet <= 2 then rand = broken_pallet end
			elseif self._id == 100258 then
				local broken_pallet = GetMultipleChoiceValue(_level_id, "_broken_pallet") - 8
				if broken_pallet >= 1 and broken_pallet <= 2 then rand = broken_pallet end
			elseif self._id == 100760 then
				if #_tmp_data[_level_id].small_choices_fastfood > 0 then
					local option = table.remove(_tmp_data[_level_id].small_choices_fastfood, 1)
					rand = GetIndexFromChoice(option)
				end
			elseif self._id == 100764 then
				if #_tmp_data[_level_id].small_choices_car_dealer > 0 then
					local option = table.remove(_tmp_data[_level_id].small_choices_car_dealer, 1)
					rand = GetIndexFromChoice(option)
				end
			elseif self._id == 100765 then
				if #_tmp_data[_level_id].small_choices_gas_station > 0 then
					local option = table.remove(_tmp_data[_level_id].small_choices_gas_station, 1)
					rand = GetIndexFromChoice(option)
				end
			elseif self._id == 100766 then
				if #_tmp_data[_level_id].small_choices_hardware_store > 0 then
					local option = table.remove(_tmp_data[_level_id].small_choices_hardware_store, 1)
					rand = GetIndexFromChoice(option)
				end
			elseif self._id == 100767 then
				if #_tmp_data[_level_id].small_choices_street > 0 then
					local option = table.remove(_tmp_data[_level_id].small_choices_street, 1)
					rand = GetIndexFromChoice(option)
				end
			elseif self._id == 101157 then
				rand = PickRandomFromList(rand, "_escape")
			end
							
		elseif _level_id == "mad" then
			if self._id == 101890 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 101631 then
				local _c4 = (RNGModifier:SafeGetData(_level_id, "_c4") or 0) - 1
				if _c4 > 0 then rand = _c4 end
			elseif self._id == 101632 then
				local _c4 = (RNGModifier:SafeGetData(_level_id, "_c4") or 0) - 1
				if _c4 > 2 then rand = _c4 - 2 end
			elseif self._id == 101904 then
				local _radar = (RNGModifier:SafeGetData(_level_id, "_radar") or 0) - 1
				rand = GetIndexFromChoice(_radar)
			elseif self._id == 100825 then
				rand = PickRandomFromList(rand, "_antiair")
			elseif self._id == 100214 then
				rand = PickRandomFromList(rand, "_emp")
			elseif self._id == 100344 then
				rand = PickRandomFromList(rand, "_briefcase")
			elseif self._id == 100645 then
				rand = PickRandomFromList(rand, "_keycard")
			elseif self._id == 100219 then
				rand = PickRandomFromList(rand, "_scanner")
			elseif self._id == 100761 then
				rand = PickRandomFromList(rand, "_server")
			elseif self._id == 100667 then
				rand = PickRandomFromList(rand, "_bunker_objective")
			elseif self._id == 100632 then
				local _scientist_hand = (RNGModifier:SafeGetData(_level_id, "_scientist_hand") or 0) - 1
				rand = GetIndexFromChoice(_scientist_hand)
			elseif self._id == 100631 then
				local _scientist_hand = (RNGModifier:SafeGetData(_level_id, "_scientist_hand") or 0) - 1
				local offset = {0,0,2,4,1,3}
				rand = GetIndexFromChoice(offset[_scientist_hand])
			elseif self._id == 100749 then
				rand = PickRandomFromList(rand, "_gas")
			elseif self._id == 101064 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].test_subject then
					rand = PickRandomFromList(rand, "_test_subject")
					_tmp_data[_level_id].test_subject = rand
				end
			elseif self._id == 100345 then
				rand = PickRandomFromList(rand, "_escape")
			elseif self._id == 100416 then
				rand = PickRandomFromList(rand, "_pbox_1")
			elseif self._id == 100417 then
				rand = PickRandomFromList(rand, "_pbox_2")
			end
		elseif _level_id == "man" then
			if self._id == 101647 then				
				local _crowbar_A = (RNGModifier:SafeGetData(_level_id, "_crowbar_A") or 0) - 1
				local _crowbar_B = (RNGModifier:SafeGetData(_level_id, "_crowbar_B") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _crowbar_A or choice == _crowbar_B then
						rand = i
						break
					end
				end
			elseif self._id == 102026 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_roof_boxes"))
			elseif self._id == 103696 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_building_boxes"))
			elseif self._id == 100055 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 101786 then
				rand = PickRandomFromList(rand,"_limo")
			end
		
		elseif _level_id == "bph" then
			if self._id == 100010 then
				rand = PickRandomFromList(rand, "_thermite")
			elseif self._id == 101265 then
				rand = PickRandomFromList(rand, "_bain")
			elseif self._id == 101389 then
				rand = PickRandomFromList(rand, "_l_or_c")
			elseif self._id == 103388 then
				rand = PickRandomFromList(rand, "_hackbox")
			end
		
		elseif _level_id == "dinner" then
			if self._id == 105038 then
				rand = PickRandomFromList(rand, "_keycard")
			elseif self._id == 100846 or self._id == 103179 then
				local gascan_1 = (RNGModifier:SafeGetData(_level_id, "_gascan_1") or 0) - 1
				local gascan_2 = (RNGModifier:SafeGetData(_level_id, "_gascan_2") or 0) - 1
				local gascan_3 = (RNGModifier:SafeGetData(_level_id, "_gascan_3") or 0) - 1
				local gascan_4 = (RNGModifier:SafeGetData(_level_id, "_gascan_4") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == gascan_1 or choice == gascan_2 or choice == gascan_3 or choice == gascan_4 then
						rand = i
						break
					end
				end
			elseif self._id == 102710 then
				rand = PickRandomFromList(rand, "_escape")
			elseif self._id == 104485 then
				rand = PickRandomFromList(rand, "_escape001")
			elseif self._id == 104653 then
				rand = PickRandomFromList(rand, "_escape001_path1")
			elseif self._id == 104654 then
				rand = PickRandomFromList(rand, "_escape001_path2")
			elseif self._id == 104660 then
				rand = PickRandomFromList(rand, "_escape001_path3")
			elseif self._id == 104656 then
				rand = PickRandomFromList(rand, "_escape002")
			elseif self._id == 104661 then
				rand = PickRandomFromList(rand, "_escape002_path1")
			elseif self._id == 104662 then
				rand = PickRandomFromList(rand, "_escape002_path2")
			elseif self._id == 104679 then
				rand = PickRandomFromList(rand, "_escape002_path3")
			elseif self._id == 104199 then
				rand = PickRandomFromList(rand, "_escape003")
			elseif self._id == 104228 then
				rand = PickRandomFromList(rand, "_escape003_path1")
			elseif self._id == 104227 then
				rand = PickRandomFromList(rand, "_escape003_path2")
			elseif self._id == 104229 then
				rand = PickRandomFromList(rand, "_escape003_path3")
			end
		
		elseif _level_id == "nmh" then
			if self._id == 102452 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
				if not _tmp_data[_level_id].camera_normal then
					_tmp_data[_level_id].camera_normal = {}
					local best_cameras = GetCheckboxValue(_level_id, "_best_cameras")
					if best_cameras then
						_tmp_data[_level_id].camera_normal = {20,2,13,12,7,4,19,8,5,16,11,15,3,6,14,1,10}
					end
				end
				
				if _tmp_data[_level_id].camera_normal and #_tmp_data[_level_id].camera_normal > 0 then
					local _camera = table.remove(_tmp_data[_level_id].camera_normal, 1)
					rand = GetIndexFromChoice(_camera)
				end
			elseif self._id == 102454 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
			
				if not _tmp_data[_level_id].camera_dw then
					_tmp_data[_level_id].camera_dw = {}
					local best_cameras = GetCheckboxValue(_level_id, "_best_cameras")
					if best_cameras then
						_tmp_data[_level_id].camera_dw = {19,8,15,17,20,18,5,7,6,10,11}
					end
				end
				
				if _tmp_data[_level_id].camera_dw and #_tmp_data[_level_id].camera_dw > 0 then
					local _camera = table.remove(_tmp_data[_level_id].camera_dw, 1)
					rand = GetIndexFromChoice(_camera)
				end
			elseif self._id == 103762 then
				local _phone = GetCheckboxValue(_level_id, "_phone")
				if _phone then
					rand = 1
				end
			elseif self._id == 102309 then
				rand = PickRandomFromList(rand, "_patient")
			elseif self._id == 103468 then
				local _box = GetCheckboxValue(_level_id, "_box")
				if _box then
					rand = 1
				end
			end
		
		elseif _level_id == "election_day_1" then
			if self._id == 100631 then
				rand = PickRandomFromList(rand, "_truck")
			elseif self._id == 103714 then
				rand = PickRandomFromList(rand, "_gate")
			end
			
		elseif _level_id == "election_day_2" then
			if self._id == 101027 then
				rand = PickRandomFromList(rand, "_door")
			elseif self._id == 101156 then
				--rand = PickRandomFromList(rand, "_crowbar")
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}				
				
				if not _tmp_data[_level_id].second_crowbar then
					local _crowbar = (RNGModifier:SafeGetData(_level_id, "_crowbar") or 0) - 1
					rand = GetIndexFromChoice(_crowbar)
					_tmp_data[_level_id].second_crowbar = true
				else
					local _crowbar = (RNGModifier:SafeGetData(_level_id, "_crowbar2") or 0) - 1
					rand = GetIndexFromChoice(_crowbar)
				end				
			elseif self._id == 102527 then
				rand = PickRandomFromList(rand, "_keycard")
			elseif self._id == 103887 and #_tmp_data[_level_id]["machines_1_to_8"] > 0 then
				rand = 1
			elseif self._id == 103885 and #_tmp_data[_level_id]["machines_1_to_8"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_1_to_8"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_1_to_8"], 1)
			elseif self._id == 103892 and #_tmp_data[_level_id]["machines_9_to_16"] > 0 then
				rand = 1
			elseif self._id == 103893 and #_tmp_data[_level_id]["machines_9_to_16"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_9_to_16"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_9_to_16"], 1)
			elseif self._id == 103903 and #_tmp_data[_level_id]["machines_17_to_20"] > 0 then
				rand = 1
			elseif self._id == 103895 and #_tmp_data[_level_id]["machines_17_to_20"] > 0 then
				--log("rand 17 to 20")
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_17_to_20"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_17_to_20"], 1)
			elseif self._id == 103905 and #_tmp_data[_level_id]["machines_21_to_24"] > 0 then
				rand = 1
			elseif self._id == 103906 and #_tmp_data[_level_id]["machines_21_to_24"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_21_to_24"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_21_to_24"], 1)
			elseif self._id == 103908 and #_tmp_data[_level_id]["machines_25_to_28"] > 0 then
				rand = 1
			elseif self._id == 103907 and #_tmp_data[_level_id]["machines_25_to_28"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_25_to_28"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_25_to_28"], 1)
			elseif self._id == 103910 and #_tmp_data[_level_id]["machines_29_to_32"] > 0 then
				rand = 1
			elseif self._id == 103913 and #_tmp_data[_level_id]["machines_29_to_32"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_29_to_32"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_29_to_32"], 1)
			elseif self._id == 103914 and #_tmp_data[_level_id]["machines_33_to_40"] > 0 then
				rand = 3
			elseif self._id == 103917 and #_tmp_data[_level_id]["machines_33_to_40"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_33_to_40"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_33_to_40"], 1)
			elseif self._id == 103918 and #_tmp_data[_level_id]["machines_41_to_44"] > 0 then
				rand = 2
			elseif self._id == 103920 and #_tmp_data[_level_id]["machines_41_to_44"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_41_to_44"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_41_to_44"], 1)
			elseif (self._id == 103924 or self._id == 103925) and #_tmp_data[_level_id]["machines_45_to_50"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_45_to_50"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_45_to_50"], 1)
			elseif self._id == 103927 and #_tmp_data[_level_id]["machines_17_to_50"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_17_to_50"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_17_to_50"], 1)
			elseif self._id == 103928 and #_tmp_data[_level_id]["machines_1_to_16"] > 0 then
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _tmp_data[_level_id]["machines_1_to_16"][1] then
						rand = i
						break
					end
				end
				table.remove(_tmp_data[_level_id]["machines_1_to_16"], 1)
			end
			
		elseif _level_id == "election_day_3" or _level_id == "election_day_3_skip1"  or _level_id == "election_day_3_skip2" then	
			if self._id == 101334 then
				rand = PickRandomFromList(rand,"_pc")
			elseif self._id == 102703 then
				rand = PickRandomFromList(rand,"_door")
			elseif self._id == 103166 then				
				local _elevator = GetCheckboxValue(_level_id, "_elevator")
				if _elevator then
					rand = 1
				end
			elseif self._id == 103239 then
				local _elevator = GetCheckboxValue(_level_id, "_elevator")
				if _elevator then
					rand = 2
				end
			elseif self._id == 103080 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 103288 then
				rand = PickRandomFromList(rand, "_van")
				if rand == 2 then
					if self._id == 104666 then
						rand = 2
					end
				end
			end
		elseif _level_id == "mia_1" then		
			if self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 106522 then
				rand = PickRandomFromList(rand, "_barcode")	
			elseif self._id == 101242 then
				rand = PickRandomFromList(rand, "_hatch")
			elseif self._id == 101547 then
				local gascan_A = (RNGModifier:SafeGetData(_level_id, "_gascan_A") or 0) - 1
				local gascan_B = (RNGModifier:SafeGetData(_level_id, "_gascan_B") or 0) - 1
				local gascan_C = (RNGModifier:SafeGetData(_level_id, "_gascan_C") or 0) - 1
				local gascan_D = (RNGModifier:SafeGetData(_level_id, "_gascan_D") or 0) - 1
				local gascan_E = (RNGModifier:SafeGetData(_level_id, "_gascan_E") or 0) - 1
				local gascan_F = (RNGModifier:SafeGetData(_level_id, "_gascan_F") or 0) - 1
				local gascan_G = (RNGModifier:SafeGetData(_level_id, "_gascan_G") or 0) - 1
				local gascan_H = (RNGModifier:SafeGetData(_level_id, "_gascan_H") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == gascan_A or choice == gascan_B or choice == gascan_C or choice == gascan_D 
					or choice == gascan_E or choice == gascan_F or choice == gascan_G or choice == gascan_H then
						rand = i
						break
					end
				end
			elseif self._editor_name == "set_random_time" and self._values.instance_name and self._values.instance_name == "hlm_reader_001" then
				local _reader_time = tonumber(RNGModifier:SafeGetData(_level_id, "_reader_time")) == 1 and true or false
				if _reader_time then rand = 1 end
			elseif self._id == 102815 or self._id == 103167 then
				local _crowbar_top = (RNGModifier:SafeGetData(_level_id, "_crowbar_top") or 0) - 1
				rand = GetIndexFromChoice(_crowbar_top)
			elseif self._id == 100074 or self._id == 103168 then
				local _crowbar_basement = (RNGModifier:SafeGetData(_level_id, "_crowbar_basement") or 0) - 1
				rand = GetIndexFromChoice(_crowbar_basement)
			elseif self._id == 106138 then
				rand = PickRandomFromList(rand, "_winch")
			elseif self._editor_name == "logic_random_001" and self._values.instance_name and self._values.instance_name:find("hlm_box_contraband00") then
				local _crate_content = (RNGModifier:SafeGetData(_level_id, "_crate_content") or 0) - 1
				rand = GetIndexFromChoice(_crate_content)
			end
		elseif _level_id == "mia_2" then
			if self._id == 101511 then
				rand = PickRandomFromList(rand, "_c4")
			elseif self._id == 100475 then
				rand = PickRandomFromList(rand, "_vault")
			elseif self._id == 101857 then
				rand = PickRandomFromList(rand, "_escape")
			elseif self._id == 100427 then
				local _heli_delay = tonumber(RNGModifier:SafeGetData(_level_id, "_heli_delay")) == 1 and true or false
				if _heli_delay then rand = 1 end
			elseif self._id == 101334 then
				rand = PickRandomFromList(rand, "_drill")
			elseif self._id == 100124 then
				rand = PickRandomFromList(rand, "_path_second")
			elseif self._id == 100275 then
				rand = PickRandomFromList(rand, "_path_third")
			elseif self._editor_name:find("random_box_location") and self._values.instance_name and (self._values.instance_name == "hlm_random_right003_001" or self._values.instance_name == "hlm_random_left003_001") then
				rand = PickRandomFromList(rand, "_circuit_breaker")
			end
			
		elseif _level_id == "shoutout_raid" then
			if self._id == 100694 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["pick_2"] = _tmp_data[_level_id]["pick_2"] or 0
				_tmp_data[_level_id]["pick_2"] = _tmp_data[_level_id]["pick_2"] + 1
				if _tmp_data[_level_id]["pick_2"] == 1 then
					local _crowbar_A = RNGModifier:SafeGetData(_level_id, "_crowbar_A") or 0
					_crowbar_A = _crowbar_A - 1
					if _crowbar_A > 0 then
						rand = _crowbar_A
					end
				else
					local _crowbar_B = RNGModifier:SafeGetData(_level_id, "_crowbar_B") or 0
					_crowbar_B = _crowbar_B - 1
					if _crowbar_B > 0 then
						rand = _crowbar_B
					end
				end
			end
			if self._id == 103172 then
				rand = PickRandomFromList(rand, "_containerA")
			elseif self._id == 100238 then
				rand = PickRandomFromList(rand, "_containerB")
			elseif self._id == 103622 then
				rand = PickRandomFromList(rand, "_cage")
			elseif self._id == 106081 then
				rand = PickRandomFromList(rand, "_escape")
			end	
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
			
		elseif _level_id == "fish" then		
			if self._id == 100332 then
				rand = PickRandomFromList(rand,"_color")	
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id].color = rand			
			elseif self._id == 100261 then				
				local _laptop1 = (RNGModifier:SafeGetData(_level_id, "_laptop1") or 0) - 1
				local offset = {1,2,3,4,5,6,7,9}
				rand = GetIndexFromChoice(offset[_laptop1])							
			elseif self._id == 100096 then			
				local _laptop1 = (RNGModifier:SafeGetData(_level_id, "_laptop1") or 0) - 1
				local offset = {0,0,0,0,0,0,0,2}
				rand = GetIndexFromChoice(offset[_laptop1])
			elseif self._id == 100591 then
				rand = PickRandomFromList(rand, "_end")
			elseif self._id == 100250 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_book"))
			elseif self._id == 140005 or self._id == 139705 or self._id == 139805 or self._id == 139905 then
				rand = PickRandomFromList(rand, "_book_money")
			elseif self._id == 100281 then
				if _tmp_data[_level_id].color == 1 then
					rand = GetIndexFromChoice(1)
				elseif _tmp_data[_level_id].color == 2 then
					rand = GetIndexFromChoice(2)
				elseif _tmp_data[_level_id].color == 3 then
					rand = GetIndexFromChoice(3)
				elseif _tmp_data[_level_id].color == 4 then
					rand = GetIndexFromChoice(4)
				elseif _tmp_data[_level_id].color == 5 then
					rand = GetIndexFromChoice(5)
				end
			elseif self._id == 100684 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_desk_blue"))		
			elseif self._id == 100682 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_desk_green"))			
			elseif self._id == 100681 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_desk_red"))				
			elseif self._id == 100680 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_desk_white"))				
			elseif self._id == 100671 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_desk_yellow"))				
			elseif self._id == 100294 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_cigar"))			
			elseif self._id == 100295 then 
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_room"))				
			elseif self._id == 100480 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_room_money"))				
			elseif self._id == 100301 then 
				if _tmp_data[_level_id].color == 5 then
					rand = GetIndexFromChoice(1)
				elseif _tmp_data[_level_id].color == 4 then
					rand = GetIndexFromChoice(2)
				elseif _tmp_data[_level_id].color == 3 then
					rand = GetIndexFromChoice(3)
				elseif _tmp_data[_level_id].color == 2 then
					rand = GetIndexFromChoice(4)
				elseif _tmp_data[_level_id].color == 1 then
					rand = GetIndexFromChoice(5)
				end
			elseif self._id == 100915 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_boat_blue"))				
			elseif self._id == 100918 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_boat_green"))			
			elseif self._id == 100917 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_boat_red"))				
			elseif self._id == 100919 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_boat_white"))				
			elseif self._id == 100920 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_boat_yellow"))
			elseif self._id == 100307 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_fridge"))			
			elseif self._id == 100313 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_aqua"))				
			elseif self._id == 100980 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_server_rack"))			
			--[[elseif self._id == 143273 then
				rand = PickRandomFromList(rand,"_button4")
			elseif self._id == 145073 then
				rand = PickRandomFromList(rand,"_button3")
			elseif self._id == 143073 then
				rand = PickRandomFromList(rand,"_button2")
			elseif self._id == 142873 then
				rand = PickRandomFromList(rand,"_button1")]]
			elseif self._values.instance_name and self._values.instance_name:find("server_rack_00") and self._editor_name == "pick_random_button" then
				if self._values.instance_name == "server_rack_001" then
					rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_button1"))
				elseif self._values.instance_name == "server_rack_002" then
					rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_button2"))
				elseif self._values.instance_name == "server_rack_003" then
					rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_button3"))
				elseif self._values.instance_name == "server_rack_004" then
					rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_button4"))
				end
			elseif self._id == 100980 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].server_rack then
					_tmp_data[_level_id].server_rack = {}
					
					local _server1 = GetMultipleChoiceValue(_level_id, "_server1")
					local _server2 = GetMultipleChoiceValue(_level_id, "_server2")
					local _server3 = GetMultipleChoiceValue(_level_id, "_server3")
					
					if _server1 > 0 then table.insert(_tmp_data[_level_id].server_rack, _server1) end
					if _server2 > 0 then table.insert(_tmp_data[_level_id].server_rack, _server2) end
					if _server3 > 0 then table.insert(_tmp_data[_level_id].server_rack, _server3) end
				end
				
				if _tmp_data[_level_id].server_rack and #_tmp_data[_level_id].server_rack > 0 then
					local choice = _tmp_data[_level_id].server_rack[1]
					table.remove(_tmp_data[_level_id].server_rack,1)
					
					rand = GetIndexFromChoice(choice)
				end
			elseif self._id == 140280 then
				
				local disable_money_A = (RNGModifier:SafeGetData(_level_id, "_disable_money_A") or 0) - 1
				local disable_money_B = (RNGModifier:SafeGetData(_level_id, "_disable_money_B") or 0) - 1
				local disable_money_C = (RNGModifier:SafeGetData(_level_id, "_disable_money_C") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == disable_money_A or choice == disable_money_B or choice == disable_money_C then
						rand = i
						break
					end
				end
			end	
			
		elseif _level_id == "des" then
			if self._id == 100723 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].objective then
					_tmp_data[_level_id].objective = {}
					
					local _objective = GetMultipleChoiceValue(_level_id, "_objective")
					local _objective_two = GetMultipleChoiceValue(_level_id, "_objective_two")
					
					if _objective > 0 then table.insert(_tmp_data[_level_id].objective, _objective) end
					if _objective_two > 0 then table.insert(_tmp_data[_level_id].objective, _objective_two) end
				end
				
				if _tmp_data[_level_id].objective and #_tmp_data[_level_id].objective > 0 then
					local choice = _tmp_data[_level_id].objective[1]
					table.remove(_tmp_data[_level_id].objective,1)
					
					rand = GetIndexFromChoice(choice)
				end
			elseif self._id == 101194 then
				rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_computer"))
			elseif self._id == 101051 then
				rand = PickRandomFromList(rand,"_whiteboard")
			elseif self._id == 145061 then
				rand = PickRandomFromList(rand,"_letter_1")
			elseif self._id == 145060 then
				rand = PickRandomFromList(rand,"_letter_2")
			elseif self._id == 145062 then
				rand = PickRandomFromList(rand,"_letter_3")
			elseif self._id == 101908 then
				rand = PickRandomFromList(rand, "_compound_A")
			elseif self._id == 101909 then
				rand = PickRandomFromList(rand, "_compound_B")
			elseif self._id == 101910 then
				rand = PickRandomFromList(rand, "_compound_C")
			elseif self._id == 101036 then
				--rand = PickRandomFromList(rand, "_block_computer")
				local computer_choice = GetMultipleChoiceValue(_level_id, "_computer")
				if computer_choice > 0 then
					if table.contains({1,2,5,7},computer_choice) then
						rand = 1
					else
						rand = 2
					end
				end
		--[[elseif self._id == 101956 then
				rand = PickRandomFromList(rand, "_first_symbol")
			elseif self._id == 101957 then
				rand = PickRandomFromList(rand, "_second_symbol")
			elseif self._id == 101958 then
				rand = PickRandomFromList(rand, "_third_symbol")]]
			elseif table.contains({101956,101957,101958},self._id) then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].symbol then
					_tmp_data[_level_id].symbol = {}
				
					local _first_symbol = (RNGModifier:SafeGetData(_level_id, "_first_symbol") or 0) - 1
					local _second_symbol = (RNGModifier:SafeGetData(_level_id, "_second_symbol") or 0) - 1
					local _third_symbol = (RNGModifier:SafeGetData(_level_id, "_third_symbol") or 0) - 1
					
					if _first_symbol > 0 then table.insert(_tmp_data[_level_id].symbol, _first_symbol) end
					if _second_symbol > 0 then table.insert(_tmp_data[_level_id].symbol, _second_symbol) end
					if _third_symbol > 0 then table.insert(_tmp_data[_level_id].symbol, _third_symbol) end
				end
				
				if _tmp_data[_level_id].symbol and #_tmp_data[_level_id].symbol > 0 then
					local choice = _tmp_data[_level_id].symbol[1]
					table.remove(_tmp_data[_level_id].symbol,1)
					
					rand = GetIndexFromChoice(choice)
				end
			elseif self._id == 101410 then
				rand = PickRandomFromList(rand, "_crane_breaker")
			elseif self._id == 108705 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["randomize_crowbar_spawns"] = _tmp_data[_level_id]["randomize_crowbar_spawns"] or 0
				_tmp_data[_level_id]["randomize_crowbar_spawns"] = _tmp_data[_level_id]["randomize_crowbar_spawns"] + 1
				if _tmp_data[_level_id]["randomize_crowbar_spawns"] == 1 then
					local _crowbar_A = RNGModifier:SafeGetData(_level_id, "_crowbar_A") or 0
					_crowbar_A = _crowbar_A - 1
					if _crowbar_A > 0 then
						rand = _crowbar_A
					end
				else
					local _crowbar_B = RNGModifier:SafeGetData(_level_id, "_crowbar_B") or 0
					_crowbar_B = _crowbar_B - 1
					if _crowbar_B > 0 then
						rand = _crowbar_B
					end
				end
			end
			--[[
			local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end
			]]
		elseif _level_id == "peta" then
			if self._id == 100190 then
				rand = PickRandomFromList(rand, "_truck")
			elseif self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 105613 then
				rand = PickRandomFromList(rand, "_goat_building")
			elseif self._id == 105635 then
				rand = PickRandomFromList(rand, "_goat_electric")
			elseif self._id == 105636 then
				rand = PickRandomFromList(rand, "_goat_fan")
			elseif self._id == 105640 then
				rand = PickRandomFromList(rand, "_goat_equipment")
			elseif self._id == 105638 then
				rand = PickRandomFromList(rand, "_goat_saw")
			elseif self._id == 105639 then
				rand = PickRandomFromList(rand, "_goat_drill")
			--[[elseif self._id == 103480 or self._id == 103482 then
				rand = PickRandomFromList(rand, "_goat_random")]]
			elseif self._id == 105670 then
				rand = PickRandomFromList(rand, "_correct_powerbox1")			
			elseif self._id == 105720 then
				rand = PickRandomFromList(rand, "_correct_powerbox2")
			elseif self._id == 105721 then
				rand = PickRandomFromList(rand, "_correct_powerbox3")
			elseif self._id == 105669 then
				rand = PickRandomFromList(rand, "_correct_powerbox_scaffold")	
			--[[elseif table.contains({105721,105720,105670}, self._id) then
				rand = PickRandomFromList(rand, "_correct_powerbox")]]
			
			--[[_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].goat_choice then
				_tmp_data[_level_id].goat_choice = {}
					for i = 1, 12 do
						local is_option_chosen = tonumber(RNGModifier:SafeGetData(_level_id, "_goat_choice" .. i)) == 1 and true or false
						if is_option_chosen then
							table.insert(_tmp_data[_level_id].goat_choice, i)
						end
					end	]]
			elseif self._id == 103480 or self._id == 103482 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
					if not _tmp_data[_level_id].goat_choice then
						_tmp_data[_level_id].goat_choice = {}
						
						for i = 1, 13 do
							local is_option_chosen = tonumber(RNGModifier:SafeGetData(_level_id,"_goat_choice_" .. i)) == 1 and true or false
							if is_option_chosen then
								table.insert(_tmp_data[_level_id].goat_choice, i)
							end
						end	
							
					end	
					if #_tmp_data[_level_id].goat_choice > 0 then						
						for i, option_value in ipairs(self._unused_randoms) do
							if table.contains(_tmp_data[_level_id].goat_choice, option_value) then	
								rand = i
								break
							end
						end
					end
				end
			
		elseif _level_id == "peta2" then
			if self._id == 100014 then
				rand = PickRandomFromList(rand, "_drop")
			elseif self._id == 100033 then
				rand = GetIndexFromChoice(GetMultipleChoiceValue(_level_id, "_cage"))
			elseif self._id == 101305 then
				rand = PickRandomFromList(rand, "_roadblock1")
			elseif self._id == 101320 then
				rand = PickRandomFromList(rand, "_roadblock2")
			end	
		
		elseif _level_id == "pex" then
			if self._id == 100126 then
				rand = PickRandomFromList(rand,"_spawn")
			elseif self._id == 101297 then
				rand = PickRandomFromList(rand,"_pc")
			elseif self._id == 101800 then
				rand = PickRandomFromList(rand,"_it")
			elseif self._id == 100879 then
				rand = PickRandomFromList(rand,"_tag")
			elseif self._id == 103840 then
				rand = PickRandomFromList(rand,"_hide")
			elseif self._id == 100781 then
				rand = PickRandomFromList(rand,"_prisoner")
			elseif self._id == 100702 then
				rand = PickRandomFromList(rand,"_armory")			
			elseif self._id == 102359 then
				rand = PickRandomFromList(rand,"_sm_suit")
			elseif self._id == 102370 then
				rand = PickRandomFromList(rand,"_parking")
			elseif self._id == 100912 then
				rand = PickRandomFromList(rand,"_ms_locker")
			elseif self._id == 100766 then
				rand = PickRandomFromList(rand,"_ml_locker")
			elseif self._id == 100905 then
				rand = PickRandomFromList(rand,"_ls_locker")
			end
			local _evidence = RNGModifier:SafeGetData(_level_id,"_evidence") or 0
			_evidence = _evidence - 1
			if _evidence > 0 then
				local _id_fix = self._id 
				if _id_fix == 144416 then
					rand = 11
				elseif _id_fix == 143419 then
					rand = 10
				end
			end
			
		elseif _level_id == "jewelry_store" then
			if self._id == 102244 then				
				local _3bags_A = (RNGModifier:SafeGetData(_level_id, "_3bags_A") or 0) - 1
				local _3bags_B = (RNGModifier:SafeGetData(_level_id, "_3bags_B") or 0) - 1
				local _3bags_C = (RNGModifier:SafeGetData(_level_id, "_3bags_C") or 0) - 1
				local _3bags_D = (RNGModifier:SafeGetData(_level_id, "_3bags_D") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _3bags_A or choice == _3bags_B or choice == _3bags_C or choice == _3bags_D then
						rand = i
						break
					end
				end			
			elseif self._id == 101293 then
				local _7special_A = (RNGModifier:SafeGetData(_level_id, "_7special_A") or 0) - 1
				local _7special_B = (RNGModifier:SafeGetData(_level_id, "_7special_B") or 0) - 1
				local _7special_C = (RNGModifier:SafeGetData(_level_id, "_7special_C") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == _7special_A or choice == _7special_B or choice == _7special_C then
						rand = i
						break
					end
				end		
			elseif self._id == 101529 then
				rand = PickRandomFromList(rand,"_escape")
			end
		elseif _level_id == "ukrainian_job" then
			if self._id == 101782 then
				rand = PickRandomFromList(rand, "_escape")
			elseif self._id == 103254 then
				rand = PickRandomFromList(rand, "_tiara")
			end
			
		elseif _level_id == "sand" then
			if self._id == 101883 then
				rand = PickRandomFromList(rand,"_1st_IT_room")
			elseif self._id == 103627 then
				rand = PickRandomFromList(rand,"_door")
			elseif self._id == 102015 then
				rand = PickRandomFromList(rand,"_keypad_reader")
			elseif self._id == 104106 then
				rand = PickRandomFromList(rand,"_vlad")
			elseif self._id == 101694 then
				local _container_B = RNGModifier:SafeGetData(_level_id,"_container_B") or 0
				_container_B = _container_B - 1
				if _container_B == 1 then
					rand = 16
				elseif _container_B == 2 then				
					rand = 1
				end
			elseif self._id == 104483 then
				rand = PickRandomFromList(rand,"_blowtorch_warehouse")
			elseif self._id == 103957 then
				rand = PickRandomFromList(rand,"_blowtorch_spawn")
			elseif self._id == 104024 then
				rand = PickRandomFromList(rand,"_2nd_IT_room")
			elseif self._id == 105377 then
				rand = PickRandomFromList(rand,"_crane")
			elseif self._id == 103650 then
				rand = PickRandomFromList(rand,"_fuel")
			elseif self._id == 102004 then
				rand = PickRandomFromList(rand,"_doc")
			elseif self._id == 102060 or self._id == 102061 or self._id == 102062 or self._id == 102063 then					
				rand = PickRandomFromList(rand,"_chinese_code")	
			end
			
		elseif _level_id == "alex_2" then	
			if self._id == 100335 then
				rand = PickRandomFromList(rand, "_escape")
			end
			local _intel = GetCheckboxValue(_level_id, "_intel")
			if _intel then
				local _id_fix = self._id
				if self._id == 103742 then
					rand = GetIndexFromChoice(3)
				elseif _id_fix == 103759 then
					rand = GetIndexFromChoice(14)
				elseif self._id == 103736 then
					rand = GetIndexFromChoice(2)
				end
			end		
			
		elseif _level_id == "chca" then	
			if self._id == 101541 then
				rand = PickRandomFromList(rand, "_cabin")
			elseif self._id == 102711 then
				
				local normal_1 = (RNGModifier:SafeGetData(_level_id, "_normal_kc_1") or 0) - 1
				local normal_2 = (RNGModifier:SafeGetData(_level_id, "_normal_kc_2") or 0) - 1
				local normal_3 = (RNGModifier:SafeGetData(_level_id, "_normal_kc_3") or 0) - 1
				local normal_4 = (RNGModifier:SafeGetData(_level_id, "_normal_kc_4") or 0) - 1
				local normal_5 = (RNGModifier:SafeGetData(_level_id, "_normal_kc_5") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == normal_1 or choice == normal_2 or choice == normal_3 or choice == normal_4 or choice == normal_5 then
						rand = i
						break
					end
				end
				
			elseif self._id == 102713 then
				
		--[[	local deathwish_1 = (RNGModifier:SafeGetData(_level_id, "_deathwish_kc_1") or 0) - 1
				local deathwish_2 = (RNGModifier:SafeGetData(_level_id, "_deathwish_kc_2") or 0) - 1
				local deathwish_3 = (RNGModifier:SafeGetData(_level_id, "_deathwish_kc_3") or 0) - 1
		]]	
				local deathwish_1 = (RNGModifier:SafeGetData(_level_id, "_normal_kc_1") or 0) - 1
				local deathwish_2 = (RNGModifier:SafeGetData(_level_id, "_normal_kc_2") or 0) - 1
				local deathwish_3 = (RNGModifier:SafeGetData(_level_id, "_normal_kc_3") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == deathwish_1 or choice == deathwish_2 or choice == deathwish_3 then
						rand = i
						break
					end
				end
				
			elseif self._id == 103022 then
				rand = PickRandomFromList(rand, "_bartender")
			elseif self._id == 101827 then
				rand = PickRandomFromList(rand, "_boat")
			elseif self._id == 103121 then
				rand = PickRandomFromList(rand, "_laser")
			elseif self._id == 101094 then
				rand = PickRandomFromList(rand, "_massage")
			elseif self._id == 100697 then
				rand = PickRandomFromList(rand, "_security")
			elseif self._id == 101767 then
				rand = PickRandomFromList(rand, "_control")
			elseif self._id == 101398 then
				rand = PickRandomFromList(rand, "_1st_number")
			elseif self._id == 101726 then
				rand = PickRandomFromList(rand, "_2nd_number")
			elseif self._id == 101736 then
				rand = PickRandomFromList(rand, "_3rd_number")
			elseif self._id == 101747 then
				rand = PickRandomFromList(rand, "_4th_number")
			elseif self._id == 101833 or self._id == 101835 then
				rand = PickRandomFromList(rand, "_escape")
			elseif self._id == 103057 or self._id == 103278 then
				rand = PickRandomFromList(rand, "_gear")
			end
		elseif _level_id == "pent" then
			if self._id == 101804 then
				rand = GetIndexFromChoice(PickRandomFromList(rand, "_keycard"))
			elseif self._id == 102600 then
				if _tmp_data[_level_id].box and #_tmp_data[_level_id].box > 0 then
					local choice = _tmp_data[_level_id].box[1]
					if choice > 0 then
						if choice > 3 then
							rand = GetIndexFromChoice(4)
						else
							rand = GetIndexFromChoice(choice)
							table.remove(_tmp_data[_level_id].box,1)
						end
					end
				end
				--[[
				local box_1 = (RNGModifier:SafeGetData(_level_id, "_box_1") or 0) - 1
				local box_2 = (RNGModifier:SafeGetData(_level_id, "_box_2") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == box_1 or choice == box_2 then
						rand = i
						break
					end
				end]]
			elseif self._id == 102226 then
				rand = PickRandomFromList(rand,"_lobby_door")
				--log("Rand is:",rand)
			elseif self._id == 102604 then
				--rand = PickRandomFromList(rand,"_box_3")
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].box then
					_tmp_data[_level_id].box = {
					(RNGModifier:SafeGetData(_level_id, "_box_1") or 0) - 1,
					(RNGModifier:SafeGetData(_level_id, "_box_2") or 0) - 1,
					(RNGModifier:SafeGetData(_level_id, "_box_3") or 0) - 1
					}
					
					_tmp_data[_level_id].box_order = {
					(RNGModifier:SafeGetData(_level_id, "_box_1") or 0) - 1,
					(RNGModifier:SafeGetData(_level_id, "_box_2") or 0) - 1,
					(RNGModifier:SafeGetData(_level_id, "_box_3") or 0) - 1
					}
				end
				
				for i, choice in ipairs(_tmp_data[_level_id].box) do
					local found
					if choice > 3 then
						for j, value in ipairs(self._unused_randoms) do
							if value == choice - 3 then
								rand = j
								found = true
								break
							end
						end
						table.remove(_tmp_data[_level_id].box,i)
						if found then break end
					end
				end
			elseif self._id == 101794 then
				_tmp_data[_level_id] = _tmp_data[_level_id]
				local gold = tonumber(RNGModifier:SafeGetData(_level_id, "_gold")) == 1 and true or false
				if gold then
					for i, value in ipairs(self._unused_randoms) do
						if value == 2 or 3 then
							rand = i
						end
					end
				end
			elseif self._id == 100239 then
				rand = PickRandomFromList(rand,"_tool")
			elseif self._id == 101651 then
				rand = PickRandomFromList(rand,"_electric_box")
			elseif self._id == 101286 then
				rand = PickRandomFromList(rand,"_elevator_box")
			elseif self._id == 101045 then
				--First box				
				if #_tmp_data[_level_id].box_order > 0 then
					local order_offset = {2,1,4,3,5,6,7}
					rand = GetIndexFromChoice(order_offset[_tmp_data[_level_id].box_order[1]])
					table.remove(_tmp_data[_level_id].box_order,1)
				end
			elseif self._id == 101047 then
				--Second and third box
				if #_tmp_data[_level_id].box_order > 0 then
					local order_offset = {2,1,4,3,5,6,7}
					rand = GetIndexFromChoice(order_offset[_tmp_data[_level_id].box_order[1]])
					table.remove(_tmp_data[_level_id].box_order,1)
				end
			elseif self._id == 101527 then
				local alarm_1 = (RNGModifier:SafeGetData(_level_id, "_alarm_1") or 0) - 1
				local alarm_2 = (RNGModifier:SafeGetData(_level_id, "_alarm_2") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == alarm_1 or choice == alarm_2 then
						rand = i
						break
					end
				end				
			elseif self._id == 100643 then
				local server = (RNGModifier:SafeGetData(_level_id, "_server") or 0) - 1
				local server_offset = {1,1,2,2,3}
				if server > 0 then rand = server_offset[server] end
			elseif self._id == 101521 then
				local server = (RNGModifier:SafeGetData(_level_id, "_server") or 0) - 1
				local server_offset = {0,0,1,2,0}
				if server > 0 then server = server_offset[server] end
				if server > 0 then rand = server end
			elseif self._id == 101522 then
				local server = (RNGModifier:SafeGetData(_level_id, "_server") or 0) - 1
				local server_offset = {1,2,0,0,0}
				if server > 0 then server = server_offset[server] end
				if server > 0 then rand = server end
			elseif self._id == 101687 then
				local laptop_1 = (RNGModifier:SafeGetData(_level_id, "_laptop") or 0) - 1
				
				for i, choice in ipairs(self._unused_randoms) do
					if choice == laptop_1 then
						rand = i
						break
					end
				end
			elseif self._id == 101364 then
				local ladder = tonumber(RNGModifier:SafeGetData(_level_id, "_ladder")) == 1 and true or false
				if ladder then rand = GetIndexFromChoice(2) end
			elseif self._id == 101041 then
				rand = PickRandomFromList(rand,"_breaker_location")
			end
		elseif _level_id == "bex" then
			local _code = RNGModifier:SafeGetData(_level_id, "_code") or 0
			_code = _code - 1
			if _code > 0 then
				local _id_fix = self._id 
				if _id_fix == 137302 then
					rand = 10
				elseif _id_fix == 137343 or _id_fix == 137344 or _id_fix == 137345 or _id_fix == 139102 or _id_fix == 139143 or _id_fix == 139144 or _id_fix == 139145 then 
					rand = 10
				end
			end
			local _computer1 = RNGModifier:SafeGetData(_level_id, "_computer1")
			if _computer1 == 2 then
				local _id_fix = self._id
				if _id_fix == 101314 then
					rand = 1
				elseif table.contains({101315,101316,101317,101318,101319,101320,101321,101322,101323,101324,101325,101326}, _id_fix) then
					rand = 1
				end
			elseif _computer1 == 3 then
				local _id_fix = self._id
				if _id_fix == 101314 then
					rand = 13
				elseif table.contains({101315,101316,101317,101318,101319,101320,101321,101322,101323,101324,101325,101326}, _id_fix) then
					rand = 13
				end
			end
			if self._id == 100126 then
				rand = PickRandomFromList(rand, "_spawn")
			elseif self._id == 100317 then
				rand = PickRandomFromList(rand, "_blue")
			elseif self._id == 100962 then
				rand = PickRandomFromList(rand, "_green")
			elseif self._id == 100963 then
				rand = PickRandomFromList(rand, "_red")
			elseif self._id == 100964 then
				rand = PickRandomFromList(rand, "_yellow")
			elseif self._id == 103650 or self._id == 103648 then
				rand = PickRandomFromList(rand, "_tape")
			elseif self._id == 101911 then
				rand = PickRandomFromList(rand, "_safe")
			elseif self._id == 103578 then
				rand = PickRandomFromList(rand, "_safe1")
			elseif self._id == 103579 then
				rand = PickRandomFromList(rand, "_safe2")
			elseif self._id == 101754 then
				rand = PickRandomFromList(rand, "_manager")
			elseif self._id == 100697 then
				rand = PickRandomFromList(rand, "_security")
			elseif self._id == 101757 then
				rand = PickRandomFromList(rand, "_rnd_server_room")
			elseif self._id == 100825 then
				rand = PickRandomFromList(rand, "_escape")
			elseif self._id == 103022 then
				rand = PickRandomFromList(rand, "_powerbox")
			elseif self._id == 103023 then
				rand = PickRandomFromList(rand, "_powerhouse1")
			elseif self._id == 103024 then
				rand = PickRandomFromList(rand, "_powerhouse2")
			elseif self._id == 103760 or self._id == 103763 or self._id == 103750 then
				local door = GetCheckboxValue(_level_id, "_door")
				if door then rand = 3 end
			elseif self._id == 100308 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				_tmp_data[_level_id]["randomize_colours"] = _tmp_data[_level_id]["randomize_colours"] or 0
				_tmp_data[_level_id]["randomize_colours"] = _tmp_data[_level_id]["randomize_colours"] + 1
				if _tmp_data[_level_id]["randomize_colours"] == 1 then
					local _color_A = RNGModifier:SafeGetData(_level_id, "_color_A") or 0
					_color_A = _color_A - 1
					if _color_A > 0 then
						rand = _color_A
					end
				else
					local _color_B = RNGModifier:SafeGetData(_level_id, "_color_B") or 0
					_color_B = _color_B - 1
					if _color_B > 0 then
						rand = _color_B
					end
				end
			end
			--[[local _test = RNGModifier:SafeGetData(_level_id, "_test") or 0
			_test = _test - 1
			if _test > 0 then
				local _id_fix = self._id 
				local _id_fix1 = self._editor_name
				local _id_fix2 = rand
				log(_id_fix)
				log(_id_fix1)
				log(_id_fix2)
			end]]
			
		elseif _level_id == "deep" then
			if self._id == 103169 then
				rand = PickRandomFromList(rand,"_kc_civ")
			elseif self._id == 101672 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_server_room"))
			elseif self._id == 103781 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_usb_room"))
			elseif self._id == 101654 then
				rand = PickRandomFromList(rand,"_pc")
			elseif self._id == 100186 then
				rand = PickRandomFromList(rand,"_testing_device")
			elseif self._id == 143597 or self._id == 143697 or self._id == 143647 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_correct_oil"))
			elseif self._id == 102263 then
				rand = PickRandomFromList(rand,"_bridge")		
			elseif self._id == 102417 then
				rand = PickRandomFromList(rand,"_oil_position")
			elseif self._id == 102422 or self._id == 102424 then
				rand = GetIndexFromChoice(PickRandomFromList(rand,"_correct_color"))
			elseif self._id == 102431 then
				local _correct_color = (RNGModifier:SafeGetData(_level_id, "_correct_color") or 0) - 1
				if _correct_color == 1 then
					rand = 3
				elseif _correct_color == 2 then
					rand = 2
				elseif _correct_color == 3 then
					rand = 1
				end			
			elseif self._id == 102323 then
				rand = PickRandomFromList(rand,"_pump")
			elseif self._id == 100777 then
				rand = PickRandomFromList(rand, "_laser_room") 
			elseif self._id == 140199 then
				rand = PickRandomFromList(rand, "_gas") 
			elseif self._id == 102945 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].valve then
					_tmp_data[_level_id].valve = {}
					
					local _valve_1 = GetMultipleChoiceValue(_level_id, "_valve_1")
					local _valve_2 = GetMultipleChoiceValue(_level_id, "_valve_2")
					local _valve_3 = GetMultipleChoiceValue(_level_id, "_valve_3")
					local _valve_4 = GetMultipleChoiceValue(_level_id, "_valve_4")
					
					if _valve_1 > 0 then table.insert(_tmp_data[_level_id].valve, _valve_1) end
					if _valve_2 > 0 then table.insert(_tmp_data[_level_id].valve, _valve_2) end
					if _valve_3 > 0 then table.insert(_tmp_data[_level_id].valve, _valve_3) end
					if _valve_4 > 0 then table.insert(_tmp_data[_level_id].valve, _valve_4) end
				end
				
				if _tmp_data[_level_id].valve and #_tmp_data[_level_id].valve > 0 then
					local choice = _tmp_data[_level_id].valve[1]
					table.remove(_tmp_data[_level_id].valve,1)
					
					rand = GetIndexFromChoice(choice)
				end		
			end
				local _correct_pipe_rotation = (RNGModifier:SafeGetData(_level_id, "_correct_pipe_rotation") or 0) - 1
				if _correct_pipe_rotation == 1 then --Gen 1 FE
					if self._id == 136765 then
						rand = 2
					elseif self._id == 137065 then
						rand = 2
					elseif self._id == 135565 then
						rand = 1
					elseif self._id == 136165 then
						rand = 4
					end
				elseif _correct_pipe_rotation == 2 then --Gen 1 CU
					if self._id == 135415 then
						rand = 2			
					elseif self._id == 136015 then
						rand = 1
					elseif self._id == 135865 then
						rand = 2
					elseif self._id == 136615 then
						rand = 2
					elseif self._id == 136765 then
						rand = 3
					end
				elseif _correct_pipe_rotation == 3 then --Gen 1 V100
					if self._id == 136315 then
						rand = 4			
					elseif self._id == 135865 then
						rand = 1
					elseif self._id == 135415 then
						rand = 1
					elseif self._id == 137065 then
						rand = 3
					elseif self._id == 136765 then
						rand = 2
					end
				elseif _correct_pipe_rotation == 4 then --Gen 2 FE
					if self._id == 136165 then
						rand = 1			
					elseif self._id == 137065 then
						rand = 4
					elseif self._id == 135415 then
						rand = 1
					elseif self._id == 135865 then
						rand = 1
					elseif self._id == 136315 then
						rand = 3
					elseif self._id == 136465 then
						rand = 2
					elseif self._id == 136915 then
						rand = 3
					end
				elseif _correct_pipe_rotation == 5 then --Gen 2 CU
					if self._id == 135415 then
						rand = 2		
					elseif self._id == 136015 then
						rand = 4
					elseif self._id == 136615 then
						rand = 1
					elseif self._id == 135565 then
						rand = 2
					elseif self._id == 135715 then
						rand = 2
					elseif self._id == 136465 then
						rand = 1
					elseif self._id == 136915 then
						rand = 2
					end
				elseif _correct_pipe_rotation == 6 then --Gen 2 V100
					if self._id == 136315 then
						rand = 1			
					elseif self._id == 135715 then
						rand = 3
					elseif self._id == 136465 then
						rand = 1
					elseif self._id == 136915 then
						rand = 2
					end
				end
		
		elseif _level_id == "ranc" then
			if self._id == 101199 then
				rand = PickRandomFromList(rand, "_security_ammo_room")
			elseif self._id == 104302 then
				rand = PickRandomFromList(rand, "_normal_part")
			elseif self._id == 104309 then
				rand = PickRandomFromList(rand, "_prep_part")
			elseif self._id == 101066 or self._id == 104022 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].south_weapons then
					local _limit = self._id == 101066 and 3 or self._id == 104022 and 4
					local _max_choices = self._id == 101066 and 3 or self._id == 104022 and 2
					_tmp_data[_level_id].south_weapons = {
						choices = {},
						limit = _limit
					}
					
					for i = 1, _max_choices do
						local _option = (RNGModifier:SafeGetData(_level_id, "_south_barn_weapons_" .. i) or 0) - 1
						if _option > 0 and not table.contains(_tmp_data[_level_id].south_weapons.choices, _option) then table.insert(_tmp_data[_level_id].south_weapons.choices, _option) end
					end
				end
				
				if _tmp_data[_level_id].south_weapons.limit > 0 and #_tmp_data[_level_id].south_weapons.choices > 0 then					
					while table.contains(_tmp_data[_level_id].south_weapons.choices, self._unused_randoms[rand]) do
						rand = math.random(#self._unused_randoms)
					end
					
					_tmp_data[_level_id].south_weapons.limit = _tmp_data[_level_id].south_weapons.limit - 1
				end
			elseif self._id == 101067 or self._id == 104023 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].west_weapons then
					local _limit = 3
					local _max_choices = 2
					_tmp_data[_level_id].west_weapons = {
						choices = {},
						limit = _limit
					}
					
					for i = 1, _max_choices do
						local _option = (RNGModifier:SafeGetData(_level_id, "_west_barn_weapons_" .. i) or 0) - 1
						if _option > 0 and not table.contains(_tmp_data[_level_id].west_weapons.choices, _option) then table.insert(_tmp_data[_level_id].west_weapons.choices, _option) end
					end
				end
				
				if _tmp_data[_level_id].west_weapons.limit > 0 and #_tmp_data[_level_id].west_weapons.choices > 0 then					
					while table.contains(_tmp_data[_level_id].west_weapons.choices, self._unused_randoms[rand]) do
						rand = math.random(#self._unused_randoms)
					end
					
					_tmp_data[_level_id].west_weapons.limit = _tmp_data[_level_id].west_weapons.limit - 1
				end
			elseif self._id == 101068 or self._id == 104024 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				
				if not _tmp_data[_level_id].north_weapons then
					local _limit = self._id == 101068 and 2 or self._id == 104024 and 3
					local _max_choices = self._id == 101068 and 2 or self._id == 104024 and 1
					_tmp_data[_level_id].north_weapons = {
						choices = {},
						limit = _limit
					}
					
					for i = 1, _max_choices do
						local _option = (RNGModifier:SafeGetData(_level_id, "_north_barn_weapons_" .. i) or 0) - 1
						if _option > 0 and not table.contains(_tmp_data[_level_id].north_weapons.choices, _option) then table.insert(_tmp_data[_level_id].north_weapons.choices, _option) end
					end
				end
				
				if _tmp_data[_level_id].north_weapons.limit > 0 and #_tmp_data[_level_id].north_weapons.choices > 0 then					
					while table.contains(_tmp_data[_level_id].north_weapons.choices, self._unused_randoms[rand]) do
						rand = math.random(#self._unused_randoms)
					end
					_tmp_data[_level_id].north_weapons.limit = _tmp_data[_level_id].north_weapons.limit - 1
				end
			end
		end
	end
	return table.remove(self._unused_randoms, rand)
end

function ElementRandom:_calc_amount()
	local amount = self._values.amount or 1
	
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		if _level_id == "mex" then
			if self._id == 101549 then
				local _choice = (RNGModifier:SafeGetData(_level_id, "_opened_door") or 0) - 1
				if _choice > 0 then
					return amount
				end
			end
		end
	end

	if self._values.amount_random and self._values.amount_random > 0 then
		amount = amount + math.random(self._values.amount_random + 1) - 1
	end

	return amount
end