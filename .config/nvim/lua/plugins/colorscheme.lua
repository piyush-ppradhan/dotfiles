return {
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				variant = "main",
				dark_variant = "main",
				styles = {
					bold = true,
					italic = false,
				},
			})
			-- vim.cmd.colorscheme("rose-pine")
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
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
				transparent_mode = false,
			})
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "Normal", { bg = "#121212" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "#121212" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "#121212" })
		end,
	},
}
