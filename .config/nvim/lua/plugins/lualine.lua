return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = false,
				theme = "gruvbox-material",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {
					"filename",
					-- function()
					-- 	return vim.fn["nvim_treesitter#statusline"](180)
					-- end,
				},
				lualine_x = { "filetype" },
				lualine_y = {},
				lualine_z = {},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
		})
		vim.api.nvim_set_hl(0, "StatusLine", { bg = "None" })
		vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None" })
	end,
}
