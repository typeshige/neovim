local g = vim.g
local vim = vim

g.mapleader = [[ ]]
g.maplocalleader = [[,]]

require('plugins')
require('ui')

require('lspconfig').pyright.setup {}
require('lspconfig').pylsp.setup {}

require('neogit').setup {}
require('gitsigns').setup {}

require('which-key').setup {}

require('trouble').setup {}

require('nvim-treesitter.configs').setup {
	highlight = {
		enable = true,
	}
}

require('Comment').setup {}

require('feline').setup {}

require('neoscroll').setup {}

vim.o.ignorecase = true
vim.o.mouse = 'a'
vim.o.smartcase = true
vim.o.termguicolors = true
vim.o.updatetime = 250
vim.o.wrap = false

vim.wo.number = true
vim.wo.signcolumn = 'yes'

vim.cmd [[
nnoremap <leader>q <cmd>qa!<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <Enter> o<ESC>

tnoremap <C-A-n> <cmd>NnnExplorer<CR>
nnoremap <C-A-n> <cmd>NnnExplorer<CR>
tnoremap <C-A-p> <cmd>NnnPicker<CR>
nnoremap <C-A-p> <cmd>NnnPicker<CR>

tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>
]]
