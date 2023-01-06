return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    -- commit = "ceb1ad90a20c39a87799e5f0facfa02d7cb19a23",
    config = function()
      vim.cmd.colorscheme("onedark")
    end
  },
}
