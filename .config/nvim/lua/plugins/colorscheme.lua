return {
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
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
		end,
	},
}
