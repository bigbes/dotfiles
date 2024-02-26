set nocompatible              " be iMproved, required
filetype off                  " required
set mouse=                    " disable mouse

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'lifepillar/pgsql.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dadbod'
Plugin 'krcs/vim-routeros-syntax'
Plugin 'cdelledonne/vim-cmake'
Plugin 'morhetz/gruvbox'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'bfrg/vim-cpp-modern'
call vundle#end()            " required

colorscheme gruvbox

filetype plugin indent on    " required

let g:python3_host_prog = '/usr/local/bin/python3.9'
let g:sql_type_default = 'sqlite'
