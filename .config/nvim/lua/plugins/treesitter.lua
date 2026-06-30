vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

for _, plugin in ipairs(vim.pack.get()) do
	if plugin.spec.name == "nvim-treesitter" then
		local runtime = plugin.path .. "/runtime"
		if vim.fn.isdirectory(runtime) == 1 then
			vim.opt.runtimepath:prepend(runtime)
		end
		break
	end
end

local function ensure_regex_syntax(buf, filetype)
	if not filetype or filetype == "" then
		return
	end

	vim.api.nvim_buf_call(buf, function()
		vim.cmd("syntax enable")
		vim.cmd("setlocal syntax=" .. vim.fn.fnameescape(filetype))
	end)
end

local function is_large_file(buf)
	local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))
	return ok and stats and stats.size > 100 * 1024
end

local function ensure_highlighting(buf)
	if not vim.api.nvim_buf_is_loaded(buf) then
		return
	end

	local buftype = vim.bo[buf].buftype
	if buftype ~= "" and buftype ~= "acwrite" then
		return
	end

	local filetype = vim.bo[buf].filetype
	if filetype == "" then
		return
	end

	ensure_regex_syntax(buf, filetype)

	if is_large_file(buf) then
		return
	end

	pcall(vim.treesitter.start, buf)
	if vim.bo[buf].syntax == "" then
		ensure_regex_syntax(buf, filetype)
	end
end

require("nvim-treesitter.config").setup({
	ensure_installed = {
		"c",
		"cpp",
		"fortran",
		"python",
		"julia",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
	},
	sync_install = false,
	auto_install = true,
	ignore_install = { "javascript" },
	highlight = {
		enable = true,
		disable = function(_, buf)
			return is_large_file(buf)
		end,
		additional_vim_regex_highlighting = false,
	},
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter", "BufWinEnter" }, {
	callback = function(args)
		ensure_highlighting(args.buf)
	end,
})
