return {
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				background = {
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true,
				no_italic = true,
				no_bold = false,
				styles = {
					comments = {},
					conditionals = {},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
