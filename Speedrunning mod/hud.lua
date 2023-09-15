local function make_fine_text( text )
	local x,y,w,h = text:text_rect()
	text:set_size( w, h )
	text:set_position( math.round( text:x() ), math.round( text:y() ) )
end

local hud_box = class()
function hud_box:init(panel, config)
	self._panel = panel

	local color = config and config.color
	local bg_color = config and config.bg_color or Color(1, 0, 0, 0)
	local blend_mode = config and config.blend_mode

	panel:rect({
		blend_mode = "normal",
		name = "bg",
		halign = "grow",
		alpha = 0.25,
		layer = -1,
		valign = "grow",
		color = bg_color
	})

	self._left_top = panel:bitmap({
		texture = "guis/textures/pd2/hud_corner",
		name = "left_top",
		visible = true,
		layer = 0,
		y = 0,
		halign = "left",
		x = 0,
		valign = "top",
		color = color,
		blend_mode = blend_mode,
	})
	self._left_bottom = panel:bitmap({
		texture = "guis/textures/pd2/hud_corner",
		name = "left_bottom",
		visible = true,
		layer = 0,
		x = 0,
		y = 0,
		halign = "left",
		rotation = -90,
		valign = "bottom",
		color = color,
		blend_mode = blend_mode,
	})

	self._right_top = panel:bitmap({
		texture = "guis/textures/pd2/hud_corner",
		name = "right_top",
		visible = true,
		layer = 0,
		x = 0,
		y = 0,
		halign = "right",
		rotation = 90,
		valign = "top",
		color = color,
		blend_mode = blend_mode,
	})

	self._right_bottom = panel:bitmap({
		texture = "guis/textures/pd2/hud_corner",
		name = "right_bottom",
		visible = true,
		layer = 0,
		x = 0,
		y = 0,
		halign = "right",
		rotation = 180,
		valign = "bottom",
		color = color,
		blend_mode = blend_mode,
	})

	self:update()
end

-- Update the box to match it's parent's bounds
function hud_box:update()
	self._right_bottom:set_right(self._panel:w())
	self._right_top:set_right(self._panel:w())

	self._left_bottom:set_bottom(self._panel:h())
	self._right_bottom:set_bottom(self._panel:h())
end

local mod_instance = ModInstance



local function get_mod_text()
	local s = nil

	for _, mod in ipairs( BLT.Mods:Mods() ) do
		if (mod:IsEnabled() or mod:WasEnabledAtStart()) and mod ~= mod_instance then
			s = (s and s .. "," or "") .. mod:GetName()
		end
	end

		return s

end



local padding = 10

local function calculate_text_positions(parent, list)
	assert(#list ~= 0)

	local last = nil
	local max_x, last_y = 0, 0
	for _, item in ipairs(list) do
		make_fine_text(item)

		if last then
			item:set_y(last_y)
		else
			item:set_y(padding)
		end

		last = item
		last_y = item:y() + item:h()

		max_x = math.max(max_x, padding + item:w())
	end

	parent:set_size(max_x + padding, last_y + padding)
	local w = parent:w()

	for _, item in ipairs(list) do
		item:set_right(w - padding)
	end
end

Hooks:PostHook(HUDManager, "_setup_player_info_hud_pd2", "RNGModifier_AddHudInfo", function(self, ...)
	local pp = self:script(PlayerBase.PLAYER_INFO_HUD_PD2).panel
	local assault = pp:child("assault_panel")

	if pp:child("rngmod_mods_panel") then
		pp:remove(pp:child("rngmod_mods_panel"))
	end

	local panel = pp:panel({
		name = "rngmod_mods_panel",
		h = 100,
	})

	local box = hud_box:new(panel)

	--panel:rect({
	--	layer = 0,
	--	w = 100,
	--	h = 100,
	--	color = Color.red:with_alpha(0.75),
	--})

	

	local mods_lbl = panel:text({
		vertical = "center",
		align = "right",
		text = "Mods:",
		layer = 1,
		color = Color.white,
		font = tweak_data.hud_corner.assault_font,
		font_size = tweak_data.hud_corner.assault_size,
	})

	local speedrun_lbl = panel:text({
		vertical = "center",
		align = "right",
		text = mod_instance:GetName(),
		layer = 1,
		color = Color.white,
		font = tweak_data.hud_corner.assault_font,
		font_size = tweak_data.hud_corner.assault_size,
	})
	

	local other_mod_list = panel:text({
		vertical = "center",
		align = "right",
		text = get_mod_text(),
		layer = 1,
		color = Color.white,
		font = tweak_data.hud_corner.assault_font,
		font_size = tweak_data.hud_corner.assault_size,
	})

	calculate_text_positions(panel, {
		mods_lbl,
		speedrun_lbl,
		other_mod_list,
	})

	panel:set_top(assault:bottom())
	panel:set_right(pp:w())

end)
