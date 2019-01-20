setlocal foldmethod=syntax
setlocal commentstring=//\ %s

let b:ale_linters = ['gcc']
let g:ale_c_build_dir_names = ['build', 'cmake-build-debug']
let g:ale_c_parse_makefile=1

set wildignore+=build/*,cmake-build-debug/*

" for macros
iabbrev fori for (uint i = 0; i < ; i++)
iabbrev forj for (uint j = 0; j < ; j++)
iabbrev fork for (uint k = 0; k < ; k++)

compiler gcc

" if filetype is cpp, then finish
if exists("b:cpp_did_ftplugin")
  finish
endif

nnoremap <Home> :call CHeaderToggle()<CR>

