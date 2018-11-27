set shiftwidth=2
set softtabstop=2
set include=from

setlocal omnifunc=htmlcomplete#CompleteTags
inoremap </ </<C-X><C-O>

let b:ale_linters = ['eslint']
let b:ale_fixers  = ['eslint']
