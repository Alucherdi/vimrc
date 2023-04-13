return function(theme)
    local colors = theme.base_30


    return {
        StatusLine = {
            bg = colors.statusline_bg,
        },

        St_gitIcons = {
            fg = colors.light_grey,
            bg = colors.statusline_bg,
            bold = true,
        },

        St_LspStatus = {
            fg = colors.nord_blue,
            bg = colors.statusline_bg,
        },

        St_LspProgress = {
            fg = colors.green,
            bg = colors.statusline_bg,
        },

        St_LspStatus_Icon = {
            fg = colors.black,
            bg = colors.nord_blue,
        },

        St_EmptySpace = {
            fg = colors.grey,
            bg = colors.lightbg,
        },

        St_EmptySpace2 = {
            fg = colors.grey,
            bg = colors.statusline_bg,
        },

        St_file_info = {
            bg = colors.lightbg,
            fg = colors.white,
        },

        St_file_sep = {
            bg = colors.statusline_bg,
            fg = colors.lightbg,
        },

        St_cwd_icon = {
            fg = colors.one_bg,
            bg = colors.red,
        },

        St_cwd_text = {
            fg = colors.white,
            bg = colors.lightbg,
        },

        St_cwd_sep = {
            fg = colors.red,
            bg = colors.statusline_bg,
        },

        St_pos_sep = {
            fg = colors.green,
            bg = colors.lightbg,
        },

        St_pos_icon = {
            fg = colors.black,
            bg = colors.green,
        },

        St_pos_text = {
            fg = colors.green,
            bg = colors.lightbg,
        },
    }
end
