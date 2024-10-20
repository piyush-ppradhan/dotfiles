require("rose-pine").setup({
	variant = "main",
	styles = {
		italic = false,
		bold = true,
		transparency = true,
	},
})

vim.cmd.colorscheme("rose-pine")

-- vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#5a5a5a", bg = "None" })
-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "None" })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None" })
