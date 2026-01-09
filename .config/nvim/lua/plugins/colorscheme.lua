vim.pack.add({
	{ src = "https://github.com/sainnhe/gruvbox-material" },
	{ src = "https://github.com/nvim-mini/mini.base16" },
	-- { src = "https://github.com/serhez/teide.nvim" },
	-- { src = "https://github.com/petronny/darksphere.nvim" },
})

vim.g.gruvbox_material_foreground = "original"
vim.g.gruvbox_material_enable_bold = "0"
vim.g.gruvbox_material_enable_italic = "0"
vim.g.gruvbox_material_transparent_background = "1"
vim.g.gruvbox_material_dim_inactive_windows = "1"
vim.g.gruvbox_material_ui_contrast = "low"
vim.g.gruvbox_material_better_performance = "1"
vim.cmd.colorscheme("gruvbox-material")
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#45403d" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#222222", fg = "#ebdbb2" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#303030", fg = "#ebdbb2" })

-- vim.cmd.colorscheme("darksphere")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#45403d" })
