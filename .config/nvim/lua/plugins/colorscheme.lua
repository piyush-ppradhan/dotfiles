return {
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup({
				transparent_background = true,
				terminal_colors = true,
				styles = {
					comment = { italic = true },
					keyword = { italic = true },
					type = {},
					storageclass = {},
					structure = {},
					parameter = {},
					annotation = {},
					tag_attribute = {},
				},
				filter = "default",
			})
			vim.cmd.colorscheme("monokai-pro-default")
		end,
	},
}
