-- ~/.config/nvim/lua/plugins/feline/colors.lua
-- One-dark colors
local function extract_nvim_hl(name)
  local hl_str = vim.api.nvim_exec('highlight ' .. name, true)
  return {
    fg = hl_str:match('guifg=(#[0-9A-Fa-f]+)') or '#444444',
    bg = hl_str:match('guibg=(#[0-9A-Fa-f]+)') or '#1E1E1E',
    style = hl_str:match('gui=(#[0-9A-Fa-f]+)') or '',
    name = name,
  }
end

local status_line_hl = extract_nvim_hl("StatusLine")

local _M = {
    bg = status_line_hl.bg,
    fg = status_line_hl.fg,
    -- yellow = '#e5c07b',
    yellow = "#e0af68",
    -- cyan = '#8abeb7',
    cyan = '#56b6c2',
    -- darkblue = '#528bff',
    darkblue = '#61afef',
    -- green = '#98c379',
    green = '#98c379',
    -- orange = '#d19a66',
    orange = '#d19a66',
    -- violet = '#b294bb',
    violet = '#c678dd',
    -- magenta = '#ff80ff',
    magenta = '#c678dd',
    -- blue = '#61afef';
    blue = '#61afef',
    -- red = '#e88388'
    red = '#e86671'
}

return _M
