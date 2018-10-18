" Completion 
setlocal dictionary=~/.latex-dic
setlocal complete+=k

nnoremap <buffer> <F5> :make<CR>

setlocal keywordprg=texdoc
setlocal formatoptions+=t
setlocal textwidth=67
setlocal shiftwidth=2
setlocal spell

compiler latex
set path+=texmf/tex/latex/**

