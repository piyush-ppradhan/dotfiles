return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "night",
				styles = {
					comments = { italic = false },
					keywords = { italic = false, bold = true },
				},
				transparent = true,
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
