" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" Vim Theme
Plug 'dikiaap/minimalist'


call plug#end()


" Color scheme
set t_Co=256
syntax on
colorscheme minimalist

" Basic settings
set nocompatible
syntax on
set encoding=utf-8
set number relativenumber

" Enable autocomplete:
set wildmode=longest,list,full

" Indenting
set ts=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
