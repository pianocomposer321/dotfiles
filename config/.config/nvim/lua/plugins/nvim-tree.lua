local M = {}

function M.setup()
    vim.g.nvim_tree_indent_markers = 1
    require("nvim-tree").setup {
        disable_netrw = false,
        hijack_netrw = false,
        view = {
            side = 'right'
        }
    }
end

return M
