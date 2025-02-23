vim.opt.guicursor = ""
vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.opt.colorcolumn = "79"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.cmdheight = 0
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
vim.loader.enable()
vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})
