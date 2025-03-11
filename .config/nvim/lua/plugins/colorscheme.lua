return {
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				bold = true,
				italic = {
					strings = true,
					emphasis = false,
					comments = true,
					operators = false,
					folds = false,
				},
				contrast = "hard",
			})
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
			vim.api.nvim_set_hl(0, "StatusLine", { bg = "None", bold = true })
			vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None" })
		end
	}
}
