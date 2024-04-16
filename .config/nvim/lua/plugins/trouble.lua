return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    local trouble = require 'trouble'
    vim.keymap.set('n', '<leader>tt', function()
      trouble.toggle()
    end, { desc = '[T]rouble: [T]oggle' })
    vim.keymap.set('n', '<leader>tw', function()
      trouble.toggle 'workspace_diagnostics'
    end)
    vim.keymap.set('n', '<leader>td', function()
      trouble.toggle 'document_diagnostics'
    end, { desc = '[T]rouble: [D]iagnostics' })
    vim.keymap.set('n', '<leader>tq', function()
      trouble.toggle 'quickfix'
    end, { desc = '[T]rouble: [Q]uickfix' })
    vim.keymap.set('n', '<leader>tl', function()
      trouble.toggle 'loclist'
    end, { desc = '[T]rouble: [L]oclist' })
    vim.keymap.set('n', 'gR', function()
      trouble.toggle 'lsp_references'
    end)
  end,
}
