" Cade Gillem (https://github.com/cpgillem)
" Some inspiration taken from: https://gist.github.com/JeffreyWay/6753834

" Settings required before plugins
filetype indent on

" Essential Settings
set shell=bash
set modeline

" Convenience Settings
" set mouse=a
map Q <nop>

" Leader key is SPACE
let mapleader=" "

" Visual Helpers
set t_Co=256
set number
map <leader>p :set paste!<CR>
map <leader>n :set relativenumber!<CR>
set cursorline
set colorcolumn=80

" Soft line navigating, except when using counts
" source: https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'

" Real Copying and Pasting
" source: http://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-in-vim
" vnoremap <C-c> :w !pbcopy<CR><CR>
" noremap <C-v> :r !pbpaste<CR><CR>

" No autocommenting, it's annoying
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" File Types
autocmd Filetype html setlocal       ts=2 sts=2 sw=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype php setlocal        ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype json setlocal       ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal       ts=4 sts=4 sw=4 expandtab
autocmd Filetype md setlocal         ft=markdown
autocmd Filetype gitcommit setlocal  colorcolumn=80
autocmd Filetype go setlocal         ts=4 sts=4 sw=4 noexpandtab colorcolumn=0
autocmd Filetype pug setlocal        ts=2 sts=2 sw=2 expandtab

colorscheme evening

" Project-specific .vimrc files
set exrc
set secure

" Plugins Through VimPlug
call plug#begin('~/.vim/plugged')

" Major Expansions
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

" QoL Settings and Editing Expansions
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-capslock'
Plug 'tpope/vim-surround'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Languages and Frameworks
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'vim-jp/vim-go-extra', {'for': 'go'}
Plug 'dgryski/vim-godef', {'for': 'go'}
Plug 'jwalton512/vim-blade', {'for': 'php'}
Plug 'fs111/pydoc.vim', {'for': 'python'}
Plug 'digitaltoad/vim-pug', {'for': 'pug'}
Plug 'kchmck/vim-coffee-script', {'for': 'coffeescript'}

call plug#end()
" END PLUGINS

" ~ A E S T H E T I C S ~
let g:airline_powerline_fonts = 1

" Map Ctrl+N to open the file explorer
map <C-n> :NERDTreeToggle<CR>

" GUI-specific Settings
if has("gui_running")
  set guifont=Monaco:h14
  set lines=40 columns=136
endif
