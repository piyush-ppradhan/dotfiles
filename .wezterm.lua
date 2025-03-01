local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.color_scheme = "Gruvbox dark, hard (base16)"
config.colors = {
	background = "#121212",
}
config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = "NeverPrompt"
config.font_size = 11.2
return config
