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
    local theme = require("alucherdi.colorscheme.themes.selector")
        .select("everforest")

    local loaded = require(
        "alucherdi.colorscheme.integrations." .. integration)(theme)

    for hl, col in pairs(loaded) do
        vim.api.nvim_set_hl(0, hl, col)
    end
end
