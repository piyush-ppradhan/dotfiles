vim.pack.add({
	{ src = "https://github.com/rose-pine/neovim" },
	{ src = "https://github.com/sainnhe/gruvbox-material" },
})

require("rose-pine").setup({
	variant = "moon",
	dark_variant = "moon",
	styles = {
		bold = true,
		italic = false,
		transparency = false,
	},
})
-- vim.cmd.colorscheme("rose-pine")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#e0def4" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None", fg = "#e0def4" })

vim.g.gruvbox_material_foreground = "original"
vim.g.gruvbox_material_enable_bold = "1"
vim.g.gruvbox_material_enable_italic = "1"
vim.g.gruvbox_material_transparent_background = "1"
vim.g.gruvbox_material_dim_inactive_windows = "1"
vim.g.gruvbox_material_ui_contrast = "hard"
vim.g.gruvbox_material_better_performance = "1"
vim.cmd.colorscheme("gruvbox-material")
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#45403d" })
