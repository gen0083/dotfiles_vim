" easy-motionの設定(neovimではflash.nvimを使うためflash.nvimにキーマップを寄せる)
" easy-motionのキーマッピングを無効化する
let g:EasyMotion_do_mapping = 0

" flash.nvimとキーマップをあわせてsで起動（インクリメンタルサーチモード）
map s <Plug>(easymotion-sn)

" 大文字・小文字を区別しない（flash.nvimのデフォルトに合わせる）
let g:EasyMotion_smartcase = 1
