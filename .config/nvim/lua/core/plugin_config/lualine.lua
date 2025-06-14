-- Eva Unit-02 Lualine theme
local eva02_theme = {
  normal = {
    a = { fg = '#0D0D0D', bg = '#D32F2F', gui = 'bold' },
    b = { fg = '#FFFFFF', bg = '#2D1414' },
    c = { fg = '#E0E0E0', bg = '#1A0A0A' },
  },
  insert = {
    a = { fg = '#0D0D0D', bg = '#FF5722', gui = 'bold' },
    b = { fg = '#FFFFFF', bg = '#2D1414' },
    c = { fg = '#E0E0E0', bg = '#1A0A0A' },
  },
  visual = {
    a = { fg = '#0D0D0D', bg = '#FF9800', gui = 'bold' },
    b = { fg = '#FFFFFF', bg = '#2D1414' },
    c = { fg = '#E0E0E0', bg = '#1A0A0A' },
  },
  replace = {
    a = { fg = '#0D0D0D', bg = '#B71C1C', gui = 'bold' },
    b = { fg = '#FFFFFF', bg = '#2D1414' },
    c = { fg = '#E0E0E0', bg = '#1A0A0A' },
  },
  command = {
    a = { fg = '#0D0D0D', bg = '#FF6F00', gui = 'bold' },
    b = { fg = '#FFFFFF', bg = '#2D1414' },
    c = { fg = '#E0E0E0', bg = '#1A0A0A' },
  },
  inactive = {
    a = { fg = '#757575', bg = '#2D1414' },
    b = { fg = '#757575', bg = '#1A0A0A' },
    c = { fg = '#757575', bg = '#0F0F0F' },
  },
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = eva02_theme,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      {
        'filename',
        path = 1,
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
}
