local M = {}

function M.vimrc()
    vim.cmd [[
    tabnew
    tcd $HOME/.config/nvim
    e init.lua
    ]]
end

function M.fzf_dotfiles()
    require('fzf-lua').git_files({cwd = "~/dotfiles"})
end

function M.make_session(quit)
    vim.cmd("mksession! .workspace")
    if quit then vim.cmd("wqa") end
end

return M
