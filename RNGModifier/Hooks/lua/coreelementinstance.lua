local path = ModPath
core:module("CoreElementInstance")
core:import("CoreMissionScriptElement")
ElementInstanceInputEvent = ElementInstanceInputEvent or class(CoreMissionScriptElement.MissionScriptElement)
dofile("mods/RNGModifier/Base.lua")
_G.RNGModifier = _G.RNGModifier or {}
RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end

RNGModifier_ElementInstanceInputEvent_on_executed = RNGModifier_ElementInstanceInputEvent_on_executed or ElementInstanceInputEvent.on_executed

function ElementInstanceInputEvent:on_executed(...)
	if not self._values.enabled then
		return
	end
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		if _level_id == "fish" then
			if self._id == 100342 then
				local _disable_moneyBS = RNGModifier:SafeGetData(_level_id, "_disable_moneyBS") or 0
				_disable_moneyBS = _disable_moneyBS - 1
				if _disable_moneyBS == 1 then
					return
				end
			elseif self._id == 100345 then
				local _disable_moneyC = RNGModifier:SafeGetData(_level_id, "_disable_moneyC") or 0
				_disable_moneyC = _disable_moneyC - 1
				if _disable_moneyC == 1 then
					return
				end
			elseif self._id == 100293 then
				local _disable_moneyCC = RNGModifier:SafeGetData(_level_id, "_disable_moneyCC") or 0
				_disable_moneyCC = _disable_moneyCC - 1
				if _disable_moneyCC == 1 then
					return
				end
			elseif self._id == 100373 then
				local _disable_moneyF = RNGModifier:SafeGetData(_level_id, "_disable_moneyF") or 0
				_disable_moneyF = _disable_moneyF - 1
				if _disable_moneyF == 1 then
					return
				end
			elseif self._id == 100370 then
				local _disable_moneyLB = RNGModifier:SafeGetData(_level_id, "_disable_moneyLB") or 0
				_disable_moneyLB = _disable_moneyLB - 1
				if _disable_moneyLB == 1 then
					return
				end
			elseif self._id == 100378 then
				local _disable_moneyA = RNGModifier:SafeGetData(_level_id, "_disable_moneyA") or 0
				_disable_moneyA = _disable_moneyA - 1
				if _disable_moneyA == 1 then
					return
				end
			elseif self._id == 100366 then
				local _disable_moneyR = RNGModifier:SafeGetData(_level_id, "_disable_moneyR") or 0
				_disable_moneyR = _disable_moneyR - 1
				if _disable_moneyR == 1 then
					return
				end
			end
		end
	end
	RNGModifier_ElementInstanceInputEvent_on_executed(self, ...)
end