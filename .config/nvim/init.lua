vim.loader.enable()
vim.g.mapleader = " "

-- vim.cmd.colorscheme("retrobox")
-- vim.api.nvim_set_hl(0, "Identifier", { fg = "#e8dbb0" })
-- vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#333333", bg = "None" })
-- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#e5dbb0", bg = "None", bold = true })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#929581", bg = "None" })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ed3216", bg = "#303030" })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#dc9a03", bg = "#303030" })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#d3d3d3", bg = "#303030" })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#6ec8e0", bg = "#303030" })

-- vim.cmd.colorscheme("default")
-- vim.api.nvim_set_hl(0, "Normal", { fg = "#f9f9f9", bg = "None" })
-- vim.api.nvim_set_hl(0, "NormalNC", { fg = "#f9f9f9", bg = "None" })
-- vim.api.nvim_set_hl(0, "Identifier", { fg = "#f9f9f9" })
-- vim.api.nvim_set_hl(0, "@variable", { fg = "#f9f9f9" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#333333", bg = "None" })
-- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#f9f9f9", bg = "None" })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#f9f9f9", bg = "None" })
-- vim.api.nvim_set_hl(0, "Function", { fg = "#8bc1b5", bg = "None" })
-- vim.api.nvim_set_hl(0, "Constant", { fg = "#959c49" })
-- vim.api.nvim_set_hl(0, "String", { fg = "#cad74b" })
-- vim.api.nvim_set_hl(0, "Type", { fg = "#8dafa9", bold = true })
-- vim.api.nvim_set_hl(0, "Special", { fg = "#cbda95" })
-- vim.api.nvim_set_hl(0, "Comment", { fg = "#646466" })
-- vim.api.nvim_set_hl(0, "Statement", { fg = "#79d0c5" })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ffc0b9", bg = "#303030" })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#f3d969", bg = "#303030" })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#7ad5ff", bg = "#303030" })
-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#6ec8e0", bg = "#303030" })

-- Better diagnostic info
-- vim.api.nvim_create_autocmd("CursorHold", {
-- 	callback = function()
-- 		vim.diagnostic.open_float(nil, { focusable = false, source = "if_many" })
-- 	end,
-- })

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
