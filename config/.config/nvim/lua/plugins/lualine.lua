local M = {}

function M.setup()
    require("lualine").setup {
        options = {
            theme = "onedark"
        }
    }

    vim.opt.showmode = false
end

return M
