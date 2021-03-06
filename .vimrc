"Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" Fish syntax highlighting
Plug 'dag/vim-fish'

" Vim Theme
Plug 'dikiaap/minimalist'

" C++ Syntax Highlighting
Plug 'bfrg/vim-cpp-modern'

Plug 'jiangmiao/auto-pairs'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Multi-entry selection UI.
Plug 'junegunn/fzf'


call plug#end()

" Language Server
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }

" Color scheme
set t_Co=256
syntax on
colorscheme minimalist

" Permenant undo
set undodir=~/.vimdid
set undofile


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

" No arrow keys
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
