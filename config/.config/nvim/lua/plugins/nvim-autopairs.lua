local npairs = require'nvim-autopairs'
local Rule = require'nvim-autopairs.rule'
local cond = require'nvim-autopairs.conds'
local utils = require('nvim-autopairs.utils')

local M = {}

function M.setup()
    npairs.setup {}
    require("nvim-autopairs.completion.cmp").setup({
        map_cr = true
    })
    npairs.add_rules({
        Rule('', '}')
            :use_key('}')
            :with_cr(cond.none())
            :with_move(cond.none())
            :with_pair(function()
                local row, col = utils.get_cursor()
                local line = utils.text_get_current_line()
                -- check cursor on the end of line
                if #line ~= col then
                    return false
                end
                local next_line = utils.text_get_line(0, row + 1)
                -- check the next line is '}'
                if next_line == '}' then
                    return true
                end
                return false
            end)
            :set_end_pair_length(0)
            :replace_endpair(function()
                --move to next line and insert
                return '<bs><esc>ja'
            end),
    })
end

return M
