require("lazy").setup({
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, lazy = false },

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		lazy = false,
	},

	{ "windwp/nvim-autopairs", lazy = false, event = "InsertEnter", config = true },
	{ "numToStr/Comment.nvim", lazy = false },

	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = false },

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

	-- Autocompletion
	{ "hrsh7th/nvim-cmp", event = "InsertEnter", dependencies = { { "L3MON4D3/LuaSnip" } } },

	-- LSP
	{
		"neovim/nvim-lspconfig",
		cmd = { "LspInfo", "LspInstall", "LspStart" },
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "williamboman/mason-lspconfig.nvim" },
		},
	},

	{ "nvim-tree/nvim-web-devicons", lazy = false },
	{ "JuliaEditorSupport/julia-vim", lazy = false },
	{ "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }, lazy = false },
	{ "stevearc/oil.nvim", dependencies = { { "echasnovski/mini.icons", opts = {} } } },

	-- Linter and Formatter
	{ "stevearc/conform.nvim", lazy = false, event = { "BufReadPre", "BufNewFile" } },

	-- Git integration
	-- { "tpope/vim-fugitive", lazy = false },

	-- Tree-sitter context
	{ "nvim-treesitter/nvim-treesitter-context", lazy = false },

	-- Quick file navigation
	{ "ThePrimeagen/harpoon", dependencies = { "nvim-lua/plenary.nvim" } },

	-- Debugger setup
	{ "mfussenegger/nvim-dap" },
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{ "theHamsta/nvim-dap-virtual-text" },
	{ "nvim-telescope/telescope-dap.nvim" },

	defaults = {
		lazy = true,
	},
})
