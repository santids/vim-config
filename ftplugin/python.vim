nnoremap <buffer> <F5> :w<CR>:!python % <CR>
inoremap <buffer> <F5> <ESC>:w<CR>:!python % <CR>
set makeprg=flake8\ %
set errorformat=%f:%l:%c:\ %t%n\ %m

" let b:ale_linters = ['flake8']
" let b:ale_fixers  = ['autopep8']
