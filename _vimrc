filetype on
filetype plugin on
filetype indent on
set autoindent
set hlsearch
set tabstop=4 shiftwidth=4 expandtab
set encoding=utf-8
"Windows font
"set guifont=Consolas:h11
"Linux font
set guifont=Monospace\ 10
colorscheme slate
set backspace=indent,eol,start
set number
set clipboard=unnamed
syntax on
vnoremap <C-c> "+y
nmap <C-v> "+p


"does not create .swp file
set noswapfile 
set textwidth=0
set nowrap
set wrapmargin=0
nmap <Up> k
nmap <Down> j
nmap <Left> h
nmap <Right> l
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nnoremap <silent> <C-a> G$vgg

execute pathogen#infect()
let g:javascript_plugin_jsdoc = 1
