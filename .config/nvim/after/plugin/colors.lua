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
