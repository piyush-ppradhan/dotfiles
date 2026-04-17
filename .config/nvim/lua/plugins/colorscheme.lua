vim.pack.add({
	-- { src = "https://github.com/jnurmine/Zenburn" },
	{ src = "https://github.com/bjarneo/aether.nvim" },
})

vim.cmd.colorscheme("retrobox")
vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#ebdbb2" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None", fg = "#ebdbb2" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#ebdbb2" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#202020", fg = "#ebdbb2", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#303030", fg = "#ebdbb2" })
-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "#101010", fg = "#ebdbb2", bold = true })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#101010", fg = "#ebdbb2" })
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#404040" })

-- vim.cmd.colorscheme("zenburn")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#d1d1d1" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None", fg = "#d1d1d1" })
-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "#202020", fg = "#cded89", bold = true })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#303030", fg = "#cded89" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#404040" })

require("aether").setup({
	disable_italics = false,
	colors = {
		-- Monotone shades (base00-base07)
		bg = "#101010", -- Default background
		lighter_bg = "#5e5959", -- Lighter background (status bars)
		selection_background = "#0f0f0f", -- Selection background
		muted = "#5e5959", -- Comments, invisibles
		dark_fg = "#e6caab", -- Dark foreground
		fg = "#eadccc", -- Default foreground
		light_fg = "#eadccc", -- Light foreground
		light_bg = "#e6caab", -- Light background

		-- Accent colors (base08-base0F)
		red = "#e25d6c", -- Variables, errors, red
		orange = "#e9838f", -- Integers, constants, orange
		yellow = "#f4bb54", -- Classes, types, yellow
		green = "#cea37f", -- Strings, green
		cyan = "#e8ab3b", -- Support, regex, cyan
		blue = "#e2be8a", -- Functions, keywords, blue
		purple = "#f66151", -- Keywords, storage, magenta
		brown = "#edb95a", -- Deprecated, brown/yellow
	},
})
vim.cmd.colorscheme("aether")
vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#f66151" })
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
vim.api.nvim_set_hl(0, "Include", { fg = "#cded89" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#e6caab", bg = "#202020", bold = true })
