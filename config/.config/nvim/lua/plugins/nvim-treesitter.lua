local M = {}

function M.setup()
    require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        highlight = {
            enable = true,              -- false will disable the whole extension
            disable = {},  -- list of language that will be disabled
            additional_vim_regex_highlighting = false,
        },
        -- indent = {
        --     enable = true
        -- }
    }
end

return M
