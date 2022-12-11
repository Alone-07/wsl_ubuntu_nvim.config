return require('packer').startup(function(use) 
    use 'wbthomason/packer.nvim'-- Packer
    use "EdenEast/nightfox.nvim" 
    use 'kyazdani42/nvim-tree.lua' -- nerd tree
    use 'kyazdani42/nvim-web-devicons' --icons
    use 'rcarriga/nvim-notify' -- notifier
    use 'romgrk/barbar.nvim' --bar
    use 'nvim-lualine/lualine.nvim' -- lualine or airline
    use 'sunjon/shade.nvim' --shade or multi window
    
    use 'neovim/nvim-lspconfig' --LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use "williamboman/nvim-lsp-installer" --lsp Installer
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    } --Treesitter
     use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'glepnir/dashboard-nvim'} --dashboard
    use {
    "lukas-reineke/indent-blankline.nvim",
     config = function()
        require("indent_blankline").setup { filetype_exclude = { "dashboard" }
        } --dashboard requirement or some for dashboard
      end
        }
    use {
        "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
    }--autopairs
    use 'windwp/nvim-ts-autotag' --autoTag
    use('jose-elias-alvarez/null-ls.nvim') --dependices for prettier
    use "terrortylor/nvim-comment" --commenting
    use { "ellisonleao/gruvbox.nvim" } --gruvbox
    use {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
    use {
        'xiyaowong/nvim-transparent',
  --       config = require("transparent").setup({
  -- enable = false, -- boolean: enable transparent
  -- extra_groups = { -- table/string: additional groups that should be cleared
  --   -- In particular, when you set it to 'all', that means all available groups
  --
  --   -- example of akinsho/nvim-bufferline.lua
  --   "BufferLineTabClose",
  --   "BufferlineBufferSelected",
  --   "BufferLineFill",
  --   "BufferLineBackground",
  --   "BufferLineSeparator",
  --   "BufferLineIndicatorSelected",
  -- },
  -- exclude = {}, -- table: groups you don't want to clear
-- })
    } -- transparent the bg
} -- terminal
end)
