vim.api.nvim_set_keymap("n", "<Leader>p", ":Explore<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>e", ":lua vim.diagnostic.open_float()<CR>", {})
