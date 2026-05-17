-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { silent = true }

-- X, Cキーで文字削除する際にレジスタに入れない
keymap("n", "x", '"_x', opts)
keymap("v", "x", '"_x', opts)
keymap("n", "c", '"_c', opts)
keymap("v", "c", '"_c', opts)

-- 使わないキーマップを無効化
keymap("n", "ZZ", "<Nop>", opts)
keymap("n", "ZQ", "<Nop>", opts)
keymap("n", "Q", "<Nop>", opts)

-- SpaceはLeaderキーとして扱うのでデフォルトの動作（カーソル右移動）を無効化
-- lazy.vimで無効化されているためあらためて設定する必要はない
-- keymap("n", "<Space>", "<Nop>", opts)

-- move tabs
if not vim.g.vscode then
  keymap("n", "<Left>", "<C-w>h", opts)
  keymap("n", "<Right>", "<C-w>l", opts)
  keymap("n", "<Up>", "<C-w>k", opts)
  keymap("n", "<Down>", "<C-w>j", opts)
  keymap("n", "<S-q><S-q>", "<C-w>q", opts)
end

-- カーソル移動
keymap({ "n", "v", "o" }, "<S-h>", "^", opts)
keymap({ "n", "v", "o" }, "<S-l>", "$", opts)

-- ウィンドウ移動
if not vim.g.vscode then
  keymap({ "n", "v", "o" }, "<C-j>", "<C-w>j", opts)
  keymap({ "n", "v", "o" }, "<C-h>", "<C-w>h", opts)
  keymap({ "n", "v", "o" }, "<C-k>", "<C-w>k", opts)
  keymap({ "n", "v", "o" }, "<C-l>", "<C-w>l", opts)
end
