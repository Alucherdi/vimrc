local M = {}
--[[
      \ 'bg0':        ['#1c1e26',   '235',  'Black'],
      \ 'bg1':        ['#16161c',   '236',  'DarkGrey'],
      \ 'bg2':        ['#16161c',   '237',  'DarkGrey'],
      \ 'bg3':        ['#16161c',   '238',  'DarkGrey'],
      \ 'bg4':        ['#16161c',   '239',  'Grey'],
      \ 'bg_red':     ['#392f32',   '52',   'DarkRed'],
      \ 'bg_green':   ['#333b2f',   '22',   'DarkGreen'],
      \ 'bg_blue':    ['#203a41',   '17',   'DarkBlue'],
      \ 'fg':         ['#fdf0ed',   '223',  'White'],
      \ 'red':        ['#e95678',   '167',  'Red'],
      \ 'orange':     ['#fab28e',   '208',  'Red'],
      \ 'yellow':     ['#f7cca1',   '214',  'Yellow'],
      \ 'green':      ['#fac29a',   '108',  'Green'],
      \ 'cyan':       ['#87c095',   '108',  'Cyan'],
      \ 'blue':       ['#89beba',   '109',  'Blue'],
      \ 'purple':     ['#25b2bc',   '175',  'Magenta'],
      \ 'grey':       ['#3f6173',   '245',  'LightGrey'],
      \ 'light_grey': ['#6c6f93',   '245',  'LightGrey'],
      \ 'grey2':      ['#6c6f93',   '246',  'Grey2'],
      \ 'gold':       ['#b877db',   '214',  'Yellow'],
      \ 'none':       ['NONE',      'NONE', 'NONE'],
      \ 'test':       ['#ff1fda',   '999',  'Test'],
      \}
]]--

M.base_30 = {
  white         = "#D3C6AA",
  darker_black  = "#272f35",
  black         = "#2b3339", --  nvim bg
  black2        = "#323a40",
  one_bg        = "#363e44",
  one_bg2       = "#363e44",
  one_bg3       = "#3a4248",
  grey          = "#4e565c",
  grey_fg       = "#545c62",
  grey_fg2      = "#626a70",
  light_grey    = "#656d73",
  red           = "#e67e80",
  baby_pink     = "#ce8196",
  pink          = "#ff75a0",
  line          = "#3a4248", -- for lines like vertsplit
  green         = "#83c092",
  vibrant_green = "#a7c080",
  nord_blue     = "#78b4ac",
  blue          = "#7393b3",
  yellow        = "#dbbc7f",
  sun           = "#d1b171",
  purple        = "#ecafcc",
  dark_purple   = "#d699b6",
  teal          = "#69a59d",
  orange        = "#e69875",
  cyan          = "#95d1c9",
  statusline_bg = "#2e363c",
  lightbg       = "#3d454b",
  pmenu_bg      = "#83c092",
  folder_bg     = "#7393b3",
}

M.base_16 = {
  base00 = "#2b3339",
  base01 = "#323c41",
  base02 = "#3a4248",
  base03 = "#424a50",
  base04 = "#4a5258",
  base05 = "#d3c6aa",
  base06 = "#ddd0b4",
  base07 = "#e7dabe",
  base08 = "#7fbbb3",
  base09 = "#d699b6",
  base0A = "#83c092",
  base0B = "#dbbc7f",
  base0C = "#e69875",
  base0D = "#a7c080",
  base0E = "#e67e80",
  base0F = "#d699b6",
}

vim.opt.bg = "dark"

return M
