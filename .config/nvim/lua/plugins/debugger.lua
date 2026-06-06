vim.pack.add({
	{ src = "https://codeberg.org/mfussenegger/nvim-dap" },
	{ src = "https://github.com/nvim-neotest/nvim-nio" },
	{ src = "https://github.com/rcarriga/nvim-dap-ui" },
})

local dap = require("dap")
local dapui = require("dapui")

if os.getenv("VIRTUAL_ENV") == "" or os.getenv("VIRTUAL_ENV") == nil then
	dap.adapters.python = {
		type = 'executable',
		command = "/usr/bin/python",
		args = { '-m', 'debugpy.adapter' },
	}
else
	dap.adapters.python = {
		type = 'executable',
		command = os.getenv("VIRTUAL_ENV") .. "/bin/python",
		args = { '-m', 'debugpy.adapter' },
	}
end


dap.configurations.python = {
	{
		type = 'python', -- the type here established the link to the adapter definition: `dap.adapters.python`
		request = 'launch',
		name = "Launch file",
		cwd = vim.fn.getcwd(),

		program = "${file}", -- This configuration will launch the current file if used.
		pythonPath = function()
			if os.getenv("VIRTUAL_ENV") == "" or os.getenv("VIRTUAL_ENV") == nil then
				return "/usr/bin/python"
			else
				if vim.fn.executable(os.getenv("VIRTUAL_ENV") .. "/bin/python") == 1 then
					return os.getenv("VIRTUAL_ENV") .. "/bin/python"
				else
					return "/usr/bin/python"
				end
			end
		end,
	},
}

dapui.setup()

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debug: continue" })
vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Debug: step over" })
vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Debug: step into" })
vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Debug: step out" })
vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Debug: open REPL" })
vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Debug: terminate" })
vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Debug: toggle UI" })
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debug: toggle breakpoint" })
vim.keymap.set("n", "<leader>B", function()
	dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "Debug: conditional breakpoint" })
