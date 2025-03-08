return {
	{
		"morhetz/gruvbox",
		config = function()
			vim.opt.background = "dark"
			vim.g.gruvbox_transparent_bg = 1
			vim.g.gruvbox_contrast_light = "hard"
			vim.g.gruvbox_contrast_dark = "hard"
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "Normal", { fg = "#cec3a3", bg = "None" })
			vim.api.nvim_set_hl(0, "NormalNC", { fg = "#cec3a3", bg = "None" })
			-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "#e0dfdb" })
			-- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#e0dfdb" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
			vim.api.nvim_set_hl(0, "@variable", { fg = "#cec3a3" })
			vim.api.nvim_set_hl(0, "@variable.python", { fg = "#cec3a3" })
			vim.api.nvim_set_hl(0, "@variable.member.python", { fg = "#cec3a3" })
			vim.api.nvim_set_hl(0, "Delimiter", { fg = "#cec3a3" })
		end,
	},
}
