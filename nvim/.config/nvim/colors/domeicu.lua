-- clear existing highlights and set colorscheme name
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "domeicu"

local palette = {
  bg_deep      = "#070707", -- Activity bar / absolute darkest
  bg_base      = "#0E0E0D", -- Editor / sidebar / terminal
  fg_primary   = "#CCC8C2", -- Primary text / variables
  fg_muted     = "#6B6B68", -- Comments / secondary text
  accent       = "#F1FFD9", -- Keywords / Strings / Functions
  accent_dim   = "#C0CFA7", -- Numbers / Constants / Structs / Types
  selection    = "#4B4B48", -- Visual selection
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- =========================================
-- UI Elements
-- =========================================
hi("Normal",       { fg = palette.fg_primary, bg = palette.bg_base })
hi("NormalFloat",  { fg = palette.fg_primary, bg = palette.bg_deep })
hi("FloatBorder",  { fg = palette.fg_muted,   bg = palette.bg_deep })
hi("ColorColumn",  { bg = palette.bg_deep })
hi("Cursor",       { fg = palette.bg_base,    bg = palette.accent })
hi("CursorLine",   { bg = palette.bg_deep })
hi("CursorLineNr", { fg = palette.accent,     bg = palette.bg_deep, bold = true })
hi("LineNr",       { fg = palette.fg_muted,   bg = palette.bg_base })
hi("SignColumn",   { bg = palette.bg_base })
hi("Visual",       { bg = palette.selection })
hi("Search",       { fg = palette.bg_base,    bg = palette.accent })
hi("IncSearch",    { fg = palette.bg_base,    bg = palette.accent_dim })
hi("VertSplit",    { fg = palette.bg_deep,    bg = palette.bg_base })
hi("WinSeparator", { fg = palette.bg_deep,    bg = palette.bg_base })
hi("StatusLine",   { fg = palette.fg_primary, bg = palette.bg_deep })
hi("StatusLineNC", { fg = palette.fg_muted,   bg = palette.bg_deep })
hi("Pmenu",        { fg = palette.fg_primary, bg = palette.bg_deep })
hi("PmenuSel",     { fg = palette.bg_base,    bg = palette.accent })
hi("MatchParen",   { fg = palette.accent,     bg = palette.selection, bold = true })
hi("Directory",    { fg = palette.accent })

-- =========================================
-- Syntax Highlighting
-- =========================================
hi("Comment",      { fg = palette.fg_muted,   italic = true })
hi("String",       { fg = palette.accent })
hi("Number",       { fg = palette.accent_dim })
hi("Float",        { fg = palette.accent_dim })
hi("Boolean",      { fg = palette.accent_dim })
hi("Constant",     { fg = palette.accent_dim })

hi("Identifier",   { fg = palette.fg_primary })
hi("Function",     { fg = palette.accent })
hi("Statement",    { fg = palette.accent })
hi("Conditional",  { fg = palette.accent })
hi("Repeat",       { fg = palette.accent })
hi("Operator",     { fg = palette.fg_primary })
hi("Keyword",      { fg = palette.accent })
hi("Exception",    { fg = palette.accent })

hi("PreProc",      { fg = palette.accent })
hi("Type",         { fg = palette.accent_dim })
hi("Structure",    { fg = palette.accent_dim })
hi("Typedef",      { fg = palette.accent_dim })

hi("Special",      { fg = palette.accent })
hi("Underlined",   { underline = true })
hi("Error",        { fg = palette.bg_base, bg = "#FF5370" })
hi("Todo",         { fg = palette.accent,  bg = palette.bg_deep, bold = true })

-- =========================================
-- Treesitter (Neovim 0.8+)
-- =========================================
hi("@variable",             { fg = palette.fg_primary })
hi("@variable.builtin",     { fg = palette.accent_dim, italic = true })
hi("@function",             { fg = palette.accent })
hi("@function.builtin",     { fg = palette.accent,     italic = true })
hi("@keyword",              { fg = palette.accent })
hi("@operator",             { fg = palette.fg_primary })
hi("@type",                 { fg = palette.accent_dim })
hi("@type.builtin",         { fg = palette.accent_dim })
hi("@property",             { fg = palette.accent_dim })
hi("@parameter",            { fg = palette.accent_dim })
hi("@punctuation.bracket",  { fg = palette.fg_primary })
hi("@punctuation.delimiter",{ fg = palette.fg_primary })
hi("@string",               { fg = palette.accent })
hi("@number",               { fg = palette.accent_dim })
hi("@boolean",              { fg = palette.accent_dim })
hi("@constant",             { fg = palette.accent_dim })
hi("@tag",                  { fg = palette.accent })
hi("@tag.attribute",        { fg = palette.accent_dim })

-- =========================================
-- Plugins
-- =========================================
hi("TelescopeNormal",       { fg = palette.fg_primary })
hi("TelescopeBorder",       { fg = palette.fg_muted })
hi("TelescopePromptNormal", { fg = palette.fg_primary })
hi("TelescopePromptBorder", { fg = palette.fg_muted })
hi("TelescopeSelection",    { bg = palette.selection })

hi("NvimTreeNormal",        { fg = palette.fg_primary, bg = palette.bg_base })
hi("NvimTreeEndOfBuffer",   { fg = palette.bg_base,    bg = palette.bg_base })
hi("NvimTreeVertSplit",     { fg = palette.bg_deep,    bg = palette.bg_base })
hi("NvimTreeFolderName",    { fg = palette.accent })
hi("NvimTreeOpenedFile",    { fg = palette.accent,     bold = true })
