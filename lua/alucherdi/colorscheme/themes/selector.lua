local M = {}

function M.select(name)
    return require("alucherdi.colorscheme.themes." .. name)
end

return M
