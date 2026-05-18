# install

ホームディレクトリでdotfilesリポジトリをクローンする

```
git clone https://github.com/gen0083/dotfiles_vim
```

その後、`~/dotfiles_vim/dotfilesInstall.sh`を実行する。

# dotfilesInstall.sh

dotfiles_vimディレクトリ下にあるドットファイルへのシンボリックリンクを作成する。

既にホームディレクトリかでドットファイルをカスタマイズしている場合、.oldにリネームして退避する。

シンボリックリンクを貼るので実際の.vimrcなどの中身は_vimrcになる。

vim, ideavim(IntelliJ), neovimの設定をコピーして使う。

# vim plugin

## fugitive

:Gwrite　→　git add

:Gstatus　→　git status
なお、Gstatus表示中に`C`で`git commit`に移行するることができる。やってることは`:Gcommit`と同じ。

:Gcommit　→　git commit
コミットメッセージを記入して、:wq等でファイルの書き込み＆閉じるを行うことでgit commitが実行される。なお、`#`で始まる行は全て無視される（コミットメッセージに含まれない）。

## surround.vim

ビジュアルモードで選択して`S<p>`とかすると、選択範囲を`<p>`タグで囲ってくれる。

[vim の text-object をより便利に使えるプラグイン - surround.vim](http://secondlife.hatenablog.jp/entry/20061225/1167032528)

選択範囲を`()`で囲う場合→ビジュアルモードで選択したあと`S(`で囲う。

`a'hoge'`のhoge内にカーソルがある状態で`ds'`で`ahoge`になる(`''`の囲いを削除する)。同様に`cs'"`で`a"hoge"`と囲い文字を変更する。

## emmet-vim

VimでEmmetを使えるようにするプラグイン。`<C-Y><C-,>`でタグに展開する。

[Emmet-vim](https://github.com/mattn/emmet-vim)

## tcomment_vim

ビジュアルモードで複数行選択した後`gc`とコマンドを打つことでコメントがトグルされる。（コメントアウト←→通常の切り替え）
また、ノーマルモードで`gcc`と入力することで、カーソル行がコメントアウトされる。

## easy-motion

neovimではflash.nvimが使われるので、ショートカットをそちらに合わせてsにしている。

# それぞれの設定について

- _vimrc: vim(MacVim)用　一番ノーマル
- _ideavimrc: IntelliJのIdeaVim用
- _gvimrc: GUIのvim用（使わないと思うが残してある）
- nvim/*: neovim(LazyVim)用

## nvim

neovimの設定群が格納されているディレクトリ
実際に設定を記述するのはnvim/lua/config/以下のファイルになる
~/.nvim/にマッピングされる

## vimfiles

インストール後は~/.vim/にシンボリックリンクされる
一部の設定については_ideavimrcと共通利用するためファイルを分割している（set_common.vim, keymap.vimが該当）
