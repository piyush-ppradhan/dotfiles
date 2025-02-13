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
					transparency = true,
				},
			})
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
