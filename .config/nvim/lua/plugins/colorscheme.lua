vim.pack.add({
	{ src = "https://github.com/rose-pine/nvim" },
})
-- Original desert-based theme.
vim.cmd.colorscheme("desert")
vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#fefefe" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#202020", fg = "#dedede" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None", fg = "#fefefe" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "None" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "None", fg = "#edccb2", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None", fg = "#edccb2" })
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#606060" })

require("rose-pine").setup({
	variant = "moon",
	styles = {
		italic = false,
		transparency = true,
	},
})
vim.cmd.colorscheme("rose-pine")
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#151515", fg = "#c4a7e7", bold = true })
