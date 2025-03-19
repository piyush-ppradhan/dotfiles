vim.loader.enable()
vim.g.mapleader = " "

-- Colorscheme
vim.cmd.colorscheme("retrobox")
vim.api.nvim_set_hl(0, "Normal", { fg = "#ebdbb2", bg = "None" })
vim.api.nvim_set_hl(0, "NormalNC", { fg = "#ebdbb2", bg = "None" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#62584e", bg = "None" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#62584e", bg = "None" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#ebdbb2", bg = "None" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#303030", bg = "None" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#928374", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff0000", bg = "#222222" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#fabd2f", bg = "#222222" })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "#928374", undercurl = true, sp = "#fabd2f" })

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
			},
		},
	},
	rocks = {
		hererocks = true,
	},
})
