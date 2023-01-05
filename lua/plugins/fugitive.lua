return {
  "tpope/vim-fugitive",
  -- lazy = false,
  event = "VeryLazy",
  init = function()
    vim.keymap.set("n", "<LEADER>gg", "G")
    vim.keymap.set("n", "<LEADER>gc", "G commit")
  end
}
