return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>f", builtin.find_files, {})
			vim.keymap.set("n", "<C-p>", builtin.git_files, {})
			vim.keymap.set("n", "<leader>/", function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end)

			require("telescope").setup({
				file_ignore_patterns = { "./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*" },
				pickers = {
					find_files = {
						disable_devicons = true,
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		lazy = false,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = false },
}
