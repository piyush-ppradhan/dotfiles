return {
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				main = "main",
				dark_variant = "main",
				styles = {
					bold = false,
					italic = false,
					transparency = true,
				},
			})
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
