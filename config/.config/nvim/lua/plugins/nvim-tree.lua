local M = {}

function M.setup()
    vim.g.nvim_tree_side = 'right'
    vim.g.nvim_tree_indent_markers = 1
    vim.g.nvim_tree_disable_netrw = 0
    vim.g.nvim_tree_hijack_netrw = 0
end

return M
