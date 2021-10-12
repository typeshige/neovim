local fn = vim.fn
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]
local packer = require 'packer'

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'single' }
    end,
    prompt_border = 'single',
  },
  git = {
    clone_timeout = 600, -- Timeout, in seconds, for git clones
  },
  auto_clean = true,
  compile_on_sync = true,
  profile = {
    enable = true,
    threshold = 1,
  },
  luarocks = {
    python_cmd = 'python -m',
  },
  config = {
    compile_path = vim.fn.stdpath 'config' .. '/lua/packer_compiled.lua',
  },
}

local use = packer.use

return packer.startup(function()

  use { 'wbthomason/packer.nvim' }

  use 'lewis6991/impatient.nvim'

  use {
	  'TimUntersberger/neogit', 
	  requires = {
		  'nvim-lua/plenary.nvim'
	  }
  }

  use 'neovim/nvim-lspconfig'

  use 'kyazdani42/nvim-web-devicons'

  use 'karb94/neoscroll.nvim'

  use 'numToStr/Comment.nvim'

  use 'kevinhwang91/rnvimr'

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use { 
	  'lewis6991/gitsigns.nvim', 
	  requires = { 
		  'nvim-lua/plenary.nvim' 
	  }
  }

  use 'Yagua/nebulous.nvim'
  use 'pineapplegiant/spaceduck'
  use 'Pocco81/Catppuccino.nvim'

  use 'famiu/feline.nvim'

  use { 
	  'nvim-telescope/telescope.nvim', 
	  requires = { 
		  { 'nvim-lua/popup.nvim' }, 
		  { 'nvim-lua/plenary.nvim' }, 
		  { 'nvim-telescope/telescope-packer.nvim', opt = true }, 
		  { 'nvim-telescope/telescope-project.nvim', opt = true }, 
	  }, 
	  config = function() end, 
	  cmd = 'Telescope', 
	  event = 'BufWinEnter', 
  }

  use 'folke/which-key.nvim'
  use 'folke/trouble.nvim'

end)
