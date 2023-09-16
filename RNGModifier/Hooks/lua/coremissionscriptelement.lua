core:module("CoreMissionScriptElement")
core:import("CoreXml")
core:import("CoreCode")
core:import("CoreClass")

MissionScriptElement = MissionScriptElement or class()

if not _G.RNGModifier then
	return
else
	RNGModifier = _G.RNGModifier or {}
end

--Convenient function to get multiple choice value
local GetMultipleChoiceValue = function(level_id, value_name)
	return (RNGModifier:SafeGetData(level_id, value_name) or 0) - 1
end

--Convenient function to get checkbox value
local GetCheckboxValue = function(level_id, value_name)
	return tonumber(RNGModifier:SafeGetData(level_id, value_name)) == 1 and true or false
end

RNGModifier_MissionScriptElement_calc_base_delay = RNGModifier_MissionScriptElement_calc_base_delay or MissionScriptElement._calc_base_delay

function MissionScriptElement:_calc_base_delay(...)
	if not self._values.base_delay_rand then
		return self._values.base_delay
	end
	
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		if self._values.instance_name and self._values.instance_name:find("deep_server_00") and (self._editor_name == "random_delay" or self._editor_name == "delay") then
			local no_usb_delay = GetCheckboxValue(_level_id, "_no_usb_delay")
			if no_usb_delay then return self._values.base_delay end
		end
	end

	return RNGModifier_MissionScriptElement_calc_base_delay(self, ...)
end

RNGModifier_MissionScriptElement_calc_element_delay = RNGModifier_MissionScriptElement_calc_element_delay or MissionScriptElement._calc_element_delay

function MissionScriptElement:_calc_element_delay(...)
	local params = select(1, ...)
	if not params.delay_rand then
		return params.delay
	end
	
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		local element = self:get_mission_element(params.id)
		if _level_id == "pines" then
			if params.id == 106798 and tonumber(RNGModifier:SafeGetData(_level_id, "_no_heli_delay")) == 1 then
				return params.delay
			end
		elseif _level_id == "brb" then
			if (params.id == 132451 or params.id == 131951) and tonumber(RNGModifier:SafeGetData(_level_id, "_no_thermite_delay")) == 1 then
				return params.delay
			end
		elseif _level_id == "mex" then
			if params.id == 102679 and tonumber(RNGModifier:SafeGetData(_level_id, "_no_refuel_delay")) == 1 then
				return params.delay
			end
		elseif _level_id == "wwh" then
			if element._editor_name == "instagator_storer001" or element._editor_name == "instagator_storer005" or element._editor_name == "instagator_storer006" and tonumber(RNGModifier:SafeGetData(_level_id, "_no_hostage_delay")) == 1 then
				return params.delay
			end
		elseif _level_id == "mex_cooking" then
			if table.contains({103575,103576}, params.id) then
				local no_cooking_delay = GetCheckboxValue(_level_id, "_no_cooking_delay")
				if no_cooking_delay then return params.delay end
			elseif self._values.instance_name and self._values.instance_name:find("methlab_generic_locke_dialogue_00") then
				if table.contains({"relay","counter_below3","counter_equal3"}, self._editor_name) then
					local no_cooking_delay = GetCheckboxValue(_level_id, "_no_cooking_delay")
					if no_cooking_delay then return params.delay end
				end
			end
		elseif _level_id == "rat" then
			if params.id == 100494 then
				--log("Id/Base/Rand: " .. tostring(params.id) .. "/" .. params.delay .. "/" .. params.delay_rand)
				local _no_cooking_delay = GetCheckboxValue(_level_id, "_no_cooking_delay")
				if _no_cooking_delay then return params.delay end
			elseif params.id == 102321 then
				local _shortened_rearrival = GetCheckboxValue(_level_id, "_shortened_rearrival")
				if _shortened_rearrival then return params.delay end
			elseif params.id == 102289 or params.id == 102204 then
				local _shorter_flare_delay = GetCheckboxValue(_level_id, "_shorter_flare_delay")
				if _shorter_flare_delay then return params.delay end
			end
		elseif _level_id == "alex_1" then
			if params.id == 100494 then
				local _no_cooking_delay = GetCheckboxValue(_level_id, "_no_cooking_delay")
				if _no_cooking_delay then return params.delay end
			end
		elseif _level_id == "flat" then
			if params.id == 104559 then
				local _no_sniper_delay = GetCheckboxValue(_level_id, "_no_sniper_delay")
				if _no_sniper_delay then return params.delay end
			end
		end
	end

	return RNGModifier_MissionScriptElement_calc_element_delay(self, ...)
end

function MissionScriptElement:get_random_table_value_float(value)
	if tonumber(value) then
		return value
	end
	
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		if _level_id == "glace" then
			if self._id == 102333 and tonumber(RNGModifier:SafeGetData(_level_id, "_no_plane_delay")) == 1 then
				return value[1]
			end
		elseif _level_id == "pent" then
			if (self._id == 102292 or self._id == 102293 or self._id == 102294) and tonumber(RNGModifier:SafeGetData(_level_id, "_no_heli_delay")) == 1 then
				return value[1]
			end
		elseif _level_id == "born" then
            if self._id == 101532 or self._id == 101033 and GetCheckboxValue(_level_id, "_no_objective_delay") then
                return value[1]
            end
		elseif _level_id == "deep" then
			if self._id == 102438 or self._id == 101686 and GetCheckboxValue(_level_id, "_no_pump_delay") then
				local _no_pump_delay = GetCheckboxValue(_level_id, "_no_pump_delay")
				if _no_pump_delay then return value[1] end
			end
		end
	end

	return value[1] + math.rand(value[2])
end