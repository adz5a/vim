set tabstop=4 shiftwidth=4 expandtab
set encoding=utf-8
set guifont=Lucida_Console:h9:cANSI
colorscheme slate
set backspace=indent,eol,start
set number
set clipboard=unnamed
syntax on
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
vnoremap <C-c> "+y
nmap <C-v> "+p
" shift+arrow selection
nmap <A-Up> v<Up>
nmap <A-Down> v<Down>
nmap <A-Left> v<Left>
nmap <A-Right> v<Right>
vmap <A-Up> <Up>
vmap <A-Down> <Down>
vmap <A-Left> <Left>
vmap <A-Right> <Right>
imap <A-Up> <Esc>v<Up>
imap <A-Down> <Esc>v<Down>
imap <A-Left> <Esc>v<Left>
imap <A-Right> <Esc>v<Right>
