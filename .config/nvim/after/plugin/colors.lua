require("rose-pine").setup({
	variant = "moon",
	dark_variant = "main",

	styles = {
		bold = true,
		italic = false,
		transparency = false,
	},
})

vim.cmd.colorscheme("rose-pine")
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#000000" })

vim.g.gruvbox_contrast_dark = "hard"
vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "#151515" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#151515" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#151515" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#151515" })
