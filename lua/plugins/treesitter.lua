return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- event = "BufReadPre",
    event = "VeryLazy",
    -- lazy = false,
    config = function()
      require'nvim-treesitter.configs'.setup {
        auto_install = true,
        ensure_installed = {
          "lua",
          "norg",
          "org",
          "rust",
          "toml",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "org" },
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<A-o>",
            node_incremental = "<A-o>",
            node_decremental = "<A-i>",
          }
        },
        playground = {
          enable = true,
          disable = {},
          updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
          persist_queries = false, -- Whether the query persists across vim sessions
          keybindings = {
            toggle_query_editor = 'o',
            toggle_hl_groups = 'i',
            toggle_injected_languages = 't',
            toggle_anonymous_nodes = 'a',
            toggle_language_display = 'I',
            focus_language = 'f',
            unfocus_language = 'F',
            update = 'R',
            goto_node = '<cr>',
            show_help = '?',
          },
        }
      }
    end,
    run = ":TSUpdate",
  },
  {
    "Wansmer/treesj",
    dependencies = "nvim-treesitter/nvim-treesitter",
    keys = { "<LEADER>j", "<LEADER>k" },
    config = function() require("treesj").setup() end,
  },
  {
    "nvim-treesitter/playground",
    -- event = "BufReadPre",
    lazy = false,
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
}
