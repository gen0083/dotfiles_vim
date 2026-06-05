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

neovimとvimで異なるPluginを使っている場合がある
ideavimが使えるプラグインが限られているので、できればideavimでも使えるプラグインを使用したいという思惑がある

## fugitive

:Gwrite　→　git add

:Gstatus　→　git status
なお、Gstatus表示中に`C`で`git commit`に移行するることができる。やってることは`:Gcommit`と同じ。

:Gcommit　→　git commit
コミットメッセージを記入して、:wq等でファイルの書き込み＆閉じるを行うことでgit commitが実行される。なお、`#`で始まる行は全て無視される（コミットメッセージに含まれない）。

## 囲み系

neovimでは[mini.surround](https://github.com/nvim-mini/mini.surround)、vimでは[surround.vim](https://github.com/tpope/vim-surround)を使用
keymapはmini.surroundに合わせる方向で調整している

`gsa` - 囲み文字を追加
`gsr` - 囲み文字の置換
`gsd` - 囲み文字の削除

ちなみに`gsa[`と`gsa]`で選択範囲をどちらも`[]`で囲うが、前者は`[ text ]`とスペースが入るのに対し、後者は`[text]`とスペースなしになる違いがある。

## emmet-vim

VimでEmmetを使えるようにするプラグイン。`<C-Y><C-,>`でタグに展開する。

[Emmet-vim](https://github.com/mattn/emmet-vim)

## コメント系

neovimでは[ts-comments.nvim](https://github.com/folke/ts-comments.nvim)を、vimでは[vim-commentary](https://github.com/tpope/vim-commentary)を使用

`gc` - ビジュアルモードで複数行選択した後に入力したら選択行をコメントにする（コメントアウト←→通常の切り替え）
`gcc` - カーソル行のコメントを切り替え
`gcap` - パラグラフをまとめてコメント（空白行で区切られた範囲）
`gcu` - 選択行のコメントを外す（vim-commantaryのみ？）

## カーソル移動系

neovimでは[flash.nvim](https://github.com/folke/flash.nvim)、vimでは[easymotion](https://github.com/easymotion/vim-easymotion)を使用

`s`で画面内の文字列を入力してジャンプする


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
