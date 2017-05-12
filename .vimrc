set nocompatible
filetype indent plugin on
syntax on
set wildmenu
set showcmd
set ignorecase
set smartcase
set ruler
set laststatus=2
set confirm
set mouse=a
set shell=bash
set t_Co=256
set modeline

set number
set relativenumber
set colorcolumn=80

" http://stackoverflow.com/questions/19624105/how-can-i-make-vim-break-lines-only-on-whitespace
set nolist wrap linebreak breakat&vim

autocmd Filetype html setlocal       ts=4 sts=4 sw=4 expandtab
autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype php setlocal        ts=4 sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype json setlocal       ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal       ts=4 sts=4 sw=4 expandtab
autocmd Filetype md setlocal         ft=markdown
autocmd Filetype vue setlocal        ts=2 sts=2 sw=2 expandtab
autocmd Filetype gitcommit setlocal  colorcolumn=80
autocmd Filetype go setlocal         ts=4 sts=4 sw=4 noexpandtab colorcolumn=0
autocmd Filetype pug setlocal        ts=2 sts=2 sw=2 expandtab
autocmd Filetype haskell setlocal    ts=4 sts=4 sw=4 expandtab

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'jwalton512/vim-blade'
Plug 'kien/CtrlP.vim'

Plug 'posva/vim-vue'
call plug#end()

" colorscheme molokai
" colorscheme inkpot
" colorscheme badwolf
colorscheme jellybeans

" Allow transparency in all schemes
hi Normal ctermbg=none
hi NonText ctermbg=none

map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
