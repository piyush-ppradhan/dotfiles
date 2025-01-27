return {
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				background = {
					light = "mocha",
					dark = "mocha",
				},
				transparent_background = true,
				no_italic = true,
				styles = {
					comments = {},
					conditionals = {},
					loops = {},
					functions = { "bold" },
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
