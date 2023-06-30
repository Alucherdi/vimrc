local function rm(kbind, cmd)
    vim.api.nvim_set_keymap(
        'n', kbind, cmd,
        { noremap = true, silent = true }
    )
end

return rm
