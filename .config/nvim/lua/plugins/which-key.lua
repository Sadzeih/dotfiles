return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  config = function()
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').add {
      { '<leader>c', desc = '[C]ode', },
      { '<leader>d', desc = '[D]ocument', },
      { '<leader>r', desc = '[R]ename', },
      { '<leader>f', desc = '[F]ind', },
      { '<leader>w', desc = '[W]orkspace', },
      { '<leader>g', desc = '[G]it', },
      { '<leader>e', desc = '[E]xplorer', },
      { '<leader>p', desc = 'Har[p]oon', },
      { '<leader>t', desc = '[T]rouble', },
    }
  end,
}
