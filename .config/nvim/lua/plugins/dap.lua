return {
	{
		"mfussenegger/nvim-dap",
		lazy = false,
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
			"williamboman/mason.nvim",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()

			dap.adapters.python = {
				type = "executable",
				command = (os.getenv("VIRTUAL_ENV") or "/usr") .. "/bin/python",
				args = { "-m", "debugpy.adapter" },
			}

			dap.adapters.lldb = {
				type = "executable",
				command = "/usr/bin/lldb-dap-18",
				name = "lldb",
			}

			-- sudo luarocks install luaposix
			if not vim.fn.has("macunix") then
				require("posix").setenv("PYTHONPATH", vim.fn.getcwd())
			else
				require("os").execute("export PYTHONPATH=" .. vim.fn.getcwd())
			end

			dap.configurations.c = {
				{
					name = "Launch",
					type = "lldb",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
					args = {},
					runInTerminal = false,
				},
			}

			dap.configurations.cpp = dap.configurations.c

			-- dap.configurations.cpp = {
			-- 	{
			-- 		name = "Launch C++",
			-- 		type = "lldb",
			-- 		request = "launch",
			-- 		program = function()
			-- 			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			-- 		end,
			-- 		cwd = "${workspaceFolder}",
			-- 		stopOnEntry = false,
			-- 		args = {},
			-- 		runInTerminal = false,
			-- 	},
			-- }

			dap.configurations.python = {
				{
					type = "python",
					request = "launch",
					name = "Debug python file",
					program = "${file}",
					cwd = function()
						vim.fn.getcwd()
					end,
					pythonPath = function()
						local env = os.getenv("VIRTUAL_ENV") .. "/bin/python"
						if vim.fn.executable(env) == 1 then
							return env
						else
							return "/usr/bin/python3"
						end
					end,
				},
			}

			vim.keymap.set("n", "<F5>", function()
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

			-- require("nvim-dap-virtual-text").setup()
			require("telescope").load_extension("dap")
		end,
	},
}
