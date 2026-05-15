vim.pack.add({
	{ src = "https://codeberg.org/mfussenegger/nvim-dap" },
	{ src = "https://codeberg.org/mfussenegger/nvim-dap-python" },
	{ src = "https://github.com/nvim-neotest/nvim-nio" },
	{ src = "https://github.com/rcarriga/nvim-dap-ui" },
})

require("dap-python").setup("~/.venv/jax_env/bin/python")

local dap = require("dap")
local dapui = require("dapui")

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
