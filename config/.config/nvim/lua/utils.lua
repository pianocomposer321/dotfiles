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

function M.asyncrun_callback(function_string)
    vim.api.nvim_command('autocmd User AsyncRunStop ++once if g:asyncrun_status ==? "success" | echo "executing callback" | call luaeval("' .. function_string .. '") | endif')
end

function M.build()
    local command = "echo building..."
    vim.fn['asyncrun#run']('', {}, command)
end

function M.run()
    local command = "echo running..."
    vim.fn['asyncrun#run']('', {}, command)
end

function M.build_and_run()
    M.asyncrun_callback("require('utils').run()")
    M.build()
end

return M
