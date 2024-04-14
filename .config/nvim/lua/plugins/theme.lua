return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    require('rose-pine').setup {
      styles = {
        italic = false,
      },
    }
    vim.cmd.colorscheme 'rose-pine'
  end,
}
