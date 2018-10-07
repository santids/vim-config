setlocal dictionary=~/.latex-dic
setlocal complete+=k
nnoremap <buffer> <F5> :w<CR>:!pdflatex % <CR>
setlocal keywordprg=texdoc
set formatoptions+=t
set tw=67
compiler tex
setlocal shiftwidth=2
set path+=texmf/tex/latex/**
