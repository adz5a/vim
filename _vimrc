"Load plugins
set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

"vim-move configuration
"this allows to use <C-j> | <C-k> to move lines down / up
let g:move_key_modifier = "C"

let g:javascript_plugin_jsdoc = 1 "vim-javascript enable JSDOC highlightning
set laststatus=2
let g:jsx_ext_required = 0

"PATH CONFIGURATION
set path=$PWD/**
set wildignore+=**/node_modules/** "plz don't :find inside the node_modules
set wildignore+=**/out/**
set wildignore+=**/dist/**
set wildignore+=**/build/**
set wildignore+=**/.git/**

"GENERAL EDITOR CONFIG
set t_Co=256
set cursorline
set hlsearch
set tabstop=4 shiftwidth=4 expandtab
set encoding=utf-8
colorscheme nova
set number
set relativenumber
set scrolloff=0

" Statusline
" https://stackoverflow.com/questions/5547943/display-number-of-current-buffer
set laststatus=2                             " always show statusbar
set statusline=
set statusline+=%-10.3n\                     " buffer number
set statusline+=%{fugitive#statusline()}     " current git status
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

"enhance vim responsiveness when pressing ESC
set timeoutlen=500 ttimeoutlen=0

"does not create .swp file
set noswapfile

"general text formatting
set textwidth=80
set nowrap

" Comment formatting
:hi Comment	term=bold ctermfg=LightGreen

" for GUI line height
set linespace=10

"removes the netrws header when using
":Explore commands
let g:netrw_banner=0
let g:netrw_liststyle=3

"puts the mouse in command line mode effectively disabling it
set mouse=c

set pastetoggle=<F2>

"open vimgrep in quickfix list
"http://stackoverflow.com/questions/39009792/vimgrep-pattern-and-immediately-open-quickfix-in-split-mode

augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* cwindow
augroup END

"see overwrite vim-sensible defaults
set listchars=nbsp:☠,tab:▲\ ,eol:¬


""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""


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

"mapping to move around splits
map <Leader>j <C-w>j
map <Leader>k <C-w>k
map <Leader>l <C-w>l
map <Leader>h <C-w>h

"remap gf to work without using the path option
"<cfile> is the filename under the cursor
map gf :e <cfile><CR>

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

"Yank
noremap <silent> Y y$

"tabs
"put current buffer into its own tab
noremap <silent> <Leader>t :tab split<CR>
"close current tab (does not close buffers)
noremap <silent> <Leader>tq :tabclose<CR>
"creates a new tab
noremap <silent> <Leader>n :Texplore<CR>
noremap <silent> <Leader>L :tabnext<CR>
noremap <silent> <Leader>H :tabprevious<CR>
"navigate quickfix list
noremap <silent> <Leader>K :cprev<CR>
noremap <silent> <Leader>J :cnext<CR>

"exit
noremap <silent> <Leader>q :q<CR>
"%
noremap <silent> <Leader>ù %

"GO FUGITIVE
noremap <Leader>d :Gvdiff<CR>
noremap <Leader>D :Gvdiff HEAD<CR>
noremap <Leader>a :Gwrite<CR>
noremap <Leader>s :Gstatus<CR>
noremap <Leader>S :tabnew<CR>:Gstatus<CR>

"Commands
:command Standup Glog -1 --
:command Q qa
" END MAPPINGS


" find files and populate the quickfix list
fun! FindFiles(filename)
    let error_file = tempname()
    silent! exe '!find . -not \( -path "'. join(split(&wildignore, ","), '" -o -path "') .'" \)| grep "'.a:filename.'" | xargs file | sed "s/:/:1:/" > '.error_file
    set errorformat=%f:%l:%m
    exe "cfile ". error_file
    copen
    redraw!
endfun
command! -nargs=1 Find call FindFiles(<q-args>)

" Remove autocmd when using grep to speed things up
fun! FastGrep (...)
    exe "noautocmd vim /" . a:1 . "/ " . a:2
    exe "e"
endfun
command! -nargs=* Vim call FastGrep(<f-args>)
