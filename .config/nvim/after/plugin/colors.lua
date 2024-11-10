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

-- this is a comment
vim.g.nord_italic_comments = 1
vim.cmd.colorscheme("tokyonight")
vim.cmd.colorscheme("nord")

vim.api.nvim_set_hl(0, "Normal", { bg = "#161819" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#161819" })
vim.api.nvim_set_hl(0, "@variable.builtin.python", { fg = "#90839c", bold = true })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#606c80", bg = "#1b1e1f", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#606c80", bg = "#1b1e1f" })
