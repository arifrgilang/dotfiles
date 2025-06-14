-- Eva Unit-02 Theme for Neovim
-- Save this as ~/.config/nvim/lua/core/plugin_config/eva02.lua

local M = {}

-- Eva Unit-02 color palette
local colors = {
  -- Core Unit-02 colors
  eva_red = "#D32F2F",        -- Primary red
  eva_orange = "#FF5722",     -- Secondary orange
  eva_dark_red = "#B71C1C",   -- Dark red accent
  
  -- Backgrounds
  bg_primary = "#0D0D0D",     -- Almost black
  bg_secondary = "#1A0A0A",   -- Dark red-black
  bg_tertiary = "#2D1414",    -- Slightly lighter
  bg_sidebar = "#0F0F0F",     -- Sidebar background
  
  -- UI colors
  white = "#FFFFFF",
  light_gray = "#E0E0E0",
  gray = "#BDBDBD",
  dark_gray = "#757575",
  darker_gray = "#424242",
  
  -- Syntax highlighting
  comment = "#757575",
  string = "#FF8A65",         -- Light orange
  number = "#FFB74D",         -- Amber
  keyword = "#F44336",        -- Bright red
  function_name = "#FF9800",  -- Orange
  variable = "#E0E0E0",       -- Light gray
  type = "#FF6F00",           -- Deep orange
  
  -- Git colors
  git_add = "#4CAF50",
  git_change = "#FF9800",
  git_delete = "#F44336",
  
  -- Status colors
  error = "#F44336",
  warning = "#FF9800",
  info = "#2196F3",
  hint = "#4CAF50",
}

function M.setup()
  -- Clear existing highlights
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.o.termguicolors = true
  vim.g.colors_name = "eva02"
  
  local hi = vim.api.nvim_set_hl
  
  -- Editor colors
  hi(0, "Normal", { fg = colors.white, bg = colors.bg_primary })
  hi(0, "NormalFloat", { fg = colors.white, bg = colors.bg_secondary })
  hi(0, "Cursor", { fg = colors.bg_primary, bg = colors.eva_red })
  hi(0, "CursorLine", { bg = colors.bg_secondary })
  hi(0, "CursorLineNr", { fg = colors.eva_red, bold = true })
  hi(0, "LineNr", { fg = colors.dark_gray })
  hi(0, "SignColumn", { bg = colors.bg_primary })
  hi(0, "VertSplit", { fg = colors.darker_gray })
  hi(0, "StatusLine", { fg = colors.white, bg = colors.eva_red })
  hi(0, "StatusLineNC", { fg = colors.gray, bg = colors.darker_gray })
  hi(0, "Pmenu", { fg = colors.white, bg = colors.bg_tertiary })
  hi(0, "PmenuSel", { fg = colors.bg_primary, bg = colors.eva_red })
  hi(0, "PmenuSbar", { bg = colors.darker_gray })
  hi(0, "PmenuThumb", { bg = colors.eva_red })
  hi(0, "TabLine", { fg = colors.gray, bg = colors.bg_secondary })
  hi(0, "TabLineFill", { bg = colors.bg_primary })
  hi(0, "TabLineSel", { fg = colors.white, bg = colors.eva_red })
  hi(0, "Visual", { bg = colors.eva_dark_red })
  hi(0, "Search", { fg = colors.bg_primary, bg = colors.eva_orange })
  hi(0, "IncSearch", { fg = colors.bg_primary, bg = colors.eva_red })
  hi(0, "MatchParen", { fg = colors.eva_orange, bold = true, underline = true })
  
  -- Syntax highlighting
  hi(0, "Comment", { fg = colors.comment, italic = true })
  hi(0, "String", { fg = colors.string })
  hi(0, "Character", { fg = colors.string })
  hi(0, "Number", { fg = colors.number })
  hi(0, "Float", { fg = colors.number })
  hi(0, "Boolean", { fg = colors.eva_red, bold = true })
  hi(0, "Keyword", { fg = colors.keyword, bold = true })
  hi(0, "Conditional", { fg = colors.keyword })
  hi(0, "Repeat", { fg = colors.keyword })
  hi(0, "Label", { fg = colors.eva_orange })
  hi(0, "Operator", { fg = colors.eva_orange })
  hi(0, "Exception", { fg = colors.eva_red, bold = true })
  hi(0, "PreProc", { fg = colors.eva_orange })
  hi(0, "Include", { fg = colors.eva_red })
  hi(0, "Define", { fg = colors.eva_red })
  hi(0, "Macro", { fg = colors.eva_orange })
  hi(0, "Type", { fg = colors.type, bold = true })
  hi(0, "StorageClass", { fg = colors.keyword })
  hi(0, "Structure", { fg = colors.type })
  hi(0, "Typedef", { fg = colors.type })
  hi(0, "Function", { fg = colors.function_name, bold = true })
  hi(0, "Identifier", { fg = colors.variable })
  hi(0, "Constant", { fg = colors.number, bold = true })
  hi(0, "Special", { fg = colors.eva_orange })
  hi(0, "SpecialChar", { fg = colors.eva_red })
  hi(0, "Tag", { fg = colors.eva_red })
  hi(0, "Delimiter", { fg = colors.gray })
  hi(0, "SpecialComment", { fg = colors.eva_orange, italic = true })
  hi(0, "Debug", { fg = colors.eva_red })
  hi(0, "Error", { fg = colors.error, bold = true })
  hi(0, "Warning", { fg = colors.warning })
  hi(0, "Info", { fg = colors.info })
  hi(0, "Hint", { fg = colors.hint })
  
  -- Treesitter highlights
  hi(0, "@comment", { link = "Comment" })
  hi(0, "@string", { link = "String" })
  hi(0, "@number", { link = "Number" })
  hi(0, "@boolean", { link = "Boolean" })
  hi(0, "@keyword", { link = "Keyword" })
  hi(0, "@function", { link = "Function" })
  hi(0, "@variable", { link = "Identifier" })
  hi(0, "@type", { link = "Type" })
  hi(0, "@operator", { link = "Operator" })
  hi(0, "@punctuation.bracket", { fg = colors.gray })
  hi(0, "@punctuation.delimiter", { fg = colors.gray })
  
  -- LSP highlights
  hi(0, "DiagnosticError", { fg = colors.error })
  hi(0, "DiagnosticWarn", { fg = colors.warning })
  hi(0, "DiagnosticInfo", { fg = colors.info })
  hi(0, "DiagnosticHint", { fg = colors.hint })
  hi(0, "DiagnosticUnderlineError", { underline = true, sp = colors.error })
  hi(0, "DiagnosticUnderlineWarn", { underline = true, sp = colors.warning })
  hi(0, "DiagnosticUnderlineInfo", { underline = true, sp = colors.info })
  hi(0, "DiagnosticUnderlineHint", { underline = true, sp = colors.hint })
  
  -- Git signs
  hi(0, "GitSignsAdd", { fg = colors.git_add })
  hi(0, "GitSignsChange", { fg = colors.git_change })
  hi(0, "GitSignsDelete", { fg = colors.git_delete })
  
  -- Telescope
  hi(0, "TelescopeNormal", { fg = colors.white, bg = colors.bg_secondary })
  hi(0, "TelescopeBorder", { fg = colors.eva_red, bg = colors.bg_secondary })
  hi(0, "TelescopePromptNormal", { fg = colors.white, bg = colors.bg_tertiary })
  hi(0, "TelescopePromptBorder", { fg = colors.eva_orange, bg = colors.bg_tertiary })
  hi(0, "TelescopeResultsTitle", { fg = colors.bg_primary, bg = colors.eva_red })
  hi(0, "TelescopePreviewTitle", { fg = colors.bg_primary, bg = colors.eva_orange })
  hi(0, "TelescopePromptTitle", { fg = colors.bg_primary, bg = colors.eva_red })
  hi(0, "TelescopeSelection", { fg = colors.white, bg = colors.eva_dark_red })
  
  -- NvimTree
  hi(0, "NvimTreeNormal", { fg = colors.light_gray, bg = colors.bg_sidebar })
  hi(0, "NvimTreeRootFolder", { fg = colors.eva_red, bold = true })
  hi(0, "NvimTreeFolderName", { fg = colors.eva_orange })
  hi(0, "NvimTreeOpenedFolderName", { fg = colors.eva_red, bold = true })
  hi(0, "NvimTreeEmptyFolderName", { fg = colors.dark_gray })
  hi(0, "NvimTreeSymlink", { fg = colors.eva_orange, italic = true })
  hi(0, "NvimTreeExecFile", { fg = colors.eva_red, bold = true })
  hi(0, "NvimTreeSpecialFile", { fg = colors.eva_orange, underline = true })
  hi(0, "NvimTreeImageFile", { fg = colors.eva_orange })
  hi(0, "NvimTreeMarkdownFile", { fg = colors.light_gray })
  hi(0, "NvimTreeIndentMarker", { fg = colors.darker_gray })
  hi(0, "NvimTreeGitDirty", { fg = colors.git_change })
  hi(0, "NvimTreeGitNew", { fg = colors.git_add })
  hi(0, "NvimTreeGitDeleted", { fg = colors.git_delete })
  
  -- Lualine will automatically pick up colors from StatusLine highlights
end

return M
