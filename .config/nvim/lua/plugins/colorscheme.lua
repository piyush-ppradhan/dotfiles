return {
	-- {
	-- 	"rose-pine/neovim",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			variant = "moon",
	-- 			dark_variant = "moon",
	-- 			styles = {
	-- 				bold = false,
	-- 				italic = false,
	-- 				transparency = true,
	-- 			},
	-- 		})
	-- 		vim.cmd.colorscheme("rose-pine")
	-- 	end,
	-- },
	{
		"eemed/sitruuna.vim",
		config = function()
			vim.cmd.colorscheme("sitruuna")
			vim.api.nvim_set_hl(0, "StatusLine", { fg = "#526262", bg = "None" })
			vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#526262", bg = "None" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
		end,
	},
}
