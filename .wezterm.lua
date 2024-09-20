local wezterm = require("wezterm")
local config = {}
config.font = wezterm.font("MesloLGL Nerd Font")
config.font_size = 14.5
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}
-- config.window_frame = {
-- 	inactive_titlebar_bg = "#353535",
-- 	active_titlebar_bg = "#000000",
-- 	button_bg = "#000000",
-- }
return config
