-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- タイトルバーにファイルのパス情報を表示
opt.title = true
-- コマンドラインで使われる画面上の行数 (LazyVimデフォルトは0または1)
opt.cmdheight = 1
-- 検索時にファイルの先頭/末尾でループしない
opt.wrapscan = false
-- バックアップ・スワップファイルを作成しない
opt.backup = false
opt.swapfile = false
-- カーソルを行頭・行末で止まらないようにする (Neovimデフォルトの b,s に追加)
-- <> n, vで左右キーで行をまたぐ、 [] iで左右キーで行をまたぐ
opt.whichwrap:append("<,>,[,]")
-- タブと行の続きを可視化する (LazyVimのリスト表示設定に上書き/追加)
opt.listchars:append({ tab = "> " })
