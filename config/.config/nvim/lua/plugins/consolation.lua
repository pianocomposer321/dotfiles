local M = {}

local Wrapper = require("consolation").Wrapper
local FloatermWrapper = Wrapper:new()

function M.setup()
    local floaterm = require("consolation.defaults.floaterm")
    require("consolation").setup(floaterm)
end

function M.toggle()
    FloatermWrapper:toggle()
end

M.runner = FloatermWrapper

return M
