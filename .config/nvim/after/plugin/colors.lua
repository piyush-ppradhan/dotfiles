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
	contrast = "hard",
	transparent_mode = true,
})

vim.cmd.colorscheme("gruvbox")
