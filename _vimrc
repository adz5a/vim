cd ~/Desktop/Workspace
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set encoding=utf-8
set nu!
syn on
colorscheme slate
set hlsearch
set cursorline
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
:hi Comment guifg=#ABCDEF
set list
set listchars=tab:▲\ ,eol:¬
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
:let mapleader = "!"
noremap <Leader>p :Gpush origin master<ENTER>
noremap <Leader>P :Git poule<ENTER>
noremap <Leader>a :Gwrite<ENTER>
noremap <Leader>c :Gcommit -m ""<Left>
noremap <Leader><Leader> :mak <CR>
map Y y$
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
set lines=999 columns=999
call pathogen#infect()
let g:netrw_liststyle=3
nmap <F11> :!start explorer /select,%:p<Enter>
filetype plugin on
