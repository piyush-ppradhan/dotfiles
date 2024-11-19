require("gruvbox").setup({
	terminal_colors = true,
	bold = true,
	italic = {
		strings = false,
		emphasis = false,
		comments = false,
		operators = false,
		folds = false,
	},
	inverse = true,
	contrast = "hard",
	transparent_mode = true,
})
vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "StatusLine", { bg = "None" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None" })
vim.api.nvim_set_hl(0, "", { bg = "None" })
local existing = vim.api.nvim_get_hl_by_name("@variable.builtin", true)
existing.bold = true
vim.api.nvim_set_hl(0, "@variable.builtin", existing)

require("rose-pine").setup({
	variant = "moon",
	dark_variant = "main",

	styles = {
		bold = true,
		italic = false,
		transparency = false,
	},
})
vim.cmd.colorscheme("rose-pine")
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#000000" })
