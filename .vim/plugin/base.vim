set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

set colorcolumn=80

" Default tabs and spaces:
set syntax=on
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hlsearch

" Show number column with fixed width=3
set number
set numberwidth=4
" Enable mouse
set mouse=a
" Always show tab menu
set showtabline=2
" Smoother redraw
set ttyfast
" Current mode in status line
set showmode
" Set colorscheme
set background=dark

set term=xterm-256color

" a - terse messages (like [+] instead of [Modified]
" t - truncate file names
" I - no intro message when starting vim fileless
" T - truncate long messages to avoid having to hit a key
set shortmess=atTI

set colorcolumn=80
set nocompatible
set modeline
set modelines=1
set nowrap

syntax on
filetype plugin indent on
set backspace=indent,eol,start

set termguicolors
set updatetime=1000
