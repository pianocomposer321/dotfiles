return {
  {
    "nvim-orgmode/orgmode",
    -- ft = "org",
    lazy = false,
    config = function()
      require("orgmode").setup_ts_grammar()
      require("orgmode").setup {
        org_agenda_files = {"~/Documents/notes/**/*"},
        org_default_notes_file = "~/Documents/notes/refile.org",
      }
    end
  },
  {
      "akinsho/org-bullets.nvim",
      -- ft = "org",
      lazy = false,
      config = function()
        require("org-bullets").setup {
          concealcursor = true,
          checkboxes = {
            half = { "-", "OrgTSCheckboxHalfChecked" },
            todo = { "×", "OrgTODO" },
          },
        }
      end,
  },
}
