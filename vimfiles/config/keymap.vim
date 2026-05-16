" Xキーで文字削除する際にレジスタに入れない
nnoremap x "_x
vnoremap x "_x
nnoremap c "_c
vnoremap c "_c

" 使わないキーマップを無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>

" move tabs
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
nnoremap <S-q><S-q> <C-w>q

" カーソル移動
noremap <S-h> ^
noremap <S-l> $

" ウィンドウ移動
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
