vim.o.termguicolors = true
vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "focus"

local c = {
	background1 = "#10191F",
	background2 = "#18262F",
	background3 = "#1A2831",
	background4 = "#21333F",
	selection_active = "#1C4449",
	selection_inactive = "#1C4449",
	search_result_active = "#8E772E",
	search_result_inactive = "#FCEDFC",
	scrollbar = "#33CCCC",
	cursor = "#26B2B2",
	splitter = "#10191F",
	ruler = "#FCEDFC",
	indent_guide = "#FCEDFC",
	char_under_cursor = "#FFFFFF",
	bracket_highlight = "#E8FCFE",
	active_pane_border = "#196666",
	ui_default = "#BFC9DB",
	ui_dim = "#87919D",
	ui_neutral = "#4C4C4C",
	ui_warning = "#F8AD34",
	ui_error_bright = "#FF0000",
	ui_success = "#227722",
	code_default = "#BFC9DB",
	code_string_literal = "#D4BC7D",
	code_multiline_string = "#D4BC7D",
	code_raw_string = "#D4BC7D",
	code_char_literal = "#D4BC7D",
	code_identifier = "#BFC9DB",
	code_note = "#E0AD82",
	code_number = "#D699B5",
	code_error = "#FF0000",
	code_warning = "#E4D97D",
	code_highlight = "#E4D97D",
	code_comment = "#87919D",
	code_multiline_comment = "#87919D",
	code_operation = "#E0AD82",
	code_punctuation = "#BFC9DB",
	code_keyword = "#E67D74",
	code_type = "#82AAA3",
	code_value = "#D699B5",
	code_modifier = "#E67D74",
	code_attribute = "#E67D74",
	code_enum_variant = "#BFC9DB",
	code_macro = "#E0AD82",
	code_function = "#D0C5A9",
	code_builtin_variable = "#D699B5",
	code_builtin_function = "#E0AD82",
	code_builtin_exception = "#E0AD82",
	code_directive = "#E67D74",
	code_directive_modifier = "#E67D74",
	code_header1 = "#E67D74",
	code_header2 = "#E0AD82",
	code_header3 = "#E0AD82",
	code_header4 = "#E0AD82",
	code_header5 = "#E0AD82",
	code_header6 = "#E0AD82",
	code_comment_highlight1 = "#E67D74",
	code_comment_highlight2 = "#FF0000",
	code_comment_highlight3 = "#E0AD82",
	code_comment_highlight4 = "#D699B5",
}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal", { fg = c.code_default, bg = c.background1 })
hl("NormalNC", { fg = c.ui_dim, bg = c.background1 })
hl("NormalFloat", { fg = c.ui_default, bg = c.background3 })
hl("FloatBorder", { fg = c.active_pane_border, bg = c.background3 })
hl("FloatTitle", { fg = c.code_function, bg = c.background3, bold = true })
hl("ColorColumn", { bg = c.background2 })
hl("Cursor", { fg = c.background1, bg = c.cursor })
hl("CursorLine", { bg = c.background2 })
hl("CursorColumn", { bg = c.background2 })
hl("CursorLineNr", { fg = c.cursor, bg = c.background2, bold = true })
hl("LineNr", { fg = c.ui_dim, bg = c.background1 })
hl("SignColumn", { bg = c.background1 })
hl("EndOfBuffer", { fg = c.background1, bg = c.background1 })
hl("WinSeparator", { fg = c.ui_neutral, bg = c.splitter })
hl("StatusLine", { fg = c.ruler, bg = c.background4, bold = true })
hl("StatusLineNC", { fg = c.ui_dim, bg = c.background2 })
hl("VertSplit", { fg = c.ui_neutral, bg = c.splitter })
hl("Folded", { fg = c.ui_dim, bg = c.background2 })
hl("FoldColumn", { fg = c.ui_dim, bg = c.background1 })
hl("NonText", { fg = c.ui_neutral })
hl("Whitespace", { fg = c.ui_neutral })
hl("SpecialKey", { fg = c.scrollbar })

hl("Visual", { bg = c.selection_active })
hl("VisualNOS", { bg = c.selection_inactive })
hl("Search", { fg = c.background1, bg = c.search_result_inactive })
hl("IncSearch", { fg = c.char_under_cursor, bg = c.search_result_active })
hl("CurSearch", { fg = c.char_under_cursor, bg = c.search_result_active })
hl("Substitute", { fg = c.background1, bg = c.code_highlight })
hl("MatchParen", { fg = c.bracket_highlight, bg = c.selection_active, bold = true })

hl("Pmenu", { fg = c.ui_default, bg = c.background3 })
hl("PmenuSel", { fg = c.char_under_cursor, bg = c.selection_active })
hl("PmenuSbar", { bg = c.background2 })
hl("PmenuThumb", { bg = c.scrollbar })
hl("WildMenu", { fg = c.char_under_cursor, bg = c.selection_active })
hl("Question", { fg = c.code_note })
hl("MoreMsg", { fg = c.ui_success })
hl("ModeMsg", { fg = c.ui_default })
hl("WarningMsg", { fg = c.ui_warning })
hl("ErrorMsg", { fg = c.ui_error_bright, bold = true })

hl("DiagnosticError", { fg = c.code_error })
hl("DiagnosticWarn", { fg = c.code_warning })
hl("DiagnosticInfo", { fg = c.code_note })
hl("DiagnosticHint", { fg = c.code_type })
hl("DiagnosticOk", { fg = c.ui_success })
hl("DiagnosticVirtualTextError", { fg = c.code_error, bg = c.background2 })
hl("DiagnosticVirtualTextWarn", { fg = c.code_warning, bg = c.background2 })
hl("DiagnosticVirtualTextInfo", { fg = c.code_note, bg = c.background2 })
hl("DiagnosticVirtualTextHint", { fg = c.code_type, bg = c.background2 })
hl("DiagnosticVirtualTextOk", { fg = c.ui_success, bg = c.background2 })
hl("DiagnosticUnderlineError", { sp = c.code_error, undercurl = true })
hl("DiagnosticUnderlineWarn", { sp = c.code_warning, undercurl = true })
hl("DiagnosticUnderlineInfo", { sp = c.code_note, undercurl = true })
hl("DiagnosticUnderlineHint", { sp = c.code_type, undercurl = true })

hl("Directory", { fg = c.code_type, bold = true })
hl("Comment", { fg = c.code_comment, italic = true })
hl("Constant", { fg = c.code_value })
hl("String", { fg = c.code_string_literal })
hl("Character", { fg = c.code_char_literal })
hl("Number", { fg = c.code_number })
hl("Boolean", { fg = c.code_value })
hl("Float", { fg = c.code_number })
hl("Identifier", { fg = c.code_identifier })
hl("Function", { fg = c.code_function })
hl("Statement", { fg = c.code_keyword })
hl("Conditional", { fg = c.code_keyword })
hl("Repeat", { fg = c.code_keyword })
hl("Label", { fg = c.code_keyword })
hl("Operator", { fg = c.code_operation })
hl("Keyword", { fg = c.code_keyword })
hl("Exception", { fg = c.code_builtin_exception })
hl("PreProc", { fg = c.code_directive })
hl("Include", { fg = c.code_directive })
hl("Define", { fg = c.code_directive })
hl("Macro", { fg = c.code_macro })
hl("PreCondit", { fg = c.code_directive_modifier })
hl("Type", { fg = c.code_type })
hl("StorageClass", { fg = c.code_modifier })
hl("Structure", { fg = c.code_type })
hl("Typedef", { fg = c.code_type })
hl("Special", { fg = c.code_note })
hl("SpecialChar", { fg = c.code_char_literal })
hl("Tag", { fg = c.code_attribute })
hl("Delimiter", { fg = c.code_punctuation })
hl("Debug", { fg = c.code_error })
hl("Underlined", { fg = c.code_highlight, underline = true })
hl("Ignore", { fg = c.ui_neutral })
hl("Error", { fg = c.code_error })
hl("Todo", { fg = c.code_comment_highlight3, bg = c.background2, bold = true })

hl("@variable", { fg = c.code_identifier })
hl("@variable.builtin", { fg = c.code_builtin_variable })
hl("@variable.parameter", { fg = c.code_identifier })
hl("@variable.member", { fg = c.code_identifier })
hl("@constant", { fg = c.code_value })
hl("@constant.builtin", { fg = c.code_builtin_variable })
hl("@constant.macro", { fg = c.code_macro })
hl("@module", { fg = c.code_identifier })
hl("@label", { fg = c.code_keyword })
hl("@string", { fg = c.code_string_literal })
hl("@string.documentation", { fg = c.code_multiline_string })
hl("@string.regexp", { fg = c.code_raw_string })
hl("@string.escape", { fg = c.code_char_literal })
hl("@character", { fg = c.code_char_literal })
hl("@character.special", { fg = c.code_char_literal })
hl("@boolean", { fg = c.code_value })
hl("@number", { fg = c.code_number })
hl("@number.float", { fg = c.code_number })
hl("@type", { fg = c.code_type })
hl("@type.builtin", { fg = c.code_type })
hl("@attribute", { fg = c.code_attribute })
hl("@property", { fg = c.code_identifier })
hl("@function", { fg = c.code_function })
hl("@function.builtin", { fg = c.code_builtin_function })
hl("@function.call", { fg = c.code_function })
hl("@function.macro", { fg = c.code_macro })
hl("@constructor", { fg = c.code_type })
hl("@operator", { fg = c.code_operation })
hl("@keyword", { fg = c.code_keyword })
hl("@keyword.directive", { fg = c.code_directive })
hl("@keyword.directive.define", { fg = c.code_directive_modifier })
hl("@keyword.function", { fg = c.code_keyword })
hl("@keyword.operator", { fg = c.code_operation })
hl("@keyword.return", { fg = c.code_keyword })
hl("@keyword.exception", { fg = c.code_builtin_exception })
hl("@punctuation.delimiter", { fg = c.code_punctuation })
hl("@punctuation.bracket", { fg = c.code_punctuation })
hl("@punctuation.special", { fg = c.code_operation })
hl("@comment", { fg = c.code_comment, italic = true })
hl("@comment.documentation", { fg = c.code_multiline_comment, italic = true })
hl("@comment.error", { fg = c.code_comment_highlight2, bold = true })
hl("@comment.warning", { fg = c.code_comment_highlight3, bold = true })
hl("@comment.todo", { fg = c.code_comment_highlight4, bold = true })
hl("@comment.note", { fg = c.code_comment_highlight1, bold = true })
hl("@markup.heading.1", { fg = c.code_header1, bold = true })
hl("@markup.heading.2", { fg = c.code_header2, bold = true })
hl("@markup.heading.3", { fg = c.code_header3, bold = true })
hl("@markup.heading.4", { fg = c.code_header4, bold = true })
hl("@markup.heading.5", { fg = c.code_header5, bold = true })
hl("@markup.heading.6", { fg = c.code_header6, bold = true })
hl("@markup.link", { fg = c.code_note, underline = true })
hl("@markup.raw", { fg = c.code_raw_string })

hl("@lsp.type.variable", { fg = c.code_identifier })
hl("@lsp.type.parameter", { fg = c.code_identifier })
hl("@lsp.type.property", { fg = c.code_identifier })
hl("@lsp.type.enumMember", { fg = c.code_enum_variant })
hl("@lsp.type.function", { fg = c.code_function })
hl("@lsp.type.method", { fg = c.code_function })
hl("@lsp.type.macro", { fg = c.code_macro })
hl("@lsp.type.type", { fg = c.code_type })
hl("@lsp.type.class", { fg = c.code_type })
hl("@lsp.type.enum", { fg = c.code_type })
hl("@lsp.type.interface", { fg = c.code_type })
hl("@lsp.mod.defaultLibrary", { fg = c.code_builtin_function })

hl("BlinkCmpMenu", { fg = c.ui_default, bg = c.background3 })
hl("BlinkCmpMenuBorder", { fg = c.active_pane_border, bg = c.background3 })
hl("BlinkCmpDoc", { fg = c.ui_default, bg = c.background3 })
hl("BlinkCmpDocBorder", { fg = c.active_pane_border, bg = c.background3 })
hl("BlinkCmpSignatureHelp", { fg = c.ui_default, bg = c.background3 })
hl("BlinkCmpSignatureHelpBorder", { fg = c.active_pane_border, bg = c.background3 })

hl("FzfLuaNormal", { fg = c.ui_default, bg = c.background3 })
hl("FzfLuaBorder", { fg = c.active_pane_border, bg = c.background3 })
hl("FzfLuaCursor", { fg = c.char_under_cursor, bg = c.selection_active })
hl("FzfLuaSearch", { fg = c.background1, bg = c.search_result_active })
hl("FzfLuaTitle", { fg = c.code_function, bg = c.background3, bold = true })
hl("OilDir", { fg = c.code_type, bold = true })
hl("OilFile", { fg = c.code_default })
hl("OilLink", { fg = c.code_note })
hl("OilSocket", { fg = c.code_operation })
hl("OilOrphanLink", { fg = c.code_error })
hl("OilExec", { fg = c.ui_success })

for i = 1, 6 do
	vim.api.nvim_set_hl(0, "@ibl.scope.char." .. i, { fg = scope })
	vim.api.nvim_set_hl(0, "@ibl.indent.char." .. i, { fg = scope })
end
