set nocompatible
let &rtp = '../../..,' . &rtp
let &rtp .= ',../../../after'
filetype plugin indent on
syntax enable

nnoremap q :qall!<cr>

silent edit minimal.tex

silent execute "normal GO\\gls{\<c-x>\<c-o>"
silent normal! u

for s:cand in vimtex#complete#omnifunc(0, '')
  echo s:cand
endfor
quitall!
