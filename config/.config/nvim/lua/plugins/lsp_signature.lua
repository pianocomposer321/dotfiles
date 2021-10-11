local M = {}

function M.setup()
    require("lsp_signature").setup {
        doc_lines = 0,
        transpancy = 30,
        bind = true,
        handler_opts = {
            border = "none"
        }
    }
end

return M
