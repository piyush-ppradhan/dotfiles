local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.color_scheme = "GruvboxDarkHard"
config.colors = {
	cursor_bg = "#00ff2a",
	cursor_border = "#00ff2a",
	background = "#050505",
	tab_bar = {
		background = "#000000",
	},
}
config.font = wezterm.font("ComicCodeLigatures Nerd Font")
config.font_size = 11.5
config.line_height = 0.94
config.window_close_confirmation = "NeverPrompt"
config.warn_about_missing_glyphs = false
config.enable_tab_bar = false
config.window_padding = {
	bottom = 0,
	top = 0,
	left = 0,
	right = 0,
}
return config
