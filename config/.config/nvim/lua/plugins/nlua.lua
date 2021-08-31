local M = {}

function M.setup()
    require('nlua.lsp.nvim').setup(require('lspconfig'), {
        globals = {
            "vim",
            "use"
        }
    })
end

return M
