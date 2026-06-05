" vim.surroundのデフォルトマッピングを無効化（csなどを追加しないようにする）
let g:surround_no_mappings = 1

" mini.surround のキーバインド (sd: Delete, sr: Replace, sa: Add) に寄せる

" ideavimはCSurroundで登録されていて, vimはCsurroundになる
" CSurroundだと改行が追加されてしまうため、ifで分岐
if has('ide')
  nmap gsd <Plug>DSurround
  nmap gsr <Plug>CSurround
  nmap gsa <Plug>YSurround
else
  nmap gsd <Plug>Dsurround
  nmap gsr <Plug>Csurround
  nmap gsa <Plug>Ysurround
end

xmap gsa <Plug>VSurround
