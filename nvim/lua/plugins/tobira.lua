return {
  "kamegoro/tobira.nvim",
  event = "VeryLazy",
  opts = {
    lang                = 'ja',    -- 'en' | 'ja'
    idle_delay          = 1500,    -- ms of inactivity before showing an ambient suggestion
    idle_suggestions    = true,    -- enable ambient idle suggestions
    suggestion_cooldown = 300,     -- s between automatic suggestions (default: 5 min)
    max_shown           = 1,       -- max times to suggest the same command per session
  },
}
