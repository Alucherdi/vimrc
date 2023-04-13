local fn = vim.fn
local sep_style = vim.g.statusline_sep_style


local separators = (type(sep_style) == "table" and sep_style)
or require("alucherdi.misc.icons").statusline_separators[sep_style]

local sep_l = separators["left"]
local sep_r = separators["right"]

local function gen_block(icon, txt, sep_l_hlgroup, iconHl_group, txt_hl_group)
    return sep_l_hlgroup .. sep_l .. iconHl_group .. icon .. " " .. txt_hl_group .. " " .. txt .. sep_r
end

local M = {}

M.modes = {
    ["n"] =   { "N", "St_NormalMode" },
    ["niI"] = { "Ni", "St_NormalMode" },
    ["niR"] = { "Nr", "St_NormalMode" },
    ["niV"] = { "Nv", "St_NormalMode" },
    ["no"] =  { "NP", "St_NormalMode" },
    ["i"] =   { "I", "St_InsertMode" },
    ["ic"] =  { "I(c)", "St_InsertMode" },
    ["ix"] =  { "Ic", "St_InsertMode" },
    ["t"] =   { "T", "St_TerminalMode" },
    ["nt"] =  { "NT", "St_NTerminalMode" },
    ["v"] =   { "V", "St_VisualMode" },
    ["V"] =   { "VL", "St_VisualMode" },
    ["Vs"] =  { "VL(CO)", "St_VisualMode" },
    [""] =  { "V-B", "St_VisualMode" },
    ["R"] =   { "R", "St_ReplaceMode" },
    ["Rv"] =  { "V-R", "St_ReplaceMode" },
    ["s"] =   { "S", "St_SelectMode" },
    ["S"] =   { "S-L", "St_SelectMode" },
    [""] =  { "S-B", "St_SelectMode" },
    ["c"] =   { "COMMAND", "St_CommandMode" },
    ["cv"] =  { "COMMAND", "St_CommandMode" },
    ["ce"] =  { "COMMAND", "St_CommandMode" },
    ["r"] =   { "PROMPT", "St_ConfirmMode" },
    ["rm"] =  { "MORE", "St_ConfirmMode" },
    ["r?"] =  { "CONFIRM", "St_ConfirmMode" },
    ["x"] =   { "CONFIRM", "St_ConfirmMode" },
    ["!"] =   { "SHELL", "St_TerminalMode" },
}

M.mode = function()
    local m = vim.api.nvim_get_mode().mode
    local current_mode = " " .. M.modes[m][1]

    return current_mode .. " " .. "%#ST_EmptySpace#"
end

M.fileInfo = function()
    local icon = "  "
    local filename = (fn.expand "%" == "" and "Empty ") or fn.expand "%:t"

    if filename ~= "Empty " then
        local devicons_present, devicons = pcall(require, "nvim-web-devicons")

        if devicons_present then
            local ft_icon = devicons.get_icon(filename)
            icon = (ft_icon ~= nil and " " .. ft_icon) or ""
        end

        filename = " " .. filename .. " "
    end

    return "%#St_file_info#" .. icon .. filename .. "%#St_file_sep# "
end

M.git = function()
    if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
        return ""
    end

    local git_status = vim.b.gitsigns_status_dict

    local added = (git_status.added and git_status.added ~= 0) and ("  " .. git_status.added) or ""
    local changed = (git_status.changed and git_status.changed ~= 0) and ("  " .. git_status.changed) or ""
    local removed = (git_status.removed and git_status.removed ~= 0) and ("  " .. git_status.removed) or ""
    local branch_name = "  " .. git_status.head

    return "%#St_gitIcons#" .. branch_name .. added .. changed .. removed
end

-- LSP STUFF
M.LSP_progress = function()
    if not rawget(vim, "lsp") then
        return ""
    end

    local Lsp = vim.lsp.util.get_progress_messages()[1]

    if vim.o.columns < 120 or not Lsp then
        return ""
    end

    local msg = Lsp.message or ""
    local percentage = Lsp.percentage or 0
    local title = Lsp.title or ""
    local spinners = { "", "󰪞", "󰪟", "󰪠", "󰪢", "󰪣", "󰪤", "󰪥" }
    local ms = vim.loop.hrtime() / 1000000
    local frame = math.floor(ms / 120) % #spinners
    local content = string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)

    if config.lsprogress_len then
        content = string.sub(content, 1, config.lsprogress_len)
    end

    return ("%#St_LspProgress#" .. content) or ""
end

M.LSP_Diagnostics = function()
    if not rawget(vim, "lsp") then
        return ""
    end

    local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
    local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
    local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
    local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

    errors = (errors and errors > 0) and ("%#St_lspError#" .. " " .. errors .. " ") or ""
    warnings = (warnings and warnings > 0) and ("%#St_lspWarning#" .. "  " .. warnings .. " ") or ""
    hints = (hints and hints > 0) and ("%#St_lspHints#" .. "ﯧ " .. hints .. " ") or ""
    info = (info and info > 0) and ("%#St_lspInfo#" .. " " .. info .. " ") or ""

    return errors .. warnings .. hints .. info
end

M.LSP_status = function()
    if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_active_clients()) do
            if client.attached_buffers[vim.api.nvim_get_current_buf()] then
                return (vim.o.columns > 100 and "%#St_LspStatus#" .. "   LSP ~ " .. client.name .. " ") or "   LSP "
            end
        end
    end
end

M.cwd = function()
    local dir_icon = "%#St_cwd_icon#" .. "  "
    local dir_name = "%#St_cwd_text#" .. " " .. fn.fnamemodify(fn.getcwd(), ":t") .. " "
    return (vim.o.columns > 85 and ("%#St_cwd_sep#" .. dir_icon .. dir_name)) or ""
end

M.cursor_position = function()
    local left_sep = "%#St_pos_sep#" .. "%#St_pos_icon#" .. "  "

    local current_line = fn.line "."
    local total_line = fn.line "$"
    local text = math.modf((current_line / total_line) * 100) .. tostring "%%"
    text = string.format("%4s", text)

    text = (current_line == 1 and "Top") or text
    text = (current_line == total_line and "Bot") or text

    return left_sep .. "%#St_pos_text#" .. " " .. text .. " "
end

M.run = function()
    local modules = require "nvchad_ui.statusline.default"

    if config.overriden_modules then
        modules = vim.tbl_deep_extend("force", modules, config.overriden_modules())
    end

    return table.concat {
        modules.mode(),
        modules.fileInfo(),
        modules.git(),

        "%=",
        modules.LSP_progress(),
        "%=",

        modules.LSP_Diagnostics(),
        modules.LSP_status() or "",
        modules.cwd(),
        modules.cursor_position(),
    }
end

return M
