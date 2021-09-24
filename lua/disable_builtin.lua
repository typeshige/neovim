local M = {}

function M.disable_distribution_plugins()
    vim.g.loaded_zipPlugin= 1
    vim.g.loaded_zip = 1

    vim.g.loaded_gzip = 1 
    vim.g.loaded_man = 1
    vim.g.loaded_matchit = 1
    vim.g.loaded_matchparen = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_remote_plugins = 1
    vim.g.loaded_shada_plugin = 1
    vim.g.loaded_spellfile_plugin = 1
    vim.g.loaded_tarPlugin= 1
    vim.g.loaded_2html_plugin= 1
    vim.g.loaded_tutor_mode_plugin= 1


end

return M
