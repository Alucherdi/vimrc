local rm = require('alucherdi.keymap')

--rm('<C-L><C-L>',  ':set invrelativenumber<CR>')

rm('<C-e>', ':NvimTreeOpen<CR>')
rm('<C-h>', '<C-w>h')

rm('<C-h>', '<C-w>h')
rm('<C-j>', '<C-w>j')
rm('<C-k>', '<C-w>k')
rm('<C-l>', '<C-w>l')

rm('Y', [[y$]])
rm('n', [[nzzzv]])
rm('N', [[Nzzzv]])
rm('J', [[mzJ`z]])

vim.api.nvim_set_keymap(
    't', '<esc>', [[<C-\><C-n>]],
    { noremap = true, silent = true }
)
