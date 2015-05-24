call plug#begin('~/.vim/plugged')

Plug 'scrooloose/NERDTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'

call plug#end()

" Automatic settings
filetype plugin indent on

syntax on

" Basic custom settings
set number
set colorcolumn=80

" NERDTree
map <C-n> :NERDTreeToggle<CR>
