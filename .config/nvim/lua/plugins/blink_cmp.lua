-- return {
-- 	{
-- 		"saghen/blink.cmp",
-- 		dependencies = "rafamadriz/friendly-snippets",
-- 		version = "*",
-- 		opts = {
-- 			keymap = { preset = "default" },
-- 			appearance = {
-- 				use_nvim_cmp_as_default = true,
-- 				nerd_font_variant = "mono",
-- 			},
-- 			fuzzy = { implementation = "prefer_rust_with_warning" },
-- 		},
-- 		opts_extend = { "sources.default" },
-- 	},
-- }
return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets", -- Snippet support
		},
		version = "*",
		opts = {
			keymap = {
				preset = "default",
				["<C-p>"] = { "select_prev" },
				["<C-n>"] = { "select_next" },
				["<C-y>"] = { "accept" },
				["<C-Space>"] = { "show" }
			},
			appearance = {
				use_nvim_cmp_as_default = true, -- Mimics nvim-cmp's behavior
				nerd_font_variant = "mono",
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
			sources = {
				default = { 'lsp', 'buffer', 'snippets', 'path' }
			},
		},
	},
}
