vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	-- { src = "https://github.com/JuliaEditorSupport/julia-vim" },
})

vim.lsp.config("julials", {
	julia_env_path = "/home/pradhan/.julia/environments/v1.14",
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
})

vim.lsp.config("ruff", {
	init_options = {
		settings = {
			lint = {
				ignore = { "E731" },
			},
		},
	},
})

-- vim.lsp.config("ty", {})
vim.lsp.config("pyright", {})

vim.lsp.enable({ "clangd", "julials", "lua_ls", "pyright", "ruff" })

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

		-- Completion: trigger after 3+ letters, show menu without auto-insert
		if client and client:supports_method("textDocument/completion") then
			vim.opt_local.completeopt = { "menu", "menuone", "noselect" }
			vim.lsp.completion.enable(true, client.id, buf, { autotrigger = false })

			vim.api.nvim_create_autocmd("TextChangedI", {
				buffer = buf,
				callback = function()
					local line = vim.api.nvim_get_current_line()
					local col = vim.api.nvim_win_get_cursor(0)[2]
					local before_cursor = line:sub(1, col)
					-- Match 3+ letters/underscores (no numbers trigger)
					local word = before_cursor:match("[%a_]+$")
					if word and #word >= 3 then
						local keys = vim.api.nvim_replace_termcodes("<C-x><C-o>", true, false, true)
						vim.api.nvim_feedkeys(keys, "n", false)
					end
				end,
			})
		end
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
	underline = true,
	severity_sort = true,
})
