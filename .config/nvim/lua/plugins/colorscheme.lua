return {
	{
		"phha/zenburn.nvim",
		config = function()
			vim.cmd.colorscheme("zenburn")
			vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			vim.api.nvim_set_hl(0, "StatusLine", { fg = "#c1b298", bg = "#131313", bold = true })
			vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#c1b298", bg = "#131313" })
			vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#303030", bg = "None" })
			vim.api.nvim_set_hl(0, "Function", { fg = "#b3a598" })
			vim.api.nvim_set_hl(0, "Float", { fg = "#8cd0d3" })
			vim.api.nvim_set_hl(0, "Keyword", { fg = "#a5a5a5", bold = true })
			vim.api.nvim_set_hl(0, "Macro", { fg = "#b3a598" })
			vim.api.nvim_set_hl(0, "@variable", { fg = "#b3a598" })
			vim.api.nvim_set_hl(0, "Special", { fg = "#b3a598" })
			vim.api.nvim_set_hl(0, "Identifier", { fg = "#b3a598" })
			vim.api.nvim_set_hl(0, "Constant", { fg = "#b3a598" })
			vim.api.nvim_set_hl(0, "Type", { fg = "#b3a598" })
			vim.api.nvim_set_hl(0, "Operator", { fg = "#b3a598" })
			vim.api.nvim_set_hl(0, "Comment", { fg = "#69ab6f" })
			vim.api.nvim_set_hl(0, "Structure", { fg = "#b3a598" })
		end,
	},
}
