vim.cmd [[packadd packer.nvim]]

require("packer").init {git = {clone_timeout = false}}  -- Disable `git clone` timeout
local status = require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'skywind3000/asyncrun.vim'
    use 'skywind3000/vim-terminal-help'

    use {
        "kevinhwang91/nvim-bqf",
        branch = "dev"
    }

    use {
        'tpope/vim-fugitive'
    }

    use {
        'iamcco/markdown-preview.nvim',
        run = "cd app && yarn install"
    }

    use {
        'numToStr/FTerm.nvim',
        config = function() end
    }
    use 'voldikss/vim-floaterm'

    use {
        '~/git_repos/consolation.nvim',
    }
    use  "nvim-telescope/telescope.nvim"
    use {
        '~/git_repos/yabs.nvim',
        requires = "nvim-telescope/telescope.nvim"
    }
    use {
        '~/git_repos/rg.nvim'
    }

    use {
        'terrortylor/nvim-comment',
    }

    use {
        -- 'navarasu/onedark.nvim',
        'ful1e5/onedark.nvim',
        config = function() require("onedark").setup() end
    }
    -- use 'sainnhe/edge'
    -- use {
    --     'rafamadriz/neon',
    --     config = function()
    --         vim.cmd[[colorscheme neon]]
    --     end
    -- }
    use 'nvim-lua/plenary.nvim'
    use {
        'neovim/nvim-lspconfig',
        requires = 'williamboman/nvim-lsp-installer'
    }
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer'
        }
    }
    use {
        'ray-x/lsp_signature.nvim',
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        -- config = function()
        --     vim.g.nvim_tree_side = 'right'
        --     vim.g.nvim_tree_indent_markers = 1
        --     vim.g.nvim_tree_disable_netrw = 0
        --     vim.g.nvim_tree_hijack_netrw = 0
        -- end
    }
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use {
        'blackCauldron7/surround.nvim',
    }
    use {
        'ibhagwan/fzf-lua',
        requires = {
            'vijaymarupudi/nvim-fzf',
            'kyazdani42/nvim-web-devicons'
        },
    }
    use {
        'hoob3rt/lualine.nvim',
        disable = true
    }
    use {
        'famiu/feline.nvim',
        requires = 'lewis6991/gitsigns.nvim'
    }
    use {
        "nanozuki/tabby.nvim",
    }
    -- use {
    --     'kdheepak/tabline.nvim',
    --     config = function()
    --         require'tabline'.setup {
    --             enable = true
    --         }
    --         vim.cmd[[
    --             set guioptions-=e " Use showtabline in gui vim
    --             set sessionoptions+=tabpages,globals " store tabpages and globals in session
    --         ]]
    --     end,
    --     requires = 'kyazdani42/nvim-web-devicons'
    -- }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }
    use {
        'alexghergh/nvim-tmux-navigation',
    }
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
end)

return status
