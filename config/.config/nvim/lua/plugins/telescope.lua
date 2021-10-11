local f = require("functions")

local M = {}

function M.setup()
    require('telescope').setup {
        defaults = {
            layout_config = {
                horizontal = {
                    prompt_position = "top"
                }
            },
            sorting_strategy = "ascending"
        }
    }

    f.map("n", "<LEADER>f", "<CMD>lua require('telescope.builtin').find_files({hidden=true})<CR>")
    f.map("n", "<LEADER>b", "<CMD>lua require('telescope.builtin').buffers()<CR>")
end

return M
