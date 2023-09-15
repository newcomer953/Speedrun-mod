BaseNetworkSession = BaseNetworkSession or class()

_G.RNGModifier = _G.RNGModifier or {}

RNGModifier = _G.RNGModifier or {}

if not RNGModifier then
	return
end

local _firstspawn_flag = nil

function BaseNetworkSession:_create_spawn_point_beanbag()
	local spawn_points = managers.network._spawn_points
	local spawn_point_ids = {}
	self._spawn_point_beanbag = {}

	for sp_id, sp_data in pairs(spawn_points) do
		table.insert(spawn_point_ids, sp_id)
	end
	
	while #spawn_point_ids > 0 do
		local i_id = math.random(#spawn_point_ids)
		
		if not _firstspawn_flag then
			local _firstspawn = (RNGModifier:SafeGetData("all_of_all", "_firstspawn") or 0) - 1
			if _firstspawn > 0 then
				i_id = _firstspawn
				_firstspawn_flag = true
			end
		end
		
		local random_id = spawn_point_ids[i_id]

		table.insert(self._spawn_point_beanbag, random_id)

		spawn_point_ids[i_id] = spawn_point_ids[#spawn_point_ids]

		table.remove(spawn_point_ids)
	end

	self._next_i_spawn_point = 1
end