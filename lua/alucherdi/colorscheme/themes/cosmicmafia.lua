local M = {}

local bg     = "#121C21"
-- identifiers, average symbols
local normal = "#c4cbcf"

-- telescope/cmp/tree/sl bg
local dark   = "#1E2E36"
local lines  = "#304B59"

-- telescope / nvim tree highlight
local hl     = "#323a40"
-- selection
local hl2    = "#363e44"

-- relative numbers
local rn       = "#4e565c"
local comments = "#545c62"

-- in git diff the hightlights are this color
local diff      = "#656d73"
local git_com   = "#424a50"
local func      = "#76A08C"

local html_icon = "#ce8196"
local js_icon   = "#d1b171"
local img_icon  = "#ecafcc"
local ts_icon   = "#69a59d"
local py_icon   = "#95d1c9"
local rb = "#ff75a0"


-- git add, statusline green
local property = "#7fbbb3"
local reserved  = "#f07d82"
local types = "#5F9993"
local string  = "#F7CCA1"
local number  = "#d4a9d4"
local special = "#FA9A6A"

local ts_def = "#4a5258"

-- that line  --------------------------------------------------------------->
local ll = "#323c41"

local sl_bg = "#3d454b"
local cmp_kword = "#e7dabe"

local nblue = "#78b4ac"
local blue = "#7393b3"


-- ? unused
local fg2    = "#626a70"
local idk2   = "#ddd0b4"

M.base_30 = {
  white         = normal,
  darker_black  = dark,
  black         = bg, --  nvim bg
  black2        = hl,
  one_bg        = hl2,
  one_bg2       = hl2,
  one_bg3       = lines,
  grey          = rn,
  grey_fg       = comments,
  grey_fg2      = fg2,
  light_grey    = diff,
  red           = reserved,
  baby_pink     = html_icon,
  pink          = rb,
  line          = lines, -- for lines like vertsplit
  green         = types,
  vibrant_green = func,
  nord_blue     = nblue,
  blue          = blue,
  yellow        = string,
  sun           = js_icon,
  purple        = img_icon,
  dark_purple   = number,
  teal          = ts_icon,
  orange        = special,
  cyan          = py_icon,
  statusline_bg = dark,
  lightbg       = sl_bg,
  pmenu_bg      = types,
  folder_bg     = blue,
}

M.base_16 = {
  base00 = bg,
  base01 = ll,
  base02 = lines,
  base03 = git_com,
  base04 = ts_def,
  base05 = normal,
  base06 = idk2,
  base07 = cmp_kword,
  base08 = property,
  base09 = number,
  base0A = types,
  base0B = string,
  base0C = special,
  base0D = func,
  base0E = reserved,
  base0F = normal,
}

vim.opt.bg = "dark"

return M
