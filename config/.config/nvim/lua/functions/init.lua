local M = {}

function M.run_python_file()
	local file = vim.fn.expand("%")
	vim.cmd("bot 10new")
	vim.fn.termopen("python3 " .. file, {on_exit = function(job_id, data, event)
		print("Finished!")
	end})
	vim.cmd("startinsert")
end

function M.map(mode, lhs, rhs, options)
    if not options then
        options = {noremap = true, silent = true}
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
