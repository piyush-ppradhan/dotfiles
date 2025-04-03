local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.font_size = 11
config.color_scheme = "Gruvbox dark, hard (base16)"
config.hide_tab_bar_if_only_one_tab = true
config.colors = {
	background = "#101010",
}
return config
