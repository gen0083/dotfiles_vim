set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" プラグインのセットアップ（dein.vim）
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " ファイルをツリー表示
  call dein#add('scrooloose/nerdtree')
  " 複数行コメントを手軽に実行
  call dein#add('tomtom/tcomment_vim')
  " インデントに色をつけて見やすくする
  call dein#add('nathanaelkane/vim-indent-guides')
  " Gitを便利に使う
  call dein#add('tpope/vim-fugitive')
  " 行末の半角スペースを可視化
  call dein#add('bronson/vim-trailing-whitespace')
  " surround.vim
  call dein#add('tpope/vim-surround')
  " emmet-vim
  call dein#add('mattn/emmet-vim')
  " Syntax-plugins
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('cakebaker/scss-syntax.vim')
  call dein#add('jelera/vim-javascript-syntax')
  call dein#add('chase/vim-ansible-yaml')

  " for ruby plugins
  call dein#add('ngmy/vim-rubocop')
  " for rails useful plugin
  call dein#add('tpope/vim-rails')
  " add automatically close block e.g. def with end etc.
  call dein#add('tpope/vim-endwise')
  " apply color for files included ANSI color information
  call dein#add('vim-scripts/AnsiEsc.vim')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
