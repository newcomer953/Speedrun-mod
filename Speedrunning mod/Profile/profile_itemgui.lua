--30 character profile names
Hooks:PostHook(MultiProfileItemGui, "init", "Profiles_post_MultiProfileItemGui_init", function(self, ...)
	self._max_length = 30
	self:update()
end)
