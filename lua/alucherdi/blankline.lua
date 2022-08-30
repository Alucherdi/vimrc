require("indent_blankline").setup {
    char = "│",
    buftype_exclude = {"terminal"},
    indentLine_enabled = 1,
    filetype_exclude = {
      "help",
      "terminal",
      "alpha",
      "packer",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
      "",
    },
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = true,

}
