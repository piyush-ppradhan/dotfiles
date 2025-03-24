vim.api.nvim_set_keymap("n", "<Leader>p", ":Explore<CR>", { desc = "Open parent directory" })
vim.api.nvim_set_keymap("n", "<Leader>e", ":lua vim.diagnostic.open_float()<CR>", {})
vim.api.nvim_set_keymap("n", "<C-Space>", ":bnext<CR>", {})
