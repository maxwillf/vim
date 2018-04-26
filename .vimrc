call plug#begin('~/.vim/plugged')
Plug 'itchyny/vim-haskell-indent'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'whatyouhide/vim-lengthmatters'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
call plug#end()

nnoremap sh :set filetype=sh<CR>i
nmap <S-Tab> :NERDTreeToggle<CR>
"compiler mapping
nnoremap <F5> :!g++ -std=c++11 %:t -o %:t:r <CR>
let mapleader = "\<SPACE>"
"changing splits
nnoremap <leader>w <C-w>
" changing buffers
nnoremap <leader>bb :buffers<CR>:b<SPACE>
" going to .vimrc
nnoremap <leader>fd :w<CR>:e<SPACE>~/.vimrc<CR>

inoremap jk <esc>

set foldmethod=marker
colorscheme delek
syntax on
filetype plugin indent on
"airline tab for the upper left corner of the screen
let g:airline#extensions#tabline#enabled = 1
let g:indentLine_char = '¦'
set tabstop=4
set softtabstop=0 noexpandtab
sign unplace *
set foldcolumn=0
set shiftwidth=4
set showmode
set autoindent
set textwidth=80
