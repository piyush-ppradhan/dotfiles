require("lazy").setup({
	-- Telescope
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, lazy = false },
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		lazy = false,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = false },

	-- Bracket pairing and commenting
	{ "windwp/nvim-autopairs", lazy = false, event = "InsertEnter", config = true },
	{ "numToStr/Comment.nvim", lazy = false },

	-- Better syntax highlight using treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = false },

	-- Autocompletion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			{ "L3MON4D3/LuaSnip" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-buffer" },
		},
		config = function()
			-- Here is where you configure the autocompletion settings.
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_cmp()

			local cmp = require("cmp")
			local cmp_select = { behavior = cmp.SelectBehavior.Select }
			local cmp_mappings = lsp_zero.defaults.cmp_mappings({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			})
			--local cmp_action = lsp_zero.cmp_action()

			cmp_mappings["<Tab>"] = nil
			cmp_mappings["<S-Tab>"] = nil

			cmp.setup({
				-- sources = {
				-- 	{ name = "path" },
				-- 	{ name = "buffer" },
				-- },
				mapping = cmp.mappings,
			})
		end,
	},

	-- LSP
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		lazy = true,
		config = false,
		init = function()
			-- Disable automatic setup, we are doing it manually
			vim.g.lsp_zero_extend_cmp = 0
			vim.g.lsp_zero_extend_lspconfig = 0
		end,
	},

	{ "williamboman/mason.nvim", lazy = false, config = true },

	{
		"neovim/nvim-lspconfig",
		cmd = { "LspInfo", "LspInstall", "LspStart" },
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "williamboman/mason-lspconfig.nvim" },
		},
		config = function()
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_lspconfig()

			lsp_zero.on_attach(function(client, bufnr)
				local opts = { buffer = bufnr, remap = false }

				vim.keymap.set("n", "gd", function()
					vim.lsp.buf.definition()
				end, opts)
				vim.keymap.set("n", "K", function()
					vim.lsp.buf.hover()
				end, opts)
				vim.keymap.set("n", "<leader>vws", function()
					vim.lsp.buf.workspace_symbol()
				end, opts)
				vim.keymap.set("n", "<leader>vd", function()
					vim.diagnostic.open_float()
				end, opts)
				vim.keymap.set("n", "[d", function()
					vim.diagnostic.goto_next()
				end, opts)
				vim.keymap.set("n", "]d", function()
					vim.diagnostic.goto_prev()
				end, opts)
				vim.keymap.set("n", "<leader>vca", function()
					vim.lsp.buf.code_action()
				end, opts)
				vim.keymap.set("n", "<leader>vrr", function()
					vim.lsp.buf.references()
				end, opts)
				vim.keymap.set("n", "<leader>vrn", function()
					vim.lsp.buf.rename()
				end, opts)
				vim.keymap.set("i", "<C-h>", function()
					vim.lsp.buf.signature_help()
				end, opts)
			end)

			lsp_zero.set_preferences({
				suggest_lsp_servers = false,
				sign_icons = {
					error = "E",
					warn = "W",
					hint = "H",
					info = "I",
				},
			})

			require("mason-lspconfig").setup({
				ensure_installed = { "clangd", "pyright", "julials" },
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
						local lua_opts = lsp_zero.nvim_lua_ls()
						require("lspconfig").lua_ls.setup(lua_opts)
					end,
					julials = function()
						require("lspconfig").julials.setup({ julia_env_path = "~/.julia/environments/v1.10" })
					end,
				},
			})
		end,
	},

	-- Inline markdown/latex viewer
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- Colorscheme
	{ "blazkowolf/gruber-darker.nvim", lazy = false },

	-- Lualine
	{ "nvim-lualine/lualine.nvim", lazy = false },

	-- Julia support (for example Latex characters for variable names)
	{ "JuliaEditorSupport/julia-vim", lazy = false },

	-- Support for better TODO comments
	{ "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }, lazy = false },

	-- Better file explorer
	{ "stevearc/oil.nvim", dependencies = { { "echasnovski/mini.icons", opts = {} } } },

	-- Linter and Formatter
	{ "stevearc/conform.nvim", lazy = false, event = { "BufReadPre", "BufNewFile" } },

	-- Git integration
	-- { "tpope/vim-fugitive", lazy = false },

	-- Tree-sitter context
	{ "nvim-treesitter/nvim-treesitter-context", lazy = false },

	-- Quick file navigation
	-- { "ThePrimeagen/harpoon", dependencies = { "nvim-lua/plenary.nvim" } },

	-- Debugger setup
	{ "mfussenegger/nvim-dap" },
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	-- { "theHamsta/nvim-dap-virtual-text" },
	{ "nvim-telescope/telescope-dap.nvim" },

	defaults = {
		lazy = true,
	},
})
