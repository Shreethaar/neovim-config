require('zephyr') -- Colorscheme

require('plugins.settings.asyncrun')
require('plugins.settings.autopairs')
require('plugins.settings.compe')
require('plugins.settings.cursorline')
require('plugins.settings.hop')
require('plugins.settings.kommentary')
require('plugins.settings.open-browser')
require('plugins.settings.subversive')
require('plugins.settings.swap')
require('plugins.settings.visual-multi')
require('plugins.settings.xkbswitch')

if vim.fn.exists('g:started_by_firenvim') == 1 then
  vim.cmd('packadd! firenvim')
  require('plugins.settings.firenvim')
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
vim.cmd('packadd! lualine.nvim')
vim.cmd('packadd! neogit')
vim.cmd('packadd! neovim-cmake-projects')
vim.cmd('packadd! nvim-bufferline.lua')
vim.cmd('packadd! nvim-dap ')
vim.cmd('packadd! nvim-dap-virtual-text')
vim.cmd('packadd! nvim-lspconfig')
vim.cmd('packadd! nvim-tree.lua')
vim.cmd('packadd! nvim-treesitter')
vim.cmd('packadd! nvim-ts-rainbow')
vim.cmd('packadd! nvim-web-devicons')
vim.cmd('packadd! plenary.nvim')
vim.cmd('packadd! popup.nvim')
vim.cmd('packadd! quickfix-reflector.vim')
vim.cmd('packadd! telescope-asynctasks.nvim')
vim.cmd('packadd! telescope-dap.nvim')
vim.cmd('packadd! telescope-project.nvim')
vim.cmd('packadd! telescope.nvim')
vim.cmd('packadd! vim-eunuch')
vim.cmd('packadd! vim-lastplace')
vim.cmd('packadd! vim-scriptease')
vim.cmd('packadd! vim-terminal-help')

require('plugins.settings.bufferline')
require('plugins.settings.cmake')
require('plugins.settings.dap')
require('plugins.settings.formatter')
require('plugins.settings.gitsigns')
require('plugins.settings.lsp')
require('plugins.settings.lualine')
require('plugins.settings.luasnip')
require('plugins.settings.neogit')
require('plugins.settings.telescope')
require('plugins.settings.terminal-help')
require('plugins.settings.tree')
require('plugins.settings.treesitter')
