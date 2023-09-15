local old_update = IngameWaitingForPlayersState.update
function IngameWaitingForPlayersState:update(t, dt, ...)
	old_update(self, t, dt, ...)

	if self._skip_promt_shown and Network:is_server() and not self._skipped then
		managers.hud:blackscreen_skip_circle_done()
		self:_skip()
	end
end
