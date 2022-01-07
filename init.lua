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

require('completion')

require('nvim-tree').setup {}

vim.o.ignorecase = true
vim.o.mouse = 'a'
vim.o.smartcase = true
vim.o.termguicolors = true
vim.o.updatetime = 250
vim.o.wrap = false
vim.o.colorcolumn = "78"
vim.o.scrolloff = 3

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.ai = true
vim.o.wrap = true

vim.opt.backspace = {'indent', 'eol', 'start'}


vim.wo.number = true
vim.wo.signcolumn = 'yes'

vim.cmd [[
nnoremap <leader>q <cmd>qa!<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <Enter> o<ESC>

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
]]

g.indent_blankline_char = '┊'
g.indent_blankline_filetype_exclude = { 'help', 'packer' }
g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
g.indent_blankline_char_highlight = 'LineNr'
g.indent_blankline_show_trailing_blankline_indent = false
