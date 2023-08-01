local M = {}

local bg     = "#15181a"
-- identifiers, average symbols
local normal = "#d4d4d4"
local includes = "#e67574"
local namespace = "#98999b"
local variable = "#86a0c6"
local constant = "#88B3D1"

-- telescope/cmp/tree/sl bg
local dark   = "#1f2326"
local lines  = "#282a2c"

-- telescope / nvim tree highlight
local hl     = "#323a40"
-- selection
local hl2    = "#3b3e41"

-- relative numbers
local rn       = "#4e565c"
local comments = "#6c7277"

-- in git diff the hightlights are this color
local diff      = "#656d73" -- treesitter hl
local git_com   = "#424a50" -- nums in telescope 
local func      = "#90b1c9"

local html_icon = "#ce8196"
local js_icon   = "#d1b171"
local img_icon  = "#ecafcc"
local ts_icon   = "#69a59d"
local py_icon   = "#95d1c9"
local rb = "#ff75a0"

-- git add, statusline green
local property = "#7fbbb3" 
local reserved  = "#f07d82"
local types = "#90c2c9"
local string  = "#F7CCA1"
local number  = "#f49e8b"
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

local test = "#ee00ff"

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
  base08 = property, -- imported element
  base09 = number,
  base0A = types,
  base0B = string,
  base0C = special,
  base0D = func,
  base0E = reserved,
  base0F = normal,

  baseT  = test,

  baseINC = includes,
  baseNS = namespace,
  baseVAR = variable,
  baseTYPES = types,
  baseCONST = constant,
}

vim.opt.bg = "dark"

return M
