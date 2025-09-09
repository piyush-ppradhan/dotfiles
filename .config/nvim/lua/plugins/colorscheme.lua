return {
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				styles = {
					italic = false,
					transparency = true,
				},
			})
			-- vim.cmd.colorscheme("rose-pine-moon")
		end,
	},
	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.g.gruvbox_material_transparent_background = 2
			-- vim.g.gruvbox_material_background = "hard"
			-- vim.g.gruvbox_material_foreground = "material"
			-- vim.g.gruvbox_material_ui_contrast = "high"
			vim.g.gruvbox_material_show_eob = 0
			vim.g.gruvbox_material_float_style = "none"
			vim.cmd.colorscheme("gruvbox-material")
			vim.api.nvim_set_hl(0, "StatusLine", { bg = "#111111", bold = true })
		end,
	},
}
