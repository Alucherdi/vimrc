local M = {}
M.base_30 = {
  white         = "#c4cbcf",
  darker_black  = "#1E2E36",
  black         = "#121C21", --  nvim bg
  black2        = "#323a40",
  one_bg        = "#363e44",
  one_bg2       = "#363e44",
  one_bg3       = "#304B59",
  grey          = "#4e565c",
  grey_fg       = "#545c62",
  grey_fg2      = "#626a70",
  light_grey    = "#656d73",
  red           = "#f07d82",
  baby_pink     = "#ce8196",
  pink          = "#ff75a0",
  line          = "#304B59", -- for lines like vertsplit
  green         = "#5F9993",
  vibrant_green = "#76A08C",
  nord_blue     = "#78b4ac",
  blue          = "#7393b3",
  yellow        = "#F7CCA1",
  sun           = "#d1b171",
  purple        = "#ecafcc",
  dark_purple   = "#d4a9d4",
  teal          = "#69a59d",
  orange        = "#FA9A6A",
  cyan          = "#95d1c9",
  statusline_bg = "#1E2E36",
  lightbg       = "#3d454b",
  pmenu_bg      = "#5F9993",
  folder_bg     = "#7393b3",
}

M.base_16 = {
  base00 = "#121C21",
  base01 = "#323c41",
  base02 = "#304B59",
  base03 = "#424a50",
  base04 = "#4a5258",
  base05 = "#c4cbcf",
  base06 = "#ddd0b4",
  base07 = "#e7dabe",
  base08 = "#7fbbb3",
  base09 = "#d4a9d4",
  base0A = "#5F9993",
  base0B = "#F7CCA1",
  base0C = "#FA9A6A",
  base0D = "#76A08C",
  base0E = "#f07d82",
  base0F = "#d4a9d4",
}

vim.opt.bg = "dark"

return M
