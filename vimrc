"
" Santi vimrc config file
"

let mapleader = ","

" Sourced Files {

runtime functions.vim
runtime ftplugin/man.vim
packadd! matchit

" }
" Feel & Look {

syntax enable                                               " enable syntax processing
filetype indent on                                          " load filetype-specific indent files
colorscheme zenburn
set number                                                  " show line numbers
set belloff=all                                             " turn off bell
set statusline=%n\ %f\ %y%h%r%=col:\ %c\ line:\ %l/%L\ (%P)
set laststatus=2                                            " always show statusline
set scrolloff=5                                             " show a few lines of context around the cursor
set formatoptions=cqlrn2
set linebreak                                               " don't break in middle of word
set showcmd                                                 " show commands while writing
set showbreak=...\ \ \

" }
" UI {

set nocompatible    " no compatible with vi
set shiftwidth=0    " < indents the same that of tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set modelines=1     " look for modelines in last line
set hidden          " allow unsaved hidden buffers
set updatetime=100
set timeout
set ttimeout
set timeoutlen=1000 " timeout for mappings
set mouse=a         " Always allow mouse usage
set autowrite
set undofile
silent !mkdir -p /tmp/vim/undodir > /dev/null 2>&1
set undodir=/tmp/vim/undodir
set cryptmethod=blowfish2
set viminfo='10,<1000,s100,h
set history=1000


" }
" Search {

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " ignore case
set smartcase           " smart case

" Don't offer to open certain files/directories

set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,android/*,ios/*

" }
" Completion {

set completeopt=menu,preview,longest
set complete=.,w,b,t
set wildmenu                " command-line completion
set wildmode=longest,full
set spelllang=en,es
set path=.,,
set pumheight=10

" }
" Mappings {

nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap gb :ls<CR>:b
nnoremap <Space> za
nnoremap Ñ :b#<CR>
nnoremap ñ ;
nnoremap Q gq
nnoremap <leader>t :!ctags .
inoremap <Tab> <C-R>=CleverTab()<CR>
inoremap <C-Space> <C-N> 
inoremap </ </<C-X><C-O>

" }
" Plugins {

" Manage Plugins with infect

"=plugin tpope/vim-surround
"=plugin csexton/trailertrash.vim
"=plugin tpope/vim-commentary
"=plugin jiangmiao/auto-pairs
"=plugin airblade/vim-gitgutter
"=plugin godlygeek/tabular
"=plugin w0rp/ale
"=plugin pangloss/vim-javascript
"=plugin mxw/vim-jsx

filetype plugin on
" nnoremap <leader>yf :YcmCompleter FixIt <CR>
" nnoremap <leader>yg :YcmCompleter GoTo<CR>
" nnoremap <leader>yd :YcmCompleter GetDoc<CR>
" nnoremap <leader>yy :packadd YouCompleteMe<CR>
nnoremap <leader>af :ALEFix  <CR>

" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" hi YcmWarningSign ctermbg=235
" hi YcmWarningSection ctermfg=none
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_autoclose_preview_window_after_insertion = 1

let g:AutoPairsMultilineClose = 0

let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers  = {'javascript': ['eslint']}
let g:ale_linters_explicit = 1

" }
" Fold {

set foldmethod=marker
set foldmarker={,}
set foldlevel=20

" }
" Filetype Specific {

autocmd FileType vim setlocal formatoptions=cql

let g:asmsyntax = "nasm"

"}

" vim:foldlevel=0
