vim.cmd("highlight clear")
vim.g.colors_name = "boost"

local background = "#050505"

vim.api.nvim_set_hl(0, "Comment", { bg = "None", fg = "#0f9d58", italic = true })
vim.api.nvim_set_hl(0, "Constant", { bg = "None", fg = "#a7cea8" })
vim.api.nvim_set_hl(0, "Delimiter", { bg = "None", fg = "#d0d0d0" })
vim.api.nvim_set_hl(0, "Float", { bg = "None", fg = "#a7cea8" })
vim.api.nvim_set_hl(0, "Function", { bg = "None", fg = "#ff8000" })
vim.api.nvim_set_hl(0, "Identifier", { bg = "None", fg = "#bdb75f" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#fce094", fg = "#312d24" })
vim.api.nvim_set_hl(0, "Keyword", { bg = "None", fg = "#cca0df" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "None", fg = "#222222" })
vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#cccccc" })
vim.api.nvim_set_hl(0, "Operator", { bg = "None", fg = "#cca0df", bold = true })
vim.api.nvim_set_hl(0, "Special", { bg = "None", fg = "#bdb75f" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "None", fg = "#aaaaaa", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None", fg = "#4f5258" })
vim.api.nvim_set_hl(0, "String", { bg = "None", fg = "#d69d78" })
vim.api.nvim_set_hl(0, "Type", { bg = "None", fg = "#ffd70a", bold = true, italic = true })
vim.api.nvim_set_hl(0, "@variable", { bg = "None", fg = "#cacaca" })
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#222222" })

-- LSP Diagnostic
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#303030", fg = "#ff4154" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#303030", fg = "#ffd787" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#303030", fg = "#afd7ff" })

-- C
vim.api.nvim_set_hl(0, "@keyword.import.c", { bg = "None", fg = "#cca0df" })
vim.api.nvim_set_hl(0, "@keyword.modifier.c", { bg = "None", fg = "#cca0df" })
vim.api.nvim_set_hl(0, "@module.c", { bg = "None", fg = "#bed0a5" })
vim.api.nvim_set_hl(0, "@lsp.typemod.typeParameter.definition.c", { bg = "None", fg = "#cd524c" })

-- C++
vim.api.nvim_set_hl(0, "PreProc", { bg = "None", fg = "#979c9f" })
vim.api.nvim_set_hl(0, "@keyword.import.cpp", { bg = "None", fg = "#cca0df" })
vim.api.nvim_set_hl(0, "@keyword.modifier.cpp", { bg = "None", fg = "#cca0df" })
vim.api.nvim_set_hl(0, "@module.cpp", { bg = "None", fg = "#bed0a5" })
vim.api.nvim_set_hl(0, "@lsp.typemod.typeParameter.definition.cpp", { bg = "None", fg = "#fc0032" })
vim.api.nvim_set_hl(0, "@lsp.typemod.typeParameter.classScope.cpp", { bg = "None", fg = "#fc0032" })
vim.api.nvim_set_hl(0, "@lsp.typemod.namespace.globalScope.cpp", { bg = "None", fg = "#fc0032" })

-- Fortran
vim.api.nvim_set_hl(0, "@keyword.fortran", { bg = "None", fg = "#cca0df", bold = true })
vim.api.nvim_set_hl(0, "@keyword.function.fortran", { bg = "None", fg = "#cca0df", bold = true })
vim.api.nvim_set_hl(0, "@keyword.type.fortran", { bg = "None", fg = "#cca0df", bold = true })

-- Python
vim.api.nvim_set_hl(0, "@attribute.python", { bg = "None", fg = "#ff4154", bold = true })
vim.api.nvim_set_hl(0, "@function.method.python", { bg = "None", fg = "#ff8000", bold = true })
vim.api.nvim_set_hl(0, "@function.method.call.python", { bg = "None", fg = "#ff8000", italic = true })
vim.api.nvim_set_hl(0, "@string.documentation.python", { bg = "None", fg = "#666666", italic = true })
vim.api.nvim_set_hl(0, "@variable.python", { bg = "None", fg = "#cacaca" })

-- ZSH
vim.api.nvim_set_hl(0, "zshKeyword", { bg = "None", fg = "#ffd70a", bold = true })
vim.api.nvim_set_hl(0, "zshCommands", { bg = "None", fg = "#cca0df", bold = true })

-- oil.nvim
vim.api.nvim_set_hl(0, "Directory", { bg = background, fg = "#bdb75f", bold = true })
