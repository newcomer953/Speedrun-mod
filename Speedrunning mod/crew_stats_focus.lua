StageEndScreenGui = StageEndScreenGui or class()

Hooks:PostHook(StageEndScreenGui, "init", "CrewStatsFocus", function(self)
	if self._items and #self._items == 5 --[[and not managers.crime_spree:is_active()]] then
		self:select_tab(2, true)
	end
end)