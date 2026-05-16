""""""""""""""""""""
" 各種オプション設定(vimの設定)
""""""""""""""""""""
" 色設定
colorscheme desert
set background=dark
syntax on
" 行番号表示
set number
set ruler
" バックアップ・スワップファイルを作成しない
set nobackup
set noswapfile
set undodir=~/tmp/vim
" タイトルバーにファイルのパス情報を表示
set title
" 作業ディレクトリを現在表示中のファイルの場所に設定する
set autochdir
" コマンドラインモードでタブキーによるファイル名補完を有効にする
set wildmenu
" コマンドラインで使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示
set laststatus=2
" ステータス行に表示させる情報の指定
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" ステータス行に現在のGitブランチを表示する
set statusline+=%{fugitive#statusline()}
" 対応するカッコやプレースを表示する
set showmatch
" 不可視文字を表示する
set list
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" 改行時にインデントを継承する
set autoindent
set smartindent
