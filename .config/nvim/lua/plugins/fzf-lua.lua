vim.pack.add({
	{ src = "https://github.com/ibhagwan/fzf-lua" },
})

local actions = require("fzf-lua").actions
require("fzf-lua").setup({
	-- files = { previewer = false },
	actions = {
		files = {
			["default"] = actions.file_edit,
			["ctrl-v"] = actions.file_vsplit,
			["ctrl-s"] = actions.file_split,
		},
	},
	keymap = {
		fzf = {
			["tab"] = "down",
			["shift-tab"] = "up",
		},
	},
})

local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>f", fzf.files, {})
vim.keymap.set("n", "<leader>t", fzf.treesitter, {})
vim.keymap.set("n", "<leader>/", fzf.grep, {})
vim.keymap.set("n", "<leader>g", fzf.git_files, {})
vim.keymap.set("n", "<leader>d", fzf.diagnostics_document, {})
