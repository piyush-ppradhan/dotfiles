return {
	{
		"morhetz/gruvbox",
		config = function()
			vim.g.gruvbox_transparent_bg = 1
			vim.g.gruvbox_contrast_light = "hard"
			vim.opt.background = "dark"
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
		end,
	},
}
