return {
	{
		"echasnovski/mini.base16",
		version = false,
		config = function()
			-- vim.cmd.colorscheme("minicyan")
			-- -- vim.api.nvim_set_hl(0, "Normal", { bg = "#041010" })
			-- -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#041010" })
			-- -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#041010" })
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
			-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
			-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#5f8788", bg = "None" })
			-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = "#ef4436", bg = "None", underline = true })
			-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { fg = "#ffbf04", bg = "None", underline = true })
			-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { fg = "#3e87fa", bg = "None", underline = true })
			-- vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#ef4436", bg = "None" })
			-- vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#ffbf04", bg = "None" })
			-- vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#3e87fa", bg = "None" })
			-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ef4436", bg = "#373737" })
			-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#ffbf04", bg = "#373737" })
			-- vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#3e87fa", bg = "#373737" })
			-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
			-- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#556868", bg = "None" })
			-- vim.api.nvim_set_hl(0, "Keyword", { fg = "#ffb8df", bg = "None", bold = true })
			-- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#babbb9", bg = "None", bold = true })
			-- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#babbb9", bg = "None" })
			-- vim.api.nvim_set_hl(0, "MsgArea", { fg = "#babbb9", bg = "None" })
			-- vim.api.nvim_set_hl(0, "Type", { fg = "#80e1b9", bg = "None", bold = true })
			-- vim.api.nvim_set_hl(0, "String", { fg = "#7DB589", bg = "None" })
			-- vim.api.nvim_set_hl(0, "Delimiter", { fg = "#c5c7bf", bg = "None" })
			-- vim.api.nvim_set_hl(0, "Number", { fg = "#e4c07b", bg = "None" })
			-- vim.api.nvim_set_hl(0, "Float", { fg = "#e4c07b", bg = "None" })
			-- vim.api.nvim_set_hl(0, "Constant", { fg = "#e4c07b", bg = "None" })
			-- vim.api.nvim_set_hl(0, "@keyword.return", { fg = "#f9b8df", bg = "None", bold = true })
			-- vim.api.nvim_set_hl(0, "@comment.todo", { fg = "#259569", bg = "None", bold = true })
		end,
	},
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				styles = {
					italic = false,
					transparency = true,
				},
			})
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
