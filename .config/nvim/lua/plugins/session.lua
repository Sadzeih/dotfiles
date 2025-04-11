return {
  'rmagatti/auto-session',
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    -- log_level = 'debug',
  },
  -- 'folke/persistence.nvim',
  -- event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  -- opts = {
  --   dir = vim.fn.stdpath 'state' .. '/sessions/', -- directory where session files are saved
  --   -- minimum number of file buffers that need to be open to save
  --   -- Set to 0 to always save
  --   need = 1,
  --   branch = true, -- use git branch to save session
  -- },
  -- config = function()
  --   vim.keymap.set('n', '<leader>ss', function()
  --     require('persistence').load()
  --   end, { desc = '[S]ession: Load [s]ession' })
  --   vim.keymap.set('n', '<leader>sS', function()
  --     require('persistence').select()
  --   end, { desc = '[S]ession: [S]elect' })
  --   vim.keymap.set('n', '<leader>sl', function()
  --     require('persistence').load { last = true }
  --   end, { desc = '[S]ession: [l]ast session' })
  --   vim.keymap.set('n', '<leader>sd', function()
  --     require('persistence').stop()
  --   end, { desc = '[S]ession: [q]uit session' })
  -- end,
}
