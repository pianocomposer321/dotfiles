return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")

      local has_cmp_nvim_lsp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      local capabilities = {}
      if has_cmp_nvim_lsp then
        capabilities = cmp_nvim_lsp.default_capabilities()
      end

      local function on_attach(_, bufnr)
        local bufopts = { buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "<LEADER>k", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("n", "<LEADER>r", vim.lsp.buf.rename, bufopts)
        vim.keymap.set("n", "<LEADER>a", vim.lsp.buf.code_action, bufopts)
        vim.keymap.set("v", "<LEADER>a", vim.lsp.buf.code_action, bufopts)
      end

      local lsp_opts = {
        capabilities = capabilities,
        on_attach = on_attach
      }

      require("mason").setup()
      require("mason-lspconfig").setup()

      require("mason-lspconfig").setup_handlers {
        function (server_name)
          lspconfig[server_name].setup(lsp_opts)
        end,

        ["sumneko_lua"] = function()
          local has_neodev, neodev_lsp = pcall(require, "neodev.lsp")
          local before_init
          if has_neodev then
            before_init = neodev_lsp.before_init
          end

          lspconfig.sumneko_lua.setup(vim.tbl_extend("force", lsp_opts, {
            before_init = before_init,
            settings = {
              Lua = {
                diagnostics = {
                  globals = {"vim"}
                }
              }
            },
          }))
        end
      }
    end,
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim"
    },
  },
  "williamboman/mason-lspconfig.nvim",
  {
    "j-hui/fidget.nvim",
    event = "BufReadPost",
    config = function() require("fidget").setup() end
  },
}
