" vi互換モードをオフにする（いにしえのおまじない）
if &compatible
  set nocompatible
endif

source ~/.vim/config/plugin.vim
source ~/.vim/config/set_common.vim
source ~/.vim/config/set_basic.vim
source ~/.vim/config/keymap.vim
source ~/.vim/config/function.vim

filetype plugin indent on
syntax enable
