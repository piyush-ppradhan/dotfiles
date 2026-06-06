vim.pack.add({
	{ src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
})

require("ibl").setup({
	indent = {
		char = " ",
		tab_char = " ",
	},
	scope = {
		enabled = true,
		char = "┊",
		show_start = false,
		show_end = false,
		include = {
			node_type = {
				["*"] = {
					"compound_statement",
					"if_expression",
					"if_statement",
					"elif_clause",
					"else_clause",
					"for_statement",
					"for_expression",
					"for_in_statement",
					"enhanced_for_statement",
					"while_statement",
					"while_expression",
					"do_statement",
					"do_while_statement",
					"repeat_statement",
					"loop_expression",
				},
			},
		},
	},
})
