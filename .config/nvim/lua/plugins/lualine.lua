return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local custom_gruvbox = require("lualine.themes.gruvbox")
			custom_gruvbox.command.b.fg = "#a79676"
			custom_gruvbox.command.c.fg = "#e8d8b0"
			custom_gruvbox.command.b.bg = "#202020"
			custom_gruvbox.command.c.bg = "#202020"
			custom_gruvbox.command.c.gui = "bold"
			custom_gruvbox.normal.b.fg = "#a79676"
			custom_gruvbox.normal.b.bg = "#202020"
			custom_gruvbox.normal.c.fg = "#e8d8b0"
			custom_gruvbox.normal.c.bg = "#202020"
			custom_gruvbox.normal.c.gui = "bold"
			custom_gruvbox.insert.b.fg = "#a79676"
			custom_gruvbox.insert.b.bg = "#202020"
			custom_gruvbox.insert.c.fg = "#e8d8b0"
			custom_gruvbox.insert.c.bg = "#202020"
			custom_gruvbox.normal.c.gui = "bold"
			custom_gruvbox.visual.b.fg = "#a79676"
			custom_gruvbox.visual.c.fg = "#e8d8b0"
			custom_gruvbox.visual.b.bg = "#202020"
			custom_gruvbox.visual.c.bg = "#202020"
			custom_gruvbox.visual.c.gui = "bold"
			require("lualine").setup({
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch" },
					lualine_c = { "filename" },
					lualine_x = { "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				theme = custom_gruvbox,
			})
		end,
	},
}
