vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	-- { src = "https://github.com/JuliaEditorSupport/julia-vim" },

	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
	{ src = "https://github.com/hrsh7th/cmp-buffer" },
	{ src = "https://github.com/hrsh7th/cmp-path" },
	{ src = "https://github.com/hrsh7th/nvim-cmp" },
})

local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	mapping = {
		["<Up>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "c" }),
		["<Down>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "c" }),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-y>"] = cmp.mapping.confirm({ select = false }),
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer" },
	}),
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("julials", {
	julia_env_path = "/home/pradhan/.julia/environments/nvim-lspconfig",
	capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
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
})

vim.lsp.config("ruff", {
	capabilities = capabilities,
	init_options = {
		settings = {
			lint = {
				ignore = { "E731" },
			},
		},
	},
})

vim.lsp.config("pyright", { capabilities = capabilities })
vim.lsp.enable({ "clangd", "julials", "lua_ls", "pyright", "ruff" })

-- local ty_capabilities = vim.deepcopy(capabilities)
-- -- Ty sends verbose completion label details that nvim-cmp renders in the menu column.
-- ty_capabilities.textDocument.completion.completionItem.labelDetailsSupport = false
-- vim.lsp.config("ty", { capabilities = ty_capabilities })
-- vim.lsp.enable({ "clangd", "julials", "lua_ls", "ruff", "ty" })

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("my.lsp", { clear = true }),
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)

		if client then
			client.server_capabilities.semanticTokensProvider = nil
		end

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
	end,
})

vim.diagnostic.config({
	signs = {
		text = {
			-- [vim.diagnostic.severity.ERROR] = "E",
			-- [vim.diagnostic.severity.WARN] = "W",
			-- [vim.diagnostic.severity.HINT] = "H",
			-- [vim.diagnostic.severity.INFO] = "I",
			[vim.diagnostic.severity.ERROR] = "●",
			[vim.diagnostic.severity.WARN] = "●",
			[vim.diagnostic.severity.HINT] = "●",
			[vim.diagnostic.severity.INFO] = "●",
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
