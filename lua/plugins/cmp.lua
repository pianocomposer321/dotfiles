return {
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  -- "hrsh7th/cmp-nvim-lsp-signature-help",
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup {
        sources = {
          { name = "nvim_lsp" },
          -- { name = "nvim_lsp_signature_help" },
          { name = "buffer" },
          { name = "path" },
        },
        mapping = {
          ["<C-N>"] = cmp.mapping.select_next_item(),
          ["<C-P>"] = cmp.mapping.select_prev_item(),
          ["<C-Y>"] = cmp.mapping.confirm(),
        },
        preselect = cmp.PreselectMode.None,
        formatting = {
          format = function(_, vim_item)
            local shortened = string.sub(vim_item.abbr, 1, 19)
            if shortened:len() < vim_item.abbr:len() then
              vim_item.abbr = shortened .. "…"
            end
            return vim_item
          end
        },
      }
    end,
    event = "InsertEnter",
  },
  {
    "folke/neodev.nvim",
    lazy = false,
    config = function()
      require("neodev").setup {
        lspconfig = false
      }
    end
  },
}
