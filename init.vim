" Prerequisites:
" 1. Download vim-plug to ~/.local/share/nvim/site/autoload
" 2. Install build-essential
" 3. Download this script to ~/.config/nvim/init.vim

call plug#begin('~/.local/share/nvim/plugged')

" Variables
let scheme = 'jellybeans'

" Features
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/NERDTree'
Plug 'junegunn/fzf'
Plug 'itchyny/lightline.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --ts-completer' }

" Editor tweaks
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'

" Language support
Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'

call plug#end()

" FZF Settings
let g:fzf_layout = { 'down': '~30%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Nerdtree Settings
let g:NERDTreeWinSize=20
let NERDTreeQuitOnOpen=1

" Lightline Settings
set noshowmode
set laststatus=2
let g:lightline = {
\ 'colorscheme': scheme,
\}

" YCM Settings
" let g:ycm_key_list_select_completion = ['<TAB>', '<CR>']
let g:ycm_autoclose_preview_window_after_completion = 1

" Keybindings
map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <C-F5> :source ~/.vimrc<CR>
map <C-W>< :vertical resize -5<CR>
map <C-W>> :vertical resize +5<CR>
map <C-W>+ :resize +5<CR>
map <C-W>- :resize -5<CR>

" Settings
set nocompatible
set showcmd
set ruler
set wildmenu
set laststatus=2
set confirm
set t_Co=256
set shell=bash
set backspace=indent,eol,start
set hidden
filetype plugin indent on
syntax on
set number
set relativenumber
set mouse=a
" http://stackoverflow.com/questions/19624105/how-can-i-make-vim-break-lines-only-on-whitespace
set nolist wrap linebreak breakat&vim
set mouse+=a
if &term =~ '^screen'
	set ttymouse=xterm2
endif

" Customization
set colorcolumn=80
execute "colorscheme ".scheme
" hi Normal ctermbg=none
" hi NonText ctermbg=none

" Indentation
autocmd Filetype html setlocal       ts=4 sts=4 sw=4 expandtab
autocmd Filetype php setlocal        ts=4 sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype json setlocal       ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal       ts=4 sts=4 sw=4 expandtab
autocmd Filetype md setlocal         ft=markdown
autocmd Filetype gitcommit setlocal  colorcolumn=80
autocmd Filetype go setlocal         ts=4 sts=4 sw=4 noexpandtab colorcolumn=0
autocmd Filetype haskell setlocal    ts=4 sts=4 sw=4 expandtab
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab
