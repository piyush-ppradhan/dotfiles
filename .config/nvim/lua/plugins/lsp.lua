vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", build = "cargo build --release" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/JuliaEditorSupport/julia-vim" },
})

require("blink.cmp").setup({
	keymap = {
		preset = "default",
		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
		["<C-p>"] = { "select_prev" },
		["<C-n>"] = { "select_next" },
		["<C-y>"] = { "accept" },
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
	underline = true,
	severity_sort = true,
})
