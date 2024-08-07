local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'sainnhe/gruvbox-material',
        as = 'gruvbox-material',
        config = function()
            vim.cmd('colorscheme gruvbox-material')
        end
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'mfussenegger/nvim-lint'
    use 'mhartington/formatter.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'puremourning/vimspector'
    use 'airblade/vim-gitgutter'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'theprimeagen/harpoon'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
