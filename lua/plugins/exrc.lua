return {
  {
    "MunifTanjim/exrc.nvim",
    config = function()
      require("exrc").setup {
        files = {
          ".nvimrc.lua",
          ".nvimrc",
        }
      }
    end
  },
}
