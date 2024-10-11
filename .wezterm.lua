local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12
config.color_scheme = "Tokyo Night"
config.hide_tab_bar_if_only_one_tab = true
config.colors = {
	background = "#181818",
}
config.window_frame = {
	font = wezterm.font("JetBrainsMono Nerd Font"),
	active_titlebar_bg = "#141414",
	inactive_titlebar_bg = "#141414",
	button_bg = "#141414",
}
return config
