nnoremap sh :set filetype=sh<CR>i
"execute pathogen#infect()
call plug#begin('~/.vim/plugged')

Plug 'itchyny/vim-haskell-indent'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

nmap <S-Tab> :NERDTreeToggle<CR>
colorscheme delek
syntax on
filetype plugin indent on
let g:indentLine_char = '¦'
set tabstop=4
set softtabstop=0 noexpandtab
sign unplace *
set foldcolumn=0
set shiftwidth=4
set showmode 
