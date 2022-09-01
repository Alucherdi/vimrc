return function(theme)
    local base16 = theme.base_16

    return {
        TSAnnotation = {
            fg = base16.base0F,
        },

        TSAttribute = {
            fg = base16.base0A,
        },

        TSTagAttribute = {
            link = "TSProperty",
        },

        TSCharacter = {
            fg = base16.base08,
        },

        TSConstructor = {
            fg = base16.base0C,
        },

        TSConstBuiltin = {
            fg = base16.base09,
        },

        TSConstMacro = {
            fg = base16.base08,
        },

        TSError = {
            fg = base16.base08,
        },

        TSException = {
            fg = base16.base08,
        },

        TSFloat = {
            fg = base16.base09,
        },

        TSKeyword = {
            fg = base16.base0E,
        },

        TSKeywordFunction = {
            fg = base16.base0E,
        },

        TSKeywordReturn = {
            fg = base16.base0E,
        },

        TSFunction = {
            fg = base16.base0D,
        },

        TSFuncBuiltin = {
            fg = base16.base0D,
        },

        TSFuncMacro = {
            fg = base16.base08,
        },

        TSKeywordOperator = {
            fg = base16.base0E,
        },

        TSMethod = {
            fg = base16.base0D,
        },

        TSNamespace = {
            fg = base16.base08,
        },

        TSNone = {
            fg = base16.base05,
        },

        TSParameter = {
            fg = base16.base08,
        },

        TSParameterReference = {
            fg = base16.base05,
        },

        TSPunctBracket = {
            fg = base16.base0F,
        },

        TSPunctDelimiter = {
            fg = base16.base0F,
        },

        TSPunctSpecial = {
            fg = base16.base08,
        },

        TSStringRegex = {
            fg = base16.base0C,
        },

        TSStringEscape = {
            fg = base16.base0C,
        },

        TSSymbol = {
            fg = base16.base0B,
        },

        TSTagDelimiter = {
            fg = base16.base0F,
        },

        TSText = {
            fg = base16.base05,
        },

        TSStrong = {
            bold = true,
        },

        TSEmphasis = {
            fg = base16.base09,
        },

        TSStrike = {
            fg = base16.base00,
            strikethrough = true,
        },

        TSLiteral = {
            fg = base16.base09,
        },

        TSURI = {
            fg = base16.base09,

            underline = true,
        },

        TSTypeBuiltin = {
            fg = base16.base0A,
        },

        TSVariableBuiltin = {
            fg = base16.base09,
        },

        TSVariable = {
            fg = base16.base05,
        },

        TSDefinition = {
            sp = base16.base04,
            underline = true,
        },

        TSDefinitionUsage = {
            sp = base16.base04,
            underline = true,
        },

        TSCurrentScope = {
            bold = true,
        },

        luaTSField = {
            fg = base16.base0D,
        },

        TSFieldKey = {
            fg = base16.base08,
        },

        TSProperty = {
            fg = base16.base08,
        },

        TSInclude = {
            link = "Include",
        },

        TSConditional = {
            link = "Conditional",
        },
    }
end
