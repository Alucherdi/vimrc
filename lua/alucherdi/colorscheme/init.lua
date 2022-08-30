local integrations = {
    "defaults",
    "syntax",
    "nvimtree",
    "blankline",
    "devicons",
    "bufferline",
    "git",
    "treesitter",
    "cmp",
    "telescope",
    "statusline",
}

for _,integration in ipairs(integrations) do
    local loaded = require("alucherdi.colorscheme.integrations." .. integration)
    for hl, col in pairs(loaded) do
        vim.api.nvim_set_hl(0, hl, col)
    end
end
