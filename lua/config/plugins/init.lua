require('zephyr') -- Colorscheme

require('config.plugins.asyncrun')
require('config.plugins.autopairs')
require('config.plugins.compe')
require('config.plugins.hop')
require('config.plugins.kommentary')
require('config.plugins.open-browser')
require('config.plugins.subversive')
require('config.plugins.swap')
require('config.plugins.visual-multi')
require('config.plugins.xkbswitch')

if vim.fn.exists('g:started_by_firenvim') == 1 then
  vim.cmd('packadd! firenvim')
  require('config.plugins.firenvim')
  return
end

vim.cmd('packadd! LuaSnip')
vim.cmd('packadd! asynctasks.vim')
vim.cmd('packadd! cfilter')
vim.cmd('packadd! conflict-marker.vim')
vim.cmd('packadd! gitsigns.nvim')
vim.cmd('packadd! glyph-palette.vim')
vim.cmd('packadd! indent-blankline.nvim ')
vim.cmd('packadd! lsp-status.nvim')
vim.cmd('packadd! lsp-trouble.nvim')
vim.cmd('packadd! lualine.nvim')
vim.cmd('packadd! neogit')
vim.cmd('packadd! neovim-cmake')
vim.cmd('packadd! neovim-session-manager')
vim.cmd('packadd! nvim-bufferline.lua')
vim.cmd('packadd! nvim-dap')
vim.cmd('packadd! nvim-dap-virtual-text')
vim.cmd('packadd! nvim-lspconfig')
vim.cmd('packadd! nvim-spectre')
vim.cmd('packadd! nvim-tree.lua')
vim.cmd('packadd! nvim-treesitter')
vim.cmd('packadd! nvim-ts-rainbow')
vim.cmd('packadd! nvim-web-devicons')
vim.cmd('packadd! octo.nvim')
vim.cmd('packadd! plenary.nvim')
vim.cmd('packadd! popup.nvim')
vim.cmd('packadd! quickfix-reflector.vim')
vim.cmd('packadd! telescope-asynctasks.nvim')
vim.cmd('packadd! telescope-dap.nvim')
vim.cmd('packadd! telescope.nvim')
vim.cmd('packadd! vim-cpp-helper')
vim.cmd('packadd! vim-eunuch')
vim.cmd('packadd! vim-lastplace')
vim.cmd('packadd! vim-scriptease')
vim.cmd('packadd! vim-terminal-help')

require('config.plugins.bufferline')
require('config.plugins.cmake')
require('config.plugins.cpp-helper')
require('config.plugins.dap')
require('config.plugins.formatter')
require('config.plugins.gitsigns')
require('config.plugins.indent-blankline')
require('config.plugins.lsp')
require('config.plugins.lsp-trouble')
require('config.plugins.lualine')
require('config.plugins.luasnip')
require('config.plugins.neogit')
require('config.plugins.spectre')
require('config.plugins.telescope')
require('config.plugins.terminal-help')
require('config.plugins.tree')
require('config.plugins.treesitter')
