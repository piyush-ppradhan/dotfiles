return {
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				contrast = "hard",
				transparent_mode = true,
			})
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "@type.python", { fg = "#f7bc2d", bold = true })
		end,
	},
}
