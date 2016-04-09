set tabstop=4 shiftwidth=4 expandtab
set encoding=utf-8
set guifont=Lucida_Console:h9:cANSI
colorscheme darkblue
set backspace=indent,eol,start
set number
set clipboard=unnamed
syntax on
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
set lines=999 columns=999
vnoremap <C-c> "+y
nmap <C-v> "+p
