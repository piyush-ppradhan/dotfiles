vim.opt.guicursor = ""
vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.autoread = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})

vim.cmd.colorscheme("retrobox")
vim.api.nvim_set_hl(0, "Identifier", { fg = "#e8dbb0" })
local hl = vim.api.nvim_get_hl(0, { name = "Function", link = false })
