require("oil").setup()
vim.api.nvim_set_keymap("n", "<Leader>p", ":Oil<CR>", { desc = "Open parent directory" })
vim.api.nvim_set_keymap("n", "<Leader>e", ":lua vim.diagnostic.open_float()<CR>", {})
