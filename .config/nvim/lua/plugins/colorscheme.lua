vim.pack.add({
	{ src = "https://github.com/ellisonleao/gruvbox.nvim" },
})

require("gruvbox").setup({
	contrast = "hard",
	transparent_mode = true,
})
vim.cmd.colorscheme("gruvbox")
