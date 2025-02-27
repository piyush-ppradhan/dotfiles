local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.color_scheme = "rose-pine"
config.colors = {
	background = "#000000",
}
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 11.0
return config
