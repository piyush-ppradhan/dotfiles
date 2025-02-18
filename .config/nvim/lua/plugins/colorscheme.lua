return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		config = function()
			-- vim.g.gruvbox_material_background = "hard"
			-- vim.g.gruvbox_material_better_performance = 1
			-- vim.g.gruvbox_material_foreground = "material"
			-- vim.cmd.colorscheme("gruvbox-material")
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
		end,
	},
	{
		"nickkadutskyi/jb.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("jb").setup({ transparent = true })
			vim.cmd.colorscheme("jb")
			vim.api.nvim_set_hl(0, "StatusLine", { fg = "#4b5059", bg = "None" })
			vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#4b5059", bg = "None" })
			vim.api.nvim_set_hl(0, "MsgArea", { fg = "#4b5059", bg = "None" })
			vim.api.nvim_set_hl(0, "@string.documentation.python", { fg = "#5f826b", italic = false })
		end,
	},
}
