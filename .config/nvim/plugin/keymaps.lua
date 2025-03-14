vim.api.nvim_set_keymap("n", "<Leader>p", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.api.nvim_set_keymap("n", "<Leader>e", ":lua vim.diagnostic.open_float()<CR>", {})
