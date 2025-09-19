function _G.git_branch()
	local handle = io.popen("git -C " .. vim.fn.expand("%:p:h") .. " rev-parse --abbrev-ref HEAD 2>/dev/null")
	if handle == nil then
		return ""
	end
	local result = handle:read("*a") or ""
	handle:close()
	result = result:gsub("%s+", "")
	if result ~= "" then
		return result
	else
		return ""
	end
end

vim.o.statusline = table.concat({
	"%p%%", -- percentage
	" L%l", -- line:col
	"  git: %{v:lua.git_branch()}", -- Git branch
	"  %y", -- filetype
	"  %f", -- file name
	" %m", -- modified flag
	" %r", -- readonly flag
	" %h", -- help flag
	" %w", -- preview flag
})
