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
					transparency = false,
				},

				enable = {
					terminal = false,
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
		"morhetz/gruvbox",
		config = function()
			vim.g.gruvbox_contrast_dark = "hard"
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "Normal", { bg = "#101010", fg = "#eddbb2" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "#101010", fg = "#eddbb2" })
			vim.api.nvim_set_hl(0, "@variable", { fg = "#eddbb2" })
			vim.api.nvim_set_hl(0, "Delimiter", { fg = "#eddbb2" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#101010" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "#101010" })
		end,
	},
}
