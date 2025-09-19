vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

local configs = require("nvim-treesitter.configs")
configs.setup({
	ensure_installed = {
		"c",
		"lua",
		"cpp",
		"julia",
		"python",
		"vimdoc",
		"query",
		"vim",
		"markdown",
		"markdown_inline",
		"luadoc",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
})
require("nvim-treesitter").setup(configs)
