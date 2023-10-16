local set = vim.opt
local cmd = vim.cmd

set.relativenumber = true
set.cursorline     = true
set.number         = true
set.nu             = true

set.errorbells = false
set.hlsearch   = false
set.hidden     = true

set.sts = 4
set.ts  = 4
set.sw  = 4

set.smartindent = true
set.expandtab   = true

set.swapfile = false
set.backup   = false
set.wrap     = false


set.undofile = true
set.undodir  = vim.fn.expand '~/.vim/undodir'

set.termguicolors = true

set.incsearch = true
set.scrolloff = 8
set.showmode  = false

set.updatetime = 50
set.cmdheight  = 2
set.shortmess  = 'A'

set.encoding   = 'utf-8'
set.laststatus = 3


set.splitbelow = true
set.splitright = true

set.completeopt = 'menu,menuone,noselect'

set.signcolumn = 'yes'
set.colorcolumn = '80'
set.ic = true

set.clipboard = 'unnamed'

cmd('autocmd Filetype dart setlocal et ts=2 sw=2 sts=2')
cmd('autocmd Filetype yaml setlocal et ts=2 sw=2 sts=2')
cmd('autocmd Filetype javascript setlocal et ts=2 sw=2 sts=2')
cmd('autocmd Filetype typescript setlocal et ts=2 sw=2 sts=2')
cmd('autocmd Filetype vue setlocal et ts=2 sw=2 sts=2')
cmd('autocmd Filetype html setlocal et ts=2 sw=2 sts=2')
cmd('autocmd Filetype css setlocal et ts=2 sw=2 sts=2')

vim.g.mapleader = ' '
