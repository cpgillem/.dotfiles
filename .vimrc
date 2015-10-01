" Basic Settings

set shell=bash
filetype plugin indent on
set number
set colorcolumn=100

" Plugins Through VimPlug

call plug#begin('~/.vim/plugged')

" Productivity
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

" Languages
Plug 'fatih/vim-go'
Plug 'vim-jp/vim-go-extra'
Plug 'dgryski/vim-godef'

Plug 'dag/vim-fish'

Plug 'fs111/pydoc.vim'

" Customization
Plug 'flazz/vim-colorschemes'

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

" " Format on every save.
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Pydoc Settings
" let g:pydoc_open_cmd='vsplit'

" Airline Settings
" set laststatus=2

" DEPRECATED 
" set tabstop=4 shiftwidth=4 expandtab

" General Settings

filetype plugin indent on
syntax on

" Customizations

colorscheme molokai
