set autoindent
set hlsearch
set tabstop=4 shiftwidth=4 expandtab
set encoding=utf-8
set guifont=Monospace\ 10
colorscheme slate
set backspace=indent,eol,start
set number
set clipboard=unnamed
syntax on
set lines=999 columns=999
vnoremap <C-c> "+y
nmap <C-v> "+p
set noswapfile
set textwidth=0
set nowrap
set wrapmargin=0
vnoremap <Up> k
vnoremap <Down> j
vnoremap <Left> h
vnoremap <Right> l
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
