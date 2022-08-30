local g = vim.g

g.everforest_background = 'hard'

vim.cmd('colorscheme everforest')
--vim.api.nvim_set_hl(0, "NormalFloat",     { bg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "TelescopeNormal", {
    --fg="#22292e",
    bg="#22292e"
})
vim.api.nvim_set_hl(0, "TelescopeBorder", {
    fg="#22292e",
    bg="#22292e"
})
