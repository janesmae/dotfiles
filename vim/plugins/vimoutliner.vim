"" VimOoutliner Configuration ""

autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
set foldmethod=indent
set foldlevelstart=2

"remap folding commands to shift+left/right
nnoremap <S-Right> zo
inoremap <S-Right> <C-O>zo
nnoremap <S-Left> zc
inoremap <S-Left> <C-O>zc
