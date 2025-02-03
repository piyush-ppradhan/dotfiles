return {
	{
		"craftzdog/solarized-osaka.nvim",
		config = function()
			require("solarized-osaka").setup({
				transparent = true,
				styles = {
					keywords = { italic = false },
				},
			})
			vim.cmd.colorscheme("solarized-osaka")
		end,
	},
}
