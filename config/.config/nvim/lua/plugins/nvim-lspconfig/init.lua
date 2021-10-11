local nvim_lsp = require("lspconfig")
local lsp_installer = require("nvim-lsp-installer")

local M = {}

function M.setup()
--     for _, server in pairs(servers) do
--         if server ~= 'sumneko_lua' then
--             nvim_lsp[server].setup{}
--         end
--     end
--
--     nvim_lsp.rust_analyzer.setup{}

    lsp_installer.on_server_ready(function(server)
        local opts = {}

        if server.name == "sumneko_lua" then
            opts.settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        end

        server:setup(opts)
        vim.cmd [[ do User LspAttachBuffers ]]
    end)

    nvim_lsp.setup {
        capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
end

return M
