return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use 'neovim/nvim-lspconfig'

    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
    use 'nvim-treesitter/nvim-treesitter-context'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {{'kyazdani42/nvim-web-devicons'}}
    }

    -- <3
    use 'tpope/vim-fugitive'
    use 'nvim-lua/popup.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'ThePrimeagen/harpoon'

    use 'lukas-reineke/indent-blankline.nvim'
end)
