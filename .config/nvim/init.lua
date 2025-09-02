vim.loader.enable()
vim.g.mapleader = " "
vim.opt.guicursor = ""
vim.opt.termguicolors = true
-- vim.opt.nu = true
-- vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.autoread = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.fillchars = { eob = " " }
vim.opt.winborder = "rounded"
vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ import = "plugins" }, {
	change_detection = {
		notify = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"spellfile",
				"zipPlugin",
				"rplugin",
			},
		},
	},
})

-- vim.diagnostic.config({
-- 	-- enable signs and customize their text per severity
-- 	signs = {
-- 		text = {
-- 			[vim.diagnostic.severity.ERROR] = "",
-- 			[vim.diagnostic.severity.WARN] = "",
-- 			[vim.diagnostic.severity.HINT] = "",
-- 			[vim.diagnostic.severity.INFO] = "",
-- 		},
-- 	},
-- 	virtual_text = true,
-- 	underline = true,
-- 	severity_sort = true,
-- })

vim.diagnostic.config({
	-- enable signs and customize their text per severity
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "E",
			[vim.diagnostic.severity.WARN] = "W",
			[vim.diagnostic.severity.HINT] = "H",
			[vim.diagnostic.severity.INFO] = "I",
		},
	},
	virtual_text = true,
	underline = true,
	severity_sort = true,
})
