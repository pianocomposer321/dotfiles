local keys = {
  ['cr']        = vim.api.nvim_replace_termcodes('<CR>', true, true, true),
  ['ctrl-y']    = vim.api.nvim_replace_termcodes('<C-y>', true, true, true),
  ['ctrl-y_cr'] = vim.api.nvim_replace_termcodes('<C-y><CR>', true, true, true),
}

local function _cr_action()
  if vim.fn.pumvisible() ~=0 then
    local item_selected = vim.fn.complete_info()['selected'] ~= -1
    return item_selected and keys['ctrl-y'] or keys['ctrl-y_cr']
  else
    return require("mini.pairs").cr()
  end
end

return {
  {
    "echasnovski/mini.nvim",
    event = "VeryLazy",
    config = function()
      --- Surround
      require("mini.surround").setup {}

      --- Auto pairs
      -- require("mini.pairs").setup {}

      --- Commenting
      require("mini.comment").setup {}

      --- Completion
      -- require("mini.completion").setup {
      --   mappings = {
      --     force_twostep = '',
      --     force_fallback = '',
      --   }
      -- }
      -- vim.keymap.set("i", "<CR>", cr_action, {expr = true})
    end,
  },
}
