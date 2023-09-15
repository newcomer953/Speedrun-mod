local old_restart_level = MenuCallbackHandler.restart_level
function MenuCallbackHandler:restart_level(item, ...)
	tweak_data.voting.restart_delay = 0
	old_restart_level(self, item, ...)
end

-- Allow restarting in the preparation (ready-up) area, eg if you've changed the RNG settings
function MenuCallbackHandler:_restart_level_visible()
	if not self:is_multiplayer() or self:is_prof_job() or managers.job:stage_success() then
		return false
	end

	local state = game_state_machine:current_state_name()

	--log("MENU RESTART VISIBLE: " .. state)
	return --[[ state ~= "ingame_waiting_for_players" and ]] state ~= "ingame_lobby_menu" and state ~= "empty"

	-- Default
	-- return state ~= "ingame_waiting_for_players" and state ~= "ingame_lobby_menu" and state ~= "empty"
end
