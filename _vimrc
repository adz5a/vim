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
set guifont=Monospace\ 13
colorscheme slate
set backspace=indent,eol,start
set number
set clipboard=unnamed
syntax on
vnoremap <C-c> "+y
nmap <C-v> "+p

"enhance vim responsiveness when pressing ESC
set timeoutlen=1000 ttimeoutlen=0

"does not create .swp file
set noswapfile 
set textwidth=0
set nowrap
set wrapmargin=0
map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>
imap <C-m> <ESC>o<ESC>O<ESC>o
nmap <C-m> <ESC>o<ESC>O<ESC>o
nnoremap <silent> <C-a> G$vgg

execute pathogen#infect()
execute pathogen#helptags()
let g:javascript_plugin_jsdoc = 1
set laststatus=2
let g:jsx_ext_required = 0

:hi Comment	term=bold ctermfg=LightBlue
set linespace=10

"removes the netrws header when using
":Explore commands
let g:netrw_banner=0
