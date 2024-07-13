require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "pyink" },
		c = { "clang-format" },
		cpp = { "clang-format" },
	},
	format_on_save = function(bufnr)
		-- Disable autoformat on certain filetypes
		local ignore_filetypes = { "sql", "java" }
		if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
			return
		end
		-- Disable with a global or buffer-local variable
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end
		-- Disable autoformat for files in a certain path
		local bufname = vim.api.nvim_buf_get_name(bufnr)
		if bufname:match("/node_modules/") then
			return
		end
		-- ...additional logic...
		return { timeout_ms = 500, lsp_fallback = true }
	end,
	-- There is a similar affordance for format_after_save, which uses BufWritePost.
	-- This is good for formatters that are too slow to run synchronously.
	format_after_save = function(bufnr)
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end
		-- ...additional logic...
		return { lsp_fallback = true }
	end,

	formatters = {
		pyink = {
			command = "~/.venv/formatter/bin/pyink",
			args = {
				"--stdin-filename",
				"$FILENAME",
				"--quiet",
				"-",
			},
		},
	},
})

-- Define keybinding for formatting
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end)
