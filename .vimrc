packadd! dracula

" Configs

set background=dark
set tabstop=4
set noswapfile
set smartindent
set incsearch
set hlsearch
set number
set mouse=a
set showmatch
syntax enable
colorscheme koehler
let mapleader=","

" Styling


" Plugins 

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'preservim/nerdcommenter'

call plug#end()


" Remaps

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :-1r !xclip -o -sel clip<CR>
nnoremap <C-p> :FZF<CR>
