" Xキーで文字削除する際にレジスタに入れない
nnoremap x "_x
vnoremap x "_x
nnoremap c "_c
vnoremap c "_c

" 使わないキーマップを無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>

" SpaceはLeaderキーとして扱うのでデフォルトの動作（カーソル右移動）を無効化
nnoremap <Space> <Nop>

" move tabs
if !exists('g:vscode')
  nnoremap <Left> <C-w>h
  nnoremap <Right> <C-w>l
  nnoremap <Up> <C-w>k
  nnoremap <Down> <C-w>j
  nnoremap <S-q><S-q> <C-w>q
endif

" カーソル移動
noremap <S-h> ^
noremap <S-l> $

" rとC-rの動作を入れ替える (rでRedo、C-rで1文字置換)
nnoremap r <C-r>
nnoremap <C-r> r
" ビジュアルモードでの一括置換もC-rに割り当てる（基本的に暴発しにくくする）
vnoremap r <Nop>
vnoremap <C-r> r
