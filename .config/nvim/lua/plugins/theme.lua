return {
  -- {
  --   lazy = false,
  --   priority = 1000,
  --   'tjdevries/colorbuddy.nvim',
  --   config = function()
  --     vim.cmd.colorscheme 'gruvbuddy'
  --   end,
  -- },
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    require('rose-pine').setup {
      disable_background = true,
      styles = {
        italic = false,
      },
    }
    vim.cmd.colorscheme 'rose-pine'
  end,
}
