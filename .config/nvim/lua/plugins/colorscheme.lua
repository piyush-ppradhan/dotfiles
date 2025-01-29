return {
	-- {
	-- 	"rose-pine/neovim",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			variant = "moon",
	-- 			dark_variant = "moon",
	-- 			styles = {
	-- 				italic = false,
	-- 				transparency = true,
	-- 			},
	-- 		})
	-- 		-- vim.cmd.colorscheme("rose-pine")
	-- 	end,
	-- },
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					folds = false,
				},
				contrast = "hard",
				inverse = false,
			})
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
