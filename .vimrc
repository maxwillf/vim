call plug#begin('~/.vim/plugged')
Plug 'itchyny/vim-haskell-indent'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'whatyouhide/vim-lengthmatters'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yuttie/hydrangea-vim'
Plug 'flazz/vim-colorschemes'
Plug 'ajh17/VimCompletesMe'

call plug#end()


" aesthetic configs ************************************************************

function! AdaptColorscheme()
"    This is the only change i need for term_transparency with 
"    termguicolors on
    highlight Normal guibg=NONE ctermbg=NONE
endfunction
autocmd ColorScheme * call AdaptColorscheme()

" Fuzzy file-finding config
" ************************
set path+=**
set wildmenu
"*************************
colorscheme neonwave
"colorscheme hydrangea
set background=dark
set termguicolors
let g:airline_theme = 'monochrome'
"let g:airline_theme = 'deus'
"airline tab for the upper left corner of the screen
let g:airline#extensions#tabline#enabled = 1

" ***************************************************************************

nnoremap sh :set filetype=sh<CR>i
nmap <F8> :NERDTreeToggle<CR>
"compiler mapping
augroup compiler_group
	autocmd!	
	autocmd FileType cpp nnoremap <F5> :!g++ -std=c++11 %:t -o %:t:r <CR>
	autocmd FileType c nnoremap <F5> :!gcc %:t -o %:t:r <CR>
	autocmd FileType python nnoremap <F5> :!python3 %:t<CR>
augroup END


let mapleader = "\<SPACE>"
"changing splits
nnoremap <leader>w <C-w>
" changing buffers
nnoremap <leader>bb :buffers<CR>:b<SPACE>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>
" going to .vimrc
nnoremap <leader>fd :w<CR>:e<SPACE>~/.vimrc<CR>
"sourcing .vimrc mnemonic to source dotfile
nnoremap <leader>sd :source $MYVIMRC<CR>
set foldmethod=marker
syntax on
filetype plugin indent on
set tabstop=4
set softtabstop=0 noexpandtab
sign unplace *
set foldcolumn=0
set shiftwidth=4
set showmode
set autoindent
set textwidth=80
set clipboard=unnamed
let g:UltiSnipsExpandTrigger = '<S-Tab>'
