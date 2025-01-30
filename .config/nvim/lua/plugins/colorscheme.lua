return {
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					folds = false,
				},
				contrast = "hard",
				inverse = false,
				transparent_mode = true,
			})
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "IncSearch", { fg = "#121212", bg = "#f9bd2e" })
			vim.api.nvim_set_hl(0, "StatusLine", { bg = "#202020" })
			vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#202020" })
		end,
	},
}
