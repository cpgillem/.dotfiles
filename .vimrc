" Basic Settings

set shell=bash
filetype plugin indent off

" Plugins Through VimPlug

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'rjohnsondev/vim-compiler-go'
Plug 'vim-jp/vim-go-extra'
Plug 'dgryski/vim-godef'

call plug#end()

" NERDTRee Settings

" Map Ctrl+N to toggle the NerdTree.
map <C-n> :NERDTreeToggle<CR>

" Syntastic Settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" " Disable for HTML because of templates
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" Vim-Go-Extra Settings

" Format on every save.
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" DEPRECATED 
" set tabstop=4 shiftwidth=4 expandtab

" General Settings

filetype plugin indent on
syntax on
