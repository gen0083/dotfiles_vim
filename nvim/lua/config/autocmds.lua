-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- IMEの自動オフ (Vimの function.vim と同等の処理)
-- macの場合にのみ処理を行う
if vim.fn.has("mac") == 1 then
  vim.api.nvim_create_autocmd({ "VimEnter", "InsertLeave", "CmdlineLeave", "FocusGained", "WinEnter" }, {
    group = vim.api.nvim_create_augroup("ImeAutoOff", { clear = true }),
    pattern = "*",
    callback = function()
      -- インサートモード時には実行しない
      if vim.fn.mode() ~= "i" then
        vim.fn.system("macism com.apple.keylayout.US")
      end
    end,
  })
end
