local dap = require("dap")
local dapui = require("dapui")
dapui.setup()

-- "python" is defined by activating the environment before opening neovim
require("dap-python").setup("python")
table.insert(require("dap").configurations.python, {
	type = "python",
	request = "launch",
	name = "Custom launch configuration",
	program = "${file}",
	args = { "export", "PYTHONPATH=." },
})

vim.keymap.set("n", "<F5>", function()
	dapui.open()
	dap.continue()
end)
vim.keymap.set("n", "<F10>", function()
	dap.step_over()
end)
vim.keymap.set("n", "<F11>", function()
	dap.step_into()
end)
vim.keymap.set("n", "<F12>", function()
	dap.step_out()
end)
vim.keymap.set("n", "<leader>b", function()
	dap.toggle_breakpoint()
end)
vim.keymap.set("n", "<leader>B", function()
	dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
vim.keymap.set("n", "<leader>lp", function()
	dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
vim.keymap.set("n", "<leader>dr", function()
	dap.repl.open()
end)
vim.keymap.set("n", "<leader>dt", function()
	dapui.toggle()
end)

require("nvim-dap-virtual-text").setup()
require("telescope").load_extension("dap")
