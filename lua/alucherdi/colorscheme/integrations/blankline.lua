return function(theme)
    local colors = theme.base_30
    return {
        IndentBlanklineChar = { fg = colors.line },
        IndentBlanklineSpaceChar = { fg = colors.line },
        IndentBlanklineContextChar = { fg = colors.grey },
        IndentBlanklineContextStart = { bg = colors.one_bg2 },
    }
end
