" vi互換モードをオフにする（いにしえのおまじない）
if &compatible
  set nocompatible
endif

let mapleader = "\<Space>"

" プラグイン、プラグイン設定の読み込み
source ~/.vim/config/plugin.vim
source ~/.vim/config/plugin_easymotion.vim
source ~/.vim/config/plugin_surround.vim

source ~/.vim/config/set_common.vim
source ~/.vim/config/set_basic.vim
source ~/.vim/config/keymap.vim
source ~/.vim/config/autocmd.vim

filetype plugin indent on
syntax enable
