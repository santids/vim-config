setlocal foldmethod=syntax

let g:ale_cpp_gcc_options='-std=c++11 -Wall -Wextra -Wfloat-equal -I/home/santi/git-clones/googletest/googletest/include/'

nnoremap <Home> :call CppHeaderToggle()<CR>

" I am a cpp file
let b:cpp_did_ftplugin = 1
