local M = {}

M.yabs = require("yabs")

function M.setup()
    M.yabs:setup {
        method = function(cmd)
            Runner:send_command {cmd = cmd}
        end,
        languages = {
            python = function()
                local file = vim.fn.expand("%:~:.")
                return "python3 " .. file
            end,
            lua = {
                function()
                    vim.cmd("luafile %")
                end
            }
        }
    }
end

function M.build()
    M.yabs:build()
end

return M
