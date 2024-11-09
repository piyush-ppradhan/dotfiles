require("tokyonight").setup({
	style = "night",
	light_style = "day",
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = { bold = true },
		variables = {},
	},
	on_highlights = function(hl, c)
		hl.TelescopeNormal = {
			bg = "#000000",
			fg = c.fg_dark,
		}
	end,
})

vim.cmd.colorscheme("tokyonight")
