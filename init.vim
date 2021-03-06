syntax on

set relativenumber
set nohlsearch
set hidden
set noerrorbells

set ts=4
set sts=4
set sw=4

set expandtab
set smartindent

set nu
" set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode

set cmdheight=2
set updatetime=50
set shortmess+=c

set encoding=utf-8
set laststatus=2

" Dont be akward vim, please.
set splitbelow
set splitright

set cursorline

set signcolumn=yes
set colorcolumn=80
set ic
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Change to 2 spaces for dart
autocmd Filetype dart setlocal et ts=2 sw=2 sts=2
autocmd Filetype yaml setlocal et ts=2 sw=2 sts=2

set path+=**

let g:clipboard = {
      \   'name': 'myClipboard',
      \   'copy': {
      \      '+': 'xclip -selection clipboard',
      \      '*': 'xclip -selection clipboard',
      \   },
      \   'paste': {
      \      '+': 'xclip -selection clipboard -o',
      \      '*': 'xclip -selection clipboard -o',
      \   },
      \   'cache_enabled': 1,
      \ }

call plug#begin('~/.vim/plugged')
    " Idk how the fuck I was not using you
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'dart-lang/dart-vim-plugin'
    " Plug 'mbbill/undotree'
    Plug 'tpope/vim-fugitive'

    " God this is fkin awesome
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " autoshitplite
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript'

    " Themes
    Plug 'sainnhe/gruvbox-material'

    " :T are you fucking kidding me
    " Plug 'wakatime/vim-wakatime'

    " Indent guide lines
    Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
call plug#end()

let g:airline_powerline_fonts = 1

runtime coc.vim

" Themes
set termguicolors
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_disable_italic_comment = 1

colorscheme gruvbox-material

let g:dart_style_guide = 2

let g:indent_blankline_char = '│'

let mapleader = " "

" Movement improved in split
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

lua require("alucherdi")

nmap <C-p> :Telescope find_files find_command=rg,--ignore,--files<CR>
nmap <C-f> :Telescope live_grep<CR>

"Sweet Sweet FuGITive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :Git<CR>
nmap <leader>cc :Git commit<CR>

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup TWS
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END
