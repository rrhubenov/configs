" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer' }
Plug 'hzchirs/vim-material'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
call plug#end()

" Dark Material Theme
set background=dark
colorscheme vim-material

" Basic settings
	set nocompatible
	syntax on
	set encoding=utf-8
	set number relativenumber

" Enable autocomplete:
	set wildmode=longest,list,full

" Indenting
	set ts=4
	set autoindent
	set smartindent
