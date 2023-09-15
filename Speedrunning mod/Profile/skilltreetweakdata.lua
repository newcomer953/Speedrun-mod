dofile(ModPath .. "Profile/profile_setup.lua")

--Add more skill sets
--Add skill sets until table length equals total_profiles, loop does nothing if table length >= total_profiles
--So if the number of skill sets in the base game is changed, the added skill sets will not be lost
Hooks:PostHook(SkillTreeTweakData, "init", "Profiles_post_SkillTreeTweakData_init", function(self, ...)
	local actual_skill_sets = #self.skill_switches
	for i=actual_skill_sets+1,Profiles._settings.total_profiles do
		table.insert(self.skill_switches, {name_id = "Profiles_set_"..tostring(i)})
	end
end)
