return {
  "keaising/im-select.nvim",
  cond = function()
    return vim.fn.has("mac") == 1
  end,
  event = { "InsertEnter", "FocusGained", "WinEnter" },
  config = function()
    require("im_select").setup({
      -- ノーマルモードに戻った際に強制的に切り替えるIMEのIDを指定します。
      -- ご自身の環境の「英数入力」のIDに書き換えてください。
      -- 確認方法はターミナルで英数入力状態で macism を実行します。
      default_im_select = "com.apple.keylayout.US",
      set_default_events = { "VimEnter", "InsertLeave", "CmdlineLeave", "FocusGained", "WinEnter" },
      set_previous_events = {}, 
      -- バックエンドとして macism を使用するように指定します
      default_command = "macism",
    })
  end,
}
