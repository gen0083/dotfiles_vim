" vim.surroundのデフォルトマッピングを無効化（csなどを追加しないようにする）
let g:surround_no_mappings = 1

" mini.surround のキーバインド (sd: Delete, sr: Replace, sa: Add) に寄せる

nmap gsd <Plug>Dsurround
nmap gsr <Plug>Csurround
nmap gsa <Plug>Ysurround

xmap gsa <Plug>VSurround
