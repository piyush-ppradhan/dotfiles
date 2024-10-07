local wezterm = require("wezterm")
local config = {}
config.color_scheme = "Tokyo Night"
config.font = wezterm.font("RobotoMono Nerd Font")
config.font_size = 12
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
-- config.colors = {
-- 	background = "black",
-- }
config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}
config.window_frame = {
	inactive_titlebar_bg = "#252525",
	active_titlebar_bg = "#151515",
	button_bg = "#151515",
}
return config
