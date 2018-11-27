setlocal foldmethod=syntax
setlocal commentstring=//\ %s

let b:ale_linters = ['gcc']
let g:ale_c_build_dir_names = ['build', 'cmake-build-debug']
let g:ale_c_parse_makefile=1

set wildignore+=build/*,cmake-build-debug/*

compiler gcc

" if filetype is cpp, then finish
if exists("b:cpp_did_ftplugin")
  finish
endif

nnoremap <Home> :call CHeaderToggle()<CR>
