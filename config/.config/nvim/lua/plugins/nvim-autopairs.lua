local M = {}

function M.setup()
	require('nvim-autopairs').setup{}
    require("nvim-autopairs.completion.compe").setup({
        map_cr = true
    })
end

return M
