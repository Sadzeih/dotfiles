return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('which-key').setup {
      notify = false,
    }

    -- Document existing key chains
    require('which-key').add {
      { '<leader>c', group = '[C]ode' },
      { '<leader>d', group = '[D]AP' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>f', group = '[F]ind' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>g', group = '[G]it' },
      { '<leader>e', group = '[E]xplorer' },
      { '<leader>p', group = 'Har[p]oon' },
      { '<leader>t', group = '[T]rouble' },
    }
  end,
}
