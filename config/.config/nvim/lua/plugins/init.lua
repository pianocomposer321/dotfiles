vim.cmd [[packadd packer.nvim]]

local status = require("packer").startup(function()
    use 'wbthomason/packer.nvim'

    use {
        'tpope/vim-fugitive'
    }

    use {
        'numToStr/FTerm.nvim',
        config = function() end
    }
    use 'voldikss/vim-floaterm'

    use {
        '~/git_repos/consolation.nvim',
        -- config = function() require("plugins/consolation").setup() end
    }
    use {
        '~/git_repos/yabs.nvim',
    }

    use {
        'terrortylor/nvim-comment',
        -- config = function() require("plugins/nvim-comment").setup() end
    }

    use {
        'navarasu/onedark.nvim',
        config = function() require("onedark").setup() end
    }
    use 'nvim-lua/plenary.nvim'
    use {
        'tjdevries/nlua.nvim',
        -- config = function() require("plugins/nlua").setup() end
    }
    use {
        'neovim/nvim-lspconfig',
        requires = 'kabouzeid/nvim-lspinstall',
        -- config = function() require("plugins/nvim-lspconfig").setup() end
    }
    use {
        'hrsh7th/nvim-compe',
        -- config = function() require("plugins/nvim-compe").setup() end,
    }
    use {
        'ray-x/lsp_signature.nvim',
        -- config = function() require("plugins/lsp_signature").setup() end
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            vim.g.nvim_tree_side = 'right'
            vim.g.nvim_tree_indent_markers = 1
            vim.g.nvim_tree_disable_netrw = 0
            vim.g.nvim_tree_hijack_netrw = 0
        end
        -- config = function() require("plugins/nvim-tree").setup() end
    }
    use {
        'windwp/nvim-autopairs',
        -- config = function() require("plugins/nvim-autopairs").setup() end,
    }

    use {
        'blackCauldron7/surround.nvim',
        -- config = function() require("plugins/surround").setup() end
    }
    use {
        'ibhagwan/fzf-lua',
        requires = {
            'vijaymarupudi/nvim-fzf',
            'kyazdani42/nvim-web-devicons'
        },
        -- config = function() require("plugins/fzf-lua").setup() end
    }
    use {
        'hoob3rt/lualine.nvim',
        -- config = function() require("plugins/lualine").setup() end
    }
    use {
        'kdheepak/tabline.nvim',
        config = function()
            require'tabline'.setup {
                enable = true
            }
            vim.cmd[[
                set guioptions-=e " Use showtabline in gui vim
                set sessionoptions+=tabpages,globals " store tabpages and globals in session
            ]]
        end,
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        -- config = function() require("plugins/nvim-treesitter").setup() end
    }
    -- use 'numToStr/Navigator.nvim'
    use {
        'alexghergh/nvim-tmux-navigation',
        -- config = function() require("plugins/nvim-tmux-navigation").setup() end
    }
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
end)

return status
