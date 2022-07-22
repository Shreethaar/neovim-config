vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

vim.diagnostic.config({
  virtual_text = { prefix = '' },
  float = {
    border = 'rounded',
  },
})

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = 'rounded',
})

local diagnostic_enabled = true
vim.api.nvim_create_user_command('LspDiagnosticToggle', function()
  if diagnostic_enabled then
    vim.diagnostic.disable()
    diagnostic_enabled = false
  else
    vim.diagnostic.enable()
    diagnostic_enabled = true
  end
end, { desc = 'Toggle LSP diagnostics' })
