"PATH CONFIGURATION

set path=$PWD/**
set wildignore+=**/node_modules/** "plz don't :find inside the node_modules

"COLOR CONFIGURATION

set t_Co=256


"""PLUGIN CONFIGURATION
set nocompatible

execute pathogen#infect()

syntax on
filetype plugin indent on
set cursorline



"vim-move configuration
"this allows to use <C-j> | <C-k> to move lines down / up
let g:move_key_modifier = "C"

let g:javascript_plugin_jsdoc = 1 "vim-javascript enable JSDOC highlightning
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
set guifont=Monospace\ 9
colorscheme nova
set backspace=indent,eol,start
"shows line number and the
"up / down offset
set number
set relativenumber
set scrolloff=0



"enhance vim responsiveness when pressing ESC
set timeoutlen=500 ttimeoutlen=0

"does not create .swp file
set noswapfile

"general text formatting
set textwidth=80
set colorcolumn=+2
set nowrap
set wrapmargin=0

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

"see tabs/spaces/eol
set listchars=nbsp:☠,tab:▲\ ,eol:¬


" MAPPINGS

let mapleader=" "
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
nnoremap <Leader>O i<CR><ESC>O<ESC>o<ESC>O

"on cursor, add a CR and creates a line,
"used when creating objects / arrays
nnoremap <Leader>o i<CR><ESC>O

nnoremap <Leader>r :call ToggleScrollOffset()<CR>

function! ToggleScrollOffset()
  if &scrolloff > 10
    set scrolloff=0
  else
    set scrolloff=500
  endif
endfunction


"reformat current block & whole file
nnoremap <Leader>= =i}
nnoremap <Leader>== gg=G

"copy
nnoremap <Leader>w yiw

"fold block (between curly braces)
nnoremap <Leader>f zfi}

"remove trailing spaces
"for the current line
nmap <silent> <Leader>m :%s/\s*$/<CR>:%s/\%u00a0/ /g<CR>:noh<CR><C-o>

"http://vim.wikia.com/wiki/Jumping_to_the_start_and_end_of_a_code_block
"go to start of current block
noremap <Leader>b [{
noremap <Leader>B [{%

"go to start of parenthesis
noremap <silent> <Leader>p [(<ESC>%
noremap <silent> <Leader>P )]<ESC>

noremap <silent> <Leader>v :Vex<CR>
noremap <silent> <Leader>e :Ex<CR>

"tabs
"put current buffer into its own tab
noremap <silent> <Leader>t :tab split<CR>
"close current tab (does not close buffers)
noremap <silent> <Leader>tq :tabclose<CR>
"creates a new tab
noremap <silent> <Leader>n :tabnew<CR>:Ex<CR>
"exit
noremap <silent> <Leader>q :q<CR>
"%
noremap <silent> <Leader>ù %

"GO FUGITIVE
noremap <Leader>d :Gvdiff<CR>
noremap <Leader>a :Gwrite<CR>
noremap <Leader>s :Gstatus<CR>
noremap <Leader>S :tabnew<CR>:Gstatus<CR>

:command Standup Glog -1 --
" END MAPPINGS
