-- General
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = 'unnamedplus'
vim.o.cursorline = true
vim.o.linebreak = true
vim.o.splitright = true
vim.o.spelllang = 'en_us,ru_ru'
vim.o.spell = true
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.list = true
vim.o.listchars = 'tab:→ ,space:·,nbsp:␣,trail:·,extends:…,precedes:…'
vim.o.fillchars = 'diff:╱,eob: ' -- Create a nice diff and hide ~
vim.o.whichwrap = vim.o.whichwrap .. 'h,l,<,>,[,]' -- Wrap movement between lines in edit mode
vim.o.pumheight = 10
vim.o.pumblend = 10
vim.o.wildmode = 'longest:full,full'
vim.o.termguicolors = true
vim.o.foldenable = false
vim.o.swapfile = false
vim.o.showmode = false -- Do not display current mode (use statusline for it)
vim.o.signcolumn = 'yes' -- Always show the signcolum, otherwise it would shift the text each time changes appear/disappear
vim.o.updatetime = 100 -- To show git changes often
vim.o.shortmess = vim.o.shortmess .. 'c' -- Shut off completion messages
vim.o.formatoptions = vim.bo.formatoptions:gsub('cro', '')
vim.o.scrolloff = 10
vim.o.diffopt = vim.o.diffopt .. ',linematch:50'
vim.o.guifont = 'FiraMono Nerd Font Mono:h12'

if vim.fn.has('unix') == 1 then
  vim.o.shell = '/usr/bin/bash' -- I use fish on Linux and it slow for running internal commands
end

-- A built-in plugin to filter quickfix
vim.cmd.packadd('cfilter')

-- Disable built-in matchparen plugin (use faster lua implementation)
vim.g.loaded_matchparen = false

-- Disable default keybindings <C-a> and <C-x> for interactive rebase
vim.g.no_gitrebase_maps = false

-- Disable built-in python loader
vim.g.loaded_python3_provider = false

-- Remap useless keys
vim.g.mapleader = ' '
vim.keymap.set({ 'n', 'v' }, '<CR>', ':', { noremap = true, desc = 'Enter command line mode' })

-- Increment / decrement
vim.keymap.set('n', '<C-=>', '<C-a>', { noremap = true, desc = 'Decrease number' })
vim.keymap.set('n', '<C-->', '<C-x>', { noremap = true, desc = 'Increase number' })
vim.keymap.set('v', '<C-=>', '<C-a>', { noremap = true, desc = 'Decrease number' })
vim.keymap.set('v', '<C-->', '<C-x>', { noremap = true, desc = 'Increase number' })
vim.keymap.set('v', 'g<C-=>', 'g<C-a>', { noremap = true, desc = 'Column decrease number' })
vim.keymap.set('v', 'g<C-->', 'g<C-x>', { noremap = true, desc = 'Column increase number' })

-- Movement around wrapped lines
vim.keymap.set('n', 'j', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('n', 'k', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Up>', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Down>', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('i', '<Up>', '<C-o>gk', { noremap = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('i', '<Down>', '<C-o>gj', { noremap = true, desc = 'Move down (including wrapping lines)' })

-- Split navigation
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h', { noremap = true, desc = 'Go to left window' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', { noremap = true, desc = 'Go to window below' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', { noremap = true, desc = 'Go to window above' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true, desc = 'Go to right window' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, desc = 'Go to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, desc = 'Go to window below' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, desc = 'Go to window above' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, desc = 'Go to right window' })
vim.keymap.set('i', '<C-h>', '<C-o><C-w>h', { noremap = true, desc = 'Go to left window' })
vim.keymap.set('i', '<C-j>', '<C-o><C-w>j', { noremap = true, desc = 'Go to window below' })
vim.keymap.set('i', '<C-k>', '<C-o><C-w>k', { noremap = true, desc = 'Go to window above' })
vim.keymap.set('i', '<C-l>', '<C-o><C-w>l', { noremap = true, desc = 'Go to right window' })

-- Quickfix history navigation
vim.keymap.set('', ']h', vim.cmd.cnewer, { noremap = true, desc = 'Go to newer error list' })
vim.keymap.set('', '[h', vim.cmd.colder, { noremap = true, desc = 'Go to older error list' })

-- Make behavior more like in common editors
vim.keymap.set({ '', 'i' }, '<C-s>', vim.cmd.write, { noremap = true, desc = 'Save' })
vim.keymap.set('i', '<C-z>', '<C-o>u', { noremap = true, desc = 'Undo' })
vim.keymap.set('i', '<C-v>', '<C-g>u<Cmd>set paste<CR><C-r>+<Cmd>set nopaste<CR>', { noremap = true, desc = 'Paste' })
vim.keymap.set('c', '<C-v>', '<C-r>+', { noremap = true, desc = 'Paste' })
vim.keymap.set('t', '<C-v>', '<C-\\><C-N>pi', { noremap = true, desc = 'Paste' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, desc = 'Go back to normal mode' })
vim.keymap.set('i', '<S-Left>', '<Esc>vb', { noremap = true, desc = 'Select character left' })
vim.keymap.set('i', '<S-Right>', '<Esc>ve', { noremap = true, desc = 'Select character right' })
vim.keymap.set('', '<C-a>', 'gg0vG$', { noremap = true, desc = 'Select all' })
vim.keymap.set({ 'v', 'i' }, '<C-a>', '<Esc>gg0vG$', { noremap = true, desc = 'Select all' })

-- Move lines
vim.keymap.set('n', '<A-j>', '<Cmd>move+1<CR>==', { noremap = true, desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', '<Cmd>move-2<CR>==', { noremap = true, desc = 'Move line up' })
vim.keymap.set('i', '<A-j>', '<Esc><Cmd>move+1<CR>==gi', { noremap = true, desc = 'Move line down' })
vim.keymap.set('i', '<A-k>', '<Esc><Cmd>move-2<CR>==gi', { noremap = true, desc = 'Move line up' })
vim.keymap.set('v', '<A-j>', "<Esc><Cmd>'<,'>move'>+1<CR>gv=gv", { noremap = true, desc = 'Move lines down' })
vim.keymap.set('v', '<A-k>', "<Esc><Cmd>'<,'>move'<-2<CR>gv=gv", { noremap = true, desc = 'Move lines up' })

-- Cmdline shortcuts
vim.keymap.set('c', '<C-a>', '<Home>', { noremap = true, desc = 'Go to beginning' })
vim.keymap.set('c', '<C-e>', '<End>', { noremap = true, desc = 'Go to end' })

-- Tab control
vim.keymap.set('', '<A-q>', vim.cmd.tabclose, { noremap = true, desc = 'Close current tab' })
vim.keymap.set({ 'i', 't' }, '<A-q>', '<Esc><Cmd>tabclose<CR>', { noremap = true, desc = 'Close current tab' })
vim.keymap.set('', ']t', vim.cmd.tabnext, { noremap = true, desc = 'Go to next tab' })
vim.keymap.set('', '[t', vim.cmd.tabprevious, { noremap = true, desc = 'Go to next tab' })

-- Snippets
vim.keymap.set({ 'i', 's' }, '<Tab>', function()
  if vim.snippet.active({ direction = 1 }) then
    return '<Cmd>lua vim.snippet.jump(1)<CR>'
  else
    return '<Tab>'
  end
end, { expr = true })

-- Other
vim.keymap.set('', '<Leader>cd', '<Cmd>cd %:h<CR>', { noremap = true, desc = 'Change directory to current file folder' })
vim.keymap.set('', '<Backspace>', '<Cmd>buffer #<CR>', { noremap = true, desc = 'Back to previous buffer' })

vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
  callback = function() vim.highlight.on_yank() end,
})
