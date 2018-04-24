nnoremap sh :set filetype=sh<CR>i
call plug#begin('~/.vim/plugged')
Plug 'itchyny/vim-haskell-indent'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'whatyouhide/vim-lengthmatters'
call plug#end()

nmap <S-Tab> :NERDTreeToggle<CR>
map <F5> :!g++ -std=c++11 %:t -o %:t:r <CR>
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
set autoindent
set textwidth=80
