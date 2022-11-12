require('toggleterm').setup({
  shell = vim.fn.has('win32') == 1 and 'pwsh -NoLogo' or '/usr/bin/fish',
  open_mapping = '<C-`>',
  shade_terminals = false,
  on_open = function() vim.wo.spell = false end,
})
