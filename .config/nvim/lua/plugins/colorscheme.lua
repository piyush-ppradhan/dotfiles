vim.pack.add({
	{ src = "https://github.com/rose-pine/neovim" },
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
vim.cmd.colorscheme("rose-pine")

vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#e0def4" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None", fg = "#e0def4" })
