vim.pack.add({
	{ src = "https://github.com/NeogitOrg/neogit" },
})

local neogit = require("neogit")

vim.keymap.set("n", "<leader>gg", neogit.open, { desc = "Open Neogit UI" })
