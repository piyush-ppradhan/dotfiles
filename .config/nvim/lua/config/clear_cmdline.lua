local grp_ = vim.api.nvim_create_augroup("ClearCmdLine", { clear = true })
vim.api.nvim_create_autocmd("CmdlineLeave", {
	group = grp_,
	callback = function()
		vim.fn.timer_start(1000, function()
			vim.cmd("echon ' '")
		end)
	end,
})
