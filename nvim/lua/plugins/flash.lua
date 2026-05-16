return {
  {
    "folke/flash.nvim",
	-- 
	event = "VeryLazy",
    -- optsの中に変更したい設定だけを記述します
    opts = {
      -- 例: ヒント文字として使うキーを変更する場合
      -- labels = "asdfghjklqwertyuiopzxcvbnm",
    },
	keys = {
	  -- 「どのモードの時に、何のキーを押したら、このプラグインを起こすか」の通知（キーマップの設定ではない）
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
	},
  },
}
