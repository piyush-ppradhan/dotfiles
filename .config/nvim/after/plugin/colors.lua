require("gruvbox").setup({
	terminal_colors = true,
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = false,
		emphasis = false,
		comments = false,
		operators = false,
		folds = false,
	},
	contrast = "hard", -- can be "hard", "soft" or empty string
	dim_inactive = false,
	transparent_mode = true,
})

vim.cmd.colorscheme("gruvbox")
