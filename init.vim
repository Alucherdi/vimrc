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

" Dont be akward vim, please.
set splitbelow
set splitright

set signcolumn=yes
set colorcolumn=80
set ic
set cursorline
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
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-fugitive'

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'Yggdroot/indentLine'
    Plug 'pangloss/vim-javascript'

    " Themes
    Plug 'chriskempson/base16-vim'
    Plug 'sainnhe/gruvbox-material'
call plug#end()

runtime coc.vim

" Themes
" let base16colorspace=256

set termguicolors
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_disable_italic_comment = 1

colorscheme gruvbox-material

" colorscheme
" set background=dark
" colorscheme base16-horizon-dark
" hi Normal guibg=NONE ctermbg=NONE
" /Themes

let g:dart_style_guide=2

let mapleader=" "

" Movement improved in split
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Ctrl P
"
lua << EOF
require("telescope").setup{
    defaults = {
        prompt_position = "top",
        prompt_prefix = "",
        sorting_strategy = "ascending",
        shorten_path = true,
        color_devicons = true,
        preview_cutoff = 0,
        set_env = { ['COLORTERM'] = 'truecolor' },
    }
}
require('telescope').load_extension('fzy_native')
EOF

nmap <C-p> :Telescope find_files find_command=rg,--ignore,--files<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

"
"Sweet Sweet FuGITive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :Git<CR>
nmap <leader>gc :GCheckout<CR>
nmap <leader>cc :Git commit<CR>

tnoremap <F13> <C-\><C-n>

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

