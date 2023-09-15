_G.RNGModifier = _G.RNGModifier or {}

RNGModifier = _G.RNGModifier or {}

if not RNGModifier then
	return
end

local original_UnoPuzzleDoorBase_init = UnoPuzzleDoorBase.init
local rigged_puzzles = {}

function UnoPuzzleDoorBase:init(...)
	original_UnoPuzzleDoorBase_init(self, ...)
	
	load_rigged_puzzles()
end

function load_rigged_puzzles()
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		--log("Level: " .. _level_id)
	end
	for i = 1, #tweak_data.safehouse.uno_door_riddles do
		local value = RNGModifier:SafeGetData("vit", "_riddle_" .. i) or 0
		--log("value is " .. tostring(value))
		if value > 1 then
			rigged_puzzles[value - 1] = i
			log(i .. " set to " .. value)
		end
	end
end

function UnoPuzzleDoorBase:set_riddle(...)
	
	local current_riddle = select(1, ...)
	
	if current_riddle == self._current_riddle then
		return
	end

	local riddle_id = self._riddle_ids[current_riddle]
	
	if rigged_puzzles and rigged_puzzles[current_riddle] then
		log("old riddle " .. riddle_id)
		riddle_id = rigged_puzzles[current_riddle]
		log("new riddle " .. riddle_id)
	end
	self._current_riddle = current_riddle
	self._solution = tweak_data.safehouse.uno_door_riddles[riddle_id]

	self._unit:damage():run_sequence_simple("set_riddle_seq_" .. current_riddle)
	self._unit:damage():run_sequence_simple("set_riddle_" .. riddle_id)
end