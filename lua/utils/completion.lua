local M = {}

function M.completion_confirm()
  if vim.fn.pumvisible() ~= 0  then
    if vim.fn.complete_info()['selected'] ~= -1 then
      vim.fn['compe#confirm']()
      return require('nvim-autopairs').esc('')
    else
      return require('nvim-autopairs').esc('<CR>')
    end
  else
    return require('nvim-autopairs').check_break_line_char()
  end
end

function M.tab_complete()
  if vim.fn.pumvisible() == 1 then
    return vim.api.nvim_replace_termcodes('<C-n><CR>', true, true, true)
  elseif require('luasnip').expand_or_jumpable() then
    return vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true)
  else
    return vim.api.nvim_replace_termcodes('<Tab>', true, true, true)
  end
end

function M.s_tab_complete()
  if require('luasnip').jumpable() then
    return vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true)
  else
    return vim.api.nvim_replace_termcodes('<S-Tab>', true, true, true)
  end
end

return M