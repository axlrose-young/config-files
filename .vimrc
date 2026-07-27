call plug#begin('~/.vim/plugged')

Plug 'sainnhe/everforest'

call plug#end()

set termguicolors
set background=dark
colorscheme everforest

syntax on
filetype plugin indent on

set relativenumber
set showcmd
set ruler

set autoindent
set smartindent


set laststatus=2
set showmode

inoremap jj <Esc>
