require('plugins')

local vim = vim
local utils = require 'config.utils'
local g = vim.g
local map = utils.map


vim.opt.listchars = {
    eol = "↴",
}

require("indent_blankline").setup {
    show_end_of_line = true,
}

require('neoscroll').setup()


require('lspconfig').pyright.setup{}
require('lspconfig').pylsp.setup{}
require "lsp_signature".setup()

-- require('disable_builtin').disable_distribution_plugins()

g.mapleader = ' '

vim.o.mouse = 'a'
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]

-- Quit, close buffers, etc.
map('n', '<leader>q', '<cmd>qa!<cr>', silent)
map('n', '<Enter>', 'o<ESC>', silent)
map('n', '<C-n>', '<cmd>NvimTreeToggle<cr>', silent)
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', silent)
map('n', '<cmd>W<Enter>', '<cmd>w<cr>', silent)

local M = {}

M.plugins, M.options = {}, {}

M.plugins = {
    lspconfig = {
        servers = {"pylsp", "pyright"},
    },
}

return M

