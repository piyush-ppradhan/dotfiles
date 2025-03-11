return {
	{
		"polirritmico/monokai-nightasty.nvim",
		config = function()
			vim.cmd.colorscheme("monokai-nightasty")
			vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
			vim.api.nvim_set_hl(0, "StatusLine", { bg = "None", bold = true })
		end
	}
}
