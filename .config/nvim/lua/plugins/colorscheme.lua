vim.pack.add({
	{ src = "https://github.com/ellisonleao/gruvbox.nvim" },
})

require("gruvbox").setup({
	contrast = "hard",
	transparent_mode = true,
})
vim.cmd.colorscheme("gruvbox")

-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#303030", fg = "#f43841", bold = true })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#303030", fg = "#ffdd33", bold = true })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#303030", fg = "#9e95c7", bold = true })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "#303030", fg = "#9e95c7", bold = true })
-- vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { bg = "None", fg = "#9e95c7", bold = true, undercurl = true })

-- vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "None", fg = "#f43841", bold = true })
-- vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "None", fg = "#ffdd33", bold = true })
-- vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "None", fg = "#9e95c7", bold = true })
-- vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "None", fg = "#9e95c7", bold = true })

-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { bg = "None", fg = "#f43841", bold = true, undercurl = true })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { bg = "None", fg = "#ffdd33", bold = true, undercurl = true })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { bg = "None", fg = "#9e95c7", bold = true, undercurl = true })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { bg = "None", fg = "#9e95c7", bold = true, undercurl = true })

vim.api.nvim_set_hl(0, "StatusLine", { bg = "#303030", fg = "#e7d7af", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None", fg = "#303030" })

-- vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#e7d7af" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None", fg = "#e7d7af" })
