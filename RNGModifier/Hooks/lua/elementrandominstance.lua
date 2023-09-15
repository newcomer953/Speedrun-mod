ElementRandomInstance = ElementRandomInstance or class(CoreMissionScriptElement.MissionScriptElement)
ElementRandomInstance._type = "input"
dofile("mods/RNGModifier/Base.lua")

_G.RNGModifier = _G.RNGModifier or {}
RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end

local _tmp_data = {}

function ElementRandomInstance:_get_random_elements()
	local PickRandomFromList = function(r, na)
		local pr = RNGModifier:SafeGetData(tostring(Global.game_settings.level_id), na) or 0
		pr = pr - 1
		if pr > 0 then
			return pr
		end
		return r
	end
	--This function is to prevent impossible RNG
	local GetIndexFromChoice = function(choice)
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
	local t = {}
	local rand = math.random(#self._unused_randoms)
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		if _level_id == "wwh" then
			if self._id == 100071 then
				rand = PickRandomFromList(rand,"_container")
			elseif self._id == 100037 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].hostage_choice then
					_tmp_data[_level_id].hostage_choice = {}
					local _hostage_A = (RNGModifier:SafeGetData(_level_id, "_hostage_A") or 0) - 1
					if _hostage_A > 0 then table.insert(_tmp_data[_level_id].hostage_choice, _hostage_A) end
					local _hostage_B = (RNGModifier:SafeGetData(_level_id, "_hostage_B") or 0) - 1
					if _hostage_B > 0 then table.insert(_tmp_data[_level_id].hostage_choice, _hostage_B) end
					local _hostage_C = (RNGModifier:SafeGetData(_level_id, "_hostage_C") or 0) - 1
					if _hostage_C > 0 then table.insert(_tmp_data[_level_id].hostage_choice, _hostage_C) end
					local _hostage_D = (RNGModifier:SafeGetData(_level_id, "_hostage_D") or 0) - 1
					if _hostage_D > 0 then table.insert(_tmp_data[_level_id].hostage_choice, _hostage_D) end
				end
				
				if #_tmp_data[_level_id].hostage_choice > 0 then
					local choice = _tmp_data[_level_id].hostage_choice[1]
					table.remove(_tmp_data[_level_id].hostage_choice, 1)
					rand = GetIndexFromChoice(choice)
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
			end]]--
		elseif _level_id == "vit" then
			if self._id == 101346 then
				rand = PickRandomFromList(rand, "_button")
			end
		elseif _level_id == "corp" then
			if self._id == 100553 then
				_tmp_data[_level_id] = _tmp_data[_level_id] or {}
				if not _tmp_data[_level_id].doc then
					_tmp_data[_level_id].doc = {}
					local _doc_1 = (RNGModifier:SafeGetData(_level_id, "_doc_1") or 0) - 1
					if _doc_1 > 0 then table.insert(_tmp_data[_level_id].doc, _doc_1) end
					local _doc_2 = (RNGModifier:SafeGetData(_level_id, "_doc_2") or 0) - 1
					if _doc_2 > 0 then table.insert(_tmp_data[_level_id].doc, _doc_2) end
				end
				
				if #_tmp_data[_level_id].doc > 0 then
					local choice = _tmp_data[_level_id].doc[1]
					table.remove(_tmp_data[_level_id].doc, 1)
					rand = GetIndexFromChoice(choice)
				end
			end
		elseif _level_id == "fish" then
			if self._id == 100950 then
				rand = PickRandomFromList(rand,"_valve1")
			elseif self._id == 100951 then
				rand = PickRandomFromList(rand,"_valve2")
			elseif self._id == 100991 then
				rand = PickRandomFromList(rand,"_valve3")
			elseif self._id == 100992 then
				rand = PickRandomFromList(rand,"_valve4")
			end
		elseif _level_id == "brb" then
			if self._id == 100377 then
				rand = PickRandomFromList(rand,"_equipment")
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
		end
	return table.remove(self._unused_randoms, rand)
	end	
end