nnoremap sh :set filetype=sh<CR>i
"execute pathogen#infect()
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'itchyny/vim-haskell-indent'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

nmap <S-Tab> :NERDTreeToggle<CR>
colorscheme delek
syntax on
filetype plugin indent on
let g:indentLine_char = '¦'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set tabstop=4
set softtabstop=0 noexpandtab
sign unplace *
set foldcolumn=0
set shiftwidth=4
set showmode 
"let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
