vim.pack.add({
	{ src = "https://github.com/ellisonleao/gruvbox.nvim" },
})

require("gruvbox").setup({
	terminal_colors = true,
	bold = true,
	contrast = "hard",
	transparent_mode = true,
})
vim.cmd.colorscheme("gruvbox")

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#303030", fg = "#f43841", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#303030", fg = "#ffdd33", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#303030", fg = "#9e95c7", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "#303030", fg = "#9e95c7", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { bg = "#303030", fg = "#9e95c7", bold = true })

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { bg = "None", fg = "#f43841", bold = true, undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { bg = "None", fg = "#ffdd33", bold = true, undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { bg = "None", fg = "#9e95c7", bold = true, undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { bg = "None", fg = "#9e95c7", bold = true, undercurl = true })
