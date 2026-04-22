function _G.git_branch()
	local dir = vim.fn.expand("%:p:h")
	if dir == "" then
		return ""
	end

	local handle = io.popen("git -C " .. vim.fn.shellescape(dir) .. " rev-parse --abbrev-ref HEAD 2>/dev/null")
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

function _G.git_branch_segment()
	local branch = _G.git_branch()
	if branch == "" then
		return ""
	end

	return "  : " .. branch
end

function _G.mode_label()
	local modes = {
		n = "NORMAL",
		no = "N-PENDING",
		nov = "N-PENDING",
		noV = "N-PENDING",
		["no\22"] = "N-PENDING",
		niI = "NORMAL",
		niR = "NORMAL",
		niV = "NORMAL",
		nt = "NORMAL",
		v = "VISUAL",
		vs = "VISUAL",
		V = "V-LINE",
		Vs = "V-LINE",
		["\22"] = "V-BLOCK",
		["\22s"] = "V-BLOCK",
		s = "SELECT",
		S = "S-LINE",
		["\19"] = "S-BLOCK",
		i = "INSERT",
		ic = "INSERT",
		ix = "INSERT",
		R = "REPLACE",
		Rc = "REPLACE",
		Rx = "REPLACE",
		Rv = "V-REPLACE",
		Rvc = "V-REPLACE",
		Rvx = "V-REPLACE",
		c = "COMMAND",
		cv = "EX",
		ce = "EX",
		r = "PROMPT",
		rm = "MORE",
		["r?"] = "CONFIRM",
		["!"] = "SHELL",
		t = "TERMINAL",
	}

	return modes[vim.fn.mode()] or vim.fn.mode()
end

-- vim.o.statusline = table.concat({
-- 	-- "%p%%", -- percentage
-- 	" %{v:lua.mode_label()} L%l", -- mode and line
-- 	"%{v:lua.git_branch_segment()}", -- Git branch
-- 	-- "  %y", -- filetype
-- 	"  %f", -- file name
-- 	" %m", -- modified flag
-- 	" %r", -- readonly flag
-- 	" %h", -- help flag
-- 	" %w", -- preview flag
-- })

vim.o.statusline = table.concat({
	-- "%p%%", -- percentage
	" %{v:lua.mode_label()} L%l", -- mode and line
	"%{v:lua.git_branch_segment()}", -- Git branch
	-- "  %y", -- filetype
	"  %f", -- file name
	" %m", -- modified flag
	" %r", -- readonly flag
	" %h", -- help flag
	" %w", -- preview flag
})
