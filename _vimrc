"PATH CONFIGURATION

set path=$PWD/**

"COLOR CONFIGURATION

set t_Co=256


"""PLUGIN CONFIGURATION
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-commentary'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'jason0x43/vim-js-indent'
Plugin 'matze/vim-move'

call vundle#end()
filetype plugin indent on

"airline configuration"
let g:airline_theme = "solarized"
let g:airline#extenstions#tabline#enabled = 1


"vim-move configuration
let g:move_key_modifier = "C"

let g:javascript_plugin_jsdoc = 1
set laststatus=2
let g:jsx_ext_required = 0

"""END PLUGIN CONFIGURATION


"GENERAL EDITOR CONFIG
set hlsearch
set tabstop=4 shiftwidth=4 expandtab
set encoding=utf-8
"Windows font
"set guifont=Consolas:h11
"Linux font
set guifont=Monospace\ 11
colorscheme slate
set backspace=indent,eol,start
"shows line number and the
"up / down offset
set number
set relativenumber

syntax on
set cursorline

"CLIPBOARD
set clipboard=unnamed
vnoremap <M-c> "+y
nmap <M-v> "+p

"enhance vim responsiveness when pressing ESC
set timeoutlen=1000 ttimeoutlen=0

"does not create .swp file
set noswapfile

"general text formatting
set textwidth=80
set colorcolumn=+2
set nowrap
set wrapmargin=0


"see tabs/spaces/eol
set listchars=nbsp:☠,tab:▲\ ,eol:¬



"disables direction keys
"in insertion modes
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

"mapping for resizing splits
map <Left> :vertical resize -5<CR>
map <Up> :resize +5<CR>
map <Right> :vertical resize +5<CR>
map <Down> :resize -5<CR>

"on cursor, creates a line below and upside
nnoremap <C-c>O i<CR><ESC>O<ESC>o<ESC>O

"on cursor, add a CR and creates a line,
"used when creating objects / arrays
nnoremap <C-c>o i<CR><ESC>O

"select code block and reformat it
nnoremap <C-c>h viB=<ESC><C-o>

"fold block (between curly braces)
nnoremap <C-c>f viBzf

"remove trailing spaces
"for the current line
nmap <silent> <C-c>l :%s/\s*$/<CR>:%s/\%u00a0/ /g<CR>:noh<CR><C-o>


" Comment formatting
:hi Comment	term=bold ctermfg=LightGreen

" for GUI line height
set linespace=10

"removes the netrws header when using
":Explore commands
let g:netrw_banner=0
let g:netrw_liststyle=3

"puts the mouse in command line mode
"effectively disabling it
set mouse=c

set pastetoggle=<F2>

"open vimgrep in quickfix list
"http://stackoverflow.com/questions/39009792/vimgrep-pattern-and-immediately-open-quickfix-in-split-mode

augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* cwindow
augroup END

"yank till the end of line
map Y y$
