
if vim.fn.exists '+termguicolors' then
  vim.cmd [[
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
  colorscheme spaceduck
  ]]
end

require('feline').setup()
