return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_better_performance = 1
			vim.g.gruvbox_material_foreground = "material"
			vim.cmd.colorscheme("gruvbox-material")
			vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
		end,
	},
}
