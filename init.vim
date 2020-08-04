syntax on

set autoindent
set tabstop=2 softtabstop=2
set shiftwidth=2
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

set scrolloff=8
set noerrorbells

set cmdheight=2
set updatetime=50

set mouse=a
set ruler
set relativenumber
set showmatch
set encoding=utf-8
set sw=2
set laststatus=2
set hidden

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

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'franbach/miramare'
Plug 'preservim/nerdtree'

Plug 'dart-lang/dart-vim-plugin'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'

Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-dispatch'

" Experimental zone
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}

call plug#end()

set termguicolors


" FZF Config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

"Javascript configuration
let g:javascript_plugin_jsdoc = 1


let g:miramare_enable_italic=1
let g:miramare_disable_italic_comment=1
let g:dart_style_guide=2

let g:fzf_preview_window=''

let g:lsc_auto_map = v:true

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
colorscheme miramare

let mapleader=" "

nmap <C-p> :Files<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

"COC search and stuff
nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
