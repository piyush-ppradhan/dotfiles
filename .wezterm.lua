local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "GruvboxDarkHard"
config.colors = {
	background = "#101010",
}
config.color_scheme = "Rosé Pine Moon (Gogh)"
config.colors = {
	background = "#000000",
}
return config
