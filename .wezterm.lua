local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.color_scheme = "GruvboxDarkHard"
config.colors = {
	background = "#000000",
	tab_bar = {
		background = "#000000",
	},
}
config.font = wezterm.font("FragmentMono Nerd Font")
config.font_size = 11.7
config.line_height = 1.06
config.window_close_confirmation = "NeverPrompt"
config.enable_tab_bar = false
config.window_padding = {
	bottom = 0,
	top = 3,
}
-- config.hide_tab_bar_if_only_one_tab = false
-- config.use_fancy_tab_bar = false
-- config.tab_bar_at_bottom = true
-- config.show_new_tab_button_in_tab_bar = false
-- config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 1000 }
-- config.keys = {
-- 	{
-- 		key = "c",
-- 		mods = "LEADER",
-- 		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
-- 	},
-- 	{
-- 		key = "%",
-- 		mods = "LEADER|SHIFT",
-- 		action = wezterm.action.SplitPane({ direction = "Right", size = { Percent = 50 } }),
-- 	},
-- 	{
-- 		key = '"',
-- 		mods = "LEADER|SHIFT",
-- 		action = wezterm.action.SplitPane({ direction = "Down", size = { Percent = 50 } }),
-- 	},
-- 	{
-- 		key = "[",
-- 		mods = "LEADER",
-- 		action = wezterm.action.ActivateCopyMode,
-- 	},
-- }
--
-- for i = 1, 9 do
-- 	table.insert(config.keys, {
-- 		key = tostring(i),
-- 		mods = "LEADER",
-- 		action = wezterm.action.ActivateTab(i - 1),
-- 	})
-- end
return config
