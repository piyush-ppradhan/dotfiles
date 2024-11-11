function get_fg(group)
	return vim.fn.synIDattr(vim.fn.hlID(group), "fg#")
end

vim.cmd.colorscheme("default")
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#2c2e33", bg = "None" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#2c2e33", bg = "None" })
