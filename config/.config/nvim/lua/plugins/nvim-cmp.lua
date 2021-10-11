local M = {}

function M.setup()
    local cmp = require("cmp")
    cmp.setup {
        mapping = {
            ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item())
        },
        sources = {
            { name = 'nvim_lsp' },
            { name = 'nvim_lua' },
            { name = 'path' },
            { name = 'buffer' }
        }
    }
end

return M
