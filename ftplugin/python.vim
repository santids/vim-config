nnoremap <buffer> <F5> :w<CR>:!python3 % <CR>
inoremap <buffer> <F5> <ESC>:w<CR>:!python3 % <CR>
set makeprg=flake8\ %
set errorformat=%f:%l:%c:\ %t%n\ %m

let b:ale_linters = ['flake8']
let b:ale_fixers  = ['autopep8']
" let g:ale_python_flake8_executable = 'python3'
