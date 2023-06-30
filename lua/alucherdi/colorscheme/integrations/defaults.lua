return function(theme)
    local colors = theme.base_30
    local base16 = theme.base_16

    return {
        MatchWord = {
            bg = colors.grey,
            fg = colors.white,
        },

        Pmenu = { bg = colors.one_bg },
        PmenuSbar = { bg = colors.one_bg },
        PmenuSel = { bg = colors.pmenu_bg, fg = colors.black },
        PmenuThumb = { bg = colors.grey },

        MatchParen = { link = "MatchWord" },

        Comment = { fg = colors.grey_fg },

        CursorLineNr = { fg = colors.white },
        LineNr       = { fg = colors.grey },

        -- floating windows
        FloatBorder = { fg = colors.blue },
        NormalFloat = { bg = colors.darker_black },

        NvimInternalError = { fg = colors.red },
        WinSeparator = { fg = colors.line },

        -- packer
        PackerPackageName = { fg = colors.red },
        PackerSuccess = { fg = colors.green },
        PackerStatusSuccess = { fg = base16.base08 },
        PackerStatusCommit = { fg = colors.blue },
        PackeProgress = { fg = colors.blue },
        PackerOutput = { fg = colors.red },
        PackerStatus = { fg = colors.blue },
        PackerHash = { fg = colors.blue },

        Normal = {
            fg = base16.base05,
            bg = base16.base00,
        },

        Bold = {
            bold = true,
        },

        Debug = {
            fg = base16.base08,
        },

        Directory = {
            fg = base16.base0D,
        },

        Error = {
            fg = base16.base00,
            bg = base16.base08,
        },

        ErrorMsg = {
            fg = base16.base08,
            bg = base16.base00,
        },

        Exception = {
            fg = base16.base08,
        },

        FoldColumn = {
            fg = base16.base0C,
            bg = base16.base01,
        },

        Folded = {
            fg = base16.base03,
            bg = base16.base01,
        },

        IncSearch = {
            fg = base16.base01,
            bg = base16.base09,
        },

        Italic = {
            italic = true,
        },

        Macro = {
            fg = base16.base08,
        },

        ModeMsg = {
            fg = base16.base0B,
        },

        MoreMsg = {
            fg = base16.base0B,
        },

        Question = {
            fg = base16.base0D,
        },

        Search = {
            fg = base16.base01,
            bg = base16.base0A,
        },

        Substitute = {
            fg = base16.base01,
            bg = base16.base0A,
            sp = "none",
        },

        SpecialKey = {
            fg = base16.base03,
        },

        TooLong = {
            fg = base16.base08,
        },

        UnderLined = {
            fg = base16.base0B,
        },

        Visual = {
            bg = base16.base02,
        },

        VisualNOS = {
            fg = base16.base08,
        },

        WarningMsg = {
            fg = base16.base08,
        },

        WildMenu = {
            fg = base16.base08,
            bg = base16.base0A,
        },

        Title = {
            fg = base16.base0D,
            sp = "none",
        },

        Conceal = {
            bg = "NONE",
        },

        Cursor = {
            fg = base16.base00,
            bg = base16.base05,
        },

        NonText = {
            fg = base16.base03,
        },

        SignColumn = {
            fg = base16.base03,
            sp = "NONE",
        },

        ColorColumn = {
            bg = base16.base01,
            sp = "none",
        },

        CursorColumn = {
            bg = base16.base01,
            sp = "none",
        },

        CursorLine = {
            bg = "none",
            sp = "none",
        },

        QuickFixLine = {
            bg = base16.base01,
            sp = "none",
        },

        -- spell
        SpellBad = {
            undercurl = true,
            sp = base16.base08,
        },

        SpellLocal = {
            undercurl = true,
            sp = base16.base0C,
        },

        SpellCap = {
            undercurl = true,
            sp = base16.base0D,
        },

        SpellRare = {
            undercurl = true,
            sp = base16.base0E,
        },
    }
end
