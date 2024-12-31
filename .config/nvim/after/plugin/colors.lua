require("rose-pine").setup({
	variant = "moon",
	dark_variant = "main",

	styles = {
		bold = true,
		italic = false,
		transparency = false,
	},
})
require("tokyonight").setup({
	style = "moon",
	transparent = true,
	styles = {
		comments = { italic = true },
		keywords = { bold = true },
		functions = { bold = true },
		variables = {},
	},
})
vim.cmd.colorscheme("rose-pine")
-- vim.cmd.colorscheme("tokyonight")
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#000000" })
