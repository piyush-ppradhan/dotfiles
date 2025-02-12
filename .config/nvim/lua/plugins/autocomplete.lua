return {
	{
		"hrsh7th/nvim-cmp",
		lazy = true,
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
}
