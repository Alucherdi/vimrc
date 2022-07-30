call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua', { 'branch': 'nightly' }


    Plug 'tpope/vim-fugitive'

    " God this is fkin awesome
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Highlight and auto-complete shit
    Plug 'neovim/nvim-lspconfig'
    
    " What the actual fuck compe
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    Plug 'lukas-reineke/indent-blankline.nvim'

    " Themes
    Plug 'franbach/miramare'
    Plug 'sainnhe/everforest'
    Plug 'sainnhe/gruvbox-material'
    Plug 'danishprakash/vim-yami'
    Plug 'arcticicestudio/nord-vim'
call plug#end()

lua require("alucherdi")
"
""
"
"'
""

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
