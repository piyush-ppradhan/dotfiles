require("rose-pine").setup({
	disable_background = true,
	styles = {
		italic = false,
	},
})

-- setup must be called before loading

vim.cmd.colorscheme("rose-pine")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- require("notify").setup({
-- 	background_colour = "#000000",
-- })
