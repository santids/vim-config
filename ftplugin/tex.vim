" Completion 
setlocal dictionary=~/.latex-dic
setlocal complete+=k


nnoremap <buffer> <F4> :call SVED_Sync() <CR>
nnoremap <buffer> <F5> :make % <CR>
nnoremap <buffer> <F6> :make informe.tex <CR>

setlocal keywordprg=texdoc
setlocal formatoptions+=t
setlocal textwidth=67
setlocal shiftwidth=2
setlocal spell
setlocal showbreak=

compiler latex
set path+=texmf/tex/latex/**

