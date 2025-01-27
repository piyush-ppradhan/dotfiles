return {
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				dark_variant = "moon",

				styles = {
					bold = true,
					italic = false,
					transparency = true,
				},
			})

			-- vim.cmd.colorscheme("rose-pine")
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "#050505" })
			-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#050505" })
			-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "#050505" })
			-- vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#050505" })
		end,
	},
	{
		"oxfist/night-owl.nvim",
		config = function()
			require("night-owl").setup({
				bold = true,
				italics = false,
				underline = true,
				undercurl = true,
				transparent_background = true,
			})
			vim.cmd.colorscheme("night-owl")
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
		end,
	},
}
