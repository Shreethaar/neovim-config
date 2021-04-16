local M = {}

function M.is_special_buffer()
  return not vim.api.nvim_buf_get_option(0, 'modifiable') or
    vim.bo.filetype == 'gitrebase' or
    vim.bo.filetype == 'gitcommit' or
    vim.bo.filetype == 'qf'
end

function M.switch_to_normal_buffer()
  local current_buffer = vim.api.nvim_get_current_buf()
  while M.is_special_buffer() do
      vim.cmd('wincmd w')
      if current_buffer == vim.api.nvim_get_current_buf() then
        -- To avoid infinity loop
        vim.cmd('only')
        break
      end
  end
end

function M.close_current_buffer()
  if vim.bo.filetype == 'NvimTree' then
    require('nvim-tree').close()
    return
  end
  if M.is_special_buffer() then
    vim.api.nvim_buf_delete(0, {force = vim.bo.buftype == 'terminal'})
    return
  end
  local current_buffer = vim.fn.bufnr()
  if #vim.fn.getbufinfo({buflisted=1}) == 1 then
    vim.cmd('enew')
    vim.bo.bufhidden = 'wipe'
  else
    vim.cmd('bprevious')
  end
  vim.api.nvim_buf_delete(current_buffer, {})
end

function M.close_other_buffers()
  local current_buffer = vim.api.nvim_get_current_buf()
  local buffers_info = vim.api.nvim_list_bufs()
  for _, buffer in ipairs(buffers_info) do
    if buffer ~= current_buffer and not vim.api.nvim_buf_get_option(buffer, 'modified') then
      vim.api.nvim_buf_delete(buffer, {force = true})
    end
  end
end

return M
