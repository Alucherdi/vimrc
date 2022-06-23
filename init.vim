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
set nowrap
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

set cursorline

" Dont be akward vim, please.
set splitbelow
set splitright

" LSP shit
set completeopt=menuone,noselect

set signcolumn=yes
set colorcolumn=80
set ic
highlight ColorColumn ctermbg=0 guibg=lightgrey
" Change to 2 spaces for dart
autocmd Filetype dart setlocal et ts=2 sw=2 sts=2
autocmd Filetype yaml setlocal et ts=2 sw=2 sts=2
" autocmd Filetype java setlocal et ts=2 sw=2 sts=2

set guifont=Jetbrains\ Mono\ :h16

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
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'dart-lang/dart-vim-plugin'
    Plug 'tpope/vim-fugitive'

    " God this is fkin awesome
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'nvim-telescope/telescope-project.nvim'
    Plug 'tpope/vim-vinegar'

    " So, lets try lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'

    " autoshitplite
    Plug 'nvim-lua/lsp_extensions.nvim'
    Plug 'pangloss/vim-javascript'

    Plug 'lukas-reineke/indent-blankline.nvim'

    " Themes
    Plug 'franbach/miramare'
    Plug 'sainnhe/everforest'
    Plug 'sainnhe/gruvbox-material'
    Plug 'danishprakash/vim-yami'
    Plug 'arcticicestudio/nord-vim'
call plug#end()
" Lets do some terminal-emulator config shit
tnoremap <Esc> <C-\><C-n>

" Some usefull shit that make totally sense
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

let g:airline_powerline_fonts = 1
" Themes
if has('termguicolors')
  set termguicolors
endif

let g:everforest_background = 'hard'
set background=dark
colorscheme everforest

let g:dart_style_guide = 2

let mapleader = " "

" Compe utilities
inoremap <silent><expr> <CR> compe#confirm('<CR>')

lua require("alucherdi")

let g:lsp_diagnostics_echo_cursor = 1

nmap <C-p> :Telescope find_files find_command=rg,--ignore,--files<CR>
nmap <C-f> :Telescope live_grep<CR>
nmap <leader>r :lua require'telescope'.extensions.project.project{}<CR>
nmap <C-e> :Vex<CR>

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 18

" Sweet Sweet FuGITive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :Git<CR>
nmap <leader>cc :Git commit<CR>

" Movement improved in split
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup TWS
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END
