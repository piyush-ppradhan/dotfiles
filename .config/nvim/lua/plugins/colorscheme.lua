return {
	{
		"morhetz/gruvbox",
		config = function()
			vim.opt.background = "light"
			vim.g.gruvbox_transparent_bg = 1
			vim.g.gruvbox_contrast_light = "hard"
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
			vim.api.nvim_set_hl(0, "StatusLine", { bg = "#e0dfdb" })
			vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#e0dfdb" })
			vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#e0dfdb" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
		end,
	},
}
