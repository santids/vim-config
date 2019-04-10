

let b:ale_linters = ['rls']
let b:ale_fixers = ['rustfmt']
let g:ale_rust_rls_toolchain = 'stable'


nnoremap <F5> :!cargo run<cr>
nnoremap <F6> :!cargo test<cr>
