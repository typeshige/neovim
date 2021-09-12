local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'kyazdani42/nvim-web-devicons'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Colorschema
  use 'bluz71/vim-nightfly-guicolors'

end)
