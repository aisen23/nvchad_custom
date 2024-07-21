vim.opt.relativenumber = true

function fileTypeSetup()
  if (vim.bo.filetype == 'python') or (vim.bo.filetype == 'c') or (vim.bo.filetype == 'cpp') then
    vim.bo.expandtab = true
    if (vim.bo.filetype == 'c') then
      vim.bo.expandtab = false
    end

    vim.bo.shiftwidth = 4
    vim.bo.smartindent = true
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
  else
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 2
    vim.bo.smartindent = true
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
  end
end

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '',
  callback = fileTypeSetup,
})
