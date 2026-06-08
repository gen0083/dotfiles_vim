-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- neovimでデフォルトでnoremapでkeymapを設定するため、特に指定しなければvimでいうところのnoremapになる
-- mapを設定したい場合は, keymap({"n"}, "a", "b", { remap = true })のように指定する

local keymap = vim.keymap.set
local opts = { silent = true }

-- X, Cキーで文字削除する際にレジスタに入れない
keymap({"n", "v"}, "x", '"_x', opts)
keymap({"n", "v"}, "c", '"_c', opts)

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

-- rとC-rの動作を入れ替える (rでRedo、C-rで1文字置換)
keymap("n", "r", "<C-r>", opts)
keymap("n", "<C-r>", "r", opts)
-- ビジュアルモードでの一括置換もC-rに割り当てる（基本的に暴発しにくくする）
keymap("v", "r", "<Nop>", opts)
keymap("v", "<C-r>", "r", opts)

if vim.g.vscode then
  -- VSCode環境ではvim-visual-multiが動かないため、VSCodeネイティブのマルチカーソル機能に横流しする
  vim.keymap.set({ "n", "x" }, "<C-Down>", function()
    vim.fn.VSCodeNotify("editor.action.insertCursorBelow")
  end, { desc = "Add Cursor Down (VSCode)" })
  
  vim.keymap.set({ "n", "x" }, "<C-Up>", function()
    vim.fn.VSCodeNotify("editor.action.insertCursorAbove")
  end, { desc = "Add Cursor Up (VSCode)" })

else
  -- ターミナル上のNeovimでは vim-visual-multi の機能に割り当てる
  vim.keymap.set({ "n", "x" }, "<C-Down>", "<Plug>(VM-Add-Cursor-Down)", { desc = "Add Cursor Down" })
  vim.keymap.set({ "n", "x" }, "<C-Up>", "<Plug>(VM-Add-Cursor-Up)", { desc = "Add Cursor Up" })
end
