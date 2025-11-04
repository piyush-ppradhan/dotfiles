vim.pack.add({
	{ src = "https://github.com/rose-pine/neovim" },
	{ src = "https://github.com/ellisonleao/gruvbox.nvim" },
	{ src = "https://github.com/wkflanders/anysphere-dark.nvim" },
})

require("rose-pine").setup({
	variant = "moon",
	dark_variant = "moon",
	styles = {
		bold = true,
		italic = false,
		transparency = false,
	},
})
-- vim.cmd.colorscheme("rose-pine")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#e0def4" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None", fg = "#e0def4" })

require("gruvbox").setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = false,
		emphasis = false,
		comments = true,
		operators = false,
		folds = true,
	},
	contrast = "hard",
	transparent_mode = true,
})
vim.cmd.colorscheme("gruvbox")

vim.cmd.colorscheme("anysphere")
vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#d6d6dd" })
