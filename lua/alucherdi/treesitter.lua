require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'c', 'lua', 'rust',
        'cpp', 'vue', 'javascript',
        'typescript', 'prisma',
        'make', 'cmake', 'css',
        'dart', 'java'
    },

    sync_install = false,
    auto_install = true,
    ignore_install = {},

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false
    }
}
