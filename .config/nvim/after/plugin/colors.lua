require("tokyonight").setup({
	style = "night",
	transparent = true,
	on_colors = function(colors)
		colors.border = "#b5b4b3"
	end,
})

vim.cmd.colorscheme("tokyonight")
