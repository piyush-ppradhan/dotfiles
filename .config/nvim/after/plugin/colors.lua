require("rose-pine").setup({
	variant = "main",
	dark_variant = "main",

	styles = {
		bold = true,
		italic = false,
		transparency = true,
	},
})

require("tokyonight").setup({
	style = "moon",
	transparent = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = false },
		functions = { bold = true },
		variables = {},
		sidebars = "dark",
		floats = "dark",
	},
	on_highlights = function(hl, c)
		local prompt = "#111111"
		hl.TelescopeNormal = {
			bg = prompt,
			fg = c.fg_dark,
		}
		hl.TelescopePromptNormal = {
			bg = prompt,
		}
	end,
	on_colors = function(colors)
		colors.border = "#545454"
	end,
})

vim.cmd.colorscheme("rose-pine")
vim.cmd.colorscheme("tokyonight")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#1a1a1a" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1a1a1a" })
-- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#aaaaaa", bg = "none" })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#555555", bg = "none" })
