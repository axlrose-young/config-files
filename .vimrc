call plug#begin('~/.vim/plugges')

Plug 'sainnhe/everforest.git'

call plug#end()

syntax on
filetype plugin indent on

set relativenumber
set showcmd
set ruler

set autoindent
set smartindent

set termguicolors

set laststatus=2
set showmode

inoremap jj <Esc>
