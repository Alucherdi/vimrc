local api = vim.api

api.nvim_create_autocmd("TextYankPost", {
    command = "silent! lua vim.highlight.on_yank()",
    group = api.nvim_create_augroup("YankHighlight", { clear = true })
})
