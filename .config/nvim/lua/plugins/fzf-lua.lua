return {
  'ibhagwan/fzf-lua',
  lazy = true,
  cmd = 'FzfLua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '<leader>fh', '<cmd>FzfLua helptags<cr>', desc = '[F]ind [H]elp' },
    { '<leader>fk', '<cmd>FzfLua keymaps<cr>', desc = '[F]ind [K]eymaps' },
    { '<leader>ff', '<cmd>FzfLua files<cr>', desc = '[F]ind [F]iles' },
    { '<leader>fa', function() require('fzf-lua').files { hidden = true, no_ignore = true } end, desc = '[F]ind [A]ll Files' },
    { '<leader>fs', '<cmd>FzfLua builtin<cr>', desc = '[F]ind [S]elect Telescope' },
    { '<leader>fg', function() require('fzf-lua').live_grep { additional_args = { '--hidden', '--no-ignore' } } end, desc = '[F]ind by [G]rep' },
    { '<leader>fr', '<cmd>FzfLua resume<cr>', desc = '[F]ind [R]esume' },
    { '<leader>f.', '<cmd>FzfLua oldfiles<cr>', desc = '[F]ind Recent Files ("" for repeat)' },
    { '<leader><leader>', '<cmd>FzfLua buffers<cr>', desc = '[ ] Find existing buffers' },
    { '<leader>fb', '<cmd>FzfLua lgrep_curbuf<cr>', desc = '[F]ind in current [B]uffer' },
    { '<leader>fo', function() require('fzf-lua').live_grep { grep_open_files = true, prompt_title = 'Live Grep in Open Files' } end, desc = '[F]ind in [O]pen Files' },
    { '<leader>fn', function() require('fzf-lua').files { cwd = vim.fn.stdpath 'config' } end, desc = '[F]ind [N]eovim files' },
  },
  config = function()
    require('fzf-lua').setup { 'telescope', 'fzf-native', winopts = {} }
  end,
}