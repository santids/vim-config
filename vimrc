"
" Santi vimrc config file
"

" Sourced Files {

set nocompatible    " no compatible with vi
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
set showbreak=\ \ \

" }
" UI {

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
silent !mkdir -p ~/.vim/undodir > /dev/null 2>&1
set undodir=~/.vim/undodir
set cryptmethod=blowfish2
set viminfo='15,<1000,s100,h
set history=1000
set autoread

" }
" Search {

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " ignore case
set smartcase           " smart case

" Don't offer to open certain files/directories

set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=*.pdf,*.psd
set wildignore+=*/node_modules/*,*/android/*,*/ios/*
set wildignore+=*/.git/*
set wildignore+=*.o
set wildignore+=*.swo,*.swp
set wildignore+=tags
set wildignore+=*/googletest/*

" }
" Completion {

set completeopt=menu,preview,longest
set complete=.,w,b,u,t,i
set wildmenu                " command-line completion
set wildmode=longest,full
set spelllang=en,es
set path=.,,
set cdpath=.,,
set pumheight=10

" }
" Mappings {

let mapleader = "-"

nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap Q :bdelete<CR>
nnoremap <leader>l :tabnext<CR>
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>L :tabnext<CR>
nnoremap <leader>H :tabprevious<CR>
nnoremap <leader>q :tabclose<CR>
nnoremap gb :ls<CR>:b
nnoremap <Space> za
nnoremap Ñ :b#<CR>
nnoremap ñ ;
nnoremap j gj
nnoremap k gk
nnoremap U :UndotreeShow<CR>
nnoremap <leader>t :!ctags .<CR>
inoremap <Tab> <C-R>=CleverTab()<CR>
inoremap <C-Space> <C-N>
inoremap / /<C-x><C-f>

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
"!plugin Valloric/YouCompleteMe load: opt
"=plugin ctrlpvim/ctrlp.vim
"=plugin tpope/vim-repeat
"=plugin mbbill/undotree
"=plugin peder2tm/sved
"=plugin ap/vim-css-color

filetype plugin on
nnoremap <leader>yf :YcmCompleter FixIt <CR>
nnoremap <leader>yg :YcmCompleter GoTo<CR>
nnoremap <leader>yd :YcmCompleter GetDoc<CR>
nnoremap <leader>yy :packadd YouCompleteMe<CR>
nnoremap <leader>af :ALEFix  <CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" hi YcmWarningSign ctermbg=235
" hi YcmWarningSection ctermfg=none
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_autoclose_preview_window_after_insertion = 1

nnoremap <leader>af :ALEFix<CR>

let g:AutoPairsMultilineClose = 0
let g:ale_linters_explicit = 1

let g:ale_sign_error = '>'
let g:ale_sign_warning = '-'
let g:ale_sign_info = "\'"
let g:ctrlp_max_files = 1000
let g:ctrlp_show_hidden = 1
let ctrlp_max_depth = 5

let g:gitgutter_map_keys = 0

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
" Templates{

function! Header()
    let name = toupper(expand('%:r'))
    let ext  = toupper(expand('%:e'))

    return join (['__', name, '_', ext, '__'], '')
endfunction

augroup templates
  autocmd BufNewFile  *.cpp 0r ~/.vim/templates/skeleton.cpp
  autocmd BufNewFile  *.sh  0r ~/.vim/templates/skeleton.sh
  autocmd BufNewFile  *.h  0r ~/.vim/templates/skeleton.h
    \ | %s/__HEADER_H__/\=Header()/g
    \ | %s/Name/\=expand('%:t')/g
augroup END




"}
" Autocommands {

augroup mine
  " au BufWinEnter $HOME/* silent! loadview
  au BufWrite $HOME/* silent TrailerTrim
  " au BufWinLeave $HOME/* silent! mkview
augroup END


" }

" vim:foldlevel=0
