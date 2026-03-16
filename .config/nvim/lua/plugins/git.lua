return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '┃' },
        change = { text = '┃' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
    },
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration
      'ibhagwan/fzf-lua', -- optional
    },
    cmd = 'Neogit',
    keys = {
      { '<leader>g', '<cmd>Neogit<cr>', desc = 'Open Neo[G]it' },
    },
    config = function()
      local neogit = require 'neogit'

      neogit.setup {
        disable_commit_confirmation = true,
        disable_builtin_notifications = true,
      }
    end,
  },
}
