return {
	{
		"RRethy/base16-nvim",
		lazy = false,
		config = function()
			vim.cmd.colorscheme("base16-black-metal-gorgoroth")
			vim.api.nvim_set_hl(0, "@variable.builtin.python", { fg = "#5f8787", bg = "None", italic = false })
			vim.api.nvim_set_hl(0, "@function.builtin.python", { fg = "#888888", bg = "None", italic = false })
		end,
	},
}
