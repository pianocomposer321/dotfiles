local M = {}

local Wrapper = require("consolation").Wrapper
local FloatermWrapper = Wrapper:new()

function M.setup()
    -- local floaterm = require("consolation.defaults.floaterm")
    local bot = require("consolation.defaults.bot")
    require("consolation").setup(bot)
end

function M.toggle()
    FloatermWrapper:toggle()
end

M.runner = FloatermWrapper

return M
