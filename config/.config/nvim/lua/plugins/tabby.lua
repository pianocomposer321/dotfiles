local filename = require('tabby.filename')
local util = require('tabby.util')

local hl_tabline = util.extract_nvim_hl('TabLine')
local hl_normal = util.extract_nvim_hl('Normal')
-- P(hl_normal)
local hl_tabline_sel = util.extract_nvim_hl('TabLineSel')

-- local active_tab_hl = { fg = hl_tabline_sel.fg, bg = hl_tabline_sel.bg, style = 'bold' }
local active_tab_hl = { fg = hl_normal.fg, bg = hl_normal.bg, style = 'bold' }
local inactive_tab_hl = { fg = hl_tabline.fg, bg = hl_tabline.bg }

local tabline = {
  hl = 'TabLineFill',
  layout = 'active_wins_at_tail',
  -- layout = 'active_wins_at_end',
  head = {
      { '    ', hl = { fg = hl_tabline_sel.fg, bg = hl_tabline_sel.bg, style = 'bold' } },
      { ' ', hl = 'TabLineFill' }
  },
  active_tab = {
    label = function(tabid)
      return {
        '  ' .. tabid .. '  ',
        hl = active_tab_hl,
      }
    end,
    -- right_sep = { ' ', hl = 'TabLineFill' },
  },
  inactive_tab = {
    label = function(tabid)
      return {
        '  ' .. tabid .. '  ',
        hl = inactive_tab_hl,
      }
    end,
    -- right_sep = { ' ', hl = 'TabLineFill' },
  },
  top_win = {
    label = function(winid)
      return {
          '  ' .. filename.unique(winid) .. ' ',
        -- hl = 'TabLine',
        hl = active_tab_hl
      }
    end,
    left_sep = { ' ', hl = 'TabLineFill' },
  },
  win = {
    label = function(winid)
      return {
          '  ' .. filename.unique(winid) .. ' ',
        hl = 'TabLine',
      }
    end,
    left_sep = { ' ', hl = 'TabLineFill' },
  },
}

local M = {}

function M.setup()
    -- require('tabby').setup()
    require('tabby').setup({
        tabline = tabline,
    })
end

return M
