syntax on

set autoindent

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

set scrolloff=8
set noerrorbells

set cmdheight=2
set updatetime=50

set mouse=a
set ruler
set relativenumber
set showmatch
set encoding=utf-8
set laststatus=2
set hidden

autocmd Filetype dart setlocal et ts=2 sw=2 sts=2

set listchars=tab:\|\ 
set list

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
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-dispatch'

" Experimental zone
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'Yggdroot/indentLine'
Plug 'gruvbox-community/gruvbox'

call plug#end()

runtime coc.vim

set termguicolors


" FZF Config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

"Javascript configuration
let g:javascript_plugin_jsdoc = 1

let g:dart_style_guide=2

let g:fzf_preview_window=''

let g:lsc_auto_map = v:true

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:indentLine_char = '▏'

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark

let mapleader=" "

nmap <C-p> :Files<CR>
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nnoremap <Leader>+ :vertical resize +15<CR>
nnoremap <Leader>- :vertical resize -15<CR>
nnoremap <Leader>rp :resize 100<CR>

"COC search and stuff
nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
