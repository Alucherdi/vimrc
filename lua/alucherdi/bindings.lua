local rm = require('alucherdi.keymap')

--telescope
rm('<C-p>', ':Telescope find_files find_command=rg,--ignore,--files<CR>')
rm('<C-f>', ':Telescope live_grep<CR>')


-- fugitive
rm('<Leader>gj', ':diffget //3<CR>')
rm('<Leader>gf', ':diffget //2<CR>')
rm('<Leader>gs', ':Git<CR>')
rm('<Leader>cc', ':Git commit<CR>')

-- nvim tree
rm('<C-e>', ':NvimTreeToggle<CR>')

-- yank from cursor
rm('Y', [[y$]])

-- search centered
rm('n', [[nzzzv]])
rm('N', [[Nzzzv]])

-- join
rm('J', [[mzJ`z]])
