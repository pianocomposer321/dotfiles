local M = {}

-- M.yabs = require("yabs")

function M.setup()
    -- M.yabs:setup {
    --     method = function(cmd)
    --         Runner:send_command {cmd = cmd}
    --     end,
    --     languages = {
    --         python = function()
    --             local file = vim.fn.expand("%:~:.")
    --             return "python3 " .. file
    --         end,
    --         lua = {
    --             function()
    --                 vim.cmd("luafile %")
    --             end
    --         }
    --     }
    -- }
    local yabs = require("yabs")

    local languages = {}

    languages.lua = {tasks = {}}
    languages.lua.tasks.run = {
        command = "luafile %",
        type = "vim"
    }

    languages.python = {tasks = {}}
    languages.python.tasks.run = {command = "python3 %"}

    yabs:setup {
        default_output = "consolation",
        languages = languages
    }
end

return M
