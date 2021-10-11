local map = require("functions").map

local M = {}

function M.setup()
    require'nvim-tmux-navigation'.setup {
        disable_when_zoomed = true, -- defaults to false
        keybindings = {
            left = "<M-h>",
            down = "<M-j>",
            up = "<M-k>",
            right = "<M-l>",
            -- previous = "<M-\>",
        }
    }
    map("t", "<M-h>", "<CMD>lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<CR>")
    map("t", "<M-j>", "<CMD>lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<CR>")
    map("t", "<M-k>", "<CMD>lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<CR>")
    map("t", "<M-l>", "<CMD>lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<CR>")
end

return M
