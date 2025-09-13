vim.loader.enable()
vim.g.mapleader = " "
vim.opt.guicursor = ""
vim.opt.termguicolors = true
-- vim.opt.nu = true
-- vim.opt.relativenumber = true
vim.opt.signcolumn = "no"
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
	virtual_text = false,
	-- virtual_lines = {
	-- 	current_line = false,
	-- },
	virtual_lines = false,
	underline = false,
	severity_sort = true,
})

-- Autoclear the command line
local grp_ = vim.api.nvim_create_augroup("ClearCmdLine", { clear = true })
vim.api.nvim_create_autocmd("CmdlineLeave", {
	group = grp_,
	callback = function()
		vim.fn.timer_start(1000, function()
			vim.cmd("echon ' '")
		end)
	end,
})

function _G.git_branch()
	local handle = io.popen("git -C " .. vim.fn.expand("%:p:h") .. " rev-parse --abbrev-ref HEAD 2>/dev/null")
	if handle == nil then
		return ""
	end
	local result = handle:read("*a") or ""
	handle:close()
	result = result:gsub("%s+", "")
	if result ~= "" then
		return result
	else
		return ""
	end
end

vim.o.statusline = table.concat({
	"%p%%", -- percentage
	" L%l", -- line:col
	"  git: %{v:lua.git_branch()}", -- Git branch
	"  %y", -- filetype
	"  %f", -- file name
	" %m", -- modified flag
	" %r", -- readonly flag
	" %h", -- help flag
	" %w", -- preview flag
})

vim.cmd.colorscheme("boost")
