vim.pack.add({
	-- { src = "https://github.com/ellisonleao/gruvbox.nvim" },
	{ src = "https://github.com/blazkowolf/gruber-darker.nvim" },
})

-- require("gruvbox").setup({
-- 	bold = true,
-- 	contrast = "hard",
-- 	transparent_mode = true,
-- })
-- vim.cmd.colorscheme("gruvbox")

-- vim.cmd.colorscheme("default_vim")

require("gruber-darker").setup({ bold = true })

vim.cmd.colorscheme("gruber-darker")
vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None", fg = "#ffffff" })

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#303030", fg = "#f43841", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#303030", fg = "#ffdd33", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#303030", fg = "#9e95c7", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "#303030", fg = "#9e95c7", bold = true })
