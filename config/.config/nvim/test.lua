function _G.test_term()
    local pwinid = vim.fn.win_getid(vim.fn.winnr('#'))
    local cur_winid = vim.api.nvim_get_current_win()
    if pwinid ~= cur_winid and vim.fn.winnr('$') > 1 then
        if vim.fn.win_gettype(cur_winid) == '' then
            require('bqf.magicwin.core').attach(cur_winid, pwinid)
            vim.cmd(
                ([[au BufWinEnter <buffer> lua require('bqf.magicwin.core').attach(%d, %d)]]):format(
                    cur_winid, pwinid))
        end
    end
end
vim.cmd('pa nvim-bqf')
vim.cmd('aug TestMagicWin')
vim.cmd('au!')
vim.cmd([[au TermOpen * lua _G.test_term()]])
vim.cmd('aug END')
