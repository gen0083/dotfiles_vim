" autocmdのideavimとの共通設定

" IMEの自動オフ(needs macism)
" https://github.com/laishulu/macism
" macの場合にのみ処理を行う
if has('mac')
  augroup ImeAutoOff
    autocmd!
    " 指定したイベント時に英数モードにする(ただしInsertMode時は動かさない)
    autocmd VimEnter,InsertLeave,CmdlineLeave,FocusGained * if mode() !=# 'i' | call system('macism com.apple.keylayout.US') | endif
  augroup END
endif
