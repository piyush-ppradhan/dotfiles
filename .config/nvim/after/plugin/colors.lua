require("rose-pine").setup({
	variant = "main",
	styles = {
		italic = false,
		bold = true,
		transparency = true,
	},
})

require("tokyonight").setup({
	style = "night",
	transparent = true,
	styles = {
		keywords = { italic = false },
	},
})

require("gruber-darker").setup({
	transparent = true,
})

vim.cmd.colorscheme("rose-pine")
vim.cmd.colorscheme("tokyonight")
vim.cmd.colorscheme("gruber-darker")

vim.api.nvim_set_hl(0, "Number", { fg = "#7ba27f" })
vim.api.nvim_set_hl(0, "Float", { fg = "#7ba27f" })
