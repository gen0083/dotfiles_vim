" vim-plug自体の自動インストール
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" プラグインのセットアップ（vim-plug）
call plug#begin('~/.vim/plugged')
  " easy-motion
  " https://github.com/easymotion/vim-easymotion
  Plug 'easymotion/vim-easymotion'

  " 複数行コメントを手軽に実行
  Plug 'tpope/vim-commentary'
  " Gitを便利に使う
  Plug 'tpope/vim-fugitive'
  " 行末の半角スペースを可視化
  Plug 'bronson/vim-trailing-whitespace'
  " surround.vim
  Plug 'tpope/vim-surround'
  " emmet-vim
  Plug 'mattn/emmet-vim'
  " Syntax-plugins
  Plug 'hail2u/vim-css3-syntax'
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'chase/vim-ansible-yaml'

  " for ruby plugins
  Plug 'ngmy/vim-rubocop'
  " for rails useful plugin
  Plug 'tpope/vim-rails'
  " add automatically close block e.g. def with end etc.
  Plug 'tpope/vim-endwise'
  " apply color for files included ANSI color information
  Plug 'vim-scripts/AnsiEsc.vim'

call plug#end()

" 未インストールのプラグインがある場合は自動インストール
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
