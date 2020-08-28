syntax on

" set guicursor=
set relativenumber
"set nohlsearch
set hidden
set noerrorbells

set ts=4
set sts=4
set sw=4

set expandtab
set smartindent

set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
"set noshowmode

set cmdheight=2
set updatetime=50
set shortmess+=c

" Sorry :(
set mouse=a

set encoding=utf-8
set laststatus=2

" Dont be akward vim, please.
set splitbelow
set splitright

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Change to 2 spaces for dart
autocmd Filetype dart setlocal et ts=2 sw=2 sts=2

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

    Plug 'dart-lang/dart-vim-plugin'

    Plug 'mbbill/undotree'
    Plug 'tpope/vim-fugitive'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'tpope/vim-dispatch'

    " Experimental zone
    Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
    Plug 'Yggdroot/indentLine'

    " Themes
    Plug 'gruvbox-community/gruvbox'
    Plug 'franbach/miramare'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'rakr/vim-two-firewatch'
call plug#end()

runtime coc.vim

set termguicolors

" FZF Config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let $FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'

let g:dart_style_guide=2
let g:fzf_preview_window=''

let g:lsc_auto_map = v:true

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3

let g:indentLine_char = '▏'

"let g:gruvbox_contrast_dark = 'hard'
"if exists('+termguicolors')
"    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"endif
"let g:gruvbox_invert_selection='0'

colorscheme miramare
"set background=dark

let mapleader=" "

" Movement improved in split
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Ctrl P
nmap <C-p> :Files<CR>

" Sorry :( x 2
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nnoremap <Leader>+ :vertical resize +15<CR>
nnoremap <Leader>- :vertical resize -15<CR>
nnoremap <Leader>vr :vertical resize 100<CR>
nnoremap <Leader>hr :resize 100<CR>

"Sweet Sweet FuGITive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gc :GCheckout<CR>
nmap <leader>cc :Gcommit<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

autocmd BufWritePre * :call TrimWhitespace()
