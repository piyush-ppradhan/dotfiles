return {
	{
		"morhetz/gruvbox",
		-- config = function()
		-- 	vim.g.gruvbox_contrast_dark = "hard"
		-- 	vim.cmd.colorscheme("gruvbox")
		-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "#151515" })
		-- 	vim.api.nvim_set_hl(0, "NormalNC", { bg = "#151515" })
		-- 	vim.api.nvim_set_hl(0, "SignColumn", { bg = "#151515" })
		-- 	vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#151515" })
		-- end,
	},
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
			})

			vim.cmd.colorscheme("rose-pine")
			vim.api.nvim_set_hl(0, "Normal", { bg = "#050505" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "#050505" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "#050505" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#050505" })
		end,
	},
}
