return {
	{
		"miikanissi/modus-themes.nvim",
		config = function()
			require("modus-themes").setup({
				style = "auto",
				variant = "default",
				transparent = true,
			})
			vim.cmd.colorscheme("modus")
		end
	}
}
