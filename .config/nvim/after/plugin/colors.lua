vim.g.gruvbox_contrast_dark = "hard"
vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "#151515" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#151515" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#151515" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#151515" })

require("evergarden").setup({
	transparent_background = true,
	variant = "hard",
	override_terminal = true,
	style = {
		tabline = {},
		search = {},
		incsearch = {},
		types = {},
		keyword = {},
		comment = {},
		sign = { highlight = false },
	},
	integrations = {
		blink_cmp = true,
		cmp = true,
		gitsigns = true,
		indent_blankline = { enable = true, scope_color = "green" },
		nvimtree = true,
		rainbow_delimiters = true,
		symbols_outline = true,
		telescope = true,
		which_key = true,
	},
})

vim.cmd.colorscheme("evergarden")
