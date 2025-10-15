vim.cmd("highlight clear")
vim.g.colors_name = "default_vim"

vim.api.nvim_set_hl(0, "Comment", { bg = "None", fg = "#78cca1" })
vim.api.nvim_set_hl(0, "Constant", { bg = "None", fg = "#bd83a4" })
vim.api.nvim_set_hl(0, "Float", { bg = "None", fg = "#bd83a4" })
vim.api.nvim_set_hl(0, "Function", { bg = "None", fg = "#93d2b7", bold = true })
vim.api.nvim_set_hl(0, "Identifier", { bg = "None", fg = "#eaeaea" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#fce094", fg = "#312d24" })
vim.api.nvim_set_hl(0, "Keyword", { bg = "None", fg = "#cca0df" })
vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#eaeaea" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010", fg = "#eaeaea" })
vim.api.nvim_set_hl(0, "PreProc", { bg = "None", fg = "#5ec4b0" })
vim.api.nvim_set_hl(0, "Statement", { bg = "None", fg = "#ebc587" })
vim.api.nvim_set_hl(0, "String", { bg = "None", fg = "#bd83a4" })
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None", fg = "#5a5a5a" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#303030", fg = "#dfdfdf", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#202020", fg = "#5a5a5a" })

-- LSP Diagnostic
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#303030", fg = "#ff4154" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#303030", fg = "#ffd787" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#303030", fg = "#afd7ff" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "Red" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "Orange" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "LightBlue" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "LightGrey" })

-- Python
vim.api.nvim_set_hl(0, "pythonInclude", { bg = "None", fg = "#5fd6fb" })
vim.api.nvim_set_hl(0, "pythonString", { bg = "None", fg = "#bd83a4" })
vim.api.nvim_set_hl(0, "pythonClass", { bg = "None", fg = "#93d2b7", bold = true })

-- oil.nvim
vim.api.nvim_set_hl(0, "Directory", { bg = "None", fg = "#ccca88", bold = true })
