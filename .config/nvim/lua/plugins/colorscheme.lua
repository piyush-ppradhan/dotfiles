return {
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				dark_variant = "moon", -- main, moon, or dawn

				styles = {
					bold = true,
					italic = false,
					transparency = true,
				},
			})
			--vim.cmd.colorscheme("rose-pine")
		end,
	},
}
