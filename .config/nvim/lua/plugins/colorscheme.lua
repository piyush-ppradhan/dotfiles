return {
	{
		"yazeed1s/minimal.nvim",
		config = function()
			-- require("tokyonight").setup({
			-- 	transparent = true,
			-- })
			-- vim.cmd.colorscheme("minimal-base16")
			-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#4f5354", bg = "None" })
			-- vim.api.nvim_set_hl(0, "SignColumn", { fg = "#4f5354", bg = "None" })
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "#050505" })
			-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#050505" })

			vim.cmd.colorscheme("minimal")
			vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "#101010" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "#101010" })
			vim.api.nvim_set_hl(0, "SignColumnNC", { bg = "#101010" })
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#484848", bg = "#101010" })
			vim.api.nvim_set_hl(0, "Special", { fg = "#d39b8f", bg = "None" })
			vim.api.nvim_set_hl(0, "Delimiter", { fg = "#606060", bg = "None" })
			vim.api.nvim_set_hl(0, "StatusLine", { fg = "#606060", bg = "#101010" })
			vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#606060", bg = "#101010" })
			vim.api.nvim_set_hl(0, "MsgArea", { fg = "#606060", bg = "#101010" })
			vim.api.nvim_set_hl(0, "MsgSeparator", { fg = "#606060", bg = "#101010" })
		end,
	},
}
