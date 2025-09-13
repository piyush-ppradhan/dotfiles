vim.cmd("highlight clear")
vim.g.colors_name = "boost"

local background = "#101010"

vim.api.nvim_set_hl(0, "Comment", { bg = background, fg = "#679c5e" })
vim.api.nvim_set_hl(0, "Constant", { bg = background, fg = "#a7cea8" })
vim.api.nvim_set_hl(0, "Float", { bg = background, fg = "#a7cea8" })
vim.api.nvim_set_hl(0, "Function", { bg = background, fg = "#ff8000" })
vim.api.nvim_set_hl(0, "Identifier", { bg = background, fg = "#bdb75f" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#fce094", fg = "#312d24" })
vim.api.nvim_set_hl(0, "Keyword", { bg = background, fg = "#cca0df" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "None", fg = "#222222" })
vim.api.nvim_set_hl(0, "Normal", { bg = background, fg = "#cccccc" })
vim.api.nvim_set_hl(0, "Operator", { bg = background, fg = "#cca0df", bold = true })
vim.api.nvim_set_hl(0, "Special", { bg = background, fg = "#bdb75f" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "None", fg = "#aaaaaa", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None", fg = "#4f5258" })
vim.api.nvim_set_hl(0, "String", { bg = background, fg = "#d69d78" })
vim.api.nvim_set_hl(0, "Type", { bg = background, fg = "#ffd70a" })
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#222222" })

-- C
vim.api.nvim_set_hl(0, "@keyword.import.c", { bg = background, fg = "#cca0df" })
vim.api.nvim_set_hl(0, "@keyword.modifier.c", { bg = background, fg = "#cca0df" })
vim.api.nvim_set_hl(0, "@module.c", { bg = background, fg = "#bed0a5" })
vim.api.nvim_set_hl(0, "@lsp.typemod.typeParameter.definition.c", { bg = background, fg = "#cd524c" })

-- C++
vim.api.nvim_set_hl(0, "PreProc", { bg = background, fg = "#979c9f" })
vim.api.nvim_set_hl(0, "@keyword.import.cpp", { bg = background, fg = "#cca0df" })
vim.api.nvim_set_hl(0, "@keyword.modifier.cpp", { bg = background, fg = "#cca0df" })
vim.api.nvim_set_hl(0, "@module.cpp", { bg = background, fg = "#bed0a5" })
vim.api.nvim_set_hl(0, "@lsp.typemod.typeParameter.definition.cpp", { bg = background, fg = "#e74f40" })
vim.api.nvim_set_hl(0, "@lsp.typemod.typeParameter.classScope.cpp", { bg = background, fg = "#e74f40" })

-- Python
vim.api.nvim_set_hl(0, "@variable.python", { bg = background, fg = "#bdb75f" })

-- ZSH
vim.api.nvim_set_hl(0, "zshKeyword", { bg = background, fg = "#ffd70a", bold = true })
vim.api.nvim_set_hl(0, "zshCommands", { bg = background, fg = "#cca0df", bold = true })

-- oil.nvim
vim.api.nvim_set_hl(0, "Directory", { bg = background, fg = "#bdb75f", bold = true })
