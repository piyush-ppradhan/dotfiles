vim.pack.add({ { src = "https://github.com/folke/snacks.nvim" } })

require("snacks").setup({
	bigfile = { enabled = true },
	dashboard = { enabled = false },
	dim = { enabled = false },
	explorer = { enabled = false },
	indent = {
		enabled = true,
		indent = {
			char = "┊",
			only_scope = true,
			only_current = true,
		},
		scope = {
			enabled = true,
			char = "┊",
		},
	},
	input = { enabled = false },
	picker = { enabled = true },
	notifier = { enabled = false },
	quickfile = { enabled = true },
	scope = { enabled = false },
	scroll = { enabled = true },
	statuscolumn = { enabled = false },
	words = { enabled = false },
})

local snacks = require("snacks")
vim.keymap.set("n", "<leader>lg", function()
	snacks.lazygit()
end, { desc = "Call lazygit" })
vim.keymap.set("n", "<leader>f", function()
	snacks.picker.files()
end, {})
vim.keymap.set("n", "<leader>t", function()
	snacks.picker.treesitter()
end, {})
vim.keymap.set("n", "<leader>/", function()
	snacks.picker.grep()
end, { desc = "Grep in current folder" })
vim.keymap.set("n", "<leader>g", function()
	snacks.picker.git_files()
end, { desc = "Search for git files" })
vim.keymap.set("n", "<leader>d", function()
	snacks.picker.diagnostics()
end, {})
