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
vim.opt.completeopt = { "noselect" }
vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})

vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", build = "cargo build --release" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{ src = "https://github.com/JuliaEditorSupport/julia-vim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

vim.cmd.colorscheme("boost")

-- Conform
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- python = { "ruff" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		julia = { "JuliaLanguagerServer" },
	},
	format_on_save = function(bufnr)
		-- Disable autoformat on certain filetypes
		local ignore_filetypes = {}
		if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
			return
		end
		-- Disable with a global or buffer-local variable
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end
		-- Disable autoformat for files in a certain path
		local bufname = vim.api.nvim_buf_get_name(bufnr)
		if bufname:match("/node_modules/") then
			return
		end
		-- ...additional logic...
		return { timeout_ms = 500, lsp_fallback = true }
	end,
	-- There is a similar affordance for format_after_save, which uses BufWritePost.
	-- This is good for formatters that are too slow to run synchronously.
	format_after_save = function(bufnr)
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end
		return { lsp_fallback = false } -- This handles the python formatting as ruff is formatter and linter only
	end,
})

-- Define keybinding for formatting
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end)

-- Blink autocompletion
require("blink.cmp").setup({
	keymap = {
		preset = "default",
	},
	completion = {
		menu = {
			border = "rounded",
		},
		documentation = {
			auto_show = true,
		},
	},
	sources = {
		default = { "lsp", "path", "buffer" },
	},
	fuzzy = {
		implementation = "lua",
		prebuilt_binaries = { force_version = "1.*" },
	},
})

-- FZF-Lua
local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>f", fzf.files, {})
vim.keymap.set("n", "<leader>t", fzf.treesitter, {})
vim.keymap.set("n", "<leader>/", fzf.grep, {})
vim.keymap.set("n", "<leader>g", fzf.git_files, {})
vim.keymap.set("n", "<leader>d", fzf.diagnostics_document, {})

local actions = require("fzf-lua").actions

require("fzf-lua").setup({
	-- files = { previewer = false },
	actions = {
		files = {
			["default"] = actions.file_edit,
			["ctrl-v"] = actions.file_vsplit,
			["ctrl-s"] = actions.file_split,
		},
	},
	keymap = {
		fzf = {
			["tab"] = "down",
			["shift-tab"] = "up",
		},
	},
})

-- Oil
require("oil").setup()
vim.api.nvim_set_keymap("n", "<Leader>p", ":Oil<CR>", { desc = "Open parent directory" })
vim.api.nvim_set_keymap("n", "<Leader>e", ":lua vim.diagnostic.open_float()<CR>", {})

-- Treesitter
local configs = require("nvim-treesitter.configs")
configs.setup({
	ensure_installed = {
		"c",
		"lua",
		"cpp",
		"julia",
		"python",
		"vimdoc",
		"query",
		"vim",
		"markdown",
		"markdown_inline",
		"luadoc",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
})
require("nvim-treesitter").setup(configs)

-- LSP Config
local capabilities = require("blink.cmp").get_lsp_capabilities()
vim.lsp.config("julials", {
	julia_env_path = "~/.julia/environments/v1.11",
	capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
	capabilities = capabilities,
})

vim.lsp.config("pyright", {
	settings = {
		pyright = {
			disableOrganizeImports = true,
		},
		python = {
			analysis = {
				-- typeCheckingMode = "off",
				ignore = { "*" },
				-- autoImportCompletions = true,
				-- diagnosticMode = "openFilesOnly",
				-- useLibraryCodeForTypes = true,
			},
		},
	},
	capabilities = capabilities,
})

vim.lsp.config("ruff", {
	init_options = {
		settings = {
			lint = {
				ignore = { "E731" },
			},
		},
	},
	capabilities = capabilities,
})

vim.lsp.enable({ "clangd", "julials", "lua_ls", "pyright", "ruff" })
-------------------------------------------------------------------

-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	group = vim.api.nvim_create_augroup("my.lsp", {}),
-- 	callback = function(args)
-- 		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
-- 		if client:supports_method("textDocument/completion") then
-- 			-- Optional: trigger autocompletion on EVERY keypress. May be slow!
-- 			local chars = {}
-- 			for i = 32, 126 do
-- 				table.insert(chars, string.char(i))
-- 			end
-- 			client.server_capabilities.completionProvider.triggerCharacters = chars
-- 			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
-- 		end
-- 	end,
-- })

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("my.lsp", { clear = true }),
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		local buf = ev.buf
		local map = function(mode, lhs, rhs)
			vim.keymap.set(mode, lhs, rhs, { buffer = buf, silent = true, noremap = true })
		end

		-- LSP navigation & actions
		map("n", "gd", vim.lsp.buf.definition)
		map("n", "gD", vim.lsp.buf.declaration)
		map("n", "gr", vim.lsp.buf.references)
		map("n", "gi", vim.lsp.buf.implementation)
		map("n", "K", vim.lsp.buf.hover)
		map("n", "<leader>rn", vim.lsp.buf.rename)
		map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)

		-- Diagnostics
		map("n", "<leader>vd", vim.diagnostic.open_float)
		map("n", "[d", function()
			vim.diagnostic.goto_prev({ float = true })
		end)
		map("n", "]d", function()
			vim.diagnostic.goto_next({ float = true })
		end)

		-- Optional: very eager completion on all keystrokes (can be heavy)
		if client and client:supports_method("textDocument/completion") then
			local chars = {}
			for i = 32, 126 do
				chars[#chars + 1] = string.char(i)
			end
			client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, buf, { autotrigger = true })
		end
	end,
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
