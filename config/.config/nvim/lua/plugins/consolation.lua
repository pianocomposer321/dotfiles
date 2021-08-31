local M = {}

local Wrapper = require("consolation").Wrapper
local FloatermWrapper = Wrapper:new()

function M.setup()
    local floaterm = require("plugins/floaterm")
    FloatermWrapper:setup {
        create = floaterm.create,
        open = floaterm.open,
        close = floaterm.close,
        kill = floaterm.kill
    }
end

function M.toggle()
    FloatermWrapper:toggle()
end

M.runner = FloatermWrapper

return M
