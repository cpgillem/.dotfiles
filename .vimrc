" Cade Gillem (https://github.com/cpgillem)
" Some inspiration taken from: https://gist.github.com/JeffreyWay/6753834

" Fuzzy finder
set rtp+=~/.fzf

" Plugins Through VimPlug
call plug#begin('~/.vim/plugged')

" Basics
Plug 'tpope/vim-sensible'

" External Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Productivity
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Syntax
Plug 'scrooloose/syntastic'

" Editing
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-capslock'

" Languages/Frameworks
Plug 'fatih/vim-go'
Plug 'vim-jp/vim-go-extra'
Plug 'dgryski/vim-godef'
Plug 'jwalton512/vim-blade'
Plug 'fs111/pydoc.vim'

" Customization
Plug 'flazz/vim-colorschemes'

call plug#end()

" END PLUGINS

" Essential Settings

set shell=bash

" Convenience Settings
set mouse=a
map Q <nop>

" Visual Helpers
set t_Co=256
set number
set relativenumber
set cursorline
set colorcolumn=100
set showmode
set modeline

" Soft line navigating, except when using counts
" source: https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'

" Real Copying and Pasting
" source: http://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-in-vim
vnoremap <C-c> :w !pbcopy<CR><CR>
noremap <C-v> :r !pbpaste<CR><CR>

" Quick escape:
imap jj <esc>


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

" Customizations
colorscheme molokai

" No autocommenting, it's annoying
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" File Types
filetype indent on

autocmd Filetype html setlocal       ts=2 sts=2 sw=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype php setlocal        ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype ruby setlocal       ts=4 sts=4 sw=4 expandtab
autocmd Filetype md setlocal         ft=markdown
autocmd Filetype gitcommit setlocal  colorcolumn=80
autocmd Filetype go setlocal         ts=4 sts=4 sw=4 noexpandtab colorcolumn=0

" Project-specific .vimrc files
set exrc
set secure

" GUI
if has("gui_running")
  set guifont=Monaco:h14
  set lines=40 columns=136
endif
