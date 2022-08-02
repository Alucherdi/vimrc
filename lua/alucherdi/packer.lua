return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'

    use 'kyazdani42/nvim-tree.lua'

    -- <3
    use 'tpope/vim-fugitive'

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    use 'kyazdani42/nvim-web-devicons'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'lukas-reineke/indent-blankline.nvim'

    use 'sainnhe/everforest'
end)