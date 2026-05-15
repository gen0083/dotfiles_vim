#! /bin/bash

# this script make symboliclink to user's home directory

# .files
# if you create a new dotfile, add the dotfile name to DOTFILES_LIST
# e.g. create .vimrc then add "vimrc" to DOTFILES_LIST
DOTFILES_DIRECTORY="dotfiles_vim"
DOTFILES_LIST="vimrc gvimrc ideavimrc"
for DOTFILE in $DOTFILES_LIST; do
  if [ -e ~/.$DOTFILE ] || [ -L ~/.$DOTFILE ]; then
    if [ ! -L ~/.$DOTFILE ]; then
      # カスタマイズ済みのドットファイルを退避
      mv ~/.$DOTFILE ~/.$DOTFILE.old
    else
      # シンボリックリンクを削除
      rm ~/.$DOTFILE
    fi
  fi
  ln -s ~/$DOTFILES_DIRECTORY/_$DOTFILE ~/.$DOTFILE
done

# .directory
# -eで存在確認（シンボリックリンクの場合はリンク先を評価する）
# -Lはシンボリックリンクの確認
# 両方チェックはシンボリックリンクのリンク切れへの対応のため
if [ -e ~/.vim ] || [ -L ~/.vim ]; then
  if [ ! -L ~/.vim ]; then
    # カスタマイズ済みの.vimを退避する
    mv ~/.vim ~/.vim.old
  else
    # ディレクトリのシンボリックリンクを削除する
    rm ~/.vim
  fi
fi

mkdir -p ~/.config
if [ -e ~/.config/nvim ] || [ -L ~/.config/nvim ]; then
  if [ ! -L ~/.config/nvim ]; then
    # すでにある設定を退避
    mv ~/.config/nvim ~/.config/nvim.old
  else
    # シンボリックリンクを削除
    rm ~/.config/nvim
  fi
fi

ln -s ~/$DOTFILES_DIRECTORY/vimfiles ~/.vim
ln -s ~/$DOTFILES_DIRECTORY/nvim ~/.config/nvim

# install Dein.vim https://github.com/Shougo/dein.vim
mkdir -p ~/.cache/dein
cd ~/.cache/dein

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh >installer.sh
sh ./installer.sh ~/.cache/dein
