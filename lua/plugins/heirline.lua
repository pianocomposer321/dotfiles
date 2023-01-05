local ViMode = {
    -- get vim current mode, this information will be required by the provider
    -- and the highlight functions, so we compute it only once per component
    -- evaluation and store it as a component attribute
    init = function(self)
        self.mode = vim.fn.mode(1) -- :h mode()

        -- execute this only once, this is required if you want the ViMode
        -- component to be updated on operator pending mode
        if not self.once then
            vim.api.nvim_create_autocmd("ModeChanged", {
                pattern = "*:*o",
                command = 'redrawstatus'
            })
            self.once = true
        end
    end,
    -- Now we define some dictionaries to map the output of mode() to the
    -- corresponding string and color. We can put these into `static` to compute
    -- them at initialisation time.
    static = {
        mode_names = { -- change the strings if you like it vvvvverbose!
            n = "NOR",
            no = "NOP",
            nov = "NOP",
            noV = "NOP",
            ["no\22"] = "NOP",
            niI = "NOR",
            niR = "NOR",
            niV = "NOR",
            nt = "NOR",
            v = "VIS",
            vs = "VOP",
            V = "VLN",
            Vs = "VOP",
            ["\22"] = "VBL",
            ["\22s"] = "VBL",
            s = "SEL",
            S = "SLN",
            ["\19"] = "SBL",
            i = "INS",
            ic = "INS",
            ix = "INS",
            R = "REP",
            Rc = "REP",
            Rx = "REP",
            Rv = "REP",
            Rvc = "REP",
            Rvx = "REP",
            c = "CMD",
            cv = "EX",
            r = "...",
            rm = "MOR",
            ["r?"] = "CFM",
            ["!"] = "SHL",
            t = "TER",
        },
        mode_colors = {
            n = "red" ,
            i = "green",
            v = "cyan",
            V =  "cyan",
            ["\22"] =  "cyan",
            c =  "orange",
            s =  "purple",
            S =  "purple",
            ["\19"] =  "purple",
            R =  "orange",
            r =  "orange",
            ["!"] =  "red",
            t =  "red",
        }
    },
    -- We can now access the value of mode() that, by now, would have been
    -- computed by `init()` and use it to index our strings dictionary.
    -- note how `static` fields become just regular attributes once the
    -- component is instantiated.
    -- To be extra meticulous, we can also add some vim statusline syntax to
    -- control the padding and make sure our string is always at least 2
    -- characters long. Plus a nice Icon.
    provider = function(self)
        return "%4("..self.mode_names[self.mode].."%)"
    end,
    -- Same goes for the highlight. Now the foreground will change according to the current mode.
    hl = function(self)
        local mode = self.mode:sub(1, 1) -- get only the first mode character
        return { fg = self.mode_colors[mode], bold = true, }
    end,
    -- Re-evaluate the component only on ModeChanged event!
    -- This is not required in any way, but it's there, and it's a small
    -- performance improvement.
    update = {
        "ModeChanged",
    },
}

return {
  "rebelot/heirline.nvim",
  event = "VeryLazy",
  init = function()
      vim.cmd("set statusline=\\ ")
  end,
  config = function()
    local conditions = require("heirline.conditions")
    local utils = require("heirline.utils")
    local heirline = require("heirline")

    local colors = {
      bright_bg = utils.get_highlight("Folded").bg,
      bright_fg = utils.get_highlight("Folded").fg,
      red = utils.get_highlight("DiagnosticError").fg,
      dark_red = utils.get_highlight("DiffDelete").bg,
      green = utils.get_highlight("String").fg,
      blue = utils.get_highlight("Function").fg,
      gray = utils.get_highlight("NonText").fg,
      orange = utils.get_highlight("Constant").fg,
      purple = utils.get_highlight("Statement").fg,
      cyan = utils.get_highlight("Special").fg,
      diag_warn = utils.get_highlight("DiagnosticWarn").fg,
      diag_error = utils.get_highlight("DiagnosticError").fg,
      diag_hint = utils.get_highlight("DiagnosticHint").fg,
      diag_info = utils.get_highlight("DiagnosticInfo").fg,
      -- git_del = utils.get_highlight("diffDeleted").fg,
      -- git_add = utils.get_highlight("diffAdded").fg,
      -- git_change = utils.get_highlight("diffChanged").fg,
    }
    heirline.load_colors(colors)

    local statusline = { ViMode }

    heirline.setup(statusline)
  end
}
