local rm = require('alucherdi.keymap')

rm('<C-p>', ':Telescope find_files find_command=rg,--ignore,--files<CR>')
rm('<C-f>', ':Telescope live_grep<CR>')

rm('<Leader>gj', ':diffget //3<CR>')
rm('<Leader>gf', ':diffget //2<CR>')
rm('<Leader>gs', ':Git<CR>')
rm('<Leader>cc', ':Git commit<CR>')
