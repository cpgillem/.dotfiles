set nocompatible
filetype off 
set rtp+=~/.dotfiles/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

filetype plugin indent on

syntax on
set number
set expandtab
set tabstop=4

" Open a nerdtree on startup with no files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Map the nerdtree to Control+N
map <C-n> :NERDTreeToggle<CR>

" Close vim if the only thing left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
