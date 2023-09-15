core:import("CoreMissionScriptElement")

ElementSpawnEnemyGroup = ElementSpawnEnemyGroup or class(CoreMissionScriptElement.MissionScriptElement)

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

function ElementSpawnEnemyGroup:_get_spawn_point(i)
	if self._group_data.spawn_type == "ordered" then
		return 1 + math.mod(i, #self._spawn_points)
	end

	if #self._unused_randoms == 0 then
		for i = 1, #self._spawn_points do
			table.insert(self._unused_randoms, i)
		end
	end

	local rand = math.random(#self._unused_randoms)
	
	--Additional code
	local PickRandomFromList = function(r, na)
		local pr = RNGModifier:SafeGetData(tostring(Global.game_settings.level_id), na) or 0
		pr = pr - 1
		if pr > 0 then
			return pr
		end
		return r
	end
	
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		
		if _level_id == "pent" then
			if self._id == 101555 then
				rand = PickRandomFromList(rand, "_stealth_boss_location")
			end
		end
	end
	--

	return table.remove(self._unused_randoms, rand)
end