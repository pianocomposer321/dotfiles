local f = require("functions")

local M = {}

function M.setup()
    f.map("n", "<LEADER>f", "<CMD>lua require('fzf-lua').files()<CR>")
end

return M
