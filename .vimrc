" Cade Gillem (https://github.com/cpgillem)
" Some inspiration taken from: https://gist.github.com/JeffreyWay/6753834

" Settings required before plugins
filetype indent on

" Plugins Through VimPlug
call plug#begin('~/.vim/plugged')

" Major Expansions
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'

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

" Plug 'fatih/vim-go'
" Plug 'vim-jp/vim-go-extra'
" Plug 'dgryski/vim-godef'
" Plug 'jwalton512/vim-blade'
" Plug 'fs111/pydoc.vim'
" Plug 'digitaltoad/vim-pug'
" Plug 'kchmck/vim-coffee-script'

" PLUGIN JAIL

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'kien/ctrlp.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

" END PLUGINS

" Essential Settings
set shell=bash
set modeline

" Convenience Settings
" set mouse=a
map Q <nop>

" Visual Helpers
set t_Co=256
set number
set pastetoggle=<f5>
map <F6> :set relativenumber!<CR>
set cursorline
set colorcolumn=80

" ~ A E S T H E T I C S ~
let g:airline_powerline_fonts = 1

" Soft line navigating, except when using counts
" source: https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'

" Real Copying and Pasting
" source: http://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-in-vim
" vnoremap <C-c> :w !pbcopy<CR><CR>
" noremap <C-v> :r !pbpaste<CR><CR>

" Map Ctrl+N to open the file explorer
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

" Project-specific .vimrc files
set exrc
set secure

" GUI-specific Settings
if has("gui_running")
  set guifont=Monaco:h14
  set lines=40 columns=136
endif
