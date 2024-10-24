vim.cmd.colorscheme("gruvbuddy")

vim.api.nvim_set_hl(0, "StatusLine", { bg = "None" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None" })
local hl = vim.api.nvim_get_hl_by_name("Function", true)
vim.api.nvim_set_hl(0, "Function", { fg = hl.foreground, bold = true })
vim.api.nvim_set_hl(0, "@function", { fg = hl.foreground, bold = true })
