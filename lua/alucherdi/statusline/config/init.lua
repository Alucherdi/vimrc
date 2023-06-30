return {
    run = function()
        vim.g.statusline_sep_style = "default"

        local modules = require "alucherdi.statusline.config.modules"

        return table.concat {
            modules.mode(),
            modules.fileInfo(),
            modules.git(),

            "%=",
            modules.LSP_progress(),
            "%=",

            string.upper(vim.bo.fileencoding) == "" and "" or string.upper(vim.bo.fileencoding) .. "  ",
            modules.LSP_Diagnostics(),
            modules.LSP_status() or "",
            modules.cwd(),
            modules.cursor_position()
        }
    end,
}
