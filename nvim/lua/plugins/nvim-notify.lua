return {
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    config = function()
      local notify = require("notify")
      -- notify.setup {
      --   top_down = false
      -- }
      vim.notify = notify
    end
  },
}
