local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

vim.o.termguicolors = true
vim.cmd [[colorscheme nightfly]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'famiu/feline.nvim'

  use 'kyazdani42/nvim-web-devicons'
  use { 
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = {
      nvim_tree_show_icons = {
        icons = 1,
      }
    }
  }

  use {
     'nvim-telescope/telescope.nvim',
      requires = {
          {'nvim-lua/popup.nvim'},
          {'nvim-lua/plenary.nvim'} 
      }
  }

  use 'neovim/nvim-lspconfig'

  use 'ray-x/lsp_signature.nvim'

  use 'kosayoda/nvim-lightbulb'

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    'lewis6991/spaceless.nvim',
      config = function()
        require'spaceless'.setup()
      end
  }

  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
      }
    end
  }

  use {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {
      }
    end
  }

  use {
      'nvim-treesitter/nvim-treesitter',
      event = "BufRead",
      -- run = ':TSUpdate'
  }

  -- Colorschema
  use 'bluz71/vim-nightfly-guicolors'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'karb94/neoscroll.nvim'

end)

