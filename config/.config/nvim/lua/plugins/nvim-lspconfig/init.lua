local nvim_lsp = require("lspconfig")
local lspinstall = require("lspinstall")
lspinstall.setup()

local servers = lspinstall.installed_servers()

local M = {}

function M.setup()
    for _, server in pairs(servers) do
        if server ~= 'sumneko_lua' then
            nvim_lsp[server].setup{}
        end
    end

    nvim_lsp.rust_analyzer.setup{}
end

return M
