local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.color_scheme = "rose-pine"
config.font_size = 11.2
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.colors = {
	background = "#000000",
}
return config
